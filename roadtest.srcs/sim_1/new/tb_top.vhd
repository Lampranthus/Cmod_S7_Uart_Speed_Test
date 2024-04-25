-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 26.6.2020 22:52:32 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_C7mod is
end tb_C7mod;

architecture tb of tb_C7mod is

    component C7mod
        port (clk_pin : in std_logic;
              Led1    : out std_logic;
              Led2    : out std_logic;
              Led3    : out std_logic;
              Led4    : out std_logic;
              sRX_MCU : in std_logic;
              sTX_MCU : out std_logic;
              simr    : in std_logic);
    end component;

    signal clk_pin : std_logic;
    signal Led1    : std_logic;
    signal Led2    : std_logic;
    signal Led3    : std_logic;
    signal Led4    : std_logic;
    signal sRX_MCU : std_logic;
    signal sTX_MCU : std_logic;
    signal simr    : std_logic;
    constant c_CLKS_PER_BIT : integer := 104;
    constant c_BIT_PERIOD : time := 104166 ns;
    constant sms : std_logic_vector (15 DOWNTO 0) := X"4C31";

    constant TbPeriod : time := 83 ps; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

procedure UART_WRITE_BYTE (
    i_data_in       : in  std_logic_vector(7 downto 0);
    signal o_serial : out std_logic) is
  begin
 
    -- Send Start Bit
    o_serial <= '0';
    wait for c_BIT_PERIOD;
 
    -- Send Data Byte
    for ii in 0 to 7 loop
      o_serial <= i_data_in(ii);
      wait for c_BIT_PERIOD;
    end loop;  -- ii
 
    -- Send Stop Bit
    o_serial <= '1';
    wait for c_BIT_PERIOD;
end UART_WRITE_BYTE;




begin

    
    dut : C7mod
    port map (clk_pin => clk_pin,
              Led1    => Led1,
              Led2    => Led2,
              Led3    => Led3,
              Led4    => Led4,
              sRX_MCU => sRX_MCU,
              sTX_MCU => sTX_MCU,
              simr    => simr);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk_pin is really your main clock signal
    clk_pin <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        sRX_MCU <= '1';
        simr <= '0';

        -- Reset generation
        simr <= '1';
        wait for 100 ns;
        simr <= '0';
        wait for 100 ns;

        UART_WRITE_BYTE(sms(15 DOWNTO 8),sTX_MCU);
        UART_WRITE_BYTE(sms(7 DOWNTO 0),sTX_MCU);
        -- EDIT Add stimuli here
        wait for 10000 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_C7mod of tb_C7mod is
    for tb
    end for;
end cfg_tb_C7mod;
