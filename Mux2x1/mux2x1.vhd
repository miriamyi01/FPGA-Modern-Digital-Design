library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
	port(b:in std_logic_vector(2 downto 0);
		  sel: in std_logic;
		  salmux2x1: out std_logic_vector(2 downto 0)
	);
end entity mux2x1;

architecture arqmux2x1 of mux2x1 is
	begin
		with sel select
			salmux2x1 <= 
              not b when '0',
	               b when '1',
    (	 others=>'0') when others;				
end architecture arqmux2x1;