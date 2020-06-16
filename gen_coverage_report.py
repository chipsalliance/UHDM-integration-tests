import argparse

parser = argparse.ArgumentParser(description="Generate HTML coverage report "
                                             "for UHDM-Verilator frontend")

parser.add_argument('--surelog-uhdm', action='store', dest='surelog_report')
parser.add_argument('--verilator-uhdm', action='store', dest='verilator_report')
parser.add_argument('--output-file', action='store', dest='output_file')

args = parser.parse_args()

filenames = []
missing_surelog = dict()
visited_frontend = dict()

with open(args.surelog_report, 'r') as f:
    current_file = ""
    for line in f:
        content = line.split(':')
        if len(content) == 3:
            # New filename, add to dict
            current_file = content[0]
            if current_file not in missing_surelog:
                missing_surelog[current_file] = []
            if current_file not in filenames:
                filenames.append(current_file)
        elif len(content) == 2 and line.startswith("Line"):
            # New line, add to list
            missing_surelog[current_file].append(int(content[1]))

with open(args.verilator_report, 'r') as f:
    current_file = ""
    for line in f:
        content = line.split(':')
        current_file = content[0]
        if current_file not in visited_frontend:
            visited_frontend[current_file] = []
        if current_file not in filenames:
            filenames.append(current_file)
        visited_frontend[current_file].append(int(content[-1]))
    print(filenames)

with open(args.output_file, 'w') as outfile:
    outfile.write("\n<!DOCTYPE html>\n<html>\n<head>\n<style>\nbody {\n\n}\np {\nfont-size: 14px;\n}</style>\n")
    for filename in filenames:
        with open(filename, 'r') as f:
            outfile.write("<h2>" + filename + "</h2>")
            for line_no, line in enumerate(f, 1):
                if line.strip():
                    if filename in missing_surelog and line_no in missing_surelog[filename]:
                        outfile.write("<pre style=\"background-color: #C0C000; margin:0; padding:0 \">")
                    elif (filename not in visited_frontend) or (line_no not in visited_frontend[filename]):
                        outfile.write("<pre style=\"background-color: #C00000; margin:0; padding:0 \">")
                        print(f"Missing: {filename} : {line_no}")
                    else:
                        outfile.write("<pre style=\"background-color: #FFFFFF; margin:0; padding:0 \">")
                else:
                    outfile.write("<pre style=\"background-color: #FFFFFF; margin:0; padding:0 \">")
                outfile.write(line + "</pre>\n")
    outfile.write("</body>\n</html>\n")
