library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity sum is
port( E: in std_logic_vector(2 downto 0);--3 bits
		S: out std_logic_vector(1 downto 0)); --2 bits
end entity sum;

architecture arq of sum is
	begin
		with E select 
			S<="00" when "000",
				"10" when "001",
				"10" when "010",
				"01" when "011",
				"10" when "100",
				"01" when "101",
				"01" when "110",
				"11" when others;
end architecture arq;