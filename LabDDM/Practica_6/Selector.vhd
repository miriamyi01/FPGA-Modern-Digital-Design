library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity selector is
	Port (sele: in STD_LOGIC_VECTOR (1 downto 0);
			a, b, c, d : in STD_LOGIC;
			L : out STD_LOGIC
	);
end selector;

architecture behavioral of selector is
	begin
		process (sele)
			BEGIN
				case sele is
					when "00" => L <= a;
					when "01"=> L <= b;
					when "10" => L <= c ;
					when others => L <= d;
			end case;
		end process;
end behavioral;