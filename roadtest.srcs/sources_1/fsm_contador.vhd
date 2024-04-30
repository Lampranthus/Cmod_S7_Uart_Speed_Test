library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity fsm_contador is
    generic(
		c : integer := 131072
	);
	port(
	
	RST,CLK : in std_logic;
	txb     : in std_logic;
	rxb     : in std_logic;
	txe     : out std_logic;
	RAM_WRE : out std_logic;
	RAM_AD : out std_logic_vector(16 DOWNTO 0);
	s       : out std_logic_vector(1 DOWNTO 0)
	);
end fsm_contador;

architecture fsm of fsm_contador is	 

signal qp, qn : std_logic_vector(3 downto 0);  
signal addn, addp  : std_logic_vector(16 DOWNTO 0); 

begin  
	
	c1 : process(qp, rxb, txb, addp)
	begin
		
		case(qp) is
		
		--s0
		when "0000" =>
		
		s <= "00";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= (others => '0');
		
		qn <= "0001";
		
		--s1
		when "0001" =>
		
		s <= "01";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp;
		
		if(rxb='1') then
			qn <= "0010";
		else
			qn <= "0001";
		end if;
		
		--s2
		when "0010" =>
		
		s <= "10";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp;
		
		if(rxb='0') then
			qn <= "0011";
		else
			qn <= "0010";
		end if;
		
		--s3
		when "0011" =>
		
		s <= "10";
		txe <= '0';
		RAM_WRE <= '1';
		addn <= addp;
		
		qn <= "0100";
		
		--s4
		when "0100" =>
		
		s <= "10";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp;
		
		if(addp = (c - 1)) then
			qn <= "0110";
		else
			qn <= "0101";
		end if;
		
		--s5
		when "0101" =>
		
		s <= "10";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp + 1;
		
		qn <= "0001";
		
		--s6
		when "0110" =>
		
		s <= "11";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= (others => '0');
		
		qn <= "0111";
		
		--s7
		when "0111" =>
		
		s <= "11";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp;
		
		qn <= "1000";
		
		--s8
		when "1000" =>
		
		s <= "11";
		txe <= '1';
		RAM_WRE <= '0';
		addn <= addp;
		
		if(txb='1') then
			qn <= "1001";
		else
			qn <= "1000";
		end if;
		
		--s9
		when "1001" =>
		
		s <= "11";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp;
		
		if(txb='0') then
			qn <= "1010";
		else
			qn <= "1001";
		end if;
		
		--s10
		when "1010" =>
		
		s <= "11";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp;
		
		if(addp = (c - 1)) then
			qn <= "0000";
		else
			qn <= "1011";
		end if;
		
		--s11
		when "1011" =>
		
		s <= "11";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= addp + 1;
		
		qn <= "0111";
		
		--s12
		when others =>
		
		s <= "00";
		txe <= '0';
		RAM_WRE <= '0';
		addn <= (others => '0');
		
		qn <= "0000";
		
		end case;
		
	end process;
	
	RAM_AD <= addp;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='1') then
			qp <= (others => '0');
			addp <= (others => '0');
		elsif(CLK'event and CLK='1') then
			qp <= qn;
			addp <= addn;
		end if;
	end process;
	
end fsm;