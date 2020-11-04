create_project -in_memory -part xc7a35ticsg324-1L xx

read_edif top_artya7.edif
read_xdc ../tests/ibex/ibex//build/lowrisc_ibex_top_artya7_0.1/src/lowrisc_ibex_top_artya7_0.1/data/pins_artya7.xdc
link_design -top top_artya7 -part xc7a35ticsg324-1L

opt_design

place_design
route_design

write_bitstream -force top.bit
