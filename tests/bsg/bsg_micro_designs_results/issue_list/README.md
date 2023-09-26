These files describe issues found by formality when attempting to match the gold.v and dut.v of the present designs.

Only files that failed formality (failed verification) are present in this directory.

Content is presented as such:
Each file is named after the directory of the offending two files (bsg_sbox.json corresponds to ../bsg_sbox.json/ etc), the contents of each file contain a processed report for "matching" and "verification"

##Matching Report:
Matching is the process of mapping the names of points (ports, wires, etc) between the two designs before verifying that the logic that governs them is equivalent (which is verification).

In each file is either "No issues found with matching process!" in which the design passed matching (and failed verification) or a list of issues found in matching.

It is important to note that some files have port mismatches with the rule "unread points." I believe these can be largely ignored, and should only be looked into if all else fails. This is essentailly a case where the tool decided it wouldn't matter to look at these ports.

For each mismatch issue, there will be a number associated that is simply the number of times this rule was violated. After the list, the violations (except for unread points) are listed giving the type and location.

Point types for matching:

BBNet: multiply-driven net
BBox: black-box
BBPin: black-box pin
Block: hierarchical block
BlPin: hierarchical block pin
Cut: cut-point
DFF: non-constant DFF register
DFF0: constant 0 DFF register
DFF1: constant 1 DFF register
DFFX: constant X DFF register
DFF0X: constrained 0X DFF register
DFF1X: constrained 1X DFF register
LAT: non-constant latch register
LAT0: constant 0 latch register
LAT1: constant 1 latch register
LATX: constant X latch register
LAT0X: constrained 0X latch register
LAT1X: constrained 1X latch register
LATCG: clock-gating latch register
TLA: transparent latch register
TLA0X: transparent constrained 0X latch register
TLA1X: transparent constrained 1X latch register
Loop: cycle break point
Net: matchable net
Port: primary (top-level) port
Und: undriven signal cut-point
Unk: unknown signal cut-point

##Verification Report
After the Matching Report, there may be a Verification Report.
This plainly states what ports were not found to be equivalent with as much precision as allowed by the formality tool.

If a Verification Results section is empty but there is still a provided file, that means that the failure was due to a mismatched set of ports and the design could not be verified. Fixing it at the matching level is likely to fix these issues.
