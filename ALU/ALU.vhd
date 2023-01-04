library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU is
port (a,b: in std_logic_vector(2 downto 0);
		cin: in std_logic;
		sel: in std_logic_vector(2 downto 0);
		salALU: out std_logic_vector(2 downto 0);
		cout: out std_logic);
end entity ALU;

architecture arqALU of ALU is
signal UA: std_logic_vector(2 downto 0);
signal UL: std_logic_vector(2 downto 0);
	begin
		u0: entity work.UA(arqUA) port map (a,b,sel(1 downto 0),cin,UA,cout);
		u1: entity work.UL(arqUL) port map (a,b,sel(1 downto 0),UL);
		u2: entity work.MUX2x1(arqMUX2x1) port map (UA,UL,sel(2),salALU);
end architecture arqALU;