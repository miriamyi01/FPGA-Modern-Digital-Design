library ieee;
use ieee.std_logic_1164.all;

entity UA is
port (a,b: in std_logic_vector(2 downto 0);
		sel: in std_logic_vector(1 downto 0);
		cin: in std_logic;
		salua: out std_logic_vector(2 downto 0);
		cout: out std_logic);
end entity UA;

architecture arqUA of UA is
signal salmux: std_logic_vector(2 downto 0);
	begin
		u1: entity work.MUX4x1(arqMUX4x1) port map (b, sel, salmux);
		u2: entity work.sum(arqsum) port map (a,salmux,cin,salua,cout);
end architecture arqUA;