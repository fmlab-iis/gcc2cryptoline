#!/usr/bin/env python3
'''
The script use to count the L_CL column number in the paper
'''
import sys
import re
import fileinput

if len(sys.argv) < 2:
    sys.stderr.write('usage: python3 count_cryptoline.py [file name]\n')

filename = sys.argv[1]

ret = 0
with open(filename,'r') as f:
    for line in f.readlines():
        line = line.strip()
        if not re.match("^.*;$",line):
            continue
        if re.match("mov _.*;$",line):
            continue
        if re.match("mov.* _;$",line):
            continue
        ret +=1

print("the number of counted instruction is {}".format(ret))

