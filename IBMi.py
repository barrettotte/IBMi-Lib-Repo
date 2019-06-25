import ftplib
import utils as utils

class IBMi():

    def __init__(self, cache_path=".IBMi-cache"):
        self.ftp_client = ftplib.FTP()
        self.cache_path = cache_path
        self.is_logged_in = False

    def __del__(self):
        self.disconnect()

    def keep_alive(self):
        return self.send_cmd("NOOP")

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
        lib_data = {}
        utils.mkdir_ine("./{}/{}".format(self.cache_path, library))
        lib_data['objects'] = self.get_object_list(library)
        lib_data['source-pfs'] = self.get_source_pf_list(library)
        return lib_data

    def get_object_list(self, library):
        utils.log("Fetching objects from '{}'...".format(library))
        tmp_out, tmp_tb = "QTEMP/EXPOBJ", "EXPOBJT"
        self.send_cmds([
          "RCMD DSPOBJD OBJ({}/*ALL) OBJTYPE(*ALL) OUTPUT(*OUTFILE) OUTFILE({})".format(library, tmp_out),
          "RCMD RUNSQL SQL('CREATE TABLE QTEMP/{} AS".format(tmp_tb) + 
            " (SELECT ODOBNM, ODOBTP, ODOBAT, char(ODOBSZ) AS ODOBSZ, ODOBTX, ODOBOW, ODSRCF, ODSRCL, ODSRCM" +
            " FROM {} ORDER BY ODOBNM) WITH DATA') COMMIT(*NONE)".format(tmp_out)
        ])
        mbr = self.retrieve_member("QTEMP", tmp_tb, tmp_tb)
        self.write_cache("\n".join(mbr), '{}/object_list'.format(library))
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
          "RCMD DSPFD FILE({}/*ALL) TYPE(*ATR) OUTPUT(*OUTFILE) FILEATR(*PF) OUTFILE({})".format(library, tmp_out),
          "RCMD RUNSQL SQL('CREATE TABLE QTEMP/{} AS".format(tmp_tb) + 
          " (SELECT PHFILE, PHLIB FROM {} WHERE PHDTAT=''{}'' ORDER BY PHFILE) WITH DATA') COMMIT(*NONE)".format(tmp_out, file_type)
        ])
        mbr = self.retrieve_member("QTEMP", tmp_tb, tmp_tb)
        self.write_cache("\n".join(mbr), '{}/pf_{}_list'.format(library, file_type))
        return [self.read_line_pf(line) for line in mbr]

    def retrieve_member(self, library, file, member):
        resp = []
        cmd = 'RETR {}'.format("/QSYS.lib/{}.lib/{}.file/{}.mbr").format(library, file, member)
        utils.log("Command: " + cmd)
        utils.log("Response: " + self.ftp_client.retrlines(cmd, resp.append))
        return resp

    def delete_object(self, library, obj):
        utils.log("Deleting {}/{}".format(library, obj))
        self.send_cmd("DLTOBJ OBJ({}/{}) OBJTYPE(*FILE)")

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
          'library': line[10:20].strip()
        }

    def send_cmds(self, cmds):
        for cmd in cmds: self.send_cmd(cmd)

    def send_cmd(self, cmd):
        try:
            utils.log("FTP Command: " + cmd)
            resp = self.ftp_client.sendcmd(cmd)
            utils.log("Response: " + resp)
            return resp
        except ftplib.all_errors as e:
            self.raise_exception(e=e)

    def write_cache(self, data, file_path, as_json=False):
        utils.mkdir_ine("./" + self.cache_path)
        if as_json:
            with open("{}/{}.json".format(self.cache_path, file_path), 'w+') as f: f.write(utils.get_pretty_json(str(data)))
        else:    
            with open("{}/{}.txt".format(self.cache_path, file_path), 'w+') as f: f.write(str(data))

    def raise_exception(self, msg="Unexpected exception", e=None):
        if e:
            err_code = str(e).split(None, 1)[0]
            if err_code == "530":
                msg = "Connection failed: bad credentials"
        utils.log("EXCEPTION : {} ; {}".format(msg, e))
        self.disconnect()