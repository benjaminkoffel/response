#!/usr/bin/env python3
import csv
import datetime
import sys

# FORMAT:  device path user group access size accessed modified changed
# EXAMPLE: ca01 "/usr/share/something" root root -rw-r--r-- 16 1495066052 1456853978 1495066052
# SHELL:   find / -type f -exec stat --format '%D %N %U %G %A %b %X %Y %Z' {} \; > files.txt

if len(sys.argv) != 2:
    print('USAGE: ./timeline.py files.txt')
    exit(1)

p = sys.argv[1].strip()

print('ACTION,DEVICE,PATH,USER,GROUP,PERMS,SIZE,TIME')

with open(p, newline='') as f:
    for r in csv.reader(f, delimiter=' ', quotechar='"'):
        try:
            print('"ACCESSED","{}","{}","{}","{}","{}",{},"{}"'.format(
                r[0], r[1], r[2], r[3], r[4], int(r[5]), datetime.datetime.utcfromtimestamp(int(r[6])).strftime('%Y-%m-%d %H:%M:%S')))
            print('"MODIFIED","{}","{}","{}","{}","{}",{},"{}"'.format(
                r[0], r[1], r[2], r[3], r[4], int(r[5]), datetime.datetime.utcfromtimestamp(int(r[7])).strftime('%Y-%m-%d %H:%M:%S')))
            print('"CHANGED","{}","{}","{}","{}","{}",{},"{}"'.format(
                r[0], r[1], r[2], r[3], r[4], int(r[5]), datetime.datetime.utcfromtimestamp(int(r[8])).strftime('%Y-%m-%d %H:%M:%S')))
        except:
            pass
