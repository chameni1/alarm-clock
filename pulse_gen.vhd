library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.ALARM_TYPES.all;

entity PULSE_GEN is
  port (CLOCK, RESET : in  std_logic;  
        HALF_SECOND  : out std_logic;  
        ONE_MINUTE   : out std_logic); 
end PULSE_GEN;

architecture Behavioral of pulse_gen is
begin
  process (CLOCK, RESET)	  
  	 variable counter: integer RANGE 0 to 49999999;	
	 variable i:integer range 0 to 120;
  begin
  		if RESET = '1' then
			counter := 0;
			i:=0;
			
		elsif (rising_edge(CLOCK)) then
			counter:=counter+1;
			if (counter=49999999) then		
			   --to complete
				  
				  counter:=0;
				  HALF_SECOND <='1';
				  i:=i+1;
			else
				  HALF_SECOND <='0';	
			end if;
			--to complete with geerantion of ONE-MINUTE
			if (i=120) then 
			   ONE_MINUTE<='1';
				i:=0;
			else 
            ONE_MINUTE<='0';	
         end if;				
		end if;
	end process;
end Behavioral;
