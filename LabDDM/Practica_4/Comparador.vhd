library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador is
	Port(A : in STD_LOGIC;
		  B : in STD_LOGIC;
		  S : out STD_LOGIC_VECTOR (6 downto 0)
	);
end comparador;

architecture behavioral of comparador is
	begin 	
		process (A,B)
			begin 
				if A > B then
					S <= "0001000";
				elsif A < B then
					S <= "0000011";
				elsif A = B then
					S <= "0111110";
				end if; 
		end process; 
end behavioral;