#!/usr/bin/python

import argparse
import json
import os
import os.path
import sys

parser = argparse.ArgumentParser()
parser.add_argument('--directory', '-d', type=str,
                    help='generate list from the specifiec directory')

parser.add_argument('--skip-elements', '-s',
                    nargs='*', default=[],
                    help='list of elements to skip')

args = parser.parse_args()

# skip ibex test as it is handled separately
print(json.dumps([f"tests/{node}" for node in os.listdir(args.directory) if node not in args.skip_elements]))
