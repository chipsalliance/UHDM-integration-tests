#!/usr/bin/env python3

import edalize
import os
import glob
import re
from pathlib import Path

root_dir = os.path.dirname(os.path.realpath(__file__))

dirs_re = r'.*\[list (.*)\] .*'
work_root = 'build'
os.makedirs(work_root, exist_ok=True)
ibex_build_dir = root_dir + '/tests/ibex/ibex/build/lowrisc_ibex_top_artya7_0.1'
tcl_dir = ibex_build_dir + '/synth-vivado'

packages = []
sources = []
include_srcs = []
xdc = []
defines = []

files = []
parameters = {}

with open(f'{tcl_dir}/lowrisc_ibex_top_artya7_0.1.tcl') as fp:
  for l in fp:
    if l.startswith('read_verilog'):
      filepath = l.split()[-1]
      filepath = filepath.strip('..')
      filepath = ibex_build_dir + filepath
      if filepath.endswith('_pkg.sv'):
        packages.append(filepath)
      else:
        sources.append(filepath)
    if l.startswith('set_property include_dirs'):
      dirs = re.match(dirs_re, l)
      if dirs is not None:
        dirs = dirs.groups()[0].split()
        for dir in dirs:
          dir = dir.strip('..')
          dir = ibex_build_dir + dir
          include_srcs.extend(glob.glob(dir+'/*.sv', recursive=False))
    if l.startswith('read_xdc'):
        filepath = l.split()[-1]
        filepath = filepath.strip('..')
        filepath = ibex_build_dir + filepath
        xdc.append(filepath)
    if l.startswith('set_property verilog_define'):
        defines_list = l[l.find('{') + 1:l.rfind('}')]
        for define in defines_list.split():
            key = define.split('=')[0]
            value = define.split('=')[1]
            defines.append({key: value})

# ensure packages are first in the list
for src in packages:
  files.insert(0, {'name': os.path.realpath(src), 'file_type': 'systemVerilogSource'})
for src in sources:
  files.append({'name': os.path.realpath(src), 'file_type': 'systemVerilogSource'})
for src in include_srcs:
  files.append({'name': os.path.realpath(src), 'file_type': 'systemVerilogSource', 'is_include_file': 'true'})
for src in xdc:
  files.append({'name': os.path.realpath(src), 'file_type': 'xdc'})

for define in defines:
    for key in define:
        if not define[key].isnumeric():
            parameters[key] = {
                    'paramtype': 'vlogdefine',
                    'datatype': 'str',
                    'default': define[key],
                }
        else:
            parameters[key] = {
                    'paramtype': 'vlogdefine',
                    'datatype': 'int',
                    'default': define[key],
                }

parameters["SRAMInitFile"] = {
        'paramtype': 'vlogdefine',
        'datatype': 'str',
        'default': os.path.abspath("led.vmem"),
        }

import argparse

parser = argparse.ArgumentParser(description='Use edalize with surelog.')
parser.add_argument('--tool', type=str, default="yosys",
                    help='type of tool to use, select from yosys or vivado')
args = parser.parse_args()
if args.tool == "yosys":
    tool = 'yosys'
    edam = {
      'files' : files,
      'name'  : 'design',
      'toplevel': 'top_artya7',
      'tool_options' : {'yosys' : {
          'arch'           : 'xilinx',
          'output_format'  : 'edif',
          'use_surelog'     : True,
          'library_files': [root_dir + "/yosys/techlibs/xilinx/cells_xtra_surelog.v"],
          'verilog_params': ["SRAMInitFile=\"" + root_dir + "/led.vmem\""],
          'yosys_synth_options': ['-iopad', '-family xc7', '-run :check']
        }}
    }
elif args.tool == "vivado":
    tool = 'vivado'
    edam = {
      'files' : files,
      'name'  : 'design',
      'toplevel': 'top_artya7',
      'parameters': parameters,
      'tool_options' : {'vivado' : {
          'synth'           : 'yosys',
          'use_surelog'     : True,
          'library_files': [root_dir + "/yosys/techlibs/xilinx/cells_xtra_surelog.v"],
          'verilog_params': ["SRAMInitFile=\"" + root_dir + "/led.vmem\""],
          'yosys_synth_options': ['-iopad', '-family xc7', '-run :check'],
          'part': 'xc7a35tcsg324-1'
        }}
    }

backend = edalize.get_edatool(tool)(edam=edam, work_root=work_root)
backend.configure("")
backend.build()
