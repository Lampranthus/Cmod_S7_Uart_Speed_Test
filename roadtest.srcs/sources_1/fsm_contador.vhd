library ieee;
use ieee.std_logic_1164.all;

entity fsm_contador is
	port(
	
	RST,CLK : in std_logic;
	txb : in std_logic;
	txe : out std_logic;
	cc : out std_logic
	
	);
end fsm_contador;

architecture fsm of fsm_contador is	 

signal qp, qn : std_logic_vector(1 downto 0);
begin  
	
	c1 : process(qp,txb)
	begin
		
		case(qp) is
		
		--s0
		when "00" =>
		txe <= '0';
		cc <= '0';
		
		qn <= "01";
		
		--s1
		when "01" =>
		txe <= '1';
		cc <= '0';
		
		if(txb='1') then
			qn <= "10";
		else
			qn <= "01";
		end if;
		
		--s2
		when "10" =>
		txe <= '0';
		cc <= '0';
		if(txb='0') then
			qn <= "11";
		else
			qn <= "10";
		end if;
		
		--s3
		when others =>
		txe <= '0';
		cc <= '1';
		
		qn <= "00";
		
		
		end case;
		
	end process;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= (others => '0');
		elsif(CLK'event and CLK='1') then
			qp <= qn;
		end if;
	end process;
	
end fsm;