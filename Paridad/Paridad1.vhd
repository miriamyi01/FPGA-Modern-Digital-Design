library ieee;
use ieee.std_logic_1164.all;

entity paridad1 is
	port(E,clk: in std_logic;		
				S: out std_logic);
end paridad1;

architecture arq of paridad1 is
	signal D0,D1: std_logic;
	signal Q0,Q1,Q2: std_logic;
	signal Sint: std_logic;
	
	begin
		S<=Q2;
		u1: entity work.combinacional(arq) port map (E,Q0,Q1,D0,D1,Sint);
		u2: entity work.FFD(arq) port map (D0,clk,Q0);
		u3: entity work.FFD(arq) port map (D1,clk,Q1);
		u4: entity work.FFD(arq) port map (Sint,clk,Q2);
end architecture arq;