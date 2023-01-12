library IEEE;
use ieee.std_logic_1164.all;


ENTITY hw_image_generator IS
  GENERIC(
   pixels_y :  INTEGER := 478;   --row that first color will persist until
   pixels_x :  INTEGER := 600);  --column that first color will persist until
  
  PORT(
	 disp_ena :  IN   STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   INTEGER;    --row pixel coordinate
    column   :  IN   INTEGER;    --column pixel coordinate
    red      :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	 dipsw 	 :  IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
	 reloj 	 :  IN   STD_LOGIC);
END hw_image_generator;



ARCHITECTURE behavior OF hw_image_generator IS

signal x: INTEGER RANGE 10 TO 310;
signal y: INTEGER RANGE 10 TO 418;
signal x1, y1, x2, y2: INTEGER RANGE 0 TO 600;

--- ESPACIO DE JUEGO ---
begin   
	process(disp_ena, row, column)
	begin
		if(disp_ena = '1') THEN 
			
			-- LETRAS --
			-- T --
			if ((row > 373 and row <433) and (column>440 and column<460)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
			
			elsif ((row > 393 and row <413) and (column>459 and column<520)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
					
			-- E --	
			elsif ((row > 342 and row <363) and (column>440 and column<520)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '1');
				
			elsif ((row > 313 and row <353) and (column>440 and column<460)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '1');
					
			elsif ((row > 303 and row <343) and (column>470 and column<490)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '1');
					
			elsif ((row > 303 and row <343) and (column>500 and column<520)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '1');
					
			-- T --
			elsif ((row > 233 and row <293) and (column>440 and column<460)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '0');
			
			elsif ((row > 253 and row <273) and (column>459 and column<520)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '0');
					
			-- R --
			elsif ((row > 163 and row <223) and (column>440 and column<450)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			elsif ((row > 203 and row <223) and (column>449 and column<470)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			elsif ((row > 163 and row <183) and (column>449 and column<470)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			elsif ((row > 163 and row <223) and (column>469 and column<480)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');		
			
			elsif ((row > 203 and row <223) and (column>479 and column<520)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			elsif ((row > 173 and row <193) and (column>479 and column<520)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
					
			-- I --
			elsif ((row > 133 and row <153) and (column>440 and column<520)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			-- S --
			elsif ((row > 63 and row <123) and (column>440 and column<460)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
			
			 elsif ((row > 103 and row <123) and (column>459 and column<470)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');	
					
			elsif ((row > 63 and row <123) and (column>469 and column<490)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
			
			elsif ((row > 63 and row <83) and (column>489 and column<500)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
			
			elsif ((row > 63 and row <123) and (column>499 and column<520)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
			
			-- FIGURA L --
			elsif ((row > 383 and row <463) and (column>408 and column<428)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			elsif ((row > 443 and row <463) and (column>427 and column<488)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			-- FIGURA I --
			elsif ((row > 223 and row <363) and (column>530 and column<550)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '1');
					
			elsif ((row > 133 and row <283) and (column>408 and column<428)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '0');
					blue<=(OTHERS => '1');
			
			-- FIGURA Z --
			elsif ((row > 13 and row <53) and (column>490 and column<510)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
					
			elsif ((row > 33 and row <53) and (column>509 and column<530)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
					
			elsif ((row > 33 and row <73) and (column>529 and column<550)) THEN
					red <= (OTHERS => '0');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '0');
			
			
			-- ESPACIO DE JUEGO --	
			elsif ((row > 0 and row <10) and (column>0 and column<350)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
			
			elsif ((row > 468 and row <478) and (column>0 and column<350)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
					
			elsif ((row > 0 and row <478) and (column>0 and column<10)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
				
			elsif ((row > 0 and row <478) and (column>340 and column<350)) THEN
					red <= (OTHERS => '1');
					green<=(OTHERS => '1');
					blue<=(OTHERS => '1');
		
			
			--CUADRO DE FIGURAS--		
--			elsif ((row > 170 and row <320) and (column>450 and column<460)) THEN
--					red <= (OTHERS => '1');
--					green<=(OTHERS => '1');
--					blue<=(OTHERS => '1');
--			
--			elsif ((row > 170 and row <320) and (column>590 and column<600)) THEN
--					red <= (OTHERS => '1');
--					green<=(OTHERS => '1');
--					blue<=(OTHERS => '1');
--					
--			elsif ((row > 170 and row <180) and (column>450 and column<600)) THEN
--					red <= (OTHERS => '1');
--					green<=(OTHERS => '1');
--					blue<=(OTHERS => '1');
--					
--				
--			elsif ((row > 310 and row <320) and (column>450 and column<600)) THEN
--					red <= (OTHERS => '1');
--					green<=(OTHERS => '1');
--					blue<=(OTHERS => '1');

			elsif ((row > x and row <x+50) and (column>y and column<y+50)) THEN
				red <= (OTHERS => '1');
				
			--FONDO--		
			else		
					red <= (OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
			end if;
	END IF;  --del enable
END PROCESS;


PROCESS(reloj,dipsw)
	BEGIN
			if (reloj' event and reloj = '1') then
				if ((dipsw(1)='0' and dipsw(0)='0') or (dipsw(1)='1' and dipsw(0)='1')) then 
					if ((y=10 or y=289) and x<417) then 
						y<=y;
						x<=x+1;
					elsif ((y=10 or y=289) and x=417) then 
						y<=y;
						x<=x;
					elsif ((y>10 or y<289) and x<417) then 
						y<=y;
						x<=x+1;
					elsif ((y>10 or y<289) and x=417) then 
						y<=y;
						x<=x;
				end if;
				
				elsif (dipsw(1)='0' and dipsw(0)='1') then 
					if (y=289 and x<417) then 
						x<=x+1;
						y<=y;
					elsif (y=289 and x=417) then 
						x<=x;
						y<=y;
					elsif (y<289 and x<417) then 
						x<=x+1;
						y<=y+1;
					end if;
				
				elsif (dipsw(1)='1' and dipsw(0)='0') then 
					if (y=10 and x<417) then 
						x<=x+1;
						y<=y;
					elsif (y=10 and x=417) then 
						x<=x;
						y<=y;
					elsif (y>10 and x<417) then 
						x<=x+1;
						y<=y-1;
					end if;
				end if;
			end if;
	end process;
	
END behavior;