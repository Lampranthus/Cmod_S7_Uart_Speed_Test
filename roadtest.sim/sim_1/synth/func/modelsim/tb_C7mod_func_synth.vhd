-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Jun 27 00:05:30 2020
-- Host        : DESKTOP-NMNH6I5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Olivine/roadtest_usart/roadtest/roadtest.sim/sim_1/synth/func/modelsim/tb_C7mod_func_synth.vhd
-- Design      : C7mod
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MCU is
  port (
    tx_eM : out STD_LOGIC;
    Led1_OBUF : out STD_LOGIC;
    Led2_OBUF : out STD_LOGIC;
    Led3_OBUF : out STD_LOGIC;
    Led4_OBUF : out STD_LOGIC;
    new_data_cab : out STD_LOGIC;
    \LED11__7\ : out STD_LOGIC;
    \Tx_data_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rx_busy : in STD_LOGIC;
    CLK : in STD_LOGIC;
    mr : in STD_LOGIC;
    LED1_reg_0 : in STD_LOGIC;
    LED2_reg_0 : in STD_LOGIC;
    LED3_reg_0 : in STD_LOGIC;
    tx_bM : in STD_LOGIC;
    LED4_reg_0 : in STD_LOGIC;
    LED4_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end MCU;

architecture STRUCTURE of MCU is
  signal CABECERA : STD_LOGIC;
  signal CABE_DATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CABE_DATA1 : STD_LOGIC;
  signal \CABE_DATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \CABE_DATA[7]_i_2_n_0\ : STD_LOGIC;
  signal CNT : STD_LOGIC;
  signal \CNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \CNT[1]_i_1_n_0\ : STD_LOGIC;
  signal \CNT[2]_i_2_n_0\ : STD_LOGIC;
  signal \CNT[2]_i_6_n_0\ : STD_LOGIC;
  signal \CNT_reg_n_0_[0]\ : STD_LOGIC;
  signal \CNT_reg_n_0_[1]\ : STD_LOGIC;
  signal \CNT_reg_n_0_[2]\ : STD_LOGIC;
  signal FIN_i_1_n_0 : STD_LOGIC;
  signal FIN_i_2_n_0 : STD_LOGIC;
  signal FIN_reg_n_0 : STD_LOGIC;
  signal \^led11__7\ : STD_LOGIC;
  signal LED4_i_1_n_0 : STD_LOGIC;
  signal \^led4_obuf\ : STD_LOGIC;
  signal Tx_01_i_1_n_0 : STD_LOGIC;
  signal Tx_data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Tx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \^new_data_cab\ : STD_LOGIC;
  signal r_busy_0 : STD_LOGIC;
  signal r_busy_1 : STD_LOGIC;
  signal sig0 : STD_LOGIC;
  signal sig_i_1_n_0 : STD_LOGIC;
  signal sig_reg_n_0 : STD_LOGIC;
  signal \^tx_em\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CABECERA_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CABE_DATA[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \CABE_DATA[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \CABE_DATA[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CABE_DATA[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \CABE_DATA[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \CABE_DATA[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CABE_DATA[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CABE_DATA[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \CNT[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \CNT[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \CNT[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \CNT[2]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \CNT[2]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Tx_data[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Tx_data[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Tx_data[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Tx_data[6]_i_1\ : label is "soft_lutpair8";
begin
  \LED11__7\ <= \^led11__7\;
  Led4_OBUF <= \^led4_obuf\;
  new_data_cab <= \^new_data_cab\;
  tx_eM <= \^tx_em\;
CABECERA_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => r_busy_0,
      I1 => r_busy_1,
      I2 => CABECERA,
      O => CABE_DATA1
    );
CABECERA_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => CABE_DATA1,
      Q => CABECERA
    );
\CABE_DATA[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(0),
      O => \CABE_DATA[0]_i_1_n_0\
    );
\CABE_DATA[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(1),
      O => \CABE_DATA[1]_i_1_n_0\
    );
\CABE_DATA[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(2),
      O => \CABE_DATA[2]_i_1_n_0\
    );
\CABE_DATA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(3),
      O => \CABE_DATA[3]_i_1_n_0\
    );
\CABE_DATA[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(4),
      O => \CABE_DATA[4]_i_1_n_0\
    );
\CABE_DATA[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(5),
      O => \CABE_DATA[5]_i_1_n_0\
    );
\CABE_DATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(6),
      O => \CABE_DATA[6]_i_1_n_0\
    );
\CABE_DATA[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => FIN_reg_n_0,
      O => \CABE_DATA[7]_i_1_n_0\
    );
\CABE_DATA[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CABECERA,
      I1 => r_busy_1,
      I2 => r_busy_0,
      I3 => Q(7),
      O => \CABE_DATA[7]_i_2_n_0\
    );
\CABE_DATA_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[0]_i_1_n_0\,
      Q => CABE_DATA(0)
    );
\CABE_DATA_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[1]_i_1_n_0\,
      Q => CABE_DATA(1)
    );
\CABE_DATA_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[2]_i_1_n_0\,
      Q => CABE_DATA(2)
    );
\CABE_DATA_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[3]_i_1_n_0\,
      Q => CABE_DATA(3)
    );
\CABE_DATA_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[4]_i_1_n_0\,
      Q => CABE_DATA(4)
    );
\CABE_DATA_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[5]_i_1_n_0\,
      Q => CABE_DATA(5)
    );
\CABE_DATA_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[6]_i_1_n_0\,
      Q => CABE_DATA(6)
    );
\CABE_DATA_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \CABE_DATA[7]_i_1_n_0\,
      CLR => mr,
      D => \CABE_DATA[7]_i_2_n_0\,
      Q => CABE_DATA(7)
    );
\CNT[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => tx_bM,
      I1 => \CNT_reg_n_0_[2]\,
      I2 => \CNT_reg_n_0_[1]\,
      I3 => \CNT_reg_n_0_[0]\,
      O => \CNT[0]_i_1_n_0\
    );
\CNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \CNT_reg_n_0_[0]\,
      I1 => \CNT_reg_n_0_[1]\,
      O => \CNT[1]_i_1_n_0\
    );
\CNT[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222020"
    )
        port map (
      I0 => \^led11__7\,
      I1 => \^new_data_cab\,
      I2 => sig0,
      I3 => tx_bM,
      I4 => sig_reg_n_0,
      O => CNT
    );
\CNT[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CC4"
    )
        port map (
      I0 => tx_bM,
      I1 => \CNT_reg_n_0_[2]\,
      I2 => \CNT_reg_n_0_[0]\,
      I3 => \CNT_reg_n_0_[1]\,
      O => \CNT[2]_i_2_n_0\
    );
\CNT[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => CABECERA,
      I1 => \CNT[2]_i_6_n_0\,
      I2 => CABE_DATA(7),
      I3 => CABE_DATA(1),
      I4 => CABE_DATA(4),
      I5 => CABE_DATA(5),
      O => \^led11__7\
    );
\CNT[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => r_busy_0,
      I1 => r_busy_1,
      I2 => CABECERA,
      O => \^new_data_cab\
    );
\CNT[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \CNT_reg_n_0_[1]\,
      I1 => \CNT_reg_n_0_[0]\,
      I2 => \CNT_reg_n_0_[2]\,
      I3 => tx_bM,
      O => sig0
    );
\CNT[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => CABE_DATA(6),
      I1 => CABE_DATA(0),
      I2 => CABE_DATA(3),
      I3 => CABE_DATA(2),
      O => \CNT[2]_i_6_n_0\
    );
\CNT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => \CNT[0]_i_1_n_0\,
      Q => \CNT_reg_n_0_[0]\
    );
\CNT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => \CNT[1]_i_1_n_0\,
      Q => \CNT_reg_n_0_[1]\
    );
\CNT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => \CNT[2]_i_2_n_0\,
      Q => \CNT_reg_n_0_[2]\
    );
FIN_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF2020"
    )
        port map (
      I0 => \^led11__7\,
      I1 => \^new_data_cab\,
      I2 => sig0,
      I3 => FIN_i_2_n_0,
      I4 => FIN_reg_n_0,
      O => FIN_i_1_n_0
    );
FIN_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^tx_em\,
      I1 => tx_bM,
      I2 => sig_reg_n_0,
      O => FIN_i_2_n_0
    );
FIN_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => FIN_i_1_n_0,
      Q => FIN_reg_n_0
    );
LED1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => LED1_reg_0,
      Q => Led1_OBUF
    );
LED2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => LED2_reg_0,
      Q => Led2_OBUF
    );
LED3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => LED3_reg_0,
      Q => Led3_OBUF
    );
LED4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FFFF20000000"
    )
        port map (
      I0 => \^led11__7\,
      I1 => LED4_reg_0,
      I2 => LED4_reg_1,
      I3 => Q(2),
      I4 => \^new_data_cab\,
      I5 => \^led4_obuf\,
      O => LED4_i_1_n_0
    );
LED4_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => LED4_i_1_n_0,
      Q => \^led4_obuf\
    );
Tx_01_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD00DF02DD00DF00"
    )
        port map (
      I0 => \^led11__7\,
      I1 => \^new_data_cab\,
      I2 => sig0,
      I3 => \^tx_em\,
      I4 => tx_bM,
      I5 => sig_reg_n_0,
      O => Tx_01_i_1_n_0
    );
Tx_01_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => Tx_01_i_1_n_0,
      Q => \^tx_em\
    );
\Tx_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \CNT_reg_n_0_[1]\,
      I1 => \CNT_reg_n_0_[0]\,
      I2 => \CNT_reg_n_0_[2]\,
      O => Tx_data(0)
    );
\Tx_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \CNT_reg_n_0_[2]\,
      I1 => \CNT_reg_n_0_[0]\,
      I2 => \CNT_reg_n_0_[1]\,
      O => \Tx_data[1]_i_1_n_0\
    );
\Tx_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \CNT_reg_n_0_[0]\,
      I1 => \CNT_reg_n_0_[1]\,
      I2 => \CNT_reg_n_0_[2]\,
      O => Tx_data(2)
    );
\Tx_data[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CNT_reg_n_0_[2]\,
      O => Tx_data(3)
    );
\Tx_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CNT_reg_n_0_[1]\,
      I1 => \CNT_reg_n_0_[2]\,
      O => Tx_data(6)
    );
\Tx_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => Tx_data(0),
      Q => \Tx_data_reg[6]_0\(0)
    );
\Tx_data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => \Tx_data[1]_i_1_n_0\,
      Q => \Tx_data_reg[6]_0\(1)
    );
\Tx_data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => Tx_data(2),
      Q => \Tx_data_reg[6]_0\(2)
    );
\Tx_data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => Tx_data(3),
      Q => \Tx_data_reg[6]_0\(3)
    );
\Tx_data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => CNT,
      CLR => mr,
      D => Tx_data(6),
      Q => \Tx_data_reg[6]_0\(4)
    );
r_busy_0_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => rx_busy,
      Q => r_busy_0
    );
r_busy_1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => r_busy_0,
      Q => r_busy_1
    );
sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7777770A000000"
    )
        port map (
      I0 => \^led11__7\,
      I1 => sig0,
      I2 => r_busy_0,
      I3 => r_busy_1,
      I4 => CABECERA,
      I5 => sig_reg_n_0,
      O => sig_i_1_n_0
    );
sig_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => sig_i_1_n_0,
      Q => sig_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_wiz_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end clk_wiz_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of clk_wiz_0_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 62.500000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 83.333000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 7.500000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_MCU is
  port (
    sTX_MCU_OBUF : out STD_LOGIC;
    tx_bM : out STD_LOGIC;
    rx_busy : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_data_reg[7]_0\ : out STD_LOGIC;
    \rx_data_reg[0]_0\ : out STD_LOGIC;
    \rx_data_reg[0]_1\ : out STD_LOGIC;
    \rx_data_reg[1]_0\ : out STD_LOGIC;
    \rx_data_reg[1]_1\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    mr : in STD_LOGIC;
    sRX_MCU_IBUF : in STD_LOGIC;
    tx_eM : in STD_LOGIC;
    new_data_cab : in STD_LOGIC;
    \tx_buffer_reg[8]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \LED11__7\ : in STD_LOGIC;
    Led1_OBUF : in STD_LOGIC;
    Led2_OBUF : in STD_LOGIC;
    Led3_OBUF : in STD_LOGIC
  );
end uart_MCU;

architecture STRUCTURE of uart_MCU is
  signal LED1_i_3_n_0 : STD_LOGIC;
  signal LED2_i_2_n_0 : STD_LOGIC;
  signal LED3_i_2_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal baud_pulse : STD_LOGIC;
  signal baud_pulse_i_1_n_0 : STD_LOGIC;
  signal \count_baud[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_baud[6]_i_2_n_0\ : STD_LOGIC;
  signal count_baud_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_os[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_os[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_os[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_os[2]_i_2_n_0\ : STD_LOGIC;
  signal \count_os[2]_i_3_n_0\ : STD_LOGIC;
  signal \count_os_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_os_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_os_reg_n_0_[2]\ : STD_LOGIC;
  signal os_count0 : STD_LOGIC;
  signal \os_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \os_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \os_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \os_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \os_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \os_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \os_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \os_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \os_count_reg_n_0_[3]\ : STD_LOGIC;
  signal os_pulse : STD_LOGIC;
  signal os_pulse_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \rx_buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buffer[8]_i_2_n_0\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \^rx_busy\ : STD_LOGIC;
  signal rx_busy_i_1_n_0 : STD_LOGIC;
  signal rx_busy_i_2_n_0 : STD_LOGIC;
  signal rx_count0 : STD_LOGIC;
  signal rx_count_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \rx_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_count_reg_n_0_[2]\ : STD_LOGIC;
  signal rx_data0 : STD_LOGIC;
  signal \^rx_data_reg[7]_0\ : STD_LOGIC;
  signal rx_state_i_1_n_0 : STD_LOGIC;
  signal rx_state_reg_n_0 : STD_LOGIC;
  signal \^tx_bm\ : STD_LOGIC;
  signal \tx_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_busy_i_1_n_0 : STD_LOGIC;
  signal \tx_count[3]_i_1_n_0\ : STD_LOGIC;
  signal tx_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_state : STD_LOGIC;
  signal tx_state_i_1_n_0 : STD_LOGIC;
  signal tx_state_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of LED1_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of LED2_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of LED3_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of LED4_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_baud[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_baud[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_baud[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_baud[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_baud[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_baud[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_baud[6]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_os[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_os[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_os[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_os[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \os_count[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \os_count[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \os_count[3]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of os_pulse_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of rx_busy_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rx_count[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rx_count[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_buffer[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_buffer[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_buffer[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_buffer[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_buffer[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_buffer[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_buffer[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_count[2]_i_1\ : label is "soft_lutpair15";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  rx_busy <= \^rx_busy\;
  \rx_data_reg[7]_0\ <= \^rx_data_reg[7]_0\;
  tx_bM <= \^tx_bm\;
LED1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF02000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^rx_data_reg[7]_0\,
      I3 => \LED11__7\,
      I4 => LED1_i_3_n_0,
      I5 => Led1_OBUF,
      O => \rx_data_reg[0]_1\
    );
LED1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(5),
      O => \^rx_data_reg[7]_0\
    );
LED1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA822"
    )
        port map (
      I0 => new_data_cab,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^rx_data_reg[7]_0\,
      O => LED1_i_3_n_0
    );
LED2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF02000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^rx_data_reg[7]_0\,
      I3 => \LED11__7\,
      I4 => LED2_i_2_n_0,
      I5 => Led2_OBUF,
      O => \rx_data_reg[1]_0\
    );
LED2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA822"
    )
        port map (
      I0 => new_data_cab,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^rx_data_reg[7]_0\,
      O => LED2_i_2_n_0
    );
LED3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF02000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^rx_data_reg[7]_0\,
      I3 => \LED11__7\,
      I4 => LED3_i_2_n_0,
      I5 => Led3_OBUF,
      O => \rx_data_reg[1]_1\
    );
LED3_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA882"
    )
        port map (
      I0 => new_data_cab,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^rx_data_reg[7]_0\,
      O => LED3_i_2_n_0
    );
LED4_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \rx_data_reg[0]_0\
    );
baud_pulse_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_os[2]_i_2_n_0\,
      O => baud_pulse_i_1_n_0
    );
baud_pulse_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => baud_pulse_i_1_n_0,
      Q => baud_pulse
    );
\count_baud[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_os[2]_i_2_n_0\,
      I1 => count_baud_reg(0),
      O => \count_baud[0]_i_1_n_0\
    );
\count_baud[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => count_baud_reg(1),
      I1 => count_baud_reg(0),
      I2 => \count_os[2]_i_2_n_0\,
      O => p_0_in(1)
    );
\count_baud[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => count_baud_reg(2),
      I1 => count_baud_reg(1),
      I2 => count_baud_reg(0),
      I3 => \count_os[2]_i_2_n_0\,
      O => p_0_in(2)
    );
\count_baud[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => count_baud_reg(3),
      I1 => count_baud_reg(2),
      I2 => count_baud_reg(0),
      I3 => count_baud_reg(1),
      I4 => \count_os[2]_i_2_n_0\,
      O => p_0_in(3)
    );
\count_baud[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => count_baud_reg(4),
      I1 => count_baud_reg(3),
      I2 => count_baud_reg(1),
      I3 => count_baud_reg(0),
      I4 => count_baud_reg(2),
      I5 => \count_os[2]_i_2_n_0\,
      O => p_0_in(4)
    );
\count_baud[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => count_baud_reg(5),
      I1 => \count_baud[6]_i_2_n_0\,
      I2 => \count_os[2]_i_2_n_0\,
      O => p_0_in(5)
    );
\count_baud[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => count_baud_reg(6),
      I1 => count_baud_reg(5),
      I2 => \count_baud[6]_i_2_n_0\,
      I3 => \count_os[2]_i_2_n_0\,
      O => p_0_in(6)
    );
\count_baud[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_baud_reg(4),
      I1 => count_baud_reg(2),
      I2 => count_baud_reg(0),
      I3 => count_baud_reg(1),
      I4 => count_baud_reg(3),
      O => \count_baud[6]_i_2_n_0\
    );
\count_baud_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => \count_baud[0]_i_1_n_0\,
      Q => count_baud_reg(0)
    );
\count_baud_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => p_0_in(1),
      Q => count_baud_reg(1)
    );
\count_baud_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => p_0_in(2),
      Q => count_baud_reg(2)
    );
\count_baud_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => p_0_in(3),
      Q => count_baud_reg(3)
    );
\count_baud_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => p_0_in(4),
      Q => count_baud_reg(4)
    );
\count_baud_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => p_0_in(5),
      Q => count_baud_reg(5)
    );
\count_baud_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => p_0_in(6),
      Q => count_baud_reg(6)
    );
\count_os[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => \count_os_reg_n_0_[2]\,
      I1 => \count_os_reg_n_0_[1]\,
      I2 => \count_os_reg_n_0_[0]\,
      I3 => \count_os[2]_i_2_n_0\,
      O => \count_os[0]_i_1_n_0\
    );
\count_os[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \count_os_reg_n_0_[2]\,
      I1 => \count_os[2]_i_2_n_0\,
      I2 => \count_os_reg_n_0_[1]\,
      I3 => \count_os_reg_n_0_[0]\,
      O => \count_os[1]_i_1_n_0\
    );
\count_os[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => \count_os[2]_i_2_n_0\,
      I1 => \count_os_reg_n_0_[2]\,
      I2 => \count_os_reg_n_0_[1]\,
      I3 => \count_os_reg_n_0_[0]\,
      O => \count_os[2]_i_1_n_0\
    );
\count_os[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \count_os[2]_i_3_n_0\,
      I1 => count_baud_reg(6),
      I2 => count_baud_reg(5),
      O => \count_os[2]_i_2_n_0\
    );
\count_os[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => count_baud_reg(0),
      I1 => count_baud_reg(1),
      I2 => count_baud_reg(2),
      I3 => count_baud_reg(4),
      I4 => count_baud_reg(3),
      O => \count_os[2]_i_3_n_0\
    );
\count_os_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => \count_os[0]_i_1_n_0\,
      Q => \count_os_reg_n_0_[0]\
    );
\count_os_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => \count_os[1]_i_1_n_0\,
      Q => \count_os_reg_n_0_[1]\
    );
\count_os_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => \count_os[2]_i_1_n_0\,
      Q => \count_os_reg_n_0_[2]\
    );
\os_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2223"
    )
        port map (
      I0 => rx_state_reg_n_0,
      I1 => \os_count_reg_n_0_[0]\,
      I2 => \os_count_reg_n_0_[3]\,
      I3 => sRX_MCU_IBUF,
      O => \os_count[0]_i_1_n_0\
    );
\os_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AA00BB0"
    )
        port map (
      I0 => rx_state_reg_n_0,
      I1 => \os_count_reg_n_0_[3]\,
      I2 => \os_count_reg_n_0_[0]\,
      I3 => \os_count_reg_n_0_[1]\,
      I4 => sRX_MCU_IBUF,
      O => \os_count[1]_i_1_n_0\
    );
\os_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAAA0000BBBB000"
    )
        port map (
      I0 => rx_state_reg_n_0,
      I1 => \os_count_reg_n_0_[3]\,
      I2 => \os_count_reg_n_0_[0]\,
      I3 => \os_count_reg_n_0_[1]\,
      I4 => \os_count_reg_n_0_[2]\,
      I5 => sRX_MCU_IBUF,
      O => \os_count[2]_i_1_n_0\
    );
\os_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => os_pulse,
      I1 => rx_state_reg_n_0,
      I2 => \os_count[3]_i_3_n_0\,
      I3 => rx_count_reg(3),
      O => os_count0
    );
\os_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888838888888"
    )
        port map (
      I0 => rx_state_reg_n_0,
      I1 => \os_count_reg_n_0_[3]\,
      I2 => \os_count_reg_n_0_[1]\,
      I3 => \os_count_reg_n_0_[0]\,
      I4 => \os_count_reg_n_0_[2]\,
      I5 => sRX_MCU_IBUF,
      O => \os_count[3]_i_2_n_0\
    );
\os_count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \os_count_reg_n_0_[2]\,
      I1 => \os_count_reg_n_0_[3]\,
      I2 => \os_count_reg_n_0_[1]\,
      I3 => \os_count_reg_n_0_[0]\,
      O => \os_count[3]_i_3_n_0\
    );
\os_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => os_count0,
      CLR => mr,
      D => \os_count[0]_i_1_n_0\,
      Q => \os_count_reg_n_0_[0]\
    );
\os_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => os_count0,
      CLR => mr,
      D => \os_count[1]_i_1_n_0\,
      Q => \os_count_reg_n_0_[1]\
    );
\os_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => os_count0,
      CLR => mr,
      D => \os_count[2]_i_1_n_0\,
      Q => \os_count_reg_n_0_[2]\
    );
\os_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => os_count0,
      CLR => mr,
      D => \os_count[3]_i_2_n_0\,
      Q => \os_count_reg_n_0_[3]\
    );
os_pulse_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \count_os[2]_i_2_n_0\,
      I1 => \count_os_reg_n_0_[2]\,
      I2 => \count_os_reg_n_0_[1]\,
      I3 => \count_os_reg_n_0_[0]\,
      O => os_pulse_i_1_n_0
    );
os_pulse_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => os_pulse_i_1_n_0,
      Q => os_pulse
    );
\rx_buffer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => sRX_MCU_IBUF,
      I1 => \os_count_reg_n_0_[3]\,
      I2 => rx_state_reg_n_0,
      I3 => os_pulse,
      I4 => mr,
      O => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => rx_state_reg_n_0,
      I1 => rx_count_reg(3),
      I2 => \os_count[3]_i_3_n_0\,
      I3 => os_pulse,
      I4 => mr,
      O => \rx_buffer[8]_i_2_n_0\
    );
\rx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => \rx_buffer_reg_n_0_[2]\,
      Q => \rx_buffer_reg_n_0_[1]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => \rx_buffer_reg_n_0_[3]\,
      Q => \rx_buffer_reg_n_0_[2]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => \rx_buffer_reg_n_0_[4]\,
      Q => \rx_buffer_reg_n_0_[3]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => \rx_buffer_reg_n_0_[5]\,
      Q => \rx_buffer_reg_n_0_[4]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => \rx_buffer_reg_n_0_[6]\,
      Q => \rx_buffer_reg_n_0_[5]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => \rx_buffer_reg_n_0_[7]\,
      Q => \rx_buffer_reg_n_0_[6]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => \rx_buffer_reg_n_0_[8]\,
      Q => \rx_buffer_reg_n_0_[7]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
\rx_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_buffer[8]_i_2_n_0\,
      D => sRX_MCU_IBUF,
      Q => \rx_buffer_reg_n_0_[8]\,
      R => \rx_buffer[8]_i_1_n_0\
    );
rx_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F4FFF4F00400040"
    )
        port map (
      I0 => sRX_MCU_IBUF,
      I1 => \os_count_reg_n_0_[3]\,
      I2 => os_pulse,
      I3 => rx_state_reg_n_0,
      I4 => rx_busy_i_2_n_0,
      I5 => \^rx_busy\,
      O => rx_busy_i_1_n_0
    );
rx_busy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => rx_count_reg(3),
      I1 => \os_count_reg_n_0_[0]\,
      I2 => \os_count_reg_n_0_[1]\,
      I3 => \os_count_reg_n_0_[3]\,
      I4 => \os_count_reg_n_0_[2]\,
      O => rx_busy_i_2_n_0
    );
rx_busy_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => rx_busy_i_1_n_0,
      Q => \^rx_busy\
    );
\rx_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \rx_count_reg_n_0_[0]\,
      I1 => rx_state_reg_n_0,
      I2 => sRX_MCU_IBUF,
      O => \p_0_in__0\(0)
    );
\rx_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \rx_count_reg_n_0_[0]\,
      I1 => \rx_count_reg_n_0_[1]\,
      I2 => rx_state_reg_n_0,
      I3 => sRX_MCU_IBUF,
      O => \p_0_in__0\(1)
    );
\rx_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7800"
    )
        port map (
      I0 => \rx_count_reg_n_0_[0]\,
      I1 => \rx_count_reg_n_0_[1]\,
      I2 => \rx_count_reg_n_0_[2]\,
      I3 => rx_state_reg_n_0,
      I4 => sRX_MCU_IBUF,
      O => \p_0_in__0\(2)
    );
\rx_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000200020AA20"
    )
        port map (
      I0 => os_pulse,
      I1 => sRX_MCU_IBUF,
      I2 => \os_count_reg_n_0_[3]\,
      I3 => rx_state_reg_n_0,
      I4 => rx_count_reg(3),
      I5 => \os_count[3]_i_3_n_0\,
      O => rx_count0
    );
\rx_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80FFFF7F800000"
    )
        port map (
      I0 => \rx_count_reg_n_0_[1]\,
      I1 => \rx_count_reg_n_0_[0]\,
      I2 => \rx_count_reg_n_0_[2]\,
      I3 => rx_count_reg(3),
      I4 => rx_state_reg_n_0,
      I5 => sRX_MCU_IBUF,
      O => \p_0_in__0\(3)
    );
\rx_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_count0,
      CLR => mr,
      D => \p_0_in__0\(0),
      Q => \rx_count_reg_n_0_[0]\
    );
\rx_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_count0,
      CLR => mr,
      D => \p_0_in__0\(1),
      Q => \rx_count_reg_n_0_[1]\
    );
\rx_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_count0,
      CLR => mr,
      D => \p_0_in__0\(2),
      Q => \rx_count_reg_n_0_[2]\
    );
\rx_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_count0,
      CLR => mr,
      D => \p_0_in__0\(3),
      Q => rx_count_reg(3)
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => os_pulse,
      I1 => rx_count_reg(3),
      I2 => \os_count[3]_i_3_n_0\,
      I3 => rx_state_reg_n_0,
      O => rx_data0
    );
\rx_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[1]\,
      Q => \^q\(0)
    );
\rx_data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[2]\,
      Q => \^q\(1)
    );
\rx_data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[3]\,
      Q => \^q\(2)
    );
\rx_data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[4]\,
      Q => \^q\(3)
    );
\rx_data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[5]\,
      Q => \^q\(4)
    );
\rx_data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[6]\,
      Q => \^q\(5)
    );
\rx_data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[7]\,
      Q => \^q\(6)
    );
\rx_data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => rx_data0,
      CLR => mr,
      D => \rx_buffer_reg_n_0_[8]\,
      Q => \^q\(7)
    );
rx_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFFF00F00000"
    )
        port map (
      I0 => \os_count[3]_i_3_n_0\,
      I1 => rx_count_reg(3),
      I2 => \os_count_reg_n_0_[3]\,
      I3 => sRX_MCU_IBUF,
      I4 => os_pulse,
      I5 => rx_state_reg_n_0,
      O => rx_state_i_1_n_0
    );
rx_state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => rx_state_i_1_n_0,
      Q => rx_state_reg_n_0
    );
\tx_buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACFCAAFAA"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[0]\,
      I1 => \tx_buffer_reg_n_0_[1]\,
      I2 => tx_state,
      I3 => tx_eM,
      I4 => baud_pulse,
      I5 => mr,
      O => \tx_buffer[0]_i_1_n_0\
    );
\tx_buffer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_state,
      I1 => \tx_buffer_reg_n_0_[2]\,
      O => p_1_in(1)
    );
\tx_buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[3]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[8]_0\(0),
      O => p_1_in(2)
    );
\tx_buffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[4]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[8]_0\(1),
      O => p_1_in(3)
    );
\tx_buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[5]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[8]_0\(2),
      O => p_1_in(4)
    );
\tx_buffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[6]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[8]_0\(3),
      O => p_1_in(5)
    );
\tx_buffer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_state,
      I1 => \tx_buffer_reg_n_0_[7]\,
      O => p_1_in(6)
    );
\tx_buffer[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_state,
      I1 => \tx_buffer_reg_n_0_[8]\,
      O => p_1_in(7)
    );
\tx_buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[9]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[8]_0\(4),
      O => p_1_in(8)
    );
\tx_buffer[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => tx_eM,
      I1 => tx_state,
      I2 => baud_pulse,
      I3 => mr,
      O => \tx_buffer[9]_i_1_n_0\
    );
\tx_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tx_buffer[0]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[0]\,
      R => '0'
    );
\tx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(1),
      Q => \tx_buffer_reg_n_0_[1]\,
      R => '0'
    );
\tx_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(2),
      Q => \tx_buffer_reg_n_0_[2]\,
      R => '0'
    );
\tx_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(3),
      Q => \tx_buffer_reg_n_0_[3]\,
      R => '0'
    );
\tx_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(4),
      Q => \tx_buffer_reg_n_0_[4]\,
      R => '0'
    );
\tx_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(5),
      Q => \tx_buffer_reg_n_0_[5]\,
      R => '0'
    );
\tx_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(6),
      Q => \tx_buffer_reg_n_0_[6]\,
      R => '0'
    );
\tx_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(7),
      Q => \tx_buffer_reg_n_0_[7]\,
      R => '0'
    );
\tx_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => p_1_in(8),
      Q => \tx_buffer_reg_n_0_[8]\,
      R => '0'
    );
\tx_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \tx_buffer[9]_i_1_n_0\,
      D => tx_state,
      Q => \tx_buffer_reg_n_0_[9]\,
      R => '0'
    );
tx_busy_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_bm\,
      I1 => tx_state,
      I2 => tx_eM,
      O => tx_busy_i_1_n_0
    );
tx_busy_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_busy_i_1_n_0,
      PRE => mr,
      Q => \^tx_bm\
    );
\tx_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => baud_pulse,
      I1 => tx_count_reg(0),
      I2 => tx_state,
      O => \p_0_in__1\(0)
    );
\tx_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => tx_count_reg(1),
      I1 => baud_pulse,
      I2 => tx_count_reg(0),
      I3 => tx_state,
      O => \p_0_in__1\(1)
    );
\tx_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => tx_count_reg(2),
      I1 => tx_count_reg(1),
      I2 => tx_count_reg(0),
      I3 => baud_pulse,
      I4 => tx_state,
      O => \p_0_in__1\(2)
    );
\tx_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state,
      I1 => tx_eM,
      O => \tx_count[3]_i_1_n_0\
    );
\tx_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => tx_count_reg(3),
      I1 => tx_count_reg(2),
      I2 => baud_pulse,
      I3 => tx_count_reg(0),
      I4 => tx_count_reg(1),
      I5 => tx_state,
      O => \p_0_in__1\(3)
    );
\tx_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \tx_count[3]_i_1_n_0\,
      CLR => mr,
      D => \p_0_in__1\(0),
      Q => tx_count_reg(0)
    );
\tx_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \tx_count[3]_i_1_n_0\,
      CLR => mr,
      D => \p_0_in__1\(1),
      Q => tx_count_reg(1)
    );
\tx_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \tx_count[3]_i_1_n_0\,
      CLR => mr,
      D => \p_0_in__1\(2),
      Q => tx_count_reg(2)
    );
\tx_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \tx_count[3]_i_1_n_0\,
      CLR => mr,
      D => \p_0_in__1\(3),
      Q => tx_count_reg(3)
    );
tx_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tx_buffer_reg_n_0_[0]\,
      PRE => mr,
      Q => sTX_MCU_OBUF
    );
tx_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tx_state_i_2_n_0,
      I1 => tx_state,
      I2 => tx_eM,
      O => tx_state_i_1_n_0
    );
tx_state_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5577777"
    )
        port map (
      I0 => tx_count_reg(3),
      I1 => tx_count_reg(2),
      I2 => baud_pulse,
      I3 => tx_count_reg(0),
      I4 => tx_count_reg(1),
      O => tx_state_i_2_n_0
    );
tx_state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => mr,
      D => tx_state_i_1_n_0,
      Q => tx_state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_wiz_0;

architecture STRUCTURE of clk_wiz_0 is
begin
inst: entity work.clk_wiz_0_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      locked => locked,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity C7mod is
  port (
    clk_pin : in STD_LOGIC;
    Led1 : out STD_LOGIC;
    Led2 : out STD_LOGIC;
    Led3 : out STD_LOGIC;
    Led4 : out STD_LOGIC;
    sRX_MCU : in STD_LOGIC;
    sTX_MCU : out STD_LOGIC;
    simr : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of C7mod : entity is true;
end C7mod;

architecture STRUCTURE of C7mod is
  signal \LED11__7\ : STD_LOGIC;
  signal Led1_OBUF : STD_LOGIC;
  signal Led2_OBUF : STD_LOGIC;
  signal Led3_OBUF : STD_LOGIC;
  signal Led4_OBUF : STD_LOGIC;
  signal MCU_ITEM_n_10 : STD_LOGIC;
  signal MCU_ITEM_n_11 : STD_LOGIC;
  signal MCU_ITEM_n_7 : STD_LOGIC;
  signal MCU_ITEM_n_8 : STD_LOGIC;
  signal MCU_ITEM_n_9 : STD_LOGIC;
  signal MCU_uart_n_11 : STD_LOGIC;
  signal MCU_uart_n_12 : STD_LOGIC;
  signal MCU_uart_n_13 : STD_LOGIC;
  signal MCU_uart_n_14 : STD_LOGIC;
  signal MCU_uart_n_15 : STD_LOGIC;
  signal clk : STD_LOGIC;
  signal mr : STD_LOGIC;
  signal new_data_cab : STD_LOGIC;
  signal rx_busy : STD_LOGIC;
  signal rx_dM : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sRX_MCU_IBUF : STD_LOGIC;
  signal sTX_MCU_OBUF : STD_LOGIC;
  signal simr_IBUF : STD_LOGIC;
  signal tx_bM : STD_LOGIC;
  signal tx_eM : STD_LOGIC;
  signal NLW_new_clock_locked_UNCONNECTED : STD_LOGIC;
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of new_clock : label is "c:/Olivine/roadtest_usart/roadtest/roadtest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of new_clock : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of new_clock : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of new_clock : label is "TRUE";
begin
Led1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Led1_OBUF,
      O => Led1
    );
Led2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Led2_OBUF,
      O => Led2
    );
Led3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Led3_OBUF,
      O => Led3
    );
Led4_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Led4_OBUF,
      O => Led4
    );
MCU_ITEM: entity work.MCU
     port map (
      CLK => clk,
      \LED11__7\ => \LED11__7\,
      LED1_reg_0 => MCU_uart_n_13,
      LED2_reg_0 => MCU_uart_n_14,
      LED3_reg_0 => MCU_uart_n_15,
      LED4_reg_0 => MCU_uart_n_11,
      LED4_reg_1 => MCU_uart_n_12,
      Led1_OBUF => Led1_OBUF,
      Led2_OBUF => Led2_OBUF,
      Led3_OBUF => Led3_OBUF,
      Led4_OBUF => Led4_OBUF,
      Q(7 downto 0) => rx_dM(7 downto 0),
      \Tx_data_reg[6]_0\(4) => MCU_ITEM_n_7,
      \Tx_data_reg[6]_0\(3) => MCU_ITEM_n_8,
      \Tx_data_reg[6]_0\(2) => MCU_ITEM_n_9,
      \Tx_data_reg[6]_0\(1) => MCU_ITEM_n_10,
      \Tx_data_reg[6]_0\(0) => MCU_ITEM_n_11,
      mr => mr,
      new_data_cab => new_data_cab,
      rx_busy => rx_busy,
      tx_bM => tx_bM,
      tx_eM => tx_eM
    );
MCU_uart: entity work.uart_MCU
     port map (
      CLK => clk,
      \LED11__7\ => \LED11__7\,
      Led1_OBUF => Led1_OBUF,
      Led2_OBUF => Led2_OBUF,
      Led3_OBUF => Led3_OBUF,
      Q(7 downto 0) => rx_dM(7 downto 0),
      mr => mr,
      new_data_cab => new_data_cab,
      rx_busy => rx_busy,
      \rx_data_reg[0]_0\ => MCU_uart_n_12,
      \rx_data_reg[0]_1\ => MCU_uart_n_13,
      \rx_data_reg[1]_0\ => MCU_uart_n_14,
      \rx_data_reg[1]_1\ => MCU_uart_n_15,
      \rx_data_reg[7]_0\ => MCU_uart_n_11,
      sRX_MCU_IBUF => sRX_MCU_IBUF,
      sTX_MCU_OBUF => sTX_MCU_OBUF,
      tx_bM => tx_bM,
      \tx_buffer_reg[8]_0\(4) => MCU_ITEM_n_7,
      \tx_buffer_reg[8]_0\(3) => MCU_ITEM_n_8,
      \tx_buffer_reg[8]_0\(2) => MCU_ITEM_n_9,
      \tx_buffer_reg[8]_0\(1) => MCU_ITEM_n_10,
      \tx_buffer_reg[8]_0\(0) => MCU_ITEM_n_11,
      tx_eM => tx_eM
    );
mr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => simr_IBUF,
      Q => mr,
      R => '0'
    );
new_clock: entity work.clk_wiz_0
     port map (
      clk_in1 => clk_pin,
      clk_out1 => clk,
      locked => NLW_new_clock_locked_UNCONNECTED,
      reset => '0'
    );
sRX_MCU_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => sRX_MCU,
      O => sRX_MCU_IBUF
    );
sTX_MCU_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => sTX_MCU_OBUF,
      O => sTX_MCU
    );
simr_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => simr,
      O => simr_IBUF
    );
end STRUCTURE;
