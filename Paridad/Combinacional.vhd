library ieee;
use ieee.std_logic_1164.all;

entity combinacional is
	port(E,Q0,Q1: in std_logic;
		  D0,D1,S: out std_logic);
end combinacional;

architecture arq of combinacional is
	begin
		D1 <= (Q0 and E) or (Q1 and (not E));
		 S <= (Q0 and E) or (Q1 and (not E));
		D0 <= Q0 xor E;
end architecture arq;