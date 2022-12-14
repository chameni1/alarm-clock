--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:    08:42:34 05/23/08
-- Design Name:    
-- Module Name:    nexys3Affich - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.ALARM_TYPES.all;

entity nexys3Affich is	port (
	CLOCK : in std_logic;
	DISP_7SEG : in DISP7_T;
	S8_SEG: out std_logic_vector(7 downto 0);
	SEL : out std_logic_vector( 3 downto 0)
);
end nexys3Affich;

architecture Behavioral of nexys3Affich is
	signal selector: std_logic_vector(3 downto 0):="0111";
	signal a : std_logic ;
begin
	process (CLOCK)
			variable counter: integer RANGE 0 to 199999 := 0;
		begin
			if rising_edge(CLOCK) then
				counter := counter+1;
				if (counter = 199999) then
					if (selector = "1110") then
						selector <= '0' & selector(3 downto 1); --0111
					else
						selector <= '1' & selector(3 downto 1);	--1111
					end if;
					counter:=0;
				end if;
		end if;
	end process;
	
		process (CLOCK)
			variable i: integer RANGE 0 to 100000000 := 0;
		begin
			if rising_edge(CLOCK) then
				i:= i+1;
				if (i < 50000000) then
					
						a <= '0';
				elsif i < 100000000 then
						a<= '1' ;	
				elsif i = 100000000 then
					i:=0;
				end if;
		end if;
	end process;

	
		
	process(a,selector, DISP_7SEG)
	begin
		case selector is
			when "1110" => S8_SEG <=	'1'&DISP_7SEG(0);
			when "1101" => S8_SEG <=	'1'&DISP_7SEG(1);
			when "1011" => S8_SEG <=	 a &DISP_7SEG(2);
			when "0111" => S8_SEG <=	'1'&DISP_7SEG(3);
			when others => S8_SEG <= (others => '-');
		end case;
	end process;
	SEL<=selector;	
end Behavioral;
