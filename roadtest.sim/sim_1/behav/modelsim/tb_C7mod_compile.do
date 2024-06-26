######################################################################
#
# File name : tb_C7mod_compile.do
# Created on: Wed Apr 24 03:34:23 -0700 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog  -incr -mfcu -sv -work xpm  "+incdir+../../../../roadtest.ip_user_files/ipstatic" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom  -93 -work xpm  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom  -93 -work xil_defaultlib  \
"../../../../roadtest.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_sim_netlist.vhdl" \
"../../../../roadtest.srcs/sources_1/MCU.vhd" \
"../../../../roadtest.srcs/sources_1/TOP.vhd" \
"../../../../roadtest.srcs/sources_1/contador_a_n.vhd" \
"../../../../roadtest.srcs/sources_1/demux_1a4.vhd" \
"../../../../roadtest.srcs/sources_1/mux_4a1.vhd" \
"../../../../roadtest.srcs/sources_1/mux_4a1_n.vhd" \
"../../../../roadtest.srcs/sources_1/one_shot.vhd" \
"../../../../roadtest.srcs/sources_1/uart_MCU.vhd" \
"../../../../roadtest.srcs/sources_1/uart_MCU_12MHz .vhd" \
"../../../../roadtest.srcs/sources_1/uart_MCU_24MHz .vhd" \
"../../../../roadtest.srcs/sources_1/uart_MCU_6MHz.vhd" \
"../../../../roadtest.srcs/sim_1/new/tb_top.vhd" \

# compile glbl module
vlog -work xil_defaultlib "glbl.v"

quit -force

