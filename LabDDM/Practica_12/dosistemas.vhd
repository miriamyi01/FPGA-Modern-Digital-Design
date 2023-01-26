library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;
entity dosistemas is
 Port (reloj: in std_logic;
 Ld: out std_logic_vector (9 downto 0);
 display1: out std_logic_vector (6 downto 0);
 display2: out std_logic_vector (6 downto 0));
end dosistemas;

architecture Behavioral of dosistemas is
signal segundo : std_logic;
signal sube, baja : std_logic_vector (2 downto 0);
type ESTADOS is (s5,s4,s3,s2,s1,s0);
signal epresente, esiguiente : ESTADOS;
begin
Divi: process (reloj)
variable cuenta: std_logic_vector (27 downto 0):=X"0000000";
begin
 if rising_edge (reloj) then
if cuenta=X"48009E0" then
cuenta:=X"0000000";
 else
cuenta:=cuenta+1;
end if;
end if;
segundo <= cuenta (24);
end process;
SB: process (segundo)
variable arriba: std_logic_vector(2 downto 0):="000";
variable abajo: std_logic_vector(2 downto 0):="101";
begin
if rising_edge (segundo) then
if arriba ="101" then
arriba :="000";
else
arriba := arriba+1;
end if;
if abajo ="000" then
abajo :="101";
else
abajo := abajo - 1;
end if;
end if;
sube <= arriba;
baja <= abajo;
end process;
with sube select
display1 <=
 "0001000" when "001", --A
 "0000110" when "010", --E
 "1001111" when "011", --I
 "1000000" when "100", --O
 "1000001" when "101", --U
 "1000000" when others;
with baja select
display2 <=
 "0001000" when "000", --A
 "0000110" when "001", --E
 "1001111" when "010", --I
 "1000000" when "011", --O
 "1000001" when "100", --U
 "1000000" when others; 
presyfutu: process (segundo)
begin
if rising_edge (segundo) then
epresente <= esiguiente;
end if;
end process;
cadaedo: process (epresente)
begin
case epresente is
when s0 =>
Ld <= "1111100000";
esiguiente <= s1;
when s1 =>
Ld <= "1111010000";
esiguiente<= s2;
when s2 =>
Ld <= "1110011000";
esiguiente <= s3;
when s3 =>
Ld <= "1100011100";
Esiguiente <= s4;
when s4 =>
Ld <= "1000011110";
esiguiente<= s5;
when others =>
Ld <= "0000011111";
esiguiente <= s0;
end case;
end process;
end Behavioral;