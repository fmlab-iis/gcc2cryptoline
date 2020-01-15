#!/usr/bin/env python3
import sys
import re
import fileinput

if len(sys.argv) < 2:
    sys.stderr.write('usage: python3 escape.py [file name]\n')

filename = sys.argv[1]

with fileinput.FileInput(filename, inplace=True, backup='.bak') as f:
    for line in f:
        line = line[:-1]
        z = re.match(r"^\(\*(.*)\*\)(.*)\*\)$",line)
        if z:
            line = '(*'+z.groups()[0]+'* )'+z.groups()[1]+'*)'
        if not re.match(r"^\(\*.*\*\)$",line):
            line = line.replace('.','')
        print(line)
