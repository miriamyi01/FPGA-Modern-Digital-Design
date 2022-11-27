library ieee;
use ieee.std_logic_1164.all;


entity ul is 
	port(a,b: in std_logic_vector(2 downto 0);
		  salmux: out std_logic_vector(3 downto 0);
		  sel: in bit_vector(1 downto 0));
end entity ul;

architecture arq of ul is
	signal sand, sor, sxor, snot: std_logic_vector(2 downto 0);
	begin
		sand <= b and a;
		sor  <= b or a;
		sxor <= b xor a;
		snot <= not b;
		
	with sel select salmux <=
		('0' & sand) when "00", 
		('0' & sor)  when "01", 
		('0' & sxor) when "10", 
		('0' & snot) when "11";
end architecture arq;