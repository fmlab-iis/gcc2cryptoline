#!/usr/bin/env python3
import os
import platform
import sys
import datetime
import subprocess
import toml
import shutil
import itertools

script_path = os.path.abspath(__file__)
script_dir_path = os.path.dirname(script_path)
examples_dir_path = os.path.abspath(script_dir_path + '/../examples/')
config_path = script_dir_path + '/config.toml'

time_command = None
os_name = platform.system()
print(os_name)
if os_name == 'Linux':
    time_command = ['env','time','-v']
elif os_name == 'Darwin':
    time_command = ['env','time', '-l']
else:
    print("Not running on Mac or Linux",file=sys.stderr)
    exit(1)

attr = [
            'isafety_timeout',
            'jobs',
            'isafety',
            'algebra_solver',
            'verbose',
            'qfbv_solver',
            'btor',
            'slicing',
            'no_carry_constraint',
            'disable_safety',
            'disable_range',
            'disable_algebra',
            'qfbv_args',
            'algebra_args',
            'time'
        ]
defaults = {
        'isafety_timeout' :300,
        'jobs' : 4,
        'isafety' : True,
        'algebra_solver' : 'singular',
        'qfbv_solver' : 'boolector',
        'btor' : True,
        'verbose' : True,
        'slicing' : True,
        'no_carry_constraint': False,
        'disable_safety' : False,
        'disable_range': False,
        'disable_algebra':False,
        'qfbv_args':'',
        'algebra_args':'',
        'time' : False
    }
def get_system_status():
    result = subprocess.run(
                                ['cv'],
                                stdout = subprocess.PIPE,
                                stderr = subprocess.PIPE
                            )
    output = result.stdout.decode()
    ret = ''
    ok = False
    for line in output.splitlines(True):
        # print(line)
        if line.startswith('===== System Information ====='):
            ok = True
        if line.startswith('===== Verification ====='):
            ok = False
        if ok:
            ret += line
    return ret
def run_verify(args):
    cl_file_path = f'{examples_dir_path}/{args["ssl"]}/{args["dirname"]}/{args["filename"]}'
    arg = []
    if args['time']:
        arg.extend(time_command)
    arg.append('verify')
    if args['jobs']: arg.extend(['-jobs',args['jobs']])
    for s in [
                'isafety', 'slicing','btor','no_carry_constraint',
'disable_safety', 'disable_range','disable_algebra']:
        if args[s]:
            arg.append('-'+s)
    if args['verbose']:
        arg.append('-v')
    for s in ['jobs','isafety_timeout', 'algebra_solver','qfbv_solver','qfbv_args','algebra_args']:
        o  = args[s]
        if type(o) == str and len(o) == 0: continue
        arg.extend(['-'+s,o])
    arg.append(
            cl_file_path
    )
    arg = map(str,arg)
    # print(list(arg))
    result = subprocess.Popen(
                                arg,
                                stdout = subprocess.PIPE,
                                stderr = subprocess.PIPE
                            )
    output = b''
    for c in iter(lambda: result.stdout.read(1), b''):
        sys.stdout.write(c.decode())
        output += c

    error = result.stderr.read().decode()
    sys.stdout.flush()
    sys.stderr.write(error)
    sys.stderr.flush()
    output = output.decode()
    ret = ''
    ok = False
    safety = False
    for line in output.splitlines(True):
        # print(line)
        if line.startswith('===== System Information ====='):
            ok = False
        if line.startswith('===== Verification ====='):
            ok = True
        if line.startswith('Verifying program safety:'):
            safety = True
            ret += line
            continue

        if ok:
            if safety and not "Overall" in line:
                continue
            elif safety and "Overall" in line:
                safety = False
            ret += line
    return (ret,error)


if __name__ == '__main__':
    if not sys.version_info >= (3, 6):
        sys.stderr.write('this script need python3 version at lease 3.6')
        exit(1)
    if not os.path.exists(config_path):
        print("please copy config-example.toml to config.toml and modify config.toml if needed.",file=sys.stderr)
        exit(1)
    global verify_path
    verify_path = shutil.which("verify")
    if not verify_path:
        print("verify not in the PATH.")
        exit(1)
    with open(config_path,'r') as f:
        config_content = f.read()
    output_file_name  = f'experiments-{datetime.datetime.now():%Y-%m-%d-%H-%M-%S}.log'
    if len(sys.argv) > 1:
        output_file_name = sys.argv[1]
    f = open(output_file_name,'w')
    system_status = get_system_status()
    f.write(system_status)
    config = toml.loads(config_content)

    for key in attr:
        defaults[key] = config.get(key,defaults[key])

    for ssl in config['to_test_ssl']:
        args = defaults.copy()
        args['ssl'] = ssl
        for key in attr:
            args[key] = config[ssl].get(key,args[key])
        if 'to_test_dir' in config[ssl]:
            test_dirs = config[ssl]['to_test_dir']
            for test_dir in test_dirs:
                if test_dir not in config[ssl]:
                    continue
                args['dirname'] = test_dir
                for key in attr:
                    args[key] = config[ssl][test_dir].get(key,args[key])
                cl_files = config[ssl][test_dir]['cl_files']
                for cl_file in cl_files:
                    args['filename'] = cl_file + '.cl'

                    if cl_file in config[ssl][test_dir]:
                        d = config[ssl][test_dir][cl_file]
                        for key in attr:
                            args[key] = d.get(key,args[key])

                    # print(args)
                    result = run_verify(args)
                    f.write(result[0])
                    if result[1]:
                        f.write('\n=-=-=-=-=-=-=- stderr =-=-=-=-=-=-=-=-=-=-\n')
                        f.write(result[1])
                    f.write('-'*80+'\n')
                    f.flush()
    f.close()
