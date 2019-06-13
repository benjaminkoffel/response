#!/usr/bin/env python
import csv
import sys

if len(sys.argv) != 3:
    print "Usage: python lookup.py [a] [b]"
    exit(1)

field_a = sys.argv[1]
field_b = sys.argv[2]

r = csv.DictReader(sys.stdin)
w = csv.DictWriter(sys.stdout, fieldnames=r.fieldnames)
w.writeheader()

for result in r:
    if not result[field_a]:
        result[field_a] = 'blah'
    if not result[field_b]:
        result[field_b] = 'blah'
    w.writerow(result)
