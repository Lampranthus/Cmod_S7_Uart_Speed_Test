######################################################################
#
# File name : tb_C7mod_compile.do
# Created on: Sat Jun 27 00:05:30 +0100 2020
#
# Auto generated by Vivado for 'post-synthesis' simulation
#
######################################################################
vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -64 -93 -work xil_defaultlib  \
"tb_C7mod_func_synth.vhd" \
"../../../../../roadtest.srcs/sim_1/new/tb_top.vhd" \


# compile glbl module
vlog -work xil_defaultlib "glbl.v"

quit -force

