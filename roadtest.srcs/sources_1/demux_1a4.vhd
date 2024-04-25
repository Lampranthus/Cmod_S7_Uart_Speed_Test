library ieee;
use ieee.std_logic_1164.all;
																											
entity demux_1a4 is

port(
x				: in		std_logic;
s				: in		std_logic_vector(1 DOWNTO 0);
y0,y1,y2,y3		: out		std_logic
);
																												
end demux_1a4;
																											
architecture simple of demux_1a4 is
begin
demux	:	process (s,x)
begin
case s is
	
	when "00" =>
	
	y0		<=	x;
	y1		<=	'0';
	y2		<=	'0';
	y3		<=	'0';
	
	when "01" =>
	
	y0		<=	'0';
	y1		<=	x;
	y2		<=	'0';
	y3		<=	'0';
	
	when "10" =>
	
	y0		<=	'0';
	y1		<=	'0';
	y2		<=	x;
	y3		<=	'0';
	
	when others =>
	
	y0		<=	'0';
	y1		<=	'0';
	y2		<=	'0';
	y3		<=	x;
	
	end case;

end process;
																										
end simple;