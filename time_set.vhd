-----------------------------------------------------------------------
-- 
-- Original Code Copyright (c)2003 by Esperan (www.esperan.com)
--           World-wide leaders in independent, 
--     methodology-based training for electronic design
--
-- All rights reserved.
-- 
-- This source file may be used and distributed without restriction
-- provided that this copyright statement is not removed from the file
-- and that any derivative work contains this copyright notice. 
--
-- Esperan VHDL Alarm Clock Lab Exercise Design V6.0
-- 
----------------------------------------------------------------------- 

-- This component sets the alarm or current time.
-- Time Operation:
--   User presses the hour or minute button in time mode to separately
--   increment time hours or minutes
-- Sequence:
--   SHOW_T goes high
--     Time_set loads the current time into the incrementor
--   Increment the time hour while INC_HOUR is active
--   Increment the time minute while INC_MIN active
--
-- Alarm Operation:
--   User presses the hour or minute button in alarm mode to separately
--   increment Alarm hours or minutes
-- Sequence:
--   SHOW_A high
--     Time_set loads the current alarm time into the incrementor
--   Increment the hour while INC_HOUR is active
--   Increment the minute while INC_MIN active



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all; 

use work.ALARM_TYPES.all;

entity TIME_SET is
  port (CLOCK, RESET : in  std_logic;   -- control
        HALF_SECOND  : in  std_logic;   -- 1/2 sec timed pulse 
        TIME_DATA    : in  DISPLAY_4;
        ALARM_DATA   : in  DISPLAY_4;
        SHOW_A       : in  std_logic;
        SHOW_T       : in  std_logic;
        INC_HOUR     : in  std_logic;
        INC_MIN      : in  std_logic;
        SET_DATA     : out DISPLAY_4);
end TIME_SET;

architecture RTL of TIME_SET is

component HR_BCD2_COUNT
  
  port (CLOCK, RESET : in  std_logic;
        LOAD_EN      : in  std_logic;
        LOAD_DATA    : in  DISPLAY_2;
        COUNT_EN     : in  std_logic;
        OP_DATA      : out DISPLAY_2);
end component;

component MINs_BCD2_COUNT
  port (CLOCK, RESET : in  std_logic;
        LOAD_EN      : in  std_logic;
        LOAD_DATA    : in  DISPLAY_2;
        COUNT_EN     : in  std_logic;
        OP_DATA      : out DISPLAY_2);
end component;

  signal MN_DATA, HR_DATA, HR_OP, MN_OP : DISPLAY_2;
  signal LOAD_EN, MN_COUNT_EN, HR_COUNT_EN : std_logic;

begin

 
  -- counting to 59
  MINS: HR_BCD2_COUNT port map (CLOCK, RESET, LOAD_EN, MN_DATA, MN_COUNT_EN, MN_OP);

  -- counting to 23
  HRS:  MINs_BCD2_COUNT port map (CLOCK, RESET, LOAD_EN, HR_DATA, HR_COUNT_EN, HR_OP);

  
  LOAD_EN <= SHOW_A OR SHOW_T ;      --to complete     ;

  MN_COUNT_EN <=HALF_SECOND AND INC_MIN ;--to complete
  HR_COUNT_EN <= HALF_SECOND and INC_HOUR;--to complete


  MN_DATA <= TIME_DATA(1 downto 0) when SHOW_T = '1' else ALARM_DATA(1 downto 0);
  
  HR_DATA <= TIME_DATA(3 downto 2) when SHOW_T = '1' else ALARM_DATA(3 downto 2);--to complete

 
  SET_DATA <= (HR_OP(1), HR_OP(0), MN_OP(1), MN_OP(0));
              
end RTL;
