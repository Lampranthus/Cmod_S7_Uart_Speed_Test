LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all;
use ieee.std_logic_arith.all;

ENTITY C7mod IS
      PORT(         clk_pin    :IN std_logic;
                    led0_b          :OUT std_logic;
                    led0_g          :OUT std_logic;
                    led0_r          :OUT std_logic;
                    sRX_MCU         :IN std_logic;
                    sTX_MCU         :OUT std_logic;
                    btn0            :IN std_logic);
END C7mod;

ARCHITECTURE a OF C7mod IS

COMPONENT clk_wiz_0
        PORT(       clk_in1         : IN STD_LOGIC;
                    clk_out1        : OUT STD_LOGIC ;
                    reset           : IN STD_LOGIC;
                    locked          : OUT STD_LOGIC );
END COMPONENT;


COMPONENT uart_MCU_12MHz
        PORT(       clk         :    IN STD_LOGIC;                                      --system clock
                    reset_n     :    IN STD_LOGIC;                                      --ascynchronous reset
                    tx_ena      :    IN STD_LOGIC;                                      --initiate transmission
                    tx_data     :    IN STD_LOGIC_VECTOR(7 DOWNTO 0);                   --data to transmit
                    rx          :    IN STD_LOGIC;                                      --receive pin
                    rx_busy     :    OUT STD_LOGIC;                                     --data reception in progress
                    rx_error    :    OUT STD_LOGIC;                                     --start, parity, or stop bit error detected
                    rx_data     :    OUT STD_LOGIC_VECTOR(7 DOWNTO 0);                  --data received
                    tx_busy     :    OUT STD_LOGIC;                                     --transmission in progress
                    tx          :    OUT STD_LOGIC);                                    --transmit pin
END COMPONENT;

COMPONENT X_BLKRAM_DP_2C_1WR_1R
	port(
	RAM_CKA : in  std_logic; -- Reloj escritura/lectura A
	RAM_CKB : in  std_logic; -- Reloj lectura B
	RAM_ENA : in  std_logic; -- Habilitacion puerto A
	RAM_ENB : in  std_logic; -- Habilitacion puerto B
	RAM_WRE : in  std_logic; -- Habilitacion de escritura
	RAM_DWR : in  std_logic_vector(7 downto 0); -- Dato de escritura
	RAM_ADA : in  std_logic_vector(16 downto 0); -- Direccion de esc/lec A
	RAM_ADB : in  std_logic_vector(16 downto 0); -- Direccion de lectura B
	RAM_RDA : out std_logic_vector(7 downto 0); -- Dato de lectura A
	RAM_RDB : out std_logic_vector(7 downto 0)  -- Dato de lectura B
	);
	
END COMPONENT;


COMPONENT fsm_contador
	port(
	
	RST,CLK : in std_logic;
	txb : in std_logic;
	rxb : in std_logic;
	txe : out std_logic;
	RAM_WRE : out std_logic;
	RAM_AD : out std_logic_vector(16 DOWNTO 0);
	s : out std_logic_vector(1 DOWNTO 0)
	);
	
END COMPONENT;

            SIGNAL clk        :std_logic;
            SIGNAL mr         :std_logic;
            SIGNAL tx_eM      :std_logic;
            SIGNAL tx_bM      :std_logic;
            SIGNAL tx_dM      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_dM      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_bM      :std_logic;
            SIGNAL ADDR       :std_logic_vector(16 DOWNTO 0);
            SIGNAL RAM_WRE    :std_logic;
            SIGNAL RAM_ENA    :std_logic;
            SIGNAL RAM_ENB    :std_logic;
            SIGNAL s          :std_logic_vector(1 DOWNTO 0);     
           
    BEGIN

   Clock   :   clk_wiz_0 PORT MAP (    clk_in1     => clk_pin,
                                       clk_out1    => clk,
                                       reset       => '0',
                                       locked      => open);
                                            
   RAM  : X_BLKRAM_DP_2C_1WR_1R PORT MAP(  RAM_CKA => clk, 
	                                       RAM_CKB => clk,  
	                                       RAM_ENA => '1',  
	                                       RAM_ENB => '1',  
	                                       RAM_WRE => RAM_WRE,  
	                                       RAM_DWR => rx_dM,  
	                                       RAM_ADA => ADDR,  
	                                       RAM_ADB => ADDR,
	                                       RAM_RDA => open, 
	                                       RAM_RDB => tx_dM );                                        
                                            
                                            
   FSM         : fsm_contador PORT MAP (   RST     => mr,
                                           CLK     => clk,
                                           txb     => tx_bM,
                                           rxb     => rx_bM,
                                           txe     => tx_eM,
	                                       RAM_WRE => RAM_WRE,
	                                       RAM_AD  => ADDR,
                                           s       => s);
                                                                           
                                            
                                                                                      
   MCU_uart    :   uart_MCU_12MHz PORT MAP ( clk         => clk,
                                             reset_n     => mr,
                                             tx_ena      => tx_eM,
                                             tx_data     => tx_dM,
                                             rx          => sRX_MCU,
                                             rx_busy     => rx_bM,
                                             rx_error    => open,
                                             rx_data     => rx_dM,
                                             tx_busy     => tx_bM,
                                             tx          => sTX_MCU);
                                           
        
       PROCESS(clk)                                             -- Señal master reset metaestable
            BEGIN
                IF (clk = '1' AND clk'event) THEN
                    mr <= btn0;
                END IF;
        END PROCESS;
    
        led0_r <= (not s(1)) nand s(0);   --01
        led0_g <= s(1) nand (not s(0));   --10
        led0_b <= s(1) nand s(0);         --11
        
        
END; 