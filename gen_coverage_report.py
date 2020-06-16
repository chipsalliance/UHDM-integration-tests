import argparse

parser = argparse.ArgumentParser(description="Generate HTML coverage report "
                                             "for UHDM-Verilator frontend")

parser.add_argument('--verilator-uhdm', action='store', dest='verilator_report')
parser.add_argument('--output-file', action='store', dest='output_file')

args = parser.parse_args()

present_in_uhdm = set()
visited_by_frontend = set()

with open(args.verilator_report, 'r') as f:
    target = present_in_uhdm
    for line in f:
        if line == "UHDM contents:\n":
            target = present_in_uhdm
        elif line == "Visited nodes:\n":
            target = visited_by_frontend
        else:
            target.add(line)

with open(args.output_file, 'w') as outfile:
    not_visited = present_in_uhdm - visited_by_frontend
    arranged = sorted(not_visited)
    outfile.write(''.join(arranged))
    outfile.write("Present in UHDM: " + str(len(present_in_uhdm)))
    outfile.write("Visited: " + str(len(visited_by_frontend)))
    outfile.write("Overall coverage: " + str(len(visited_by_frontend)/len(present_in_uhdm)*100) + "%")
