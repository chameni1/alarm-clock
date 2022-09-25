--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:    08:32:39 05/09/08
-- Design Name:    
-- Module Name:    control - Behavioral
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONTROL is
  port (CLOCK, RESET : in  std_logic;
        AL           : in  std_logic;
        MN           : in  std_logic;
        HR           : in  std_logic;
        SHOW_A       : out std_logic;
        LOAD_A       : out std_logic;
        SHOW_T       : out std_logic;
        LOAD_T       : out std_logic;
        INC_HOUR     : out std_logic;
        INC_MIN      : out std_logic  );
end CONTROL;

architecture RTL of CONTROL is

  type STATE_T is (SHOW_TIME, SHOW_ALARM,
                   INC_AL_MIN, INC_AL_HR,
                   INC_TI_MIN, INC_TI_HR,
                   TIME_SET, ALARM_SET);
  signal STATE : STATE_T;

begin

  FSM : process (CLOCK, RESET)
  begin
    if RESET = '1' then
      STATE <= SHOW_TIME;
    elsif CLOCK'event and CLOCK='1' then
      case STATE is
        when SHOW_TIME => 
		     if AL='1' then STATE<=SHOW_ALARM;
			   elsif HR='1'  then STATE<=INC_TI_HR; 
				elsif MN='1'  then STATE<=INC_TI_MIN;
           end if ;
			 --to complete
			  
        when SHOW_ALARM =>
		  if AL='0' then STATE<=	SHOW_TIME;
		    elsif AL='1' and HR='1' then 
			    STATE<=INC_AL_HR;
		    elsif AL='1' and MN='1' then 
			    STATE<=INC_AL_MIN;
		   end if ;
		  --to complete
        when INC_TI_HR =>
		  if HR='0' then STATE<=TIME_SET;
		  end if;
          --to complete
			 
        when INC_TI_MIN =>
          if MN='0' then STATE<=TIME_SET; 
          end if;			 
		  --to complete
		  when TIME_SET =>
          STATE <= SHOW_TIME;
			 
        when INC_AL_HR =>
		  if HR='0' then STATE<=ALARM_SET;
         end if;
			--to complete
        when INC_AL_MIN => 
        if MN='0' then STATE<= ALARM_SET;     
         end if;
			--to complete 
			 
        when ALARM_SET =>
          STATE <= SHOW_ALARM;
      end case;
    end if;
  end process FSM;

  SHOW_A   <= '1' when STATE = SHOW_ALARM else '0';
  LOAD_A   <=  '1' when STATE=ALARM_SET else '0';--to complete

  SHOW_T   <= '1' when STATE=SHOW_TIME else '0';--to complete
  LOAD_T   <='1' when STATE=TIME_SET else '0'; --to complete
 
                   
  with STATE select
    INC_HOUR    <= '1' when INC_AL_HR | INC_TI_HR ,
                   '0' when others;

  with STATE select
    INC_MIN     <= '1' when INC_AL_MIN | INC_TI_MIN,  --to complete                    ,
                   '0' when others;
                 
end RTL;

