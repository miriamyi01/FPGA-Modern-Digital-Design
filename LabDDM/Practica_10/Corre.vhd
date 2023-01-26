library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;
entity corre is
 Port ( reloj : in STD_LOGIC;
display1, display2, display3, display4 : inout std_logic_vector (6 downto 0));
end corre;

architecture Behavioral of corre is
	signal segundo : std_logic;
	signal Q : std_logic_vector (2 downto 0);
	
	begin
	divisor : process (reloj)
	variable cuenta: std_logic_vector(27 downto 0) := X"0000000";
	
	begin
	if rising_edge (reloj) then
		if cuenta =X"48009E0" then 
			cuenta := X"0000000";
			else
			cuenta := cuenta+1;
		end if;
	end if;
	segundo <= cuenta (22);
	end process;
	
	contador : process (segundo)
	variable cuenta: std_logic_vector(2 downto 0) := "000";
	begin
	if rising_edge (segundo) then
		cuenta := cuenta + 1 ;
	end if;
	Q <= cuenta;
	end process;
	with Q select --------mensaje
	display1 <= "0000110" when "000", -- E
	 "1000111" when "001", --L
	 "1000000" when "011", -- O
	 "0010010" when "100", --S
	 "1000000" when "101", --O
	 "1111111" when others; --espacios
	FF1 : process (segundo)
	begin
	 if rising_edge (segundo) then
	display2 <= display1;
	end if;
	end process;
	
	FF2 : process (segundo)
	begin
	 if rising_edge (segundo) then
	display3 <= display2;
	end if;
	end process;
	
	FF3 : process (segundo)
	begin
	 if rising_edge (segundo) then
	display4 <= display3;
	end if;
	end process;
end Behavioral;

