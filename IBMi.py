import ftplib
import utils as utils

class IBMi():

    def __init__(self, out_path="out"):
        self.ftp_client = ftplib.FTP()
        self.out_path = out_path
        self.is_logged_in = False
        utils.mkdir_ine("./" + self.out_path)

    def __del__(self):
        self.disconnect()

    def __str__(self):
        return "IBMi - {}".format("logged in" if self.is_logged_in else "logged out")

    def keep_alive(self):
        return self.ftp_client.sendcmd("NOOP")

    def connect(self, host, timeout=10000):
        if not self.ftp_client:
            self.ftp_client = ftplib.FTP()
        try:
            self.ftp_client.connect(host, timeout=timeout)
        except Exception as e:
            self.raise_exception("Connection failed: cannot connect to host '{}'".format(host), e)

    def disconnect(self):
        if self.ftp_client: 
            utils.log("FTP connection closed.")
            self.ftp_client.quit()
            self.ftp_client = None
            self.is_logged_in = False
        else:
            utils.log("FTP connection was already closed.")

    def login(self, creds):
        try:
            self.ftp_client.login(creds["user"], creds["pw"])
            resp = self.keep_alive()
            if resp:
                utils.log("Connection established: " + resp)
                self.is_logged_in = True
                return resp
        except ftplib.all_errors as e:
            self.raise_exception("Could not establish FTP connection.", e)

    def get_library_data(self, library):
        if not self.is_logged_in: 
            self.raise_exception("Cannot complete request. Not logged into IBMi")
        lib_data = {'name': library}
        utils.mkdir_ine("./{}/{}".format(self.out_path, library))
        utils.mkdir_ine("./{}/{}/GENSQL".format(self.out_path, library))
        lib_data['objects'] = self.get_object_list(library)
        lib_data['source-pfs'] = self.get_source_pf_list(library)
        lib_data['members'] = self.get_member_list(library, [spf['name'] for spf in lib_data['source-pfs']])
        for spf in lib_data['members']:
            self.get_members_src(library, spf['name'], spf['members'])
        for obj in lib_data['objects']:
            if   obj['ext'] == 'LF':  self.generate_sql_src(library, obj['name'], 'VIEW')
            elif obj['ext'] == 'PF':  self.generate_sql_src(library, obj['name'], 'TABLE')
            elif obj['ext'] == 'CLE': self.generate_sql_src(library, obj['name'], 'PROCEDURE' if obj['type'] == "SRVPGM" else 'FUNCTION')
        return lib_data

    def generate_repo(self, library_data):
        self.generate_markdown(library_data)
        self.write_file("## Ignore", '{}/'.format(library_data['name']), ext='gitignore')
        self.write_file("## Attributes", '{}/'.format(library_data['name']), ext='gitattributes')

    def generate_markdown(self, library_data):
        main_md = "# {}\n\n".format(library_data['name'])
        main_md = "## Objects\n\n| Name | Type | Extension | Size (KB) | Description |\n"
        main_md += "|-----|-----|-----|-----|-----|\n"
        for obj in library_data['objects']:
            main_md += "| {} | {} | {} | {} | {} |\n".format(obj['name'], obj['type'], obj['ext'].replace("*","\*"), obj['size'], obj['desc'])
        main_md += "\n\n## Members\n\n"
        for spf in library_data['members']:
            main_md += "### {} Members\n\n".format(spf['name']) + "| Name | Description | Type | Record Length |\n|-----|-----|-----|-----|\n"
            for mbr in spf['members']:
                main_md += "| {} | {} | {} | {} |\n".format(mbr['name'], mbr['desc'], mbr['type'], mbr['record-len'])
        self.write_file(main_md, '{}/README'.format(library_data['name']), ext='md')

    def generate_sql_src(self, library, obj_name, obj_type='TABLE'):
        utils.log("Generating SQL for '{}/{}'...".format(library, obj_name))
        self.send_cmd(
          "RUNSQL SQL('CALL QSYS2.GENERATE_SQL(''{}%'',''{}'',''{}'',".format(obj_name, library, obj_type) + 
            " REPLACE_OPTION=>''1'', CREATE_OR_REPLACE_OPTION=>''1'', CONSTRAINT_OPTION=>''2'', HEADER_OPTION=>''0'')" +
            " ') COMMIT(*NONE)"
        )
        mbr = self.retrieve_member("QTEMP", "Q_GENSQL", "Q_GENSQL")
        self.write_file("\n".join(mbr), '{}/GENSQL/{}'.format(library, obj_name), ext="sql")
        return [self.read_line_object(line, library) for line in mbr]

    def get_members_src(self, library, spf, members):
        for mbr in members: self.get_member_src(library, spf, mbr['name'], mbr['type'])

    def get_member_src(self, library, spf, member_name, member_type):
        utils.mkdir_ine("./{}/{}/{}".format(self.out_path, library, spf))
        if member_name:
            resp = self.retrieve_member(library, spf, member_name)
            self.write_file("\n".join(resp), "{}/{}/{}".format(library, spf, member_name), ext=member_type)

    def get_object_list(self, library):
        utils.log("Fetching objects from '{}'...".format(library))
        tmp_out, tmp_tb = "QTEMP/EXPOBJ", "EXPOBJT"
        self.send_cmds([
          "DSPOBJD OBJ({}/*ALL) OBJTYPE(*ALL) OUTPUT(*OUTFILE) OUTFILE({})".format(library, tmp_out),
          "RUNSQL SQL('CREATE TABLE QTEMP/{} AS".format(tmp_tb) + 
            " (SELECT ODOBNM, ODOBTP, ODOBAT, char(ODOBSZ) AS ODOBSZ, ODOBTX, ODOBOW, ODSRCF, ODSRCL, ODSRCM" +
            " FROM {} ORDER BY ODOBNM) WITH DATA') COMMIT(*NONE)".format(tmp_out)
        ])
        mbr = self.retrieve_member("QTEMP", tmp_tb, tmp_tb)
        return [self.read_line_object(line, library) for line in mbr]

    def get_source_pf_list(self, library):
        return self.get_pf_list(library, 'S')

    def get_pf_list(self, library, file_type):
        file_type = file_type.upper()
        if not file_type in ['S','D']: 
            self.raise_exception("Unexpected physical file type. Expected ['S','D']")
        utils.log("Fetching physical files of type '{}' from '{}'...".format(file_type, library))
        tmp_out, tmp_tb = "QTEMP/EXPPF" + file_type, "EXPPF{}T".format(file_type)
        self.send_cmds([
          "DSPFD FILE({}/*ALL) TYPE(*ATR) OUTPUT(*OUTFILE) FILEATR(*PF) OUTFILE({})".format(library, tmp_out),
          "RUNSQL SQL('CREATE TABLE QTEMP/{} AS".format(tmp_tb) + 
          " (SELECT PHFILE, PHLIB, PHTXT FROM {} WHERE PHDTAT=''{}'' ORDER BY PHFILE) WITH DATA') COMMIT(*NONE)".format(tmp_out, file_type)
        ])
        mbr = self.retrieve_member("QTEMP", tmp_tb, tmp_tb)
        return [self.read_line_pf(line) for line in mbr]

    def get_member_list(self, library, files):
        mbr_list = []
        for file in files:
            tmp_out = "QTEMP/EXPMBR"
            self.send_cmds([
              "DSPFD FILE({}/{}) TYPE(*MBR) OUTPUT(*OUTFILE) OUTFILE({})".format(library, file, tmp_out),
              "RUNSQL SQL('CREATE TABLE QTEMP/{} AS (SELECT MBFILE, MBNAME, MBMTXT, MBSEU2, CHAR(MBMXRL) AS MBMXRL FROM {} ORDER BY MBNAME) WITH DATA') COMMIT(*NONE)".format(file, tmp_out)
            ])
            mbr = self.retrieve_member("QTEMP", file, file)
            utils.mkdir_ine("./{}/{}/{}".format(self.out_path, library, file))
            mbr_list.append({'name': file, 'members': [self.read_line_mbr(line) for line in mbr]})
        return mbr_list

    def retrieve_member(self, library, file, member):
        resp = []
        if member:
            cmd = 'RETR {}'.format("/QSYS.lib/{}.lib/{}.file/{}.mbr").format(library, file, member)
            utils.log("Command: " + cmd)
            utils.log("Response: " + self.ftp_client.retrlines(cmd, resp.append))
        return resp

    def read_line_object(self, line, library):
        return {
          'library': library,
          'name': line[0:10].strip(),
          'type': line[10:18].strip(),
          'ext': line[18:28].strip(),
          'size': line[28:40].strip(),
          'desc': line[40:90].strip(),
          'owner': line[90:100].strip(),
          'src_pf': line[100:110].strip(),
          'src_lib': line[110:120].strip(),
          'src_mbr': line[120:130].strip(),
        }

    def read_line_pf(self, line):
        return {
          'name': line[0:10].strip(),
          'library': line[10:20].strip(),
          'desc': line[20:70].strip(),
        }

    def read_line_mbr(self, line):
        return {
          'object': line[0:10].strip(),
          'name': line[10:20].strip(),
          'desc': line[20:70].strip(),
          'type': line[70:80].strip(),
          'record-len': line[80:87].strip()
        }

    def send_cmds(self, cmds):
        for cmd in cmds: self.send_cmd(cmd)

    def send_cmd(self, cmd):
        if not self.is_logged_in: self.raise_exception("Not logged into IBMi")
        try:
            cmd = "RCMD " + cmd
            utils.log("FTP Command: " + cmd)
            resp = self.ftp_client.sendcmd(cmd)
            utils.log("Response: " + resp)
            return resp
        except ftplib.all_errors as e:
            self.raise_exception(e=e)

    def write_file(self, data, file_path, ext="txt"):
        if ext == "json":
            with open("{}/{}.json".format(self.out_path, file_path), 'w+') as f: f.write(utils.get_pretty_json(data))
        else:
            with open("{}/{}.{}".format(self.out_path, file_path, ext), 'w+') as f: f.write(str(data))

    def raise_exception(self, msg="Unexpected exception", e=None):
        if e:
            err_code = str(e).split(None, 1)[0]
            if err_code == "530":
                msg = "Connection failed: bad credentials"
        utils.log("EXCEPTION : {} ; {}".format(msg, e))
        self.disconnect()
