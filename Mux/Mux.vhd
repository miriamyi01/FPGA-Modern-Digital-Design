library ieee;
use ieee.std_logic_1164.all;

entity Mux is
	port(sel: in std_logic_vector (1 downto 0);
			 a: in std_logic_vector (3 downto 0);
			 f: out std_logic);
end Mux;

architecture arq of Mux is
	begin
		with sel select
			f <= a(0) when "00",
				  a(1) when "01",
				  a(2) when "10",
				  a(3) when "11",
				   '0' when others;
end arq;