--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:    08:51:37 04/25/08
-- Design Name:    
-- Module Name:    bcd2_count - Behavioral
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

entity MINs_BCD2_COUNT is

  port (CLOCK, RESET : in  std_logic;
        LOAD_EN      : in  std_logic;
        LOAD_DATA    : in  DISPLAY_2;
        COUNT_EN     : in  std_logic;
        OP_DATA      : out DISPLAY_2);
end MINs_BCD2_COUNT;

architecture RTL of MINs_BCD2_COUNT is
  constant MSMAX  : integer :=2;
  constant LSMAX  : integer :=3;
  constant NINE : std_logic_vector(3 downto 0) := "1001";
  signal MS, LS: std_logic_vector(3 downto 0);

begin

  BC: process (CLOCK, RESET)
  begin
    if RESET = '1' then
 
    --to complete : set LS and MS to zero
	 MS<= "0000" ;
	LS<="0000" ;
 
    elsif CLOCK'event and CLOCK='1' then
      if LOAD_EN = '1' then
		  LS <= LOAD_DATA (0) ;
        MS <=	LOAD_DATA(1) ;
        
		-- to complete assign LOAD_DATA to MS and LS  
      elsif COUNT_EN = '1' then
		 if (MS<MSMAX) then
		    if (LS=9) then 
			   	 
					  LS <= "0000" ;
					  MS<=MS+1 ;
			   else 
							LS<=LS+1 ;
				end if ;
		    else 				
					if (LS=LSMAX ) then 
							LS<="0000" ;
							MS<="0000" ;
						else 
							LS<=LS+1 ;
					end if ;
				end if ;		
		  
        end if;
    end if;
       
		 --to complete : adjust HRs ( take into account when LS=9 ans when LS=3 and MS=2)
		 
		 
       
  end process BC;

  OP_DATA <= (MS, LS);
              
end RTL;
