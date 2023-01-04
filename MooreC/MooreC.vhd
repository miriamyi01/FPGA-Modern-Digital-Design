library ieee;
use ieee.std_logic_1164.all;

entity mooreC is
port(clk: in std_logic;
	  Q0,Q1: inout std_logic);
end mooreC;

architecture arq of mooreC is
	signal D0,D1: std_logic;
	begin
		u1: entity work.combinacional(arq) port map(Q0,Q1,D0,D1);
		u2: entity work.FFD(arq) port map(D0,CLK,Q0);
		u3: entity work.FFD(arq) port map(D1,CLK,Q1);
end architecture arq;