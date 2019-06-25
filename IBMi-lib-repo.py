import sys, os, traceback
from os import path
import utils as utils
from IBMi import IBMi

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
    return { 'user': utils.required_input("  Enter user for host '{}': ".format(host)), 'pw': utils.required_pass("  Enter password: ") }

def new_library(args):
    export_library(args + [append_configuration(new_configuration())["name"]])

def export_library(args):
    config = get_configuration(args[1])
    lib = config["library"]
    creds = get_credentials(config["name"], config["host"])
    ibmi = IBMi()
    ibmi.connect(config["host"])
    try:
        ibmi.login(creds)
        lib_data = ibmi.get_library_data(lib)
        if lib_data:
            ibmi.write_cache(lib_data, '{}/lib_data'.format(lib), ext='json')
        else:
            print("Requested library data for '{}' could not be completed".format(lib))
    except Exception as e:
        utils.log("Exception occurred. Please yell at the programmer ; {}".format(e))
        traceback.print_exc()

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
    if not process_args(sys.argv[1:]): exit(1)

if __name__ == "__main__": main()