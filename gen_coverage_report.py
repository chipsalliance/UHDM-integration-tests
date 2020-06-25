import argparse

parser = argparse.ArgumentParser(description="Generate HTML coverage report "
                                             "for UHDM-Verilator frontend")

parser.add_argument('--verilator-uhdm', action='store', dest='verilator_report')
parser.add_argument('--output-file', action='store', dest='output_file')

args = parser.parse_args()

present_in_uhdm = set()
visited_by_frontend = set()
unhandled_node_frequency = dict()

with open(args.verilator_report, 'r') as f:
    target = present_in_uhdm
    for line in f:
        if line == "UHDM contents:\n":
            target = present_in_uhdm
        elif line == "Visited nodes:\n":
            target = visited_by_frontend
        else:
            target.add(line)
            # Update occurrences count for node type, remove endline from name
            node_type = line.split(':')[-1][:-1]
            unhandled_node_frequency[node_type] = unhandled_node_frequency.get(node_type, 0) + 1

with open(args.output_file, 'w') as outfile:
    not_visited = present_in_uhdm - visited_by_frontend
    arranged = sorted(not_visited)
    outfile.write(''.join(arranged))
    outfile.write("Present in UHDM: " + str(len(present_in_uhdm)) + '\n')
    outfile.write("Visited: " + str(len(visited_by_frontend)) + '\n')
    outfile.write("Overall coverage: " + str(len(visited_by_frontend)/len(present_in_uhdm)*100) + "%\n")
    outfile.write("\nMissing node count per type:\n")
    for node in sorted(unhandled_node_frequency, key=unhandled_node_frequency.get, reverse=True):
        outfile.write("  Type: " + str(node) + "\tCount: " + str(unhandled_node_frequency[node]) + '\n')
