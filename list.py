#!/usr/bin/python

import argparse
import json
import os
import os.path

parser = argparse.ArgumentParser()
parser.add_argument('--directory', '-d', type=str,
                    help='generate list from the specifiec directory')

parser.add_argument('--skip-elements', '-s',
                    nargs='*', default=[],
                    help='list of elements to skip')

args = parser.parse_args()

if args.directory[-1] == "/":
    args.directory = args.directory[:-1]
# skip ibex test as it is handled separately
print(json.dumps([f"{args.directory}/{node}" for node in os.listdir(args.directory)
    if node not in args.skip_elements and os.path.isdir(args.directory + "/" + node)]))
