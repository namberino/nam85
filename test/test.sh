apio verify
apio sim
if [ -f "top_design_tb.vcd" ]; then exit 0; else exit 1; fi   # verify dumpfiles
