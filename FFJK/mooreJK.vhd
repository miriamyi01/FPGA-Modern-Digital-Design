library ieee;
use ieee.std_logic_1164.all;

entity mooreJK is 
	port(clk: in std_logic;
		  J,K: in std_logic;
		  Q: inout std_logic;
		  notQ: inout std_logic);
end entity;

architecture arq of mooreJK is 
	begin 
		process (clk)
		begin 
			if rising_edge(clk) then  
				Q<= (Q and (not K))or(not(Q) and J);
				notQ<= (not Q);
			end if;
		end process;
end architecture;