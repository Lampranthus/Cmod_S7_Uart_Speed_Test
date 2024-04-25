LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all;

ENTITY C7mod IS
      PORT(         clk_pin    :IN std_logic;
                    --Led1          :OUT std_logic;
                    --Led2          :OUT std_logic;
                    --Led3          :OUT std_logic;
                    --Led4          :OUT std_logic;
                    led0_b          :OUT std_logic;
                    led0_g          :OUT std_logic;
                    led0_r          :OUT std_logic;
                    sRX_MCU         :IN std_logic;
                    sTX_MCU         :OUT std_logic;
                    btn0            :IN std_logic;
                    btn1            :IN std_logic);
END C7mod;

ARCHITECTURE a OF C7mod IS

COMPONENT clk_wiz_0
        PORT(       clk_in1         : IN STD_LOGIC;
                    clk_out1        : OUT STD_LOGIC ;
                    reset           : IN STD_LOGIC;
                    locked          : OUT STD_LOGIC );
END COMPONENT;



COMPONENT uart_MCU
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

COMPONENT uart_MCU_6MHz
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

COMPONENT uart_MCU_24MHz
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

COMPONENT contador_a_n
	generic(
	n : integer :=2
	);
	
	port(
	RST, CLK : in std_logic;
	Q :out std_logic_vector(n-1 downto 0)
	);
END COMPONENT;

COMPONENT contador
	generic(
	n : integer :=8
	);
	
	port(
	RST, CLK : in std_logic;
	Q :out std_logic_vector(n-1 downto 0)
	);
END COMPONENT;

COMPONENT mux_4a1
	
	port(
	x0,x1,x2,x3	: in std_logic;
	s			: in std_logic_vector(1 downto 0);
	y			: out std_logic
	);
END COMPONENT;

COMPONENT one_shot
	
	port(
	
	RST, CLK : in std_logic;
	
	x : in std_logic;
	y : out std_logic
	
	);
	
END COMPONENT;

COMPONENT mux_4a1_n
	generic(
	n	:	integer := 8 		--n-bits
	);
	port(
	x0,x1,x2,x3	: in std_logic_vector(n-1 downto 0);
	s			: in std_logic_vector(1 downto 0);
	y			: out std_logic_vector(n-1 downto 0)
	);
	
END COMPONENT;

COMPONENT demux_1a4 

port(
x				: in		std_logic;
s				: in		std_logic_vector(1 DOWNTO 0);
y0,y1,y2,y3		: out		std_logic
);

END COMPONENT;

COMPONENT fsm_contador
	port(
	
	RST,CLK : in std_logic;
	txb : in std_logic;
	txe : out std_logic;
	cc : out std_logic
	
	);
	
END COMPONENT;

            SIGNAL clk         :std_logic;
            SIGNAL mr          :std_logic;
            SIGNAL mbr          :std_logic;
            SIGNAL tx_eM      :std_logic;
            SIGNAL tx_eM0      :std_logic;
            SIGNAL tx_eM1      :std_logic;
            SIGNAL tx_eM2      :std_logic;
            SIGNAL tx_eM3      :std_logic;
            SIGNAL tx_bM      :std_logic;
            SIGNAL tx_bM0      :std_logic;
            SIGNAL tx_bM1      :std_logic;
            SIGNAL tx_bM2      :std_logic;
            SIGNAL tx_bM3      :std_logic; 
            SIGNAL rx_PM      :std_logic;
            SIGNAL rx_PM0      :std_logic;
            SIGNAL rx_PM1      :std_logic;
            SIGNAL rx_PM2      :std_logic;
            SIGNAL rx_PM3      :std_logic;
            SIGNAL tx_dM      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_dM0      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_dM1      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_dM2      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_dM3      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_dM      :std_logic_vector(7 DOWNTO 0);
            SIGNAL rx_bM      :std_logic;
            SIGNAL rx_bM0      :std_logic;
            SIGNAL rx_bM1      :std_logic;
            SIGNAL rx_bM2      :std_logic;
            SIGNAL rx_bM3      :std_logic;
            SIGNAL sTX_MCU0   :std_logic;
            SIGNAL sTX_MCU1   :std_logic;
            SIGNAL sTX_MCU2   :std_logic;
            SIGNAL sTX_MCU3   :std_logic;
            SIGNAL s   :std_logic_vector(1 DOWNTO 0);
            SIGNAL os   :std_logic;
            SIGNAL nmr   :std_logic;
            SIGNAL cc   :std_logic;       
           
    BEGIN
    
    nmr <= not mr;

    New_Clock   :   clk_wiz_0 PORT MAP (    clk_in1       => clk_pin,
                                            clk_out1     => clk,
                                            reset        => '0',
                                            locked      => open);
                                            
    fsm         : fsm_contador PORT MAP (RST => nmr,
                                           CLK => clk,
                                           txb => tx_bM,
                                           txe => tx_eM,
                                           cc => cc);                                        
                                            
    Tx_Counter  :   contador PORT MAP (RST => nmr,
                                           CLK => cc,
                                           Q => tx_dM);                                     
                                            
   Demux        :  demux_1a4 PORT MAP (x => tx_eM,
                                       s => s,
                                       y0 => tx_eM0,
                                       y1 => tx_eM1,
                                       y2 => tx_eM2,
                                       y3 => tx_eM3);                                         
   
                                            
   BR_Counter      :   contador_a_n PORT MAP (RST => nmr,
                                           CLK => os,
                                           Q => s);
                                         
   Shot         :   one_shot PORT MAP (RST => nmr,
                                           CLK => clk,
                                           x => mbr,
                                           y => os);
                                            
    Mux_s       :   mux_4a1 PORT MAP ( x0 => sTX_MCU0,
                                         x1 => sTX_MCU1,
                                         x2 => sTX_MCU2,
                                         x3 => sTX_MCU3,
                                         s => s,
                                         y => sTX_MCU );
                                         
    Mux_rxb       :   mux_4a1 PORT MAP ( x0 => rx_bM0,
                                         x1 => rx_bM1,
                                         x2 => rx_bM2,
                                         x3 => rx_bM3,
                                         s => s,
                                         y => rx_bM ); 
                                         
   Mux_rxer       :   mux_4a1 PORT MAP ( x0 => rx_PM0,
                                         x1 => rx_PM1,
                                         x2 => rx_PM2,
                                         x3 => rx_PM3,
                                         s => s,
                                         y => rx_PM );
                                         
                                         
   Mux_txb       :   mux_4a1 PORT MAP ( x0 => tx_bM0,
                                         x1 => tx_bM1,
                                         x2 => tx_bM2,
                                         x3 => tx_bM3,
                                         s => s,
                                         y => tx_bM );                                                                                                                
                                         
                                         
    Mux_dx       :   mux_4a1_n PORT MAP ( x0 => rx_dM0,
                                         x1 => rx_dM1,
                                         x2 => rx_dM2,
                                         x3 => rx_dM3,
                                         s => s,
                                         y => rx_dM );                                       
                                            
                             
MCU_uart_0    :   uart_MCU PORT MAP (         clk         => clk,
                                            reset_n     => mr,
                                            tx_ena      => tx_eM0,
                                            tx_data     => tx_dM,
                                            rx          => sRX_MCU,
                                            rx_busy     => rx_bM0,
                                            rx_error    => rx_PM0,
                                            rx_data     => rx_dM0,
                                            tx_busy     => tx_bM0,
                                            tx          => sTX_MCU0);
                                            
MCU_uart_1    :   uart_MCU_6MHz PORT MAP (         clk         => clk,
                                            reset_n     => mr,
                                            tx_ena      => tx_eM1,
                                            tx_data     => tx_dM,
                                            rx          => sRX_MCU,
                                            rx_busy     => rx_bM1,
                                            rx_error    => rx_PM1,
                                            rx_data     => rx_dM1,
                                            tx_busy     => tx_bM1,
                                            tx          => sTX_MCU1);
                                                                                      
MCU_uart_2    :   uart_MCU_12MHz PORT MAP ( clk         => clk,
                                            reset_n     => mr,
                                            tx_ena      => tx_eM2,
                                            tx_data     => tx_dM,
                                            rx          => sRX_MCU,
                                            rx_busy     => rx_bM2,
                                            rx_error    => rx_PM2,
                                            rx_data     => rx_dM2,
                                            tx_busy     => tx_bM2,
                                            tx          => sTX_MCU2);
                                            
MCU_uart_3    :   uart_MCU_24MHz PORT MAP ( clk         => clk,
                                            reset_n     => mr,
                                            tx_ena      => tx_eM3,
                                            tx_data     => tx_dM,
                                            rx          => sRX_MCU,
                                            rx_busy     => rx_bM3,
                                            rx_error    => rx_PM3,
                                            rx_data     => rx_dM3,
                                            tx_busy     => tx_bM3,
                                            tx          => sTX_MCU3);                                                                                   



--MCU_ITEM    :      MCU PORT MAP (           clk         => clk,
--                                            mr          => mr,
--                                            Tx_en       => tx_eM,
--                                            Tx_data     => tx_dM,
--                                            Tx_busy     => tx_bM,
--                                            Rx_data     => rx_dM,
--                                            Rx_busy     => rx_bM,
--                                            L1          => Led1,
--                                            L2          => Led2,
--                                            L3          => Led3,
--                                            L4          => Led4);
        
       PROCESS(clk)                                             -- Señal master reset metaestable
            BEGIN
                IF (clk = '1' AND clk'event) THEN
                    mr <= btn0;
                    mbr <= btn1;
                END IF;
        END PROCESS;
    
        led0_r <= (not s(1)) nand s(0);   --01
        led0_g <= s(1) nand (not s(0));   --10
        led0_b <= s(1) nand s(0);         --11
        
        
END; 