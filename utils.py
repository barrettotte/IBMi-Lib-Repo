import json, os, getpass, datetime

def get_pretty_json(jsonRaw, sort=False):
    return json.dumps(jsonRaw, indent=4, sort_keys=sort)

def read_file_json(file_path):
    try:
        with open(file_path, 'r') as f: return json.load(f)
    except Exception as e:
        print("File at {} could not be read.\n  {}".format(file_path, e))
    
def write_file_json(file_path, buffer):
    try:
        with open(file_path, 'w+') as f: f.write(get_pretty_json(buffer))
    except Exception as e: 
        print("File at {} could not be written.\n  {}".format(file_path, e))

def getTimestamp():
    return str(datetime.datetime.now())

def log(s, file_path='./log.txt', to_console=True):
    if to_console: print(s)
    try:
        with open(file_path, 'a+') as f: f.write("[{}] {}\n".format(getTimestamp(), s))
    except Exception as e:
        print("Could not write to log.\n  {}".format(e))

def bool_input(prompt, is_req=False):
    vals = {'Y': True, 'N': False}
    ans = ''
    prompt += " [YyNn] "
    while not ans in vals:
        ans = (input(prompt) if not is_req else required_input(prompt)).upper()
        if not ans in vals: print("Invalid input [YyNn]")
    return vals[ans]

def required_input(prompt):
    try:
        return input(prompt)
    except KeyboardInterrupt:
        print("  Keyboard interrupt occurred. Cannot continue.")
        exit(1)

def required_pass(prompt):
    try:
        return getpass.getpass(prompt)
    except KeyboardInterrupt:
        print("  Keyboard interrupt occurred. Cannot continue.")
        exit(1)

def mkdir_ine(dir_path):
    if not os.path.exists(dir_path): os.makedirs(dir_path)