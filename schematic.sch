# File saved with Nlview 7.5.8 2022-09-21 7111 VDI=41 GEI=38 GUI=JA:10.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new C7mod work:C7mod:NOFILE -nosplit
load symbol contador_a_n work:contador_a_n:NOFILE HIERBOX pin CLK input.left pin FSM_sequential_qp_reg[0] input.left pin FSM_sequential_qp_reg[0]_0 input.left pin FSM_sequential_qp_reg[0]_1 input.left pin led0_b_OBUF output.right pin led0_g_OBUF output.right pin led0_r_OBUF output.right pin mr input.left pin qp_reg[0]_0 output.right pin sTX_MCU input.left pin sTX_MCU_0 input.left pin sTX_MCU_1 input.left pin sTX_MCU_OBUF output.right pin tx input.left pin tx_bM output.right pin tx_busy input.left pin tx_eM2 output.right pin tx_eM3 output.right pin tx_state input.left pin tx_state_0 input.left pin tx_state_1 input.left pinBus E output.right [0:0] pinBus Q output.right [1:0] pinBus tx_count_reg[0] input.left [1:0] pinBus tx_state_reg output.right [0:0] pinBus tx_state_reg_0 output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_MCU work:uart_MCU:NOFILE HIERBOX pin clk_out1 input.left pin mr input.left pin tx output.right pin tx_busy output.right pin tx_eM0 input.left pin tx_state output.right pinBus E input.left [0:0] pinBus Q input.left [1:0] pinBus tx_buffer_reg[9]_0 input.left [7:0] pinBus tx_busy_reg_0 input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_MCU_6MHz work:uart_MCU_6MHz:NOFILE HIERBOX pin clk_out1 input.left pin mr input.left pin tx_buffer_reg[8]_0 input.left pin tx_busy_reg_0 output.right pin tx_reg_0 output.right pin tx_state output.right pinBus E input.left [0:0] pinBus Q input.left [1:0] pinBus tx_buffer_reg[9]_0 input.left [7:0] pinBus tx_busy_reg_1 input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_MCU_12MHz work:uart_MCU_12MHz:NOFILE HIERBOX pin clk_out1 input.left pin mr input.left pin tx_busy_reg_0 output.right pin tx_eM2 input.left pin tx_reg_0 output.right pin tx_state output.right pinBus E input.left [0:0] pinBus Q input.left [1:0] pinBus tx_buffer_reg[9]_0 input.left [7:0] pinBus tx_busy_reg_1 input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_MCU_24MHz work:uart_MCU_24MHz:NOFILE HIERBOX pin clk_out1 input.left pin mr input.left pin tx_busy_reg_0 output.right pin tx_eM3 input.left pin tx_reg_0 output.right pin tx_state output.right pinBus E input.left [0:0] pinBus Q input.left [1:0] pinBus tx_buffer_reg[9]_0 input.left [7:0] pinBus tx_busy_reg_1 input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol clk_wiz_0 work_library0_1:clk_wiz_0:clk_wiz_0.edf HIERBOX pin clk_in1 input.left pin clk_out1 output.right pin locked output.right pin reset input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol one_shot work:one_shot:NOFILE HIERBOX pin CLK output.right pin clk_out1 input.left pin mbr input.left pin mr input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol contador work:contador:NOFILE HIERBOX pin CLK input.left pin mr input.left pinBus Q output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol fsm_contador work:fsm_contador:NOFILE HIERBOX pin CLK output.right pin clk_out1 input.left pin mr input.left pin tx_bM input.left pin tx_eM0 output.right pin tx_state input.left pinBus E output.right [0:0] pinBus Q output.right [1:0] pinBus tx_count_reg[0] input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load port btn0 input -pg 1 -lvl 0 -x 0 -y 400
load port btn1 input -pg 1 -lvl 0 -x 0 -y 170
load port clk_pin input -pg 1 -lvl 0 -x 0 -y 290
load port led0_b output -pg 1 -lvl 9 -x 2920 -y 290
load port led0_g output -pg 1 -lvl 9 -x 2920 -y 360
load port led0_r output -pg 1 -lvl 9 -x 2920 -y 430
load port sRX_MCU input -pg 1 -lvl 0 -x 0 -y 20
load port sTX_MCU output -pg 1 -lvl 9 -x 2920 -y 500
load inst BR_Counter contador_a_n work:contador_a_n:NOFILE -autohide -attr @cell(#000000) contador_a_n -pinBusAttr E @name E -pinBusAttr Q @name Q[1:0] -pinBusAttr tx_count_reg[0] @name tx_count_reg[0][1:0] -pinBusAttr tx_state_reg @name tx_state_reg -pinBusAttr tx_state_reg_0 @name tx_state_reg_0 -pg 1 -lvl 7 -x 2350 -y 320
load inst MCU_uart_0 uart_MCU work:uart_MCU:NOFILE -autohide -attr @cell(#000000) uart_MCU -pinBusAttr E @name E -pinBusAttr Q @name Q[1:0] -pinBusAttr tx_buffer_reg[9]_0 @name tx_buffer_reg[9]_0[7:0] -pinBusAttr tx_busy_reg_0 @name tx_busy_reg_0[1:0] -pg 1 -lvl 6 -x 1760 -y 180
load inst MCU_uart_1 uart_MCU_6MHz work:uart_MCU_6MHz:NOFILE -autohide -attr @cell(#000000) uart_MCU_6MHz -pinBusAttr E @name E -pinBusAttr Q @name Q[1:0] -pinBusAttr tx_buffer_reg[9]_0 @name tx_buffer_reg[9]_0[7:0] -pinBusAttr tx_busy_reg_1 @name tx_busy_reg_1[1:0] -pg 1 -lvl 6 -x 1760 -y 420
load inst MCU_uart_2 uart_MCU_12MHz work:uart_MCU_12MHz:NOFILE -autohide -attr @cell(#000000) uart_MCU_12MHz -pinBusAttr E @name E -pinBusAttr Q @name Q[1:0] -pinBusAttr tx_buffer_reg[9]_0 @name tx_buffer_reg[9]_0[7:0] -pinBusAttr tx_busy_reg_1 @name tx_busy_reg_1[1:0] -pg 1 -lvl 6 -x 1760 -y 820
load inst MCU_uart_3 uart_MCU_24MHz work:uart_MCU_24MHz:NOFILE -autohide -attr @cell(#000000) uart_MCU_24MHz -pinBusAttr E @name E -pinBusAttr Q @name Q[1:0] -pinBusAttr tx_buffer_reg[9]_0 @name tx_buffer_reg[9]_0[7:0] -pinBusAttr tx_busy_reg_1 @name tx_busy_reg_1[1:0] -pg 1 -lvl 3 -x 630 -y 320
load inst New_Clock clk_wiz_0 work_library0_1:clk_wiz_0:clk_wiz_0.edf -autohide -attr @cell(#000000) clk_wiz_0 -pinAttr locked @attr n/c -pg 1 -lvl 1 -x 90 -y 280
load inst Shot one_shot work:one_shot:NOFILE -autohide -attr @cell(#000000) one_shot -pg 1 -lvl 6 -x 1760 -y 50
load inst Tx_Counter contador work:contador:NOFILE -autohide -attr @cell(#000000) contador -pinBusAttr Q @name Q[7:0] -pg 1 -lvl 5 -x 1290 -y 480
load inst btn0_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 90 -y 400
load inst btn1_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1050 -y 170
load inst fsm fsm_contador work:fsm_contador:NOFILE -autohide -attr @cell(#000000) fsm_contador -pinBusAttr E @name E -pinBusAttr Q @name Q[1:0] -pinBusAttr tx_count_reg[0] @name tx_count_reg[0][1:0] -pg 1 -lvl 4 -x 1050 -y 520
load inst led0_b_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 8 -x 2740 -y 290
load inst led0_g_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 8 -x 2740 -y 360
load inst led0_r_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 8 -x 2740 -y 430
load inst mbr_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1290 -y 160
load inst mr_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 2 -x 280 -y 390
load inst sTX_MCU_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 8 -x 2740 -y 500
load net <const0> -ground -pin New_Clock reset -pin mbr_reg R -pin mr_reg R
load net <const1> -power -pin mbr_reg CE -pin mr_reg CE
load net BR_Counter_n_0 -attr @rip(#000000) E[0] -pin BR_Counter E[0] -pin MCU_uart_0 E[0]
netloc BR_Counter_n_0 1 5 3 1600 350 1980J 270 2560
load net BR_Counter_n_12 -pin BR_Counter qp_reg[0]_0 -pin MCU_uart_1 tx_buffer_reg[8]_0
netloc BR_Counter_n_12 1 5 3 1600 630 NJ 630 2560
load net BR_Counter_n_3 -attr @rip(#000000) tx_state_reg[0] -pin BR_Counter tx_state_reg[0] -pin MCU_uart_1 E[0]
netloc BR_Counter_n_3 1 5 3 1580 650 NJ 650 2600
load net BR_Counter_n_4 -attr @rip(#000000) tx_state_reg_0[0] -pin BR_Counter tx_state_reg_0[0] -pin MCU_uart_2 E[0]
netloc BR_Counter_n_4 1 5 3 1600 710 NJ 710 2540
load net MCU_uart_1_n_1 -pin BR_Counter sTX_MCU -pin MCU_uart_1 tx_reg_0
netloc MCU_uart_1_n_1 1 6 1 2020 430n
load net MCU_uart_1_n_2 -pin BR_Counter FSM_sequential_qp_reg[0] -pin MCU_uart_1 tx_busy_reg_0
netloc MCU_uart_1_n_2 1 6 1 2000 350n
load net MCU_uart_2_n_1 -pin BR_Counter sTX_MCU_1 -pin MCU_uart_2 tx_reg_0
netloc MCU_uart_2_n_1 1 6 1 2140 470n
load net MCU_uart_2_n_2 -pin BR_Counter FSM_sequential_qp_reg[0]_1 -pin MCU_uart_2 tx_busy_reg_0
netloc MCU_uart_2_n_2 1 6 1 2080 390n
load net MCU_uart_3_n_1 -pin BR_Counter sTX_MCU_0 -pin MCU_uart_3 tx_reg_0
netloc MCU_uart_3_n_1 1 3 4 850J 430 NJ 430 1520J 590 2100
load net MCU_uart_3_n_2 -pin BR_Counter FSM_sequential_qp_reg[0]_0 -pin MCU_uart_3 tx_busy_reg_0
netloc MCU_uart_3_n_2 1 3 4 NJ 370 NJ 370 NJ 370 N
load net btn0 -port btn0 -pin btn0_IBUF_inst I
netloc btn0 1 0 1 NJ 400
load net btn0_IBUF -pin btn0_IBUF_inst O -pin mr_reg D
netloc btn0_IBUF 1 1 1 NJ 400
load net btn1 -port btn1 -pin btn1_IBUF_inst I
netloc btn1 1 0 4 NJ 170 NJ 170 NJ 170 NJ
load net btn1_IBUF -pin btn1_IBUF_inst O -pin mbr_reg D
netloc btn1_IBUF 1 4 1 NJ 170
load net cc -pin Tx_Counter CLK -pin fsm CLK
netloc cc 1 4 1 1230 490n
load net clk -pin MCU_uart_0 clk_out1 -pin MCU_uart_1 clk_out1 -pin MCU_uart_2 clk_out1 -pin MCU_uart_3 clk_out1 -pin New_Clock clk_out1 -pin Shot clk_out1 -pin fsm clk_out1 -pin mbr_reg C -pin mr_reg C
netloc clk 1 1 5 230 290 370 270 870 130 1190 60 1440
load net clk_pin -pin New_Clock clk_in1 -port clk_pin
netloc clk_pin 1 0 1 NJ 290
load net fsm_n_3 -attr @rip(#000000) E[0] -pin MCU_uart_3 E[0] -pin fsm E[0]
netloc fsm_n_3 1 2 3 410 530 850J 470 1190
load net led0_b -port led0_b -pin led0_b_OBUF_inst O
netloc led0_b 1 8 1 NJ 290
load net led0_b_OBUF -pin BR_Counter led0_b_OBUF -pin led0_b_OBUF_inst I
netloc led0_b_OBUF 1 7 1 2680J 290n
load net led0_g -port led0_g -pin led0_g_OBUF_inst O
netloc led0_g 1 8 1 NJ 360
load net led0_g_OBUF -pin BR_Counter led0_g_OBUF -pin led0_g_OBUF_inst I
netloc led0_g_OBUF 1 7 1 2700J 360n
load net led0_r -port led0_r -pin led0_r_OBUF_inst O
netloc led0_r 1 8 1 NJ 430
load net led0_r_OBUF -pin BR_Counter led0_r_OBUF -pin led0_r_OBUF_inst I
netloc led0_r_OBUF 1 7 1 NJ 430
load net mbr -pin Shot mbr -pin mbr_reg Q
netloc mbr 1 5 1 1420 80n
load net mr -pin BR_Counter mr -pin MCU_uart_0 mr -pin MCU_uart_1 mr -pin MCU_uart_2 mr -pin MCU_uart_3 mr -pin Shot mr -pin Tx_Counter mr -pin fsm mr -pin mr_reg Q
netloc mr 1 2 5 370 550 910 450 1210 550 1460 610 2040
load net os -pin BR_Counter CLK -pin Shot CLK
netloc os 1 6 1 2140 80n
load net p_1_in[2] -attr @rip(#000000) Q[0] -pin MCU_uart_0 tx_buffer_reg[9]_0[0] -pin MCU_uart_1 tx_buffer_reg[9]_0[0] -pin MCU_uart_2 tx_buffer_reg[9]_0[0] -pin MCU_uart_3 tx_buffer_reg[9]_0[0] -pin Tx_Counter Q[0]
load net p_1_in[3] -attr @rip(#000000) Q[1] -pin MCU_uart_0 tx_buffer_reg[9]_0[1] -pin MCU_uart_1 tx_buffer_reg[9]_0[1] -pin MCU_uart_2 tx_buffer_reg[9]_0[1] -pin MCU_uart_3 tx_buffer_reg[9]_0[1] -pin Tx_Counter Q[1]
load net p_1_in[4] -attr @rip(#000000) Q[2] -pin MCU_uart_0 tx_buffer_reg[9]_0[2] -pin MCU_uart_1 tx_buffer_reg[9]_0[2] -pin MCU_uart_2 tx_buffer_reg[9]_0[2] -pin MCU_uart_3 tx_buffer_reg[9]_0[2] -pin Tx_Counter Q[2]
load net p_1_in[5] -attr @rip(#000000) Q[3] -pin MCU_uart_0 tx_buffer_reg[9]_0[3] -pin MCU_uart_1 tx_buffer_reg[9]_0[3] -pin MCU_uart_2 tx_buffer_reg[9]_0[3] -pin MCU_uart_3 tx_buffer_reg[9]_0[3] -pin Tx_Counter Q[3]
load net p_1_in[6] -attr @rip(#000000) Q[4] -pin MCU_uart_0 tx_buffer_reg[9]_0[4] -pin MCU_uart_1 tx_buffer_reg[9]_0[4] -pin MCU_uart_2 tx_buffer_reg[9]_0[4] -pin MCU_uart_3 tx_buffer_reg[9]_0[4] -pin Tx_Counter Q[4]
load net p_1_in[7] -attr @rip(#000000) Q[5] -pin MCU_uart_0 tx_buffer_reg[9]_0[5] -pin MCU_uart_1 tx_buffer_reg[9]_0[5] -pin MCU_uart_2 tx_buffer_reg[9]_0[5] -pin MCU_uart_3 tx_buffer_reg[9]_0[5] -pin Tx_Counter Q[5]
load net p_1_in[8] -attr @rip(#000000) Q[6] -pin MCU_uart_0 tx_buffer_reg[9]_0[6] -pin MCU_uart_1 tx_buffer_reg[9]_0[6] -pin MCU_uart_2 tx_buffer_reg[9]_0[6] -pin MCU_uart_3 tx_buffer_reg[9]_0[6] -pin Tx_Counter Q[6]
load net p_1_in[9] -attr @rip(#000000) Q[7] -pin MCU_uart_0 tx_buffer_reg[9]_0[7] -pin MCU_uart_1 tx_buffer_reg[9]_0[7] -pin MCU_uart_2 tx_buffer_reg[9]_0[7] -pin MCU_uart_3 tx_buffer_reg[9]_0[7] -pin Tx_Counter Q[7]
load net qp[0] -attr @rip(#000000) Q[0] -pin BR_Counter tx_count_reg[0][0] -pin MCU_uart_0 Q[0] -pin MCU_uart_1 tx_busy_reg_1[0] -pin MCU_uart_2 tx_busy_reg_1[0] -pin MCU_uart_3 tx_busy_reg_1[0] -pin fsm Q[0]
load net qp[1] -attr @rip(#000000) Q[1] -pin BR_Counter tx_count_reg[0][1] -pin MCU_uart_0 Q[1] -pin MCU_uart_1 tx_busy_reg_1[1] -pin MCU_uart_2 tx_busy_reg_1[1] -pin MCU_uart_3 tx_busy_reg_1[1] -pin fsm Q[1]
load net sTX_MCU -port sTX_MCU -pin sTX_MCU_OBUF_inst O
netloc sTX_MCU 1 8 1 NJ 500
load net sTX_MCU_OBUF -pin BR_Counter sTX_MCU_OBUF -pin sTX_MCU_OBUF_inst I
netloc sTX_MCU_OBUF 1 7 1 2700J 470n
load net s[0] -attr @rip(#000000) Q[0] -pin BR_Counter Q[0] -pin MCU_uart_0 tx_busy_reg_0[0] -pin MCU_uart_1 Q[0] -pin MCU_uart_2 Q[0] -pin MCU_uart_3 Q[0] -pin fsm tx_count_reg[0][0]
load net s[1] -attr @rip(#000000) Q[1] -pin BR_Counter Q[1] -pin MCU_uart_0 tx_busy_reg_0[1] -pin MCU_uart_1 Q[1] -pin MCU_uart_2 Q[1] -pin MCU_uart_3 Q[1] -pin fsm tx_count_reg[0][1]
load net tx -pin BR_Counter tx -pin MCU_uart_0 tx
netloc tx 1 6 1 2120 230n
load net tx_bM -pin BR_Counter tx_bM -pin fsm tx_bM
netloc tx_bM 1 3 5 910 690 NJ 690 NJ 690 NJ 690 2640
load net tx_busy -pin BR_Counter tx_busy -pin MCU_uart_0 tx_busy
netloc tx_busy 1 6 1 2060 250n
load net tx_eM0 -pin MCU_uart_0 tx_eM0 -pin fsm tx_eM0
netloc tx_eM0 1 4 2 N 590 1500J
load net tx_eM2 -pin BR_Counter tx_eM2 -pin MCU_uart_2 tx_eM2
netloc tx_eM2 1 5 3 1560 770 NJ 770 2580
load net tx_eM3 -pin BR_Counter tx_eM3 -pin MCU_uart_3 tx_eM3
netloc tx_eM3 1 2 6 430 670 NJ 670 NJ 670 NJ 670 NJ 670 2620
load net tx_state -pin BR_Counter tx_state -pin MCU_uart_0 tx_state
netloc tx_state 1 6 1 1960 270n
load net tx_state_0 -pin BR_Counter tx_state_0 -pin MCU_uart_1 tx_state
netloc tx_state_0 1 6 1 1940 510n
load net tx_state_1 -pin BR_Counter tx_state_1 -pin MCU_uart_2 tx_state
netloc tx_state_1 1 6 1 2160 590n
load net tx_state_2 -pin MCU_uart_3 tx_state -pin fsm tx_state
netloc tx_state_2 1 3 1 810 410n
load netBundle @s 2 s[1] s[0] -autobundled
netbloc @s 1 2 6 470 490 890 390 NJ 390 1540 730 NJ 730 2660
load netBundle @p_1_in 8 p_1_in[9] p_1_in[8] p_1_in[7] p_1_in[6] p_1_in[5] p_1_in[4] p_1_in[3] p_1_in[2] -autobundled
netbloc @p_1_in 1 2 4 450 510 830J 410 NJ 410 1420
load netBundle @qp 2 qp[1] qp[0] -autobundled
netbloc @qp 1 2 5 390 650 NJ 650 1230 570 1480 750 2120
levelinfo -pg 1 0 90 280 630 1050 1290 1760 2350 2740 2920
pagesize -pg 1 -db -bbox -sgen -120 0 3040 990
show
fullfit
#
# initialize ictrl to current module C7mod work:C7mod:NOFILE
ictrl init topinfo |
