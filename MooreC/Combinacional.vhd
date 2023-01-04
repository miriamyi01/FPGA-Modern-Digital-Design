library ieee;
use ieee.std_logic_1164.all; 

entity combinacional is 
	port(Q0,Q1  : 	in std_logic;
        DO,D1: out std_logic);
end combinacional;

architecture arq of combinacional is 
	begin
		D1 <= (Q0 XOR Q1);
		DO <= (NOT Q0);
end architecture arq;