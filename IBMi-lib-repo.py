import sys, os, ftplib, traceback
from os import path
import utils as utils

CONFIG_PATH="./config.json"

def get_configuration(name):
    for cfg in utils.read_file_json(CONFIG_PATH):
        if cfg["name"] == name: return cfg
    return None

def append_configuration(new_data):
    if not path.exists(CONFIG_PATH):
        utils.log("{} not found. Creating new config file...".format(CONFIG_PATH))
        utils.write_file_json(CONFIG_PATH, [])
    elif get_configuration(new_data["name"]):
        utils.log("ERROR: Configuration already exists by this name.")
        exit(1)
    utils.write_file_json(CONFIG_PATH, utils.read_file_json(CONFIG_PATH) + [new_data])
    return new_data

def new_configuration():
    utils.log("Creating new configuration...")
    return {
      "name": utils.required_input("  Enter name for this configuration: "),
      "host": utils.required_input("  Enter IBMi host: "),
      "library": utils.required_input("  Enter library to export: "),
      "output": utils.required_input("  Enter output directory path: "),
      "formatting": utils.bool_input("  Inject additional formatting into source?", is_req=True),
    }

def get_credentials(config_name, host):
    utils.log("Fetching credentials for configuration '{}'...".format(config_name))
    return {
      'user': utils.required_input("  Enter user for host '{}': ".format(host)),
      'pw': utils.required_pass("  Enter password: ")
    }

def new_library(args):
    export_library(args + [append_configuration(new_configuration())["name"]])

def export_library(args):
    config = get_configuration(args[1])
    creds = get_credentials(config["name"], config["host"])
    ftp_client = ftplib.FTP()
    try:
        ftp_client.connect(config["host"], timeout=10000)
    except Exception as e:
        utils.log("Connection failed: cannot connect to host '{}' ; {}".format(config["host"], e))
        exit(1)
    try:
        ftp_client.login(creds["user"], creds["pw"])
        resp = ftp_client.sendcmd("NOOP")
        if resp:
            utils.log("Connection established: " + resp)
            get_library_data(ftp_client, config["library"])
    except ftplib.all_errors as e:
        err_code = str(e).split(None, 1)[0]
        if err_code == "530":
            utils.log("Connection failed: bad credentials")
        # TODO: additional error codes
        utils.log(e)
    except Exception as e:
        utils.log("Unexpected Exception occurred. Please yell at the programmer ; {}".format(e))
        traceback.print_exc()
    finally:
        utils.log("FTP connection closed.")
        ftp_client.quit()

def get_library_data(ftp_client, library):
    lib_data = []
    utils.mkdir_ine("./.cache/"+library)
    get_object_list(ftp_client, library)
    return lib_data

def send_ftp_cmds(ftp_client, cmds):
    for cmd in cmds:
        utils.log("FTP Command: " + cmd)
        utils.log("Response: " + ftp_client.sendcmd(cmd))

def get_object_list(ftp_client, library):
    utils.log("Fetching objects from '{}'...".format(library))
    tmp_out, tmp_tb = "QTEMP/EXPOBJ", "EXPOBJT"
    send_ftp_cmds(ftp_client, [
      "RCMD DSPOBJD OBJ({}/*ALL) OBJTYPE(*ALL) OUTPUT(*OUTFILE) OUTFILE({})".format(library, tmp_out),
      "RCMD RUNSQL SQL('CREATE TABLE QTEMP/{} AS".format(tmp_tb) + 
        " (SELECT ODOBNM, ODOBTP, ODOBAT, char(ODOBSZ) as ODOBSZ, ODOBTX, ODOBOW, ODSRCF, ODSRCL, ODSRCM" +
        " FROM {} order by ODOBNM) WITH DATA') COMMIT(*NONE)".format(tmp_out)
    ])
    obj_list = []
    cmd = 'RETR {}'.format("/QSYS.lib/QTEMP.lib/{}.file/{}.mbr").format(tmp_tb, tmp_tb)
    utils.log("Command: " + cmd)
    utils.log("Response: " + ftp_client.retrlines(cmd, obj_list.append))
    write_cache("\n".join(obj_list), "{}/obj_list".format(library))
    return obj_list

def write_cache(data, file_path):
    with open(".cache/{}.txt".format(file_path), 'w+') as f:
        f.write(data)

def print_help(args):
    print("\n".join([
      "IBMi-lib-repo HELP:",
      "  [ -e, --existing ] <library name>  -->  Re-export an existing library",
      "  [ -h, --help ]                     -->  Display help information",
      "  [ -n, --new ]                      -->  Setup a new library",    
    ]))

def get_commands(): 
    return [("-e", 1, export_library), ("-h", 0, print_help), ("-n", 0, new_library)]

def process_args(args):
    if len(args) == 0:
        print("Not enough arguments passed.")
        return False
    for cmd in get_commands():
        if args[0] == cmd[0]:
            if len(args)-1 != cmd[1]:
                print("Incorrect amount of arguments passed. Expected {} argument(s)".format(cmd[1]))
                return False
            cmd[2](args)
            return True
    print("Invalid argument: '{}' Not found.".format(args[0]))
    return False

def main(): 
    utils.log("Program started.")
    utils.mkdir_ine("./.cache")
    if not process_args(sys.argv[1:]): exit(1)

if __name__ == "__main__": main()