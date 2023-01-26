library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CONTROLENTRADA is
	port( A: in std_logic_vector(2 downto 0);
			L: out std_logic_vector(2 downto 0));
end CONTROLENTRADA;

architecture behavorial of CONTROLENTRADA is
begin
	with A select
		L <="000" when "000",
			 "001" when "001",
			 "010" when "010",
			 "010" when "011",
			 "100" when "100",
			 "100" when "101",
			 "100" when "110",
			 "100" when others;
end behavorial;