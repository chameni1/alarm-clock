--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: alarm_clock_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jun 01 09:50:13 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm alarm_clock -w -dir netgen/synthesis -ofmt vhdl -sim alarm_clock.ngc alarm_clock_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: alarm_clock.ngc
-- Output file	: C:\Users\Asus\Desktop\projet fpga\TP4_alarm_clock_tocomplete\netgen\synthesis\alarm_clock_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: alarm_clock
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity alarm_clock is
  port (
    AL : in STD_LOGIC := 'X'; 
    HR : in STD_LOGIC := 'X'; 
    MN : in STD_LOGIC := 'X'; 
    ALARM_ON : in STD_LOGIC := 'X'; 
    CLOCK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    SOUND_A : out STD_LOGIC; 
    SEL : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    DISP_8SEG : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end alarm_clock;

architecture Structure of alarm_clock is
  signal AL_IBUF_0 : STD_LOGIC; 
  signal HR_IBUF_1 : STD_LOGIC; 
  signal MN_IBUF_2 : STD_LOGIC; 
  signal ALARM_ON_IBUF_3 : STD_LOGIC; 
  signal CLOCK_BUFGP_4 : STD_LOGIC; 
  signal RESET_IBUF_BUFG_5 : STD_LOGIC; 
  signal LOAD_A : STD_LOGIC; 
  signal SHOW_T : STD_LOGIC; 
  signal LOAD_T : STD_LOGIC; 
  signal SOUND_A_OBUF_9 : STD_LOGIC; 
  signal PULSEgEN_HALF_SECOND_10 : STD_LOGIC; 
  signal PULSEgEN_ONE_MINUTE_11 : STD_LOGIC; 
  signal DISP_8SEG_7_OBUF_52 : STD_LOGIC; 
  signal DISP_8SEG_6_OBUF_53 : STD_LOGIC; 
  signal DISP_8SEG_5_OBUF_54 : STD_LOGIC; 
  signal DISP_8SEG_4_OBUF_55 : STD_LOGIC; 
  signal DISP_8SEG_3_OBUF_56 : STD_LOGIC; 
  signal DISP_8SEG_2_OBUF_57 : STD_LOGIC; 
  signal DISP_8SEG_1_OBUF_58 : STD_LOGIC; 
  signal DISP_8SEG_0_OBUF_59 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal CONTROLfSM_STATE_FSM_FFd3_In : STD_LOGIC; 
  signal CONTROLfSM_STATE_FSM_FFd2_In : STD_LOGIC; 
  signal CONTROLfSM_STATE_FSM_FFd1_In : STD_LOGIC; 
  signal CONTROLfSM_STATE_FSM_FFd3_68 : STD_LOGIC; 
  signal CONTROLfSM_STATE_FSM_FFd2_69 : STD_LOGIC; 
  signal CONTROLfSM_STATE_FSM_FFd1_70 : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_0_0_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_0_1_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_0_2_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_0_3_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_1_0_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_1_1_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_1_2_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_2_0_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_2_1_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_2_2_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_2_3_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_3_0_Q : STD_LOGIC; 
  signal DISPLAYdRIVER_DISPLAY_3_1_Q : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_Q_84 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_Q_85 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_Q_86 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_Q_87 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_Q_88 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_Q_89 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_Q_90 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_Q_91 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_Q_92 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_Q_93 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_Q_94 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_Q_95 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_Q_96 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_Q_97 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_Q_98 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_Q_99 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_Q_100 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_Q_101 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_Q_102 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_Q_103 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_Q_104 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_Q_105 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_Q_106 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_Q_107 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_0_Q_108 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_lut_0_Q : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_Q_110 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_Q_111 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_Q_112 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_Q_113 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_Q_114 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_Q_115 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_Q_116 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_Q_117 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_Q_118 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_Q_119 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_Q_120 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_Q_121 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_Q_122 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_Q_123 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_Q_124 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_Q_125 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_Q_126 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_Q_127 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_Q_128 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_Q_129 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_Q_130 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_Q_131 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_Q_132 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_Q_133 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_Q_134 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_Q_135 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_Q_136 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_Q_137 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_Q_138 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_Q_139 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_0_Q_140 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_lut_0_Q : STD_LOGIC; 
  signal PULSEgEN_RESET_inv : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_0_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_1_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_2_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_3_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_4_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_5_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_6_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_12_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_13_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_14_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_15_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_17_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_19_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_20_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_21_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_22_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_23_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_mux_3_OUT_25_Q : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_0_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_1_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_2_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_3_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_4_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_5_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_6_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_7_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_8_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_9_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_10_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_11_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_12_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_13_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_14_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_15_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_16_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_17_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_18_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_19_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_20_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_21_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_22_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_23_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_24_Q : STD_LOGIC; 
  signal PULSEgEN_counter_25_GND_8_o_add_0_OUT_25_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_0_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_1_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_2_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_3_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_4_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_5_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_6_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_7_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_8_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_9_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_10_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_11_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_12_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_13_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_14_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_15_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_16_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_17_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_18_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_19_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_20_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_21_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_22_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_23_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_24_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_25_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_26_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_27_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_28_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_29_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_30_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_GND_8_o_add_2_OUT_31_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_0_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_1_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_2_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_3_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_4_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_5_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_6_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_7_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_8_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_9_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_10_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_11_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_12_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_13_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_14_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_15_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_16_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_17_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_18_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_19_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_20_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_21_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_22_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_23_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_24_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_25_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_26_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_27_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_28_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_29_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_30_Q : STD_LOGIC; 
  signal PULSEgEN_i_31_i_31_mux_4_OUT_31_Q : STD_LOGIC; 
  signal TIMEsET_LOAD_EN : STD_LOGIC; 
  signal TIMEsET_MINS_n0056_inv : STD_LOGIC; 
  signal TIMEsET_MINS_n0049_inv : STD_LOGIC; 
  signal TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_0_Q : STD_LOGIC; 
  signal TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_1_Q : STD_LOGIC; 
  signal TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_2_Q : STD_LOGIC; 
  signal TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_3_Q : STD_LOGIC; 
  signal TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_0_Q : STD_LOGIC; 
  signal TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_1_Q : STD_LOGIC; 
  signal TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_2_Q : STD_LOGIC; 
  signal TIMEsET_HRS_n0067_inv_321 : STD_LOGIC; 
  signal TIMEsET_HRS_n0056_inv : STD_LOGIC; 
  signal TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_0_Q : STD_LOGIC; 
  signal TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_1_Q : STD_LOGIC; 
  signal TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_2_Q : STD_LOGIC; 
  signal TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_3_Q : STD_LOGIC; 
  signal TIMEsET_HRS_MS_3_LOAD_DATA_1_3_mux_15_OUT_0_Q : STD_LOGIC; 
  signal TIMEsET_HRS_MS_3_LOAD_DATA_1_3_mux_15_OUT_1_Q : STD_LOGIC; 
  signal TIMEcOUNT_n0113_inv2 : STD_LOGIC; 
  signal TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT31_330 : STD_LOGIC; 
  signal TIMEcOUNT_Mmux_MS_HR_3_SET_DATA_3_3_mux_29_OUT21 : STD_LOGIC; 
  signal TIMEcOUNT_n0113_inv_332 : STD_LOGIC; 
  signal TIMEcOUNT_n0102_inv : STD_LOGIC; 
  signal TIMEcOUNT_n0118_inv : STD_LOGIC; 
  signal TIMEcOUNT_n0094_inv : STD_LOGIC; 
  signal TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_0_Q : STD_LOGIC; 
  signal TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_1_Q : STD_LOGIC; 
  signal TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_2_Q : STD_LOGIC; 
  signal TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_3_Q : STD_LOGIC; 
  signal TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_0_Q : STD_LOGIC; 
  signal TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_1_Q : STD_LOGIC; 
  signal TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_2_Q : STD_LOGIC; 
  signal TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_0_Q : STD_LOGIC; 
  signal TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_1_Q : STD_LOGIC; 
  signal TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_2_Q : STD_LOGIC; 
  signal TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_3_Q : STD_LOGIC; 
  signal TIMEcOUNT_MS_HR_3_SET_DATA_3_3_mux_29_OUT_0_Q : STD_LOGIC; 
  signal TIMEcOUNT_MS_HR_3_SET_DATA_3_3_mux_29_OUT_1_Q : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_Q_394 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_Q_395 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_Q_396 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_Q_397 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_Q_398 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_Q_399 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_Q_400 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_Q_401 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_Q_402 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_Q_403 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_Q_404 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_Q_405 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_Q_406 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_Q_407 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_Q_408 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_Q_409 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_0_Q_410 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_lut_0_Q : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_Q_412 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_Q_413 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_Q_414 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_Q_415 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_Q_416 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_Q_417 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_Q_418 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_Q_419 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_Q_420 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_Q_421 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_Q_422 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_Q_423 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_Q_424 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_Q_425 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_Q_426 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_Q_427 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_Q_428 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_Q_429 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_Q_430 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_Q_431 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_Q_432 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_Q_433 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_Q_434 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_Q_435 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_Q_436 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_0_Q_437 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_lut_0_Q : STD_LOGIC; 
  signal Nexys3A_Result_17_1 : STD_LOGIC; 
  signal Nexys3A_Result_16_1 : STD_LOGIC; 
  signal Nexys3A_Result_15_1 : STD_LOGIC; 
  signal Nexys3A_Result_14_1 : STD_LOGIC; 
  signal Nexys3A_Result_13_1 : STD_LOGIC; 
  signal Nexys3A_Result_12_1 : STD_LOGIC; 
  signal Nexys3A_Result_11_1 : STD_LOGIC; 
  signal Nexys3A_Result_10_1 : STD_LOGIC; 
  signal Nexys3A_Result_9_1 : STD_LOGIC; 
  signal Nexys3A_Result_8_1 : STD_LOGIC; 
  signal Nexys3A_Result_7_1 : STD_LOGIC; 
  signal Nexys3A_Result_6_1 : STD_LOGIC; 
  signal Nexys3A_Result_5_1 : STD_LOGIC; 
  signal Nexys3A_Result_4_1 : STD_LOGIC; 
  signal Nexys3A_Result_3_1 : STD_LOGIC; 
  signal Nexys3A_Result_2_1 : STD_LOGIC; 
  signal Nexys3A_Result_1_1 : STD_LOGIC; 
  signal Nexys3A_Result_0_1 : STD_LOGIC; 
  signal Nexys3A_n0049 : STD_LOGIC; 
  signal Nexys3A_selector_3_INV_16_o : STD_LOGIC; 
  signal Nexys3A_PWR_16_o_counter_17_equal_2_o : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_0_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_1_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_2_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_3_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_4_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_5_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_6_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_7_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_8_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_9_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_10_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_11_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_12_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_13_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_14_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_15_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_16_Q : STD_LOGIC; 
  signal Nexys3A_counter_17_GND_16_o_add_0_OUT_17_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_0_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_1_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_2_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_3_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_4_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_5_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_6_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_7_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_8_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_9_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_10_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_11_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_12_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_13_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_14_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_15_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_16_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_17_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_18_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_19_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_20_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_21_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_22_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_23_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_24_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_25_Q : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_add_7_OUT_26_Q : STD_LOGIC; 
  signal Nexys3A_a_532 : STD_LOGIC; 
  signal DISPLAYdRIVER_Mmux_SOUND_A1 : STD_LOGIC; 
  signal DISPLAYdRIVER_Mmux_SOUND_A11_579 : STD_LOGIC; 
  signal DISPLAYdRIVER_Mmux_SOUND_A12_580 : STD_LOGIC; 
  signal DISPLAYdRIVER_Mmux_SOUND_A13_581 : STD_LOGIC; 
  signal DISPLAYdRIVER_Mmux_SOUND_A14_582 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_Q : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_1_584 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_4 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_5_586 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_7 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_8_588 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_9_589 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_10_590 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_11_591 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_12_592 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_13_593 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_14_594 : STD_LOGIC; 
  signal PULSEgEN_GND_8_o_i_31_equal_6_o_31_15_595 : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_Q : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_1_597 : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_2_598 : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_3_599 : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_4_600 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal Nexys3A_i_26_PWR_16_o_LessThan_10_o3 : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_LessThan_9_o3 : STD_LOGIC; 
  signal Nexys3A_i_26_GND_16_o_LessThan_9_o32 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG7 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG71_610 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG72_611 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG6 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG61_613 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG62_614 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG5 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG51_616 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG52_617 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG4 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG41_619 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG42_620 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG3 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG31_622 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG32_623 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG2 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG21_625 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG22_626 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG1 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG11_628 : STD_LOGIC; 
  signal Nexys3A_Mmux_S8_SEG12_629 : STD_LOGIC; 
  signal Nexys3A_n00492_630 : STD_LOGIC; 
  signal Nexys3A_n00493_631 : STD_LOGIC; 
  signal Nexys3A_n00494_632 : STD_LOGIC; 
  signal Nexys3A_n00495_633 : STD_LOGIC; 
  signal Nexys3A_n00496_634 : STD_LOGIC; 
  signal Nexys3A_n00497_635 : STD_LOGIC; 
  signal Nexys3A_PWR_16_o_counter_17_equal_2_o_17_Q : STD_LOGIC; 
  signal Nexys3A_PWR_16_o_counter_17_equal_2_o_17_1_637 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_rt_657 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_rt_658 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_rt_659 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_rt_660 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_rt_661 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_rt_662 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_rt_663 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_rt_664 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_rt_665 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_rt_666 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_rt_667 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_rt_668 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_rt_669 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_rt_670 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_rt_671 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_rt_672 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_rt_673 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_rt_674 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_rt_675 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_rt_676 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_rt_677 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_rt_678 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_rt_679 : STD_LOGIC; 
  signal PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_rt_680 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_rt_681 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_rt_682 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_rt_683 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_rt_684 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_rt_685 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_rt_686 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_rt_687 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_rt_688 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_rt_689 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_rt_690 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_rt_691 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_rt_692 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_rt_693 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_rt_694 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_rt_695 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_rt_696 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_rt_697 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_rt_698 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_rt_699 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_rt_700 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_rt_701 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_rt_702 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_rt_703 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_rt_704 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_rt_705 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_rt_706 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_rt_707 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_rt_708 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_rt_709 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_rt_710 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_16_rt_711 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_15_rt_712 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_14_rt_713 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_13_rt_714 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_12_rt_715 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_11_rt_716 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_10_rt_717 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_9_rt_718 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_8_rt_719 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_7_rt_720 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_6_rt_721 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_5_rt_722 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_4_rt_723 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_3_rt_724 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_2_rt_725 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_cy_1_rt_726 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_25_rt_727 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_24_rt_728 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_23_rt_729 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_22_rt_730 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_21_rt_731 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_20_rt_732 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_19_rt_733 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_18_rt_734 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_17_rt_735 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_16_rt_736 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_15_rt_737 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_14_rt_738 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_13_rt_739 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_12_rt_740 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_11_rt_741 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_10_rt_742 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_9_rt_743 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_8_rt_744 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_7_rt_745 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_6_rt_746 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_5_rt_747 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_4_rt_748 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_3_rt_749 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_2_rt_750 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_cy_1_rt_751 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_rt_752 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_rt_753 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_rt_754 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_rt_755 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_rt_756 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_rt_757 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_rt_758 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_rt_759 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_rt_760 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_rt_761 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_rt_762 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_rt_763 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_rt_764 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_rt_765 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_rt_766 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_rt_767 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_rt_768 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_rt_769 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_rt_770 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_rt_771 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_rt_772 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_rt_773 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_rt_774 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_rt_775 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_rt_776 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_rt_777 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_rt_778 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_rt_779 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_rt_780 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_rt_781 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_rt_782 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_rt_783 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_rt_784 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_rt_785 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_rt_786 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_rt_787 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_rt_788 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_rt_789 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_rt_790 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_rt_791 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_rt_792 : STD_LOGIC; 
  signal PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_31_rt_793 : STD_LOGIC; 
  signal Nexys3A_Mcount_counter_xor_17_rt_794 : STD_LOGIC; 
  signal Nexys3A_Mcount_i_xor_26_rt_795 : STD_LOGIC; 
  signal Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_17_rt_796 : STD_LOGIC; 
  signal Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_26_rt_797 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal Nexys3A_a_rstpot_801 : STD_LOGIC; 
  signal Nexys3A_i_26_rstpot_802 : STD_LOGIC; 
  signal Nexys3A_i_25_rstpot_803 : STD_LOGIC; 
  signal Nexys3A_i_24_rstpot_804 : STD_LOGIC; 
  signal Nexys3A_i_23_rstpot_805 : STD_LOGIC; 
  signal Nexys3A_i_22_rstpot_806 : STD_LOGIC; 
  signal Nexys3A_i_21_rstpot_807 : STD_LOGIC; 
  signal Nexys3A_i_20_rstpot_808 : STD_LOGIC; 
  signal Nexys3A_i_19_rstpot_809 : STD_LOGIC; 
  signal Nexys3A_i_18_rstpot_810 : STD_LOGIC; 
  signal Nexys3A_i_17_rstpot_811 : STD_LOGIC; 
  signal Nexys3A_i_16_rstpot_812 : STD_LOGIC; 
  signal Nexys3A_i_15_rstpot_813 : STD_LOGIC; 
  signal Nexys3A_i_14_rstpot_814 : STD_LOGIC; 
  signal Nexys3A_i_13_rstpot_815 : STD_LOGIC; 
  signal Nexys3A_i_12_rstpot_816 : STD_LOGIC; 
  signal Nexys3A_i_11_rstpot_817 : STD_LOGIC; 
  signal Nexys3A_i_10_rstpot_818 : STD_LOGIC; 
  signal Nexys3A_i_9_rstpot_819 : STD_LOGIC; 
  signal Nexys3A_i_8_rstpot_820 : STD_LOGIC; 
  signal Nexys3A_i_7_rstpot_821 : STD_LOGIC; 
  signal Nexys3A_i_6_rstpot_822 : STD_LOGIC; 
  signal Nexys3A_i_5_rstpot_823 : STD_LOGIC; 
  signal Nexys3A_i_4_rstpot_824 : STD_LOGIC; 
  signal Nexys3A_i_3_rstpot_825 : STD_LOGIC; 
  signal Nexys3A_i_2_rstpot_826 : STD_LOGIC; 
  signal Nexys3A_i_1_rstpot_827 : STD_LOGIC; 
  signal Nexys3A_i_0_rstpot_828 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal PULSEgEN_i_31_LD_836 : STD_LOGIC; 
  signal PULSEgEN_i_31_C_31_837 : STD_LOGIC; 
  signal PULSEgEN_i_31_P_31_838 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843 : STD_LOGIC; 
  signal PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61 : STD_LOGIC; 
  signal Nexys3A_n004971 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal RESET_IBUF_864 : STD_LOGIC; 
  signal TIMEsET_HRS_MS : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal TIMEsET_HRS_LS : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SET_DATA : STD_LOGIC_VECTOR2 ( 1 downto 1 , 3 downto 3 ); 
  signal TIMEsET_MINS_MS : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal TIMEsET_MINS_LS : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMrEGISTER_ALARM_DATA_3 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ALARMrEGISTER_ALARM_DATA_2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALARMrEGISTER_ALARM_DATA_1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ALARMrEGISTER_ALARM_DATA_0 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal TIMEcOUNT_MS_HR : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal TIMEcOUNT_LS_HR : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal TIMEcOUNT_MS_MIN : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal TIMEcOUNT_LS_MIN : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Nexys3A_selector : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PULSEgEN_counter : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal PULSEgEN_i : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Nexys3A_Mcount_counter_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Nexys3A_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Nexys3A_Mcount_i_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Nexys3A_Mcount_i_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Nexys3A_Result : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Nexys3A_counter : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal Nexys3A_i : STD_LOGIC_VECTOR ( 26 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => SET_DATA(1, 3)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  CONTROLfSM_STATE_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => CONTROLfSM_STATE_FSM_FFd3_In,
      Q => CONTROLfSM_STATE_FSM_FFd3_68
    );
  CONTROLfSM_STATE_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => CONTROLfSM_STATE_FSM_FFd2_In,
      Q => CONTROLfSM_STATE_FSM_FFd2_69
    );
  CONTROLfSM_STATE_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => CONTROLfSM_STATE_FSM_FFd1_In,
      Q => CONTROLfSM_STATE_FSM_FFd1_70
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_25_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_Q_84,
      LI => PULSEgEN_counter(25),
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_25_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_24_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_Q_85,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_rt_657,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_24_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_Q_85,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_rt_657,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_Q_84
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_23_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_Q_86,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_rt_658,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_23_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_Q_86,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_rt_658,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_Q_85
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_22_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_Q_87,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_rt_659,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_22_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_Q_87,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_rt_659,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_Q_86
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_21_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_Q_88,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_rt_660,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_21_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_Q_88,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_rt_660,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_Q_87
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_20_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_Q_89,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_rt_661,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_20_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_Q_89,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_rt_661,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_Q_88
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_19_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_Q_90,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_rt_662,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_19_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_Q_90,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_rt_662,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_Q_89
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_18_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_Q_91,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_rt_663,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_18_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_Q_91,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_rt_663,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_Q_90
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_17_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_Q_92,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_rt_664,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_17_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_Q_92,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_rt_664,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_Q_91
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_16_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_Q_93,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_rt_665,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_16_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_Q_93,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_rt_665,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_Q_92
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_15_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_Q_94,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_rt_666,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_15_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_Q_94,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_rt_666,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_Q_93
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_14_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_Q_95,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_rt_667,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_14_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_Q_95,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_rt_667,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_Q_94
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_13_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_Q_96,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_rt_668,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_13_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_Q_96,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_rt_668,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_Q_95
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_12_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_Q_97,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_rt_669,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_12_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_Q_97,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_rt_669,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_Q_96
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_11_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_Q_98,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_rt_670,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_11_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_Q_98,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_rt_670,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_Q_97
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_Q_99,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_rt_671,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_10_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_Q_99,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_rt_671,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_Q_98
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_Q_100,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_rt_672,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_9_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_Q_100,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_rt_672,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_Q_99
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_Q_101,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_rt_673,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_8_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_Q_101,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_rt_673,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_Q_100
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_Q_102,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_rt_674,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_7_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_Q_102,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_rt_674,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_Q_101
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_6_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_Q_103,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_rt_675,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_6_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_Q_103,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_rt_675,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_Q_102
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_5_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_Q_104,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_rt_676,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_5_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_Q_104,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_rt_676,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_Q_103
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_4_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_Q_105,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_rt_677,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_4_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_Q_105,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_rt_677,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_Q_104
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_3_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_Q_106,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_rt_678,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_3_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_Q_106,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_rt_678,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_Q_105
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_2_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_Q_107,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_rt_679,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_2_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_Q_107,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_rt_679,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_Q_106
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_1_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_0_Q_108,
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_rt_680,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_1_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_0_Q_108,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_rt_680,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_Q_107
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_xor_0_Q : XORCY
    port map (
      CI => SET_DATA(1, 3),
      LI => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_lut_0_Q,
      O => PULSEgEN_counter_25_GND_8_o_add_0_OUT_0_Q
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_0_Q : MUXCY
    port map (
      CI => SET_DATA(1, 3),
      DI => N1,
      S => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_lut_0_Q,
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_0_Q_108
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_31_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_Q_110,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_31_rt_793,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_31_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_30_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_Q_111,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_rt_681,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_30_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_Q_111,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_rt_681,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_Q_110
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_29_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_Q_112,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_rt_682,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_29_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_Q_112,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_rt_682,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_Q_111
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_28_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_Q_113,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_rt_683,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_28_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_Q_113,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_rt_683,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_Q_112
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_27_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_Q_114,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_rt_684,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_27_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_Q_114,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_rt_684,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_Q_113
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_26_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_Q_115,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_rt_685,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_26_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_Q_115,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_rt_685,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_Q_114
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_25_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_Q_116,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_rt_686,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_25_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_Q_116,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_rt_686,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_Q_115
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_24_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_Q_117,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_rt_687,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_24_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_Q_117,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_rt_687,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_Q_116
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_23_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_Q_118,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_rt_688,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_23_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_Q_118,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_rt_688,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_Q_117
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_22_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_Q_119,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_rt_689,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_22_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_Q_119,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_rt_689,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_Q_118
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_21_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_Q_120,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_rt_690,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_21_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_Q_120,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_rt_690,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_Q_119
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_20_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_Q_121,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_rt_691,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_20_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_Q_121,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_rt_691,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_Q_120
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_19_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_Q_122,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_rt_692,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_19_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_Q_122,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_rt_692,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_Q_121
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_18_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_Q_123,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_rt_693,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_18_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_Q_123,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_rt_693,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_Q_122
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_17_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_Q_124,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_rt_694,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_17_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_Q_124,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_rt_694,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_Q_123
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_16_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_Q_125,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_rt_695,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_16_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_Q_125,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_rt_695,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_Q_124
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_15_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_Q_126,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_rt_696,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_15_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_Q_126,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_rt_696,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_Q_125
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_14_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_Q_127,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_rt_697,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_14_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_Q_127,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_rt_697,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_Q_126
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_13_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_Q_128,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_rt_698,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_13_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_Q_128,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_rt_698,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_Q_127
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_12_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_Q_129,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_rt_699,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_12_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_Q_129,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_rt_699,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_Q_128
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_11_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_Q_130,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_rt_700,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_11_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_Q_130,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_rt_700,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_Q_129
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_10_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_Q_131,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_rt_701,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_10_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_Q_131,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_rt_701,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_Q_130
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_9_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_Q_132,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_rt_702,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_9_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_Q_132,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_rt_702,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_Q_131
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_8_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_Q_133,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_rt_703,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_8_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_Q_133,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_rt_703,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_Q_132
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_7_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_Q_134,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_rt_704,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_7_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_Q_134,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_rt_704,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_Q_133
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_6_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_Q_135,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_rt_705,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_6_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_Q_135,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_rt_705,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_Q_134
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_5_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_Q_136,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_rt_706,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_5_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_Q_136,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_rt_706,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_Q_135
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_4_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_Q_137,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_rt_707,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_4_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_Q_137,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_rt_707,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_Q_136
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_3_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_Q_138,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_rt_708,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_3_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_Q_138,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_rt_708,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_Q_137
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_2_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_Q_139,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_rt_709,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_2_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_Q_139,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_rt_709,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_Q_138
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_1_Q : XORCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_0_Q_140,
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_rt_710,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_1_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_Q : MUXCY
    port map (
      CI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_0_Q_140,
      DI => SET_DATA(1, 3),
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_rt_710,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_Q_139
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_0_Q : XORCY
    port map (
      CI => SET_DATA(1, 3),
      LI => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_lut_0_Q,
      O => PULSEgEN_i_31_GND_8_o_add_2_OUT_0_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_0_Q : MUXCY
    port map (
      CI => SET_DATA(1, 3),
      DI => N1,
      S => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_lut_0_Q,
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_0_Q_140
    );
  PULSEgEN_counter_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_25_Q,
      Q => PULSEgEN_counter(25)
    );
  PULSEgEN_counter_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_24_Q,
      Q => PULSEgEN_counter(24)
    );
  PULSEgEN_counter_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_23_Q,
      Q => PULSEgEN_counter(23)
    );
  PULSEgEN_counter_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_22_Q,
      Q => PULSEgEN_counter(22)
    );
  PULSEgEN_counter_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_21_Q,
      Q => PULSEgEN_counter(21)
    );
  PULSEgEN_counter_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_20_Q,
      Q => PULSEgEN_counter(20)
    );
  PULSEgEN_counter_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_19_Q,
      Q => PULSEgEN_counter(19)
    );
  PULSEgEN_counter_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_18_Q,
      Q => PULSEgEN_counter(18)
    );
  PULSEgEN_counter_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_17_Q,
      Q => PULSEgEN_counter(17)
    );
  PULSEgEN_counter_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_16_Q,
      Q => PULSEgEN_counter(16)
    );
  PULSEgEN_counter_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_15_Q,
      Q => PULSEgEN_counter(15)
    );
  PULSEgEN_counter_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_14_Q,
      Q => PULSEgEN_counter(14)
    );
  PULSEgEN_counter_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_13_Q,
      Q => PULSEgEN_counter(13)
    );
  PULSEgEN_counter_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_12_Q,
      Q => PULSEgEN_counter(12)
    );
  PULSEgEN_counter_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_11_Q,
      Q => PULSEgEN_counter(11)
    );
  PULSEgEN_counter_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_10_Q,
      Q => PULSEgEN_counter(10)
    );
  PULSEgEN_counter_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_9_Q,
      Q => PULSEgEN_counter(9)
    );
  PULSEgEN_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_8_Q,
      Q => PULSEgEN_counter(8)
    );
  PULSEgEN_counter_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_add_0_OUT_7_Q,
      Q => PULSEgEN_counter(7)
    );
  PULSEgEN_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_6_Q,
      Q => PULSEgEN_counter(6)
    );
  PULSEgEN_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_5_Q,
      Q => PULSEgEN_counter(5)
    );
  PULSEgEN_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_4_Q,
      Q => PULSEgEN_counter(4)
    );
  PULSEgEN_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_3_Q,
      Q => PULSEgEN_counter(3)
    );
  PULSEgEN_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_2_Q,
      Q => PULSEgEN_counter(2)
    );
  PULSEgEN_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_1_Q,
      Q => PULSEgEN_counter(1)
    );
  PULSEgEN_counter_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_0_Q,
      Q => PULSEgEN_counter(0)
    );
  PULSEgEN_i_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_30_Q,
      Q => PULSEgEN_i(30)
    );
  PULSEgEN_i_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_29_Q,
      Q => PULSEgEN_i(29)
    );
  PULSEgEN_i_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_28_Q,
      Q => PULSEgEN_i(28)
    );
  PULSEgEN_i_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_27_Q,
      Q => PULSEgEN_i(27)
    );
  PULSEgEN_i_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_26_Q,
      Q => PULSEgEN_i(26)
    );
  PULSEgEN_i_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_25_Q,
      Q => PULSEgEN_i(25)
    );
  PULSEgEN_i_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_24_Q,
      Q => PULSEgEN_i(24)
    );
  PULSEgEN_i_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_23_Q,
      Q => PULSEgEN_i(23)
    );
  PULSEgEN_i_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_22_Q,
      Q => PULSEgEN_i(22)
    );
  PULSEgEN_i_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_21_Q,
      Q => PULSEgEN_i(21)
    );
  PULSEgEN_i_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_20_Q,
      Q => PULSEgEN_i(20)
    );
  PULSEgEN_i_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_19_Q,
      Q => PULSEgEN_i(19)
    );
  PULSEgEN_i_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_18_Q,
      Q => PULSEgEN_i(18)
    );
  PULSEgEN_i_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_17_Q,
      Q => PULSEgEN_i(17)
    );
  PULSEgEN_i_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_16_Q,
      Q => PULSEgEN_i(16)
    );
  PULSEgEN_i_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_15_Q,
      Q => PULSEgEN_i(15)
    );
  PULSEgEN_i_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_14_Q,
      Q => PULSEgEN_i(14)
    );
  PULSEgEN_i_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_13_Q,
      Q => PULSEgEN_i(13)
    );
  PULSEgEN_i_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_12_Q,
      Q => PULSEgEN_i(12)
    );
  PULSEgEN_i_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_11_Q,
      Q => PULSEgEN_i(11)
    );
  PULSEgEN_i_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_10_Q,
      Q => PULSEgEN_i(10)
    );
  PULSEgEN_i_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_9_Q,
      Q => PULSEgEN_i(9)
    );
  PULSEgEN_i_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_8_Q,
      Q => PULSEgEN_i(8)
    );
  PULSEgEN_i_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_7_Q,
      Q => PULSEgEN_i(7)
    );
  PULSEgEN_i_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_6_Q,
      Q => PULSEgEN_i(6)
    );
  PULSEgEN_i_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_5_Q,
      Q => PULSEgEN_i(5)
    );
  PULSEgEN_i_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_4_Q,
      Q => PULSEgEN_i(4)
    );
  PULSEgEN_i_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_3_Q,
      Q => PULSEgEN_i(3)
    );
  PULSEgEN_i_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_2_Q,
      Q => PULSEgEN_i(2)
    );
  PULSEgEN_i_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_1_Q,
      Q => PULSEgEN_i(1)
    );
  PULSEgEN_i_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_0_Q,
      Q => PULSEgEN_i(0)
    );
  PULSEgEN_ONE_MINUTE : FDE
    port map (
      C => CLOCK_BUFGP_4,
      CE => PULSEgEN_RESET_inv,
      D => PULSEgEN_GND_8_o_i_31_equal_6_o,
      Q => PULSEgEN_ONE_MINUTE_11
    );
  PULSEgEN_HALF_SECOND : FDE
    port map (
      C => CLOCK_BUFGP_4,
      CE => PULSEgEN_RESET_inv,
      D => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      Q => PULSEgEN_HALF_SECOND_10
    );
  TIMEsET_MINS_MS_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_MINS_n0056_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_2_Q,
      Q => TIMEsET_MINS_MS(2)
    );
  TIMEsET_MINS_MS_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_MINS_n0056_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_1_Q,
      Q => TIMEsET_MINS_MS(1)
    );
  TIMEsET_MINS_MS_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_MINS_n0056_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_0_Q,
      Q => TIMEsET_MINS_MS(0)
    );
  TIMEsET_MINS_LS_3 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_MINS_n0049_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_3_Q,
      Q => TIMEsET_MINS_LS(3)
    );
  TIMEsET_MINS_LS_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_MINS_n0049_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_2_Q,
      Q => TIMEsET_MINS_LS(2)
    );
  TIMEsET_MINS_LS_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_MINS_n0049_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_1_Q,
      Q => TIMEsET_MINS_LS(1)
    );
  TIMEsET_MINS_LS_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_MINS_n0049_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_0_Q,
      Q => TIMEsET_MINS_LS(0)
    );
  TIMEsET_HRS_MS_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_HRS_n0067_inv_321,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_MS_3_LOAD_DATA_1_3_mux_15_OUT_1_Q,
      Q => TIMEsET_HRS_MS(1)
    );
  TIMEsET_HRS_MS_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_HRS_n0067_inv_321,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_MS_3_LOAD_DATA_1_3_mux_15_OUT_0_Q,
      Q => TIMEsET_HRS_MS(0)
    );
  TIMEsET_HRS_LS_3 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_HRS_n0056_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_3_Q,
      Q => TIMEsET_HRS_LS(3)
    );
  TIMEsET_HRS_LS_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_HRS_n0056_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_2_Q,
      Q => TIMEsET_HRS_LS(2)
    );
  TIMEsET_HRS_LS_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_HRS_n0056_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_1_Q,
      Q => TIMEsET_HRS_LS(1)
    );
  TIMEsET_HRS_LS_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEsET_HRS_n0056_inv,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_0_Q,
      Q => TIMEsET_HRS_LS(0)
    );
  ALARMrEGISTER_ALARM_DATA_0_3 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS(3),
      Q => ALARMrEGISTER_ALARM_DATA_0(3)
    );
  ALARMrEGISTER_ALARM_DATA_0_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS(2),
      Q => ALARMrEGISTER_ALARM_DATA_0(2)
    );
  ALARMrEGISTER_ALARM_DATA_0_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS(1),
      Q => ALARMrEGISTER_ALARM_DATA_0(1)
    );
  ALARMrEGISTER_ALARM_DATA_0_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_LS(0),
      Q => ALARMrEGISTER_ALARM_DATA_0(0)
    );
  ALARMrEGISTER_ALARM_DATA_1_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_MS(2),
      Q => ALARMrEGISTER_ALARM_DATA_1(2)
    );
  ALARMrEGISTER_ALARM_DATA_1_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_MS(1),
      Q => ALARMrEGISTER_ALARM_DATA_1(1)
    );
  ALARMrEGISTER_ALARM_DATA_1_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_MINS_MS(0),
      Q => ALARMrEGISTER_ALARM_DATA_1(0)
    );
  ALARMrEGISTER_ALARM_DATA_2_3 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS(3),
      Q => ALARMrEGISTER_ALARM_DATA_2(3)
    );
  ALARMrEGISTER_ALARM_DATA_2_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS(2),
      Q => ALARMrEGISTER_ALARM_DATA_2(2)
    );
  ALARMrEGISTER_ALARM_DATA_2_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS(1),
      Q => ALARMrEGISTER_ALARM_DATA_2(1)
    );
  ALARMrEGISTER_ALARM_DATA_2_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_LS(0),
      Q => ALARMrEGISTER_ALARM_DATA_2(0)
    );
  ALARMrEGISTER_ALARM_DATA_3_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_MS(1),
      Q => ALARMrEGISTER_ALARM_DATA_3(1)
    );
  ALARMrEGISTER_ALARM_DATA_3_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => LOAD_A,
      CLR => RESET_IBUF_864,
      D => TIMEsET_HRS_MS(0),
      Q => ALARMrEGISTER_ALARM_DATA_3(0)
    );
  TIMEcOUNT_MS_HR_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0113_inv_332,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_MS_HR_3_SET_DATA_3_3_mux_29_OUT_1_Q,
      Q => TIMEcOUNT_MS_HR(1)
    );
  TIMEcOUNT_MS_HR_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0113_inv_332,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_MS_HR_3_SET_DATA_3_3_mux_29_OUT_0_Q,
      Q => TIMEcOUNT_MS_HR(0)
    );
  TIMEcOUNT_LS_HR_3 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0102_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_3_Q,
      Q => TIMEcOUNT_LS_HR(3)
    );
  TIMEcOUNT_LS_HR_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0102_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_2_Q,
      Q => TIMEcOUNT_LS_HR(2)
    );
  TIMEcOUNT_LS_HR_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0102_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_1_Q,
      Q => TIMEcOUNT_LS_HR(1)
    );
  TIMEcOUNT_LS_HR_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0102_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_0_Q,
      Q => TIMEcOUNT_LS_HR(0)
    );
  TIMEcOUNT_LS_MIN_3 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0118_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_3_Q,
      Q => TIMEcOUNT_LS_MIN(3)
    );
  TIMEcOUNT_LS_MIN_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0118_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_2_Q,
      Q => TIMEcOUNT_LS_MIN(2)
    );
  TIMEcOUNT_LS_MIN_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0118_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_1_Q,
      Q => TIMEcOUNT_LS_MIN(1)
    );
  TIMEcOUNT_LS_MIN_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0118_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_0_Q,
      Q => TIMEcOUNT_LS_MIN(0)
    );
  TIMEcOUNT_MS_MIN_2 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0094_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_2_Q,
      Q => TIMEcOUNT_MS_MIN(2)
    );
  TIMEcOUNT_MS_MIN_1 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0094_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_1_Q,
      Q => TIMEcOUNT_MS_MIN(1)
    );
  TIMEcOUNT_MS_MIN_0 : FDCE
    port map (
      C => CLOCK_BUFGP_4,
      CE => TIMEcOUNT_n0094_inv,
      CLR => RESET_IBUF_864,
      D => TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_0_Q,
      Q => TIMEcOUNT_MS_MIN(0)
    );
  Nexys3A_Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(16),
      LI => Nexys3A_Mcount_counter_xor_17_rt_794,
      O => Nexys3A_Result_17_1
    );
  Nexys3A_Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(15),
      LI => Nexys3A_Mcount_counter_cy_16_rt_711,
      O => Nexys3A_Result_16_1
    );
  Nexys3A_Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(15),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_16_rt_711,
      O => Nexys3A_Mcount_counter_cy(16)
    );
  Nexys3A_Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(14),
      LI => Nexys3A_Mcount_counter_cy_15_rt_712,
      O => Nexys3A_Result_15_1
    );
  Nexys3A_Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(14),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_15_rt_712,
      O => Nexys3A_Mcount_counter_cy(15)
    );
  Nexys3A_Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(13),
      LI => Nexys3A_Mcount_counter_cy_14_rt_713,
      O => Nexys3A_Result_14_1
    );
  Nexys3A_Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(13),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_14_rt_713,
      O => Nexys3A_Mcount_counter_cy(14)
    );
  Nexys3A_Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(12),
      LI => Nexys3A_Mcount_counter_cy_13_rt_714,
      O => Nexys3A_Result_13_1
    );
  Nexys3A_Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(12),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_13_rt_714,
      O => Nexys3A_Mcount_counter_cy(13)
    );
  Nexys3A_Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(11),
      LI => Nexys3A_Mcount_counter_cy_12_rt_715,
      O => Nexys3A_Result_12_1
    );
  Nexys3A_Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(11),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_12_rt_715,
      O => Nexys3A_Mcount_counter_cy(12)
    );
  Nexys3A_Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(10),
      LI => Nexys3A_Mcount_counter_cy_11_rt_716,
      O => Nexys3A_Result_11_1
    );
  Nexys3A_Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(10),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_11_rt_716,
      O => Nexys3A_Mcount_counter_cy(11)
    );
  Nexys3A_Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(9),
      LI => Nexys3A_Mcount_counter_cy_10_rt_717,
      O => Nexys3A_Result_10_1
    );
  Nexys3A_Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(9),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_10_rt_717,
      O => Nexys3A_Mcount_counter_cy(10)
    );
  Nexys3A_Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(8),
      LI => Nexys3A_Mcount_counter_cy_9_rt_718,
      O => Nexys3A_Result_9_1
    );
  Nexys3A_Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(8),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_9_rt_718,
      O => Nexys3A_Mcount_counter_cy(9)
    );
  Nexys3A_Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(7),
      LI => Nexys3A_Mcount_counter_cy_8_rt_719,
      O => Nexys3A_Result_8_1
    );
  Nexys3A_Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(7),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_8_rt_719,
      O => Nexys3A_Mcount_counter_cy(8)
    );
  Nexys3A_Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(6),
      LI => Nexys3A_Mcount_counter_cy_7_rt_720,
      O => Nexys3A_Result_7_1
    );
  Nexys3A_Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(6),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_7_rt_720,
      O => Nexys3A_Mcount_counter_cy(7)
    );
  Nexys3A_Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(5),
      LI => Nexys3A_Mcount_counter_cy_6_rt_721,
      O => Nexys3A_Result_6_1
    );
  Nexys3A_Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(5),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_6_rt_721,
      O => Nexys3A_Mcount_counter_cy(6)
    );
  Nexys3A_Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(4),
      LI => Nexys3A_Mcount_counter_cy_5_rt_722,
      O => Nexys3A_Result_5_1
    );
  Nexys3A_Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(4),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_5_rt_722,
      O => Nexys3A_Mcount_counter_cy(5)
    );
  Nexys3A_Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(3),
      LI => Nexys3A_Mcount_counter_cy_4_rt_723,
      O => Nexys3A_Result_4_1
    );
  Nexys3A_Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(3),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_4_rt_723,
      O => Nexys3A_Mcount_counter_cy(4)
    );
  Nexys3A_Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(2),
      LI => Nexys3A_Mcount_counter_cy_3_rt_724,
      O => Nexys3A_Result_3_1
    );
  Nexys3A_Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(2),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_3_rt_724,
      O => Nexys3A_Mcount_counter_cy(3)
    );
  Nexys3A_Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(1),
      LI => Nexys3A_Mcount_counter_cy_2_rt_725,
      O => Nexys3A_Result_2_1
    );
  Nexys3A_Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(1),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_2_rt_725,
      O => Nexys3A_Mcount_counter_cy(2)
    );
  Nexys3A_Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(0),
      LI => Nexys3A_Mcount_counter_cy_1_rt_726,
      O => Nexys3A_Result_1_1
    );
  Nexys3A_Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_counter_cy(0),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_counter_cy_1_rt_726,
      O => Nexys3A_Mcount_counter_cy(1)
    );
  Nexys3A_Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => SET_DATA(1, 3),
      LI => Nexys3A_Mcount_counter_lut(0),
      O => Nexys3A_Result_0_1
    );
  Nexys3A_Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => SET_DATA(1, 3),
      DI => N1,
      S => Nexys3A_Mcount_counter_lut(0),
      O => Nexys3A_Mcount_counter_cy(0)
    );
  Nexys3A_Mcount_i_xor_26_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(25),
      LI => Nexys3A_Mcount_i_xor_26_rt_795,
      O => Nexys3A_Result(26)
    );
  Nexys3A_Mcount_i_xor_25_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(24),
      LI => Nexys3A_Mcount_i_cy_25_rt_727,
      O => Nexys3A_Result(25)
    );
  Nexys3A_Mcount_i_cy_25_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(24),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_25_rt_727,
      O => Nexys3A_Mcount_i_cy(25)
    );
  Nexys3A_Mcount_i_xor_24_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(23),
      LI => Nexys3A_Mcount_i_cy_24_rt_728,
      O => Nexys3A_Result(24)
    );
  Nexys3A_Mcount_i_cy_24_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(23),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_24_rt_728,
      O => Nexys3A_Mcount_i_cy(24)
    );
  Nexys3A_Mcount_i_xor_23_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(22),
      LI => Nexys3A_Mcount_i_cy_23_rt_729,
      O => Nexys3A_Result(23)
    );
  Nexys3A_Mcount_i_cy_23_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(22),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_23_rt_729,
      O => Nexys3A_Mcount_i_cy(23)
    );
  Nexys3A_Mcount_i_xor_22_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(21),
      LI => Nexys3A_Mcount_i_cy_22_rt_730,
      O => Nexys3A_Result(22)
    );
  Nexys3A_Mcount_i_cy_22_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(21),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_22_rt_730,
      O => Nexys3A_Mcount_i_cy(22)
    );
  Nexys3A_Mcount_i_xor_21_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(20),
      LI => Nexys3A_Mcount_i_cy_21_rt_731,
      O => Nexys3A_Result(21)
    );
  Nexys3A_Mcount_i_cy_21_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(20),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_21_rt_731,
      O => Nexys3A_Mcount_i_cy(21)
    );
  Nexys3A_Mcount_i_xor_20_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(19),
      LI => Nexys3A_Mcount_i_cy_20_rt_732,
      O => Nexys3A_Result(20)
    );
  Nexys3A_Mcount_i_cy_20_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(19),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_20_rt_732,
      O => Nexys3A_Mcount_i_cy(20)
    );
  Nexys3A_Mcount_i_xor_19_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(18),
      LI => Nexys3A_Mcount_i_cy_19_rt_733,
      O => Nexys3A_Result(19)
    );
  Nexys3A_Mcount_i_cy_19_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(18),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_19_rt_733,
      O => Nexys3A_Mcount_i_cy(19)
    );
  Nexys3A_Mcount_i_xor_18_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(17),
      LI => Nexys3A_Mcount_i_cy_18_rt_734,
      O => Nexys3A_Result(18)
    );
  Nexys3A_Mcount_i_cy_18_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(17),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_18_rt_734,
      O => Nexys3A_Mcount_i_cy(18)
    );
  Nexys3A_Mcount_i_xor_17_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(16),
      LI => Nexys3A_Mcount_i_cy_17_rt_735,
      O => Nexys3A_Result(17)
    );
  Nexys3A_Mcount_i_cy_17_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(16),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_17_rt_735,
      O => Nexys3A_Mcount_i_cy(17)
    );
  Nexys3A_Mcount_i_xor_16_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(15),
      LI => Nexys3A_Mcount_i_cy_16_rt_736,
      O => Nexys3A_Result(16)
    );
  Nexys3A_Mcount_i_cy_16_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(15),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_16_rt_736,
      O => Nexys3A_Mcount_i_cy(16)
    );
  Nexys3A_Mcount_i_xor_15_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(14),
      LI => Nexys3A_Mcount_i_cy_15_rt_737,
      O => Nexys3A_Result(15)
    );
  Nexys3A_Mcount_i_cy_15_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(14),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_15_rt_737,
      O => Nexys3A_Mcount_i_cy(15)
    );
  Nexys3A_Mcount_i_xor_14_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(13),
      LI => Nexys3A_Mcount_i_cy_14_rt_738,
      O => Nexys3A_Result(14)
    );
  Nexys3A_Mcount_i_cy_14_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(13),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_14_rt_738,
      O => Nexys3A_Mcount_i_cy(14)
    );
  Nexys3A_Mcount_i_xor_13_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(12),
      LI => Nexys3A_Mcount_i_cy_13_rt_739,
      O => Nexys3A_Result(13)
    );
  Nexys3A_Mcount_i_cy_13_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(12),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_13_rt_739,
      O => Nexys3A_Mcount_i_cy(13)
    );
  Nexys3A_Mcount_i_xor_12_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(11),
      LI => Nexys3A_Mcount_i_cy_12_rt_740,
      O => Nexys3A_Result(12)
    );
  Nexys3A_Mcount_i_cy_12_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(11),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_12_rt_740,
      O => Nexys3A_Mcount_i_cy(12)
    );
  Nexys3A_Mcount_i_xor_11_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(10),
      LI => Nexys3A_Mcount_i_cy_11_rt_741,
      O => Nexys3A_Result(11)
    );
  Nexys3A_Mcount_i_cy_11_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(10),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_11_rt_741,
      O => Nexys3A_Mcount_i_cy(11)
    );
  Nexys3A_Mcount_i_xor_10_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(9),
      LI => Nexys3A_Mcount_i_cy_10_rt_742,
      O => Nexys3A_Result(10)
    );
  Nexys3A_Mcount_i_cy_10_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(9),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_10_rt_742,
      O => Nexys3A_Mcount_i_cy(10)
    );
  Nexys3A_Mcount_i_xor_9_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(8),
      LI => Nexys3A_Mcount_i_cy_9_rt_743,
      O => Nexys3A_Result(9)
    );
  Nexys3A_Mcount_i_cy_9_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(8),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_9_rt_743,
      O => Nexys3A_Mcount_i_cy(9)
    );
  Nexys3A_Mcount_i_xor_8_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(7),
      LI => Nexys3A_Mcount_i_cy_8_rt_744,
      O => Nexys3A_Result(8)
    );
  Nexys3A_Mcount_i_cy_8_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(7),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_8_rt_744,
      O => Nexys3A_Mcount_i_cy(8)
    );
  Nexys3A_Mcount_i_xor_7_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(6),
      LI => Nexys3A_Mcount_i_cy_7_rt_745,
      O => Nexys3A_Result(7)
    );
  Nexys3A_Mcount_i_cy_7_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(6),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_7_rt_745,
      O => Nexys3A_Mcount_i_cy(7)
    );
  Nexys3A_Mcount_i_xor_6_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(5),
      LI => Nexys3A_Mcount_i_cy_6_rt_746,
      O => Nexys3A_Result(6)
    );
  Nexys3A_Mcount_i_cy_6_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(5),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_6_rt_746,
      O => Nexys3A_Mcount_i_cy(6)
    );
  Nexys3A_Mcount_i_xor_5_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(4),
      LI => Nexys3A_Mcount_i_cy_5_rt_747,
      O => Nexys3A_Result(5)
    );
  Nexys3A_Mcount_i_cy_5_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(4),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_5_rt_747,
      O => Nexys3A_Mcount_i_cy(5)
    );
  Nexys3A_Mcount_i_xor_4_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(3),
      LI => Nexys3A_Mcount_i_cy_4_rt_748,
      O => Nexys3A_Result(4)
    );
  Nexys3A_Mcount_i_cy_4_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(3),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_4_rt_748,
      O => Nexys3A_Mcount_i_cy(4)
    );
  Nexys3A_Mcount_i_xor_3_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(2),
      LI => Nexys3A_Mcount_i_cy_3_rt_749,
      O => Nexys3A_Result(3)
    );
  Nexys3A_Mcount_i_cy_3_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(2),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_3_rt_749,
      O => Nexys3A_Mcount_i_cy(3)
    );
  Nexys3A_Mcount_i_xor_2_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(1),
      LI => Nexys3A_Mcount_i_cy_2_rt_750,
      O => Nexys3A_Result(2)
    );
  Nexys3A_Mcount_i_cy_2_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(1),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_2_rt_750,
      O => Nexys3A_Mcount_i_cy(2)
    );
  Nexys3A_Mcount_i_xor_1_Q : XORCY
    port map (
      CI => Nexys3A_Mcount_i_cy(0),
      LI => Nexys3A_Mcount_i_cy_1_rt_751,
      O => Nexys3A_Result(1)
    );
  Nexys3A_Mcount_i_cy_1_Q : MUXCY
    port map (
      CI => Nexys3A_Mcount_i_cy(0),
      DI => SET_DATA(1, 3),
      S => Nexys3A_Mcount_i_cy_1_rt_751,
      O => Nexys3A_Mcount_i_cy(1)
    );
  Nexys3A_Mcount_i_xor_0_Q : XORCY
    port map (
      CI => SET_DATA(1, 3),
      LI => Nexys3A_Mcount_i_lut(0),
      O => Nexys3A_Result(0)
    );
  Nexys3A_Mcount_i_cy_0_Q : MUXCY
    port map (
      CI => SET_DATA(1, 3),
      DI => N1,
      S => Nexys3A_Mcount_i_lut(0),
      O => Nexys3A_Mcount_i_cy(0)
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_17_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_Q_394,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_17_rt_796,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_17_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_16_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_Q_395,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_rt_752,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_16_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_Q_395,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_rt_752,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_Q_394
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_15_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_Q_396,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_rt_753,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_15_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_Q_396,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_rt_753,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_Q_395
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_14_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_Q_397,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_rt_754,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_14_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_Q_397,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_rt_754,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_Q_396
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_13_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_Q_398,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_rt_755,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_13_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_Q_398,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_rt_755,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_Q_397
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_12_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_Q_399,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_rt_756,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_12_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_Q_399,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_rt_756,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_Q_398
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_11_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_Q_400,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_rt_757,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_11_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_Q_400,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_rt_757,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_Q_399
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_Q_401,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_rt_758,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_10_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_Q_401,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_rt_758,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_Q_400
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_Q_402,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_rt_759,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_9_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_Q_402,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_rt_759,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_Q_401
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_Q_403,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_rt_760,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_8_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_Q_403,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_rt_760,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_Q_402
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_Q_404,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_rt_761,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_7_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_Q_404,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_rt_761,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_Q_403
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_6_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_Q_405,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_rt_762,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_6_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_Q_405,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_rt_762,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_Q_404
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_5_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_Q_406,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_rt_763,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_5_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_Q_406,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_rt_763,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_Q_405
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_4_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_Q_407,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_rt_764,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_4_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_Q_407,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_rt_764,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_Q_406
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_3_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_Q_408,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_rt_765,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_3_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_Q_408,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_rt_765,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_Q_407
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_2_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_Q_409,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_rt_766,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_2_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_Q_409,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_rt_766,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_Q_408
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_1_Q : XORCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_0_Q_410,
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_rt_767,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_1_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_0_Q_410,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_rt_767,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_Q_409
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_0_Q : XORCY
    port map (
      CI => SET_DATA(1, 3),
      LI => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_lut_0_Q,
      O => Nexys3A_counter_17_GND_16_o_add_0_OUT_0_Q
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_0_Q : MUXCY
    port map (
      CI => SET_DATA(1, 3),
      DI => N1,
      S => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_lut_0_Q,
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_0_Q_410
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_26_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_Q_412,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_26_rt_797,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_26_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_25_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_Q_413,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_rt_768,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_25_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_Q_413,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_rt_768,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_Q_412
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_24_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_Q_414,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_rt_769,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_24_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_Q_414,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_rt_769,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_Q_413
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_23_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_Q_415,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_rt_770,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_23_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_Q_415,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_rt_770,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_Q_414
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_22_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_Q_416,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_rt_771,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_22_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_Q_416,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_rt_771,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_Q_415
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_21_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_Q_417,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_rt_772,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_21_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_Q_417,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_rt_772,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_Q_416
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_20_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_Q_418,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_rt_773,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_20_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_Q_418,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_rt_773,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_Q_417
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_19_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_Q_419,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_rt_774,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_19_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_Q_419,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_rt_774,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_Q_418
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_18_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_Q_420,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_rt_775,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_18_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_Q_420,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_rt_775,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_Q_419
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_17_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_Q_421,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_rt_776,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_17_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_Q_421,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_rt_776,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_Q_420
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_16_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_Q_422,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_rt_777,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_16_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_Q_422,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_rt_777,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_Q_421
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_15_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_Q_423,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_rt_778,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_15_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_Q_423,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_rt_778,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_Q_422
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_14_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_Q_424,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_rt_779,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_14_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_Q_424,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_rt_779,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_Q_423
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_13_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_Q_425,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_rt_780,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_13_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_Q_425,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_rt_780,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_Q_424
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_12_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_Q_426,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_rt_781,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_12_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_Q_426,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_rt_781,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_Q_425
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_11_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_Q_427,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_rt_782,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_11_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_Q_427,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_rt_782,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_Q_426
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_10_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_Q_428,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_rt_783,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_10_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_Q_428,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_rt_783,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_Q_427
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_9_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_Q_429,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_rt_784,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_9_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_Q_429,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_rt_784,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_Q_428
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_8_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_Q_430,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_rt_785,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_8_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_Q_430,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_rt_785,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_Q_429
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_7_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_Q_431,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_rt_786,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_7_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_Q_431,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_rt_786,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_Q_430
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_6_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_Q_432,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_rt_787,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_6_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_Q_432,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_rt_787,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_Q_431
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_5_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_Q_433,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_rt_788,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_5_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_Q_433,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_rt_788,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_Q_432
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_4_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_Q_434,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_rt_789,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_4_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_Q_434,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_rt_789,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_Q_433
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_3_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_Q_435,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_rt_790,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_3_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_Q_435,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_rt_790,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_Q_434
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_2_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_Q_436,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_rt_791,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_2_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_Q_436,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_rt_791,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_Q_435
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_1_Q : XORCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_0_Q_437,
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_rt_792,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_1_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_Q : MUXCY
    port map (
      CI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_0_Q_437,
      DI => SET_DATA(1, 3),
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_rt_792,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_Q_436
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_0_Q : XORCY
    port map (
      CI => SET_DATA(1, 3),
      LI => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_lut_0_Q,
      O => Nexys3A_i_26_GND_16_o_add_7_OUT_0_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_0_Q : MUXCY
    port map (
      CI => SET_DATA(1, 3),
      DI => N1,
      S => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_lut_0_Q,
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_0_Q_437
    );
  Nexys3A_counter_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_17_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(17)
    );
  Nexys3A_counter_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_16_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(16)
    );
  Nexys3A_counter_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_15_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(15)
    );
  Nexys3A_counter_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_14_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(14)
    );
  Nexys3A_counter_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_13_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(13)
    );
  Nexys3A_counter_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_12_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(12)
    );
  Nexys3A_counter_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_11_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(11)
    );
  Nexys3A_counter_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_10_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(10)
    );
  Nexys3A_counter_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_9_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(9)
    );
  Nexys3A_counter_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_8_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(8)
    );
  Nexys3A_counter_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_7_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(7)
    );
  Nexys3A_counter_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_6_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(6)
    );
  Nexys3A_counter_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_5_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(5)
    );
  Nexys3A_counter_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_4_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(4)
    );
  Nexys3A_counter_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_3_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(3)
    );
  Nexys3A_counter_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_2_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(2)
    );
  Nexys3A_counter_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_1_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(1)
    );
  Nexys3A_counter_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_Result_0_1,
      R => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      Q => Nexys3A_counter(0)
    );
  Nexys3A_selector_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CE => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      D => Nexys3A_selector_3_INV_16_o,
      Q => Nexys3A_selector(3)
    );
  Nexys3A_selector_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CE => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      D => Nexys3A_selector(3),
      Q => Nexys3A_selector(2)
    );
  Nexys3A_selector_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CE => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      D => Nexys3A_selector(2),
      Q => Nexys3A_selector(1)
    );
  Nexys3A_selector_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CE => Nexys3A_PWR_16_o_counter_17_equal_2_o,
      D => Nexys3A_selector(1),
      Q => Nexys3A_selector(0)
    );
  CONTROLfSM_STATE_LOAD_T1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd3_68,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd1_70,
      O => LOAD_T
    );
  CONTROLfSM_STATE_SHOW_T1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd3_68,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd1_70,
      O => SHOW_T
    );
  CONTROLfSM_STATE_LOAD_A1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd3_68,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd1_70,
      O => LOAD_A
    );
  CONTROLfSM_STATE_FSM_FFd3_In1 : LUT6
    generic map(
      INIT => X"F1E1C1C0F5E5D5C4"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => AL_IBUF_0,
      I4 => HR_IBUF_1,
      I5 => MN_IBUF_2,
      O => CONTROLfSM_STATE_FSM_FFd3_In
    );
  DISPLAYdRIVER_Mmux_DISPLAY_0_0_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_MIN(0),
      I4 => ALARMrEGISTER_ALARM_DATA_0(0),
      I5 => TIMEsET_MINS_LS(0),
      O => DISPLAYdRIVER_DISPLAY_0_0_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_0_1_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_MIN(1),
      I4 => ALARMrEGISTER_ALARM_DATA_0(1),
      I5 => TIMEsET_MINS_LS(1),
      O => DISPLAYdRIVER_DISPLAY_0_1_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_0_2_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_MIN(2),
      I4 => ALARMrEGISTER_ALARM_DATA_0(2),
      I5 => TIMEsET_MINS_LS(2),
      O => DISPLAYdRIVER_DISPLAY_0_2_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_0_3_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_MIN(3),
      I4 => ALARMrEGISTER_ALARM_DATA_0(3),
      I5 => TIMEsET_MINS_LS(3),
      O => DISPLAYdRIVER_DISPLAY_0_3_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_1_0_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_MS_MIN(0),
      I4 => ALARMrEGISTER_ALARM_DATA_1(0),
      I5 => TIMEsET_MINS_MS(0),
      O => DISPLAYdRIVER_DISPLAY_1_0_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_1_1_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_MS_MIN(1),
      I4 => ALARMrEGISTER_ALARM_DATA_1(1),
      I5 => TIMEsET_MINS_MS(1),
      O => DISPLAYdRIVER_DISPLAY_1_1_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_2_0_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_HR(0),
      I4 => ALARMrEGISTER_ALARM_DATA_2(0),
      I5 => TIMEsET_HRS_LS(0),
      O => DISPLAYdRIVER_DISPLAY_2_0_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_1_2_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_MS_MIN(2),
      I4 => ALARMrEGISTER_ALARM_DATA_1(2),
      I5 => TIMEsET_MINS_MS(2),
      O => DISPLAYdRIVER_DISPLAY_1_2_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_2_1_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_HR(1),
      I4 => ALARMrEGISTER_ALARM_DATA_2(1),
      I5 => TIMEsET_HRS_LS(1),
      O => DISPLAYdRIVER_DISPLAY_2_1_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_2_2_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_HR(2),
      I4 => ALARMrEGISTER_ALARM_DATA_2(2),
      I5 => TIMEsET_HRS_LS(2),
      O => DISPLAYdRIVER_DISPLAY_2_2_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_2_3_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_HR(3),
      I4 => ALARMrEGISTER_ALARM_DATA_2(3),
      I5 => TIMEsET_HRS_LS(3),
      O => DISPLAYdRIVER_DISPLAY_2_3_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_3_0_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_MS_HR(0),
      I4 => ALARMrEGISTER_ALARM_DATA_3(0),
      I5 => TIMEsET_HRS_MS(0),
      O => DISPLAYdRIVER_DISPLAY_3_0_Q
    );
  DISPLAYdRIVER_Mmux_DISPLAY_3_1_11 : LUT6
    generic map(
      INIT => X"FFFEEFEE11100100"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_MS_HR(1),
      I4 => ALARMrEGISTER_ALARM_DATA_3(1),
      I5 => TIMEsET_HRS_MS(1),
      O => DISPLAYdRIVER_DISPLAY_3_1_Q
    );
  CONTROLfSM_STATE_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"55555555018923AA"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd2_69,
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => AL_IBUF_0,
      I3 => HR_IBUF_1,
      I4 => MN_IBUF_2,
      I5 => CONTROLfSM_STATE_FSM_FFd1_70,
      O => CONTROLfSM_STATE_FSM_FFd1_In
    );
  CONTROLfSM_STATE_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"5555555540C862AA"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => AL_IBUF_0,
      I3 => HR_IBUF_1,
      I4 => MN_IBUF_2,
      I5 => CONTROLfSM_STATE_FSM_FFd2_69,
      O => CONTROLfSM_STATE_FSM_FFd2_In
    );
  PULSEgEN_mux31111 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(9),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_9_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_9_Q
    );
  PULSEgEN_mux3011 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(8),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_8_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_8_Q
    );
  PULSEgEN_mux2911 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(7),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_7_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_7_Q
    );
  PULSEgEN_mux2811 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(6),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_6_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_6_Q
    );
  PULSEgEN_mux2711 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(5),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_5_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_5_Q
    );
  PULSEgEN_mux2611 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(4),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_4_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_4_Q
    );
  PULSEgEN_mux2511 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(3),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_3_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_3_Q
    );
  PULSEgEN_mux2311 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(30),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_30_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_30_Q
    );
  PULSEgEN_mux2211 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(2),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_2_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_2_Q
    );
  PULSEgEN_mux21111 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(29),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_29_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_29_Q
    );
  PULSEgEN_mux2011 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(28),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_28_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_28_Q
    );
  PULSEgEN_mux1911 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(27),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_27_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_27_Q
    );
  PULSEgEN_mux1811 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(26),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_26_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_26_Q
    );
  PULSEgEN_mux1611 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(24),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_24_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_24_Q
    );
  PULSEgEN_mux1511 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(23),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_23_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_23_Q
    );
  PULSEgEN_mux1711 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(25),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_25_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_25_Q
    );
  PULSEgEN_mux1411 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(22),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_22_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_22_Q
    );
  PULSEgEN_mux1311 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(21),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_21_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_21_Q
    );
  PULSEgEN_mux1211 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(20),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_20_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_20_Q
    );
  PULSEgEN_mux11111 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(1),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_1_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_1_Q
    );
  PULSEgEN_mux1011 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(19),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_19_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_19_Q
    );
  PULSEgEN_mux911 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(18),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_18_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_18_Q
    );
  PULSEgEN_mux711 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(16),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_16_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_16_Q
    );
  PULSEgEN_mux611 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(15),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_15_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_15_Q
    );
  PULSEgEN_mux811 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(17),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_17_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_17_Q
    );
  PULSEgEN_mux511 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(14),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_14_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_14_Q
    );
  PULSEgEN_mux411 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(13),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_13_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_13_Q
    );
  PULSEgEN_mux3111 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(12),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_12_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_12_Q
    );
  PULSEgEN_mux2111 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(11),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_11_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_11_Q
    );
  PULSEgEN_mux1111 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(10),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_10_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_10_Q
    );
  PULSEgEN_mux1101 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => PULSEgEN_i(0),
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_0_Q,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_0_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT17 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_0_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_0_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_12_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_12_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_13_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_13_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_14_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_14_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_15_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_15_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_17_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_17_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_19_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_19_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_1_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_1_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_20_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_20_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_21_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_21_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_22_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_22_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_23_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_23_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_25_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_25_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_2_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_2_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT201 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_3_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_3_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT211 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_4_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_4_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_5_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_5_Q
    );
  PULSEgEN_Mmux_counter_25_GND_8_o_mux_3_OUT231 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_6_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_counter_25_GND_8_o_mux_3_OUT_6_Q
    );
  TIMEsET_HRS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT21 : LUT6
    generic map(
      INIT => X"A820A820FD75A820"
    )
    port map (
      I0 => TIMEsET_LOAD_EN,
      I1 => SHOW_T,
      I2 => ALARMrEGISTER_ALARM_DATA_3(1),
      I3 => TIMEcOUNT_MS_HR(1),
      I4 => TIMEsET_HRS_MS(0),
      I5 => TIMEsET_HRS_MS(1),
      O => TIMEsET_HRS_MS_3_LOAD_DATA_1_3_mux_15_OUT_1_Q
    );
  TIMEsET_HRS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT11 : LUT6
    generic map(
      INIT => X"A820A820A820FD75"
    )
    port map (
      I0 => TIMEsET_LOAD_EN,
      I1 => SHOW_T,
      I2 => ALARMrEGISTER_ALARM_DATA_3(0),
      I3 => TIMEcOUNT_MS_HR(0),
      I4 => TIMEsET_HRS_MS(0),
      I5 => TIMEsET_HRS_MS(1),
      O => TIMEsET_HRS_MS_3_LOAD_DATA_1_3_mux_15_OUT_0_Q
    );
  TIMEcOUNT_n0102_inv1 : LUT5
    generic map(
      INIT => X"FFFF0800"
    )
    port map (
      I0 => TIMEcOUNT_MS_MIN(0),
      I1 => TIMEcOUNT_MS_MIN(2),
      I2 => TIMEcOUNT_MS_MIN(1),
      I3 => TIMEcOUNT_n0113_inv2,
      I4 => LOAD_T,
      O => TIMEcOUNT_n0102_inv
    );
  TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT311 : LUT4
    generic map(
      INIT => X"FBFF"
    )
    port map (
      I0 => TIMEcOUNT_LS_MIN(1),
      I1 => TIMEcOUNT_LS_MIN(0),
      I2 => TIMEcOUNT_LS_MIN(2),
      I3 => TIMEcOUNT_LS_MIN(3),
      O => TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT31_330
    );
  TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT21 : LUT6
    generic map(
      INIT => X"BEBABEBE14101414"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_MS_MIN(0),
      I2 => TIMEcOUNT_MS_MIN(1),
      I3 => TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT31_330,
      I4 => TIMEcOUNT_MS_MIN(2),
      I5 => TIMEsET_MINS_MS(1),
      O => TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_1_Q
    );
  TIMEcOUNT_Mmux_MS_HR_3_SET_DATA_3_3_mux_29_OUT22 : LUT5
    generic map(
      INIT => X"BEAE1404"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_MS_HR(0),
      I2 => TIMEcOUNT_MS_HR(1),
      I3 => TIMEcOUNT_Mmux_MS_HR_3_SET_DATA_3_3_mux_29_OUT21,
      I4 => TIMEsET_HRS_MS(1),
      O => TIMEcOUNT_MS_HR_3_SET_DATA_3_3_mux_29_OUT_1_Q
    );
  TIMEcOUNT_Mmux_MS_HR_3_SET_DATA_3_3_mux_29_OUT11 : LUT5
    generic map(
      INIT => X"BABB1011"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_MS_HR(0),
      I2 => TIMEcOUNT_Mmux_MS_HR_3_SET_DATA_3_3_mux_29_OUT21,
      I3 => TIMEcOUNT_MS_HR(1),
      I4 => TIMEsET_HRS_MS(0),
      O => TIMEcOUNT_MS_HR_3_SET_DATA_3_3_mux_29_OUT_0_Q
    );
  TIMEcOUNT_Mmux_LS_MIN_3_SET_DATA_0_3_mux_23_OUT31 : LUT5
    generic map(
      INIT => X"BEEE1444"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_LS_MIN(2),
      I2 => TIMEcOUNT_LS_MIN(0),
      I3 => TIMEcOUNT_LS_MIN(1),
      I4 => TIMEsET_MINS_LS(2),
      O => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_2_Q
    );
  TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT31 : LUT6
    generic map(
      INIT => X"BEEEBEAE14441404"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_MS_MIN(2),
      I2 => TIMEcOUNT_MS_MIN(0),
      I3 => TIMEcOUNT_MS_MIN(1),
      I4 => TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT31_330,
      I5 => TIMEsET_MINS_MS(2),
      O => TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_2_Q
    );
  TIMEcOUNT_Mmux_MS_HR_3_SET_DATA_3_3_mux_29_OUT211 : LUT4
    generic map(
      INIT => X"FBFF"
    )
    port map (
      I0 => TIMEcOUNT_LS_HR(2),
      I1 => TIMEcOUNT_LS_HR(0),
      I2 => TIMEcOUNT_LS_HR(3),
      I3 => TIMEcOUNT_LS_HR(1),
      O => TIMEcOUNT_Mmux_MS_HR_3_SET_DATA_3_3_mux_29_OUT21
    );
  TIMEcOUNT_n0113_inv21 : LUT5
    generic map(
      INIT => X"02000000"
    )
    port map (
      I0 => TIMEcOUNT_LS_MIN(0),
      I1 => TIMEcOUNT_LS_MIN(2),
      I2 => TIMEcOUNT_LS_MIN(1),
      I3 => TIMEcOUNT_LS_MIN(3),
      I4 => PULSEgEN_ONE_MINUTE_11,
      O => TIMEcOUNT_n0113_inv2
    );
  Nexys3A_Mmux_S8_SEG81 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => Nexys3A_a_532,
      I1 => Nexys3A_selector(3),
      I2 => Nexys3A_selector(2),
      O => DISP_8SEG_7_OBUF_52
    );
  Nexys3A_selector_3_INV_16_o1 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => Nexys3A_selector(2),
      I2 => Nexys3A_selector(0),
      I3 => Nexys3A_selector(1),
      O => Nexys3A_selector_3_INV_16_o
    );
  DISPLAYdRIVER_Mmux_SOUND_A11 : LUT5
    generic map(
      INIT => X"90000090"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_2(1),
      I1 => TIMEcOUNT_LS_HR(1),
      I2 => ALARM_ON_IBUF_3,
      I3 => ALARMrEGISTER_ALARM_DATA_2(0),
      I4 => TIMEcOUNT_LS_HR(0),
      O => DISPLAYdRIVER_Mmux_SOUND_A1
    );
  DISPLAYdRIVER_Mmux_SOUND_A12 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_2(3),
      I1 => TIMEcOUNT_LS_HR(3),
      I2 => ALARMrEGISTER_ALARM_DATA_2(2),
      I3 => TIMEcOUNT_LS_HR(2),
      I4 => ALARMrEGISTER_ALARM_DATA_3(1),
      I5 => TIMEcOUNT_MS_HR(1),
      O => DISPLAYdRIVER_Mmux_SOUND_A11_579
    );
  DISPLAYdRIVER_Mmux_SOUND_A13 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_0(1),
      I1 => TIMEcOUNT_LS_MIN(1),
      I2 => ALARMrEGISTER_ALARM_DATA_1(2),
      I3 => TIMEcOUNT_MS_MIN(2),
      I4 => ALARMrEGISTER_ALARM_DATA_1(1),
      I5 => TIMEcOUNT_MS_MIN(1),
      O => DISPLAYdRIVER_Mmux_SOUND_A12_580
    );
  DISPLAYdRIVER_Mmux_SOUND_A14 : LUT5
    generic map(
      INIT => X"80000080"
    )
    port map (
      I0 => DISPLAYdRIVER_Mmux_SOUND_A11_579,
      I1 => DISPLAYdRIVER_Mmux_SOUND_A12_580,
      I2 => DISPLAYdRIVER_Mmux_SOUND_A1,
      I3 => ALARMrEGISTER_ALARM_DATA_3(0),
      I4 => TIMEcOUNT_MS_HR(0),
      O => DISPLAYdRIVER_Mmux_SOUND_A13_581
    );
  DISPLAYdRIVER_Mmux_SOUND_A15 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_1(0),
      I1 => TIMEcOUNT_MS_MIN(0),
      I2 => ALARMrEGISTER_ALARM_DATA_0(3),
      I3 => TIMEcOUNT_LS_MIN(3),
      I4 => ALARMrEGISTER_ALARM_DATA_0(2),
      I5 => TIMEcOUNT_LS_MIN(2),
      O => DISPLAYdRIVER_Mmux_SOUND_A14_582
    );
  DISPLAYdRIVER_Mmux_SOUND_A16 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => DISPLAYdRIVER_Mmux_SOUND_A14_582,
      I1 => DISPLAYdRIVER_Mmux_SOUND_A13_581,
      I2 => ALARMrEGISTER_ALARM_DATA_0(0),
      I3 => TIMEcOUNT_LS_MIN(0),
      O => SOUND_A_OBUF_9
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_19_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_18_Q,
      I2 => PULSEgEN_i_31_GND_8_o_add_2_OUT_20_Q,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_Q
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_2 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_21_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_22_Q,
      I2 => PULSEgEN_i_31_GND_8_o_add_2_OUT_23_Q,
      I3 => PULSEgEN_i_31_GND_8_o_add_2_OUT_30_Q,
      I4 => PULSEgEN_i_31_GND_8_o_add_2_OUT_31_Q,
      I5 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_Q,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_1_584
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_5 : LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_0_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_1_Q,
      I2 => PULSEgEN_i_31_GND_8_o_add_2_OUT_2_Q,
      I3 => PULSEgEN_i_31_GND_8_o_add_2_OUT_3_Q,
      I4 => PULSEgEN_i_31_GND_8_o_add_2_OUT_4_Q,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_4
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_6 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_26_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_25_Q,
      I2 => PULSEgEN_i_31_GND_8_o_add_2_OUT_27_Q,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_5_586
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_8_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_7_Q,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_7
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_9 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_9_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_10_Q,
      I2 => PULSEgEN_i_31_GND_8_o_add_2_OUT_11_Q,
      I3 => PULSEgEN_i_31_GND_8_o_add_2_OUT_12_Q,
      I4 => PULSEgEN_i_31_GND_8_o_add_2_OUT_24_Q,
      I5 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_7,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_8_588
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_10 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => PULSEgEN_i(3),
      I1 => PULSEgEN_i(5),
      I2 => PULSEgEN_i(4),
      I3 => PULSEgEN_i(1),
      I4 => PULSEgEN_i(6),
      I5 => PULSEgEN_i(7),
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_9_589
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_11 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => PULSEgEN_i(11),
      I1 => PULSEgEN_i(9),
      I2 => PULSEgEN_i(13),
      I3 => PULSEgEN_i(15),
      I4 => PULSEgEN_i(17),
      I5 => PULSEgEN_i(19),
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_10_590
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_12 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => PULSEgEN_i(23),
      I1 => PULSEgEN_i(21),
      I2 => PULSEgEN_i(25),
      I3 => PULSEgEN_i(27),
      I4 => PULSEgEN_i(29),
      I5 => PULSEgEN_i(31),
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_11_591
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_13 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => PULSEgEN_i(28),
      I1 => PULSEgEN_i(30),
      I2 => PULSEgEN_i(26),
      I3 => PULSEgEN_i(24),
      I4 => PULSEgEN_i(22),
      I5 => PULSEgEN_i(20),
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_12_592
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_14 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => PULSEgEN_i(16),
      I1 => PULSEgEN_i(18),
      I2 => PULSEgEN_i(14),
      I3 => PULSEgEN_i(12),
      I4 => PULSEgEN_i(10),
      I5 => PULSEgEN_i(8),
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_13_593
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_15 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => PULSEgEN_i(0),
      I1 => PULSEgEN_i(2),
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_14_594
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_16 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_14_594,
      I1 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_13_593,
      I2 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_12_592,
      I3 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_10_590,
      I4 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_9_589,
      I5 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_11_591,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o_31_15_595
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_0_Q,
      I1 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_1_Q,
      I2 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_21_Q,
      I3 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_22_Q,
      I4 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_23_Q,
      I5 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_24_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_Q
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_2 : LUT6
    generic map(
      INIT => X"0000000020000000"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_6_Q,
      I1 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_11_Q,
      I2 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_12_Q,
      I3 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_13_Q,
      I4 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_14_Q,
      I5 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_16_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_1_597
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_3 : LUT5
    generic map(
      INIT => X"08000000"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_15_Q,
      I1 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_17_Q,
      I2 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_18_Q,
      I3 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_19_Q,
      I4 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_20_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_2_598
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_4 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_4_Q,
      I1 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_5_Q,
      I2 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_7_Q,
      I3 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_8_Q,
      I4 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_9_Q,
      I5 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_10_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_3_599
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_3_Q,
      I1 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_2_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_4_600
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_25_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_4_600,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_3_599,
      I3 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_1_597,
      I4 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_2_598,
      I5 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o
    );
  TIMEcOUNT_n0113_inv_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFBDBFFFF"
    )
    port map (
      I0 => TIMEcOUNT_MS_HR(1),
      I1 => TIMEcOUNT_LS_HR(3),
      I2 => TIMEcOUNT_LS_HR(1),
      I3 => TIMEcOUNT_MS_HR(0),
      I4 => TIMEcOUNT_LS_HR(0),
      I5 => TIMEcOUNT_LS_HR(2),
      O => N22
    );
  TIMEcOUNT_n0113_inv : LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
    port map (
      I0 => TIMEcOUNT_MS_MIN(0),
      I1 => TIMEcOUNT_MS_MIN(2),
      I2 => TIMEcOUNT_MS_MIN(1),
      I3 => N22,
      I4 => TIMEcOUNT_n0113_inv2,
      I5 => LOAD_T,
      O => TIMEcOUNT_n0113_inv_332
    );
  TIMEcOUNT_Mmux_LS_HR_3_SET_DATA_2_3_mux_27_OUT2_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => TIMEcOUNT_LS_HR(3),
      I1 => TIMEcOUNT_MS_HR(1),
      O => N26
    );
  TIMEcOUNT_Mmux_LS_HR_3_SET_DATA_2_3_mux_27_OUT2 : LUT6
    generic map(
      INIT => X"BEBEBEAE14141404"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_LS_HR(1),
      I2 => TIMEcOUNT_LS_HR(0),
      I3 => TIMEcOUNT_LS_HR(2),
      I4 => N26,
      I5 => TIMEsET_HRS_LS(1),
      O => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_1_Q
    );
  TIMEcOUNT_Mmux_LS_MIN_3_SET_DATA_0_3_mux_23_OUT4 : LUT5
    generic map(
      INIT => X"BAFE1054"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_LS_MIN(0),
      I2 => TIMEcOUNT_LS_MIN(3),
      I3 => N28,
      I4 => TIMEsET_MINS_LS(3),
      O => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_3_Q
    );
  TIMEcOUNT_Mmux_LS_HR_3_SET_DATA_2_3_mux_27_OUT4_SW0 : LUT4
    generic map(
      INIT => X"8977"
    )
    port map (
      I0 => TIMEcOUNT_LS_HR(2),
      I1 => TIMEcOUNT_LS_HR(1),
      I2 => TIMEcOUNT_MS_HR(1),
      I3 => TIMEcOUNT_LS_HR(3),
      O => N30
    );
  TIMEcOUNT_Mmux_LS_HR_3_SET_DATA_2_3_mux_27_OUT4 : LUT5
    generic map(
      INIT => X"BAFE1054"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_LS_HR(0),
      I2 => TIMEcOUNT_LS_HR(3),
      I3 => N30,
      I4 => TIMEsET_HRS_LS(3),
      O => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_3_Q
    );
  TIMEcOUNT_Mmux_LS_HR_3_SET_DATA_2_3_mux_27_OUT3_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => TIMEcOUNT_LS_HR(3),
      I1 => TIMEcOUNT_MS_HR(1),
      I2 => TIMEcOUNT_MS_HR(0),
      O => N32
    );
  TIMEcOUNT_Mmux_LS_HR_3_SET_DATA_2_3_mux_27_OUT3 : LUT6
    generic map(
      INIT => X"BEEEAEEE14440444"
    )
    port map (
      I0 => LOAD_T,
      I1 => TIMEcOUNT_LS_HR(2),
      I2 => TIMEcOUNT_LS_HR(1),
      I3 => TIMEcOUNT_LS_HR(0),
      I4 => N32,
      I5 => TIMEsET_HRS_LS(2),
      O => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_2_Q
    );
  Nexys3A_i_26_PWR_16_o_LessThan_10_o31 : LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_21_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_20_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_22_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_23_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_24_Q,
      O => Nexys3A_i_26_PWR_16_o_LessThan_10_o3
    );
  Nexys3A_i_26_GND_16_o_LessThan_9_o31 : LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_20_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_19_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_21_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_22_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_23_Q,
      O => Nexys3A_i_26_GND_16_o_LessThan_9_o3
    );
  Nexys3A_Mmux_S8_SEG71 : LUT5
    generic map(
      INIT => X"00101000"
    )
    port map (
      I0 => DISPLAYdRIVER_DISPLAY_0_3_Q,
      I1 => DISPLAYdRIVER_DISPLAY_0_1_Q,
      I2 => Nexys3A_selector(1),
      I3 => DISPLAYdRIVER_DISPLAY_0_0_Q,
      I4 => DISPLAYdRIVER_DISPLAY_0_2_Q,
      O => Nexys3A_Mmux_S8_SEG7
    );
  Nexys3A_Mmux_S8_SEG72 : LUT5
    generic map(
      INIT => X"FFFF0110"
    )
    port map (
      I0 => Nexys3A_selector(1),
      I1 => DISPLAYdRIVER_DISPLAY_1_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_1_0_Q,
      I3 => DISPLAYdRIVER_DISPLAY_1_2_Q,
      I4 => Nexys3A_Mmux_S8_SEG7,
      O => Nexys3A_Mmux_S8_SEG71_610
    );
  Nexys3A_Mmux_S8_SEG73 : LUT6
    generic map(
      INIT => X"AAABABAA00010100"
    )
    port map (
      I0 => Nexys3A_selector(2),
      I1 => DISPLAYdRIVER_DISPLAY_2_3_Q,
      I2 => DISPLAYdRIVER_DISPLAY_2_1_Q,
      I3 => DISPLAYdRIVER_DISPLAY_2_0_Q,
      I4 => DISPLAYdRIVER_DISPLAY_2_2_Q,
      I5 => Nexys3A_Mmux_S8_SEG71_610,
      O => Nexys3A_Mmux_S8_SEG72_611
    );
  Nexys3A_Mmux_S8_SEG74 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => DISPLAYdRIVER_DISPLAY_3_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_3_0_Q,
      I3 => Nexys3A_Mmux_S8_SEG72_611,
      O => DISP_8SEG_6_OBUF_53
    );
  Nexys3A_Mmux_S8_SEG61 : LUT4
    generic map(
      INIT => X"EE28"
    )
    port map (
      I0 => DISPLAYdRIVER_DISPLAY_0_2_Q,
      I1 => DISPLAYdRIVER_DISPLAY_0_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_0_0_Q,
      I3 => DISPLAYdRIVER_DISPLAY_0_3_Q,
      O => Nexys3A_Mmux_S8_SEG6
    );
  Nexys3A_Mmux_S8_SEG62 : LUT5
    generic map(
      INIT => X"AEEA0440"
    )
    port map (
      I0 => Nexys3A_selector(1),
      I1 => DISPLAYdRIVER_DISPLAY_1_2_Q,
      I2 => DISPLAYdRIVER_DISPLAY_1_0_Q,
      I3 => DISPLAYdRIVER_DISPLAY_1_1_Q,
      I4 => Nexys3A_Mmux_S8_SEG6,
      O => Nexys3A_Mmux_S8_SEG61_613
    );
  Nexys3A_Mmux_S8_SEG63 : LUT6
    generic map(
      INIT => X"FEFEAEEA54540440"
    )
    port map (
      I0 => Nexys3A_selector(2),
      I1 => DISPLAYdRIVER_DISPLAY_2_2_Q,
      I2 => DISPLAYdRIVER_DISPLAY_2_1_Q,
      I3 => DISPLAYdRIVER_DISPLAY_2_0_Q,
      I4 => DISPLAYdRIVER_DISPLAY_2_3_Q,
      I5 => Nexys3A_Mmux_S8_SEG61_613,
      O => Nexys3A_Mmux_S8_SEG62_614
    );
  Nexys3A_Mmux_S8_SEG64 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => Nexys3A_Mmux_S8_SEG62_614,
      O => DISP_8SEG_5_OBUF_54
    );
  Nexys3A_Mmux_S8_SEG51 : LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      I0 => DISPLAYdRIVER_DISPLAY_0_3_Q,
      I1 => DISPLAYdRIVER_DISPLAY_0_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_0_2_Q,
      I3 => DISPLAYdRIVER_DISPLAY_0_0_Q,
      O => Nexys3A_Mmux_S8_SEG5
    );
  Nexys3A_Mmux_S8_SEG52 : LUT5
    generic map(
      INIT => X"ABAA0100"
    )
    port map (
      I0 => Nexys3A_selector(1),
      I1 => DISPLAYdRIVER_DISPLAY_1_2_Q,
      I2 => DISPLAYdRIVER_DISPLAY_1_0_Q,
      I3 => DISPLAYdRIVER_DISPLAY_1_1_Q,
      I4 => Nexys3A_Mmux_S8_SEG5,
      O => Nexys3A_Mmux_S8_SEG51_616
    );
  Nexys3A_Mmux_S8_SEG53 : LUT6
    generic map(
      INIT => X"EEEAEFEA44404540"
    )
    port map (
      I0 => Nexys3A_selector(2),
      I1 => DISPLAYdRIVER_DISPLAY_2_3_Q,
      I2 => DISPLAYdRIVER_DISPLAY_2_2_Q,
      I3 => DISPLAYdRIVER_DISPLAY_2_1_Q,
      I4 => DISPLAYdRIVER_DISPLAY_2_0_Q,
      I5 => Nexys3A_Mmux_S8_SEG51_616,
      O => Nexys3A_Mmux_S8_SEG52_617
    );
  Nexys3A_Mmux_S8_SEG54 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => DISPLAYdRIVER_DISPLAY_3_0_Q,
      I2 => DISPLAYdRIVER_DISPLAY_3_1_Q,
      I3 => Nexys3A_Mmux_S8_SEG52_617,
      O => DISP_8SEG_4_OBUF_55
    );
  Nexys3A_Mmux_S8_SEG41 : LUT3
    generic map(
      INIT => X"92"
    )
    port map (
      I0 => DISPLAYdRIVER_DISPLAY_0_0_Q,
      I1 => DISPLAYdRIVER_DISPLAY_0_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_0_2_Q,
      O => Nexys3A_Mmux_S8_SEG4
    );
  Nexys3A_Mmux_S8_SEG42 : LUT6
    generic map(
      INIT => X"4104EBAE41044104"
    )
    port map (
      I0 => Nexys3A_selector(1),
      I1 => DISPLAYdRIVER_DISPLAY_1_2_Q,
      I2 => DISPLAYdRIVER_DISPLAY_1_1_Q,
      I3 => DISPLAYdRIVER_DISPLAY_1_0_Q,
      I4 => DISPLAYdRIVER_DISPLAY_0_3_Q,
      I5 => Nexys3A_Mmux_S8_SEG4,
      O => Nexys3A_Mmux_S8_SEG41_619
    );
  Nexys3A_Mmux_S8_SEG43 : LUT6
    generic map(
      INIT => X"BAABAABA10010010"
    )
    port map (
      I0 => Nexys3A_selector(2),
      I1 => DISPLAYdRIVER_DISPLAY_2_3_Q,
      I2 => DISPLAYdRIVER_DISPLAY_2_2_Q,
      I3 => DISPLAYdRIVER_DISPLAY_2_1_Q,
      I4 => DISPLAYdRIVER_DISPLAY_2_0_Q,
      I5 => Nexys3A_Mmux_S8_SEG41_619,
      O => Nexys3A_Mmux_S8_SEG42_620
    );
  Nexys3A_Mmux_S8_SEG44 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => DISPLAYdRIVER_DISPLAY_3_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_3_0_Q,
      I3 => Nexys3A_Mmux_S8_SEG42_620,
      O => DISP_8SEG_3_OBUF_56
    );
  Nexys3A_Mmux_S8_SEG31 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => DISPLAYdRIVER_DISPLAY_1_2_Q,
      I1 => DISPLAYdRIVER_DISPLAY_1_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_1_0_Q,
      O => Nexys3A_Mmux_S8_SEG3
    );
  Nexys3A_Mmux_S8_SEG32 : LUT6
    generic map(
      INIT => X"555DDDFD000888A8"
    )
    port map (
      I0 => Nexys3A_selector(1),
      I1 => DISPLAYdRIVER_DISPLAY_0_0_Q,
      I2 => DISPLAYdRIVER_DISPLAY_0_2_Q,
      I3 => DISPLAYdRIVER_DISPLAY_0_1_Q,
      I4 => DISPLAYdRIVER_DISPLAY_0_3_Q,
      I5 => Nexys3A_Mmux_S8_SEG3,
      O => Nexys3A_Mmux_S8_SEG31_622
    );
  Nexys3A_Mmux_S8_SEG33 : LUT6
    generic map(
      INIT => X"AEAEAFEE04040544"
    )
    port map (
      I0 => Nexys3A_selector(2),
      I1 => DISPLAYdRIVER_DISPLAY_2_0_Q,
      I2 => DISPLAYdRIVER_DISPLAY_2_3_Q,
      I3 => DISPLAYdRIVER_DISPLAY_2_2_Q,
      I4 => DISPLAYdRIVER_DISPLAY_2_1_Q,
      I5 => Nexys3A_Mmux_S8_SEG31_622,
      O => Nexys3A_Mmux_S8_SEG32_623
    );
  Nexys3A_Mmux_S8_SEG34 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => DISPLAYdRIVER_DISPLAY_3_0_Q,
      I2 => Nexys3A_Mmux_S8_SEG32_623,
      O => DISP_8SEG_2_OBUF_57
    );
  Nexys3A_Mmux_S8_SEG21 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => DISPLAYdRIVER_DISPLAY_0_1_Q,
      I1 => DISPLAYdRIVER_DISPLAY_0_2_Q,
      I2 => DISPLAYdRIVER_DISPLAY_0_0_Q,
      O => Nexys3A_Mmux_S8_SEG2
    );
  Nexys3A_Mmux_S8_SEG22 : LUT6
    generic map(
      INIT => X"4504EFAE45044504"
    )
    port map (
      I0 => Nexys3A_selector(1),
      I1 => DISPLAYdRIVER_DISPLAY_1_0_Q,
      I2 => DISPLAYdRIVER_DISPLAY_1_2_Q,
      I3 => DISPLAYdRIVER_DISPLAY_1_1_Q,
      I4 => DISPLAYdRIVER_DISPLAY_0_3_Q,
      I5 => Nexys3A_Mmux_S8_SEG2,
      O => Nexys3A_Mmux_S8_SEG21_625
    );
  Nexys3A_Mmux_S8_SEG23 : LUT6
    generic map(
      INIT => X"BAAABBBA10001110"
    )
    port map (
      I0 => Nexys3A_selector(2),
      I1 => DISPLAYdRIVER_DISPLAY_2_3_Q,
      I2 => DISPLAYdRIVER_DISPLAY_2_1_Q,
      I3 => DISPLAYdRIVER_DISPLAY_2_0_Q,
      I4 => DISPLAYdRIVER_DISPLAY_2_2_Q,
      I5 => Nexys3A_Mmux_S8_SEG21_625,
      O => Nexys3A_Mmux_S8_SEG22_626
    );
  Nexys3A_Mmux_S8_SEG24 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => DISPLAYdRIVER_DISPLAY_3_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_3_0_Q,
      I3 => Nexys3A_Mmux_S8_SEG22_626,
      O => DISP_8SEG_1_OBUF_58
    );
  Nexys3A_Mmux_S8_SEG11 : LUT3
    generic map(
      INIT => X"91"
    )
    port map (
      I0 => DISPLAYdRIVER_DISPLAY_0_1_Q,
      I1 => DISPLAYdRIVER_DISPLAY_0_2_Q,
      I2 => DISPLAYdRIVER_DISPLAY_0_0_Q,
      O => Nexys3A_Mmux_S8_SEG1
    );
  Nexys3A_Mmux_S8_SEG12 : LUT6
    generic map(
      INIT => X"4101EBAB41014101"
    )
    port map (
      I0 => Nexys3A_selector(1),
      I1 => DISPLAYdRIVER_DISPLAY_1_1_Q,
      I2 => DISPLAYdRIVER_DISPLAY_1_2_Q,
      I3 => DISPLAYdRIVER_DISPLAY_1_0_Q,
      I4 => DISPLAYdRIVER_DISPLAY_0_3_Q,
      I5 => Nexys3A_Mmux_S8_SEG1,
      O => Nexys3A_Mmux_S8_SEG11_628
    );
  Nexys3A_Mmux_S8_SEG13 : LUT6
    generic map(
      INIT => X"BAAAAABB10000011"
    )
    port map (
      I0 => Nexys3A_selector(2),
      I1 => DISPLAYdRIVER_DISPLAY_2_3_Q,
      I2 => DISPLAYdRIVER_DISPLAY_2_0_Q,
      I3 => DISPLAYdRIVER_DISPLAY_2_2_Q,
      I4 => DISPLAYdRIVER_DISPLAY_2_1_Q,
      I5 => Nexys3A_Mmux_S8_SEG11_628,
      O => Nexys3A_Mmux_S8_SEG12_629
    );
  Nexys3A_Mmux_S8_SEG14 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => Nexys3A_selector(3),
      I1 => DISPLAYdRIVER_DISPLAY_3_1_Q,
      I2 => Nexys3A_Mmux_S8_SEG12_629,
      O => DISP_8SEG_0_OBUF_59
    );
  Nexys3A_n00491 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_1_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_2_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_26_Q,
      O => Nexys3A_n00492_630
    );
  Nexys3A_n00492 : LUT5
    generic map(
      INIT => X"08000000"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_22_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_23_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_25_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_21_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_24_Q,
      O => Nexys3A_n00493_631
    );
  Nexys3A_n00493 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_16_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_15_Q,
      O => Nexys3A_n00494_632
    );
  Nexys3A_n00494 : LUT5
    generic map(
      INIT => X"04000000"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_0_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_8_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_12_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_13_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_14_Q,
      O => Nexys3A_n00495_633
    );
  Nexys3A_n00496 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_17_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_19_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_18_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_20_Q,
      O => Nexys3A_n00497_635
    );
  Nexys3A_n00497 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => Nexys3A_n00494_632,
      I1 => Nexys3A_n00495_633,
      I2 => Nexys3A_n00497_635,
      I3 => Nexys3A_n00492_630,
      I4 => Nexys3A_n00493_631,
      I5 => Nexys3A_n00496_634,
      O => Nexys3A_n0049
    );
  Nexys3A_PWR_16_o_counter_17_equal_2_o_17_1 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => Nexys3A_counter_17_GND_16_o_add_0_OUT_2_Q,
      I1 => Nexys3A_counter_17_GND_16_o_add_0_OUT_4_Q,
      I2 => Nexys3A_counter_17_GND_16_o_add_0_OUT_3_Q,
      I3 => Nexys3A_counter_17_GND_16_o_add_0_OUT_6_Q,
      I4 => Nexys3A_counter_17_GND_16_o_add_0_OUT_5_Q,
      I5 => Nexys3A_counter_17_GND_16_o_add_0_OUT_7_Q,
      O => Nexys3A_PWR_16_o_counter_17_equal_2_o_17_Q
    );
  Nexys3A_PWR_16_o_counter_17_equal_2_o_17_2 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => Nexys3A_counter_17_GND_16_o_add_0_OUT_8_Q,
      I1 => Nexys3A_counter_17_GND_16_o_add_0_OUT_9_Q,
      I2 => Nexys3A_counter_17_GND_16_o_add_0_OUT_10_Q,
      I3 => Nexys3A_counter_17_GND_16_o_add_0_OUT_12_Q,
      I4 => Nexys3A_counter_17_GND_16_o_add_0_OUT_13_Q,
      I5 => Nexys3A_counter_17_GND_16_o_add_0_OUT_14_Q,
      O => Nexys3A_PWR_16_o_counter_17_equal_2_o_17_1_637
    );
  AL_IBUF : IBUF
    port map (
      I => AL,
      O => AL_IBUF_0
    );
  HR_IBUF : IBUF
    port map (
      I => HR,
      O => HR_IBUF_1
    );
  MN_IBUF : IBUF
    port map (
      I => MN,
      O => MN_IBUF_2
    );
  ALARM_ON_IBUF : IBUF
    port map (
      I => ALARM_ON,
      O => ALARM_ON_IBUF_3
    );
  RESET_IBUF : IBUF
    port map (
      I => RESET,
      O => RESET_IBUF_864
    );
  SEL_3_OBUF : OBUF
    port map (
      I => Nexys3A_selector(3),
      O => SEL(3)
    );
  SEL_2_OBUF : OBUF
    port map (
      I => Nexys3A_selector(2),
      O => SEL(2)
    );
  SEL_1_OBUF : OBUF
    port map (
      I => Nexys3A_selector(1),
      O => SEL(1)
    );
  SEL_0_OBUF : OBUF
    port map (
      I => Nexys3A_selector(0),
      O => SEL(0)
    );
  DISP_8SEG_7_OBUF : OBUF
    port map (
      I => DISP_8SEG_7_OBUF_52,
      O => DISP_8SEG(7)
    );
  DISP_8SEG_6_OBUF : OBUF
    port map (
      I => DISP_8SEG_6_OBUF_53,
      O => DISP_8SEG(6)
    );
  DISP_8SEG_5_OBUF : OBUF
    port map (
      I => DISP_8SEG_5_OBUF_54,
      O => DISP_8SEG(5)
    );
  DISP_8SEG_4_OBUF : OBUF
    port map (
      I => DISP_8SEG_4_OBUF_55,
      O => DISP_8SEG(4)
    );
  DISP_8SEG_3_OBUF : OBUF
    port map (
      I => DISP_8SEG_3_OBUF_56,
      O => DISP_8SEG(3)
    );
  DISP_8SEG_2_OBUF : OBUF
    port map (
      I => DISP_8SEG_2_OBUF_57,
      O => DISP_8SEG(2)
    );
  DISP_8SEG_1_OBUF : OBUF
    port map (
      I => DISP_8SEG_1_OBUF_58,
      O => DISP_8SEG(1)
    );
  DISP_8SEG_0_OBUF : OBUF
    port map (
      I => DISP_8SEG_0_OBUF_59,
      O => DISP_8SEG(0)
    );
  SOUND_A_OBUF : OBUF
    port map (
      I => SOUND_A_OBUF_9,
      O => SOUND_A
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(24),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_24_rt_657
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(23),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_23_rt_658
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(22),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_22_rt_659
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(21),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_21_rt_660
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(20),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_20_rt_661
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(19),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_19_rt_662
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(18),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_18_rt_663
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(17),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_17_rt_664
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(16),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_16_rt_665
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(15),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_15_rt_666
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(14),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_14_rt_667
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(13),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_13_rt_668
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(12),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_12_rt_669
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(11),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_11_rt_670
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(10),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_10_rt_671
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(9),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_9_rt_672
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(8),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_8_rt_673
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(7),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_7_rt_674
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(6),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_6_rt_675
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(5),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_5_rt_676
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(4),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_4_rt_677
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(3),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_3_rt_678
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(2),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_2_rt_679
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_counter(1),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_cy_1_rt_680
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(30),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_30_rt_681
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(29),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_29_rt_682
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(28),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_28_rt_683
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(27),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_27_rt_684
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(26),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_26_rt_685
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(25),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_25_rt_686
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(24),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_24_rt_687
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(23),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_23_rt_688
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(22),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_22_rt_689
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(21),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_21_rt_690
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(20),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_20_rt_691
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(19),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_19_rt_692
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(18),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_18_rt_693
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(17),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_17_rt_694
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(16),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_16_rt_695
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(15),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_15_rt_696
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(14),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_14_rt_697
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(13),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_13_rt_698
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(12),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_12_rt_699
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(11),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_11_rt_700
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(10),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_10_rt_701
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(9),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_9_rt_702
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(8),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_8_rt_703
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(7),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_7_rt_704
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(6),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_6_rt_705
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(5),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_5_rt_706
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(4),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_4_rt_707
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(3),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_3_rt_708
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(2),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_2_rt_709
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(1),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_cy_1_rt_710
    );
  Nexys3A_Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(16),
      O => Nexys3A_Mcount_counter_cy_16_rt_711
    );
  Nexys3A_Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(15),
      O => Nexys3A_Mcount_counter_cy_15_rt_712
    );
  Nexys3A_Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(14),
      O => Nexys3A_Mcount_counter_cy_14_rt_713
    );
  Nexys3A_Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(13),
      O => Nexys3A_Mcount_counter_cy_13_rt_714
    );
  Nexys3A_Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(12),
      O => Nexys3A_Mcount_counter_cy_12_rt_715
    );
  Nexys3A_Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(11),
      O => Nexys3A_Mcount_counter_cy_11_rt_716
    );
  Nexys3A_Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(10),
      O => Nexys3A_Mcount_counter_cy_10_rt_717
    );
  Nexys3A_Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(9),
      O => Nexys3A_Mcount_counter_cy_9_rt_718
    );
  Nexys3A_Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(8),
      O => Nexys3A_Mcount_counter_cy_8_rt_719
    );
  Nexys3A_Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(7),
      O => Nexys3A_Mcount_counter_cy_7_rt_720
    );
  Nexys3A_Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(6),
      O => Nexys3A_Mcount_counter_cy_6_rt_721
    );
  Nexys3A_Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(5),
      O => Nexys3A_Mcount_counter_cy_5_rt_722
    );
  Nexys3A_Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(4),
      O => Nexys3A_Mcount_counter_cy_4_rt_723
    );
  Nexys3A_Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(3),
      O => Nexys3A_Mcount_counter_cy_3_rt_724
    );
  Nexys3A_Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(2),
      O => Nexys3A_Mcount_counter_cy_2_rt_725
    );
  Nexys3A_Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(1),
      O => Nexys3A_Mcount_counter_cy_1_rt_726
    );
  Nexys3A_Mcount_i_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(25),
      O => Nexys3A_Mcount_i_cy_25_rt_727
    );
  Nexys3A_Mcount_i_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(24),
      O => Nexys3A_Mcount_i_cy_24_rt_728
    );
  Nexys3A_Mcount_i_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(23),
      O => Nexys3A_Mcount_i_cy_23_rt_729
    );
  Nexys3A_Mcount_i_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(22),
      O => Nexys3A_Mcount_i_cy_22_rt_730
    );
  Nexys3A_Mcount_i_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(21),
      O => Nexys3A_Mcount_i_cy_21_rt_731
    );
  Nexys3A_Mcount_i_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(20),
      O => Nexys3A_Mcount_i_cy_20_rt_732
    );
  Nexys3A_Mcount_i_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(19),
      O => Nexys3A_Mcount_i_cy_19_rt_733
    );
  Nexys3A_Mcount_i_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(18),
      O => Nexys3A_Mcount_i_cy_18_rt_734
    );
  Nexys3A_Mcount_i_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(17),
      O => Nexys3A_Mcount_i_cy_17_rt_735
    );
  Nexys3A_Mcount_i_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(16),
      O => Nexys3A_Mcount_i_cy_16_rt_736
    );
  Nexys3A_Mcount_i_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(15),
      O => Nexys3A_Mcount_i_cy_15_rt_737
    );
  Nexys3A_Mcount_i_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(14),
      O => Nexys3A_Mcount_i_cy_14_rt_738
    );
  Nexys3A_Mcount_i_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(13),
      O => Nexys3A_Mcount_i_cy_13_rt_739
    );
  Nexys3A_Mcount_i_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(12),
      O => Nexys3A_Mcount_i_cy_12_rt_740
    );
  Nexys3A_Mcount_i_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(11),
      O => Nexys3A_Mcount_i_cy_11_rt_741
    );
  Nexys3A_Mcount_i_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(10),
      O => Nexys3A_Mcount_i_cy_10_rt_742
    );
  Nexys3A_Mcount_i_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(9),
      O => Nexys3A_Mcount_i_cy_9_rt_743
    );
  Nexys3A_Mcount_i_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(8),
      O => Nexys3A_Mcount_i_cy_8_rt_744
    );
  Nexys3A_Mcount_i_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(7),
      O => Nexys3A_Mcount_i_cy_7_rt_745
    );
  Nexys3A_Mcount_i_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(6),
      O => Nexys3A_Mcount_i_cy_6_rt_746
    );
  Nexys3A_Mcount_i_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(5),
      O => Nexys3A_Mcount_i_cy_5_rt_747
    );
  Nexys3A_Mcount_i_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(4),
      O => Nexys3A_Mcount_i_cy_4_rt_748
    );
  Nexys3A_Mcount_i_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(3),
      O => Nexys3A_Mcount_i_cy_3_rt_749
    );
  Nexys3A_Mcount_i_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(2),
      O => Nexys3A_Mcount_i_cy_2_rt_750
    );
  Nexys3A_Mcount_i_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(1),
      O => Nexys3A_Mcount_i_cy_1_rt_751
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(16),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_16_rt_752
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(15),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_15_rt_753
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(14),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_14_rt_754
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(13),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_13_rt_755
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(12),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_12_rt_756
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(11),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_11_rt_757
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(10),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_10_rt_758
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(9),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_9_rt_759
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(8),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_8_rt_760
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(7),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_7_rt_761
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(6),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_6_rt_762
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(5),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_5_rt_763
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(4),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_4_rt_764
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(3),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_3_rt_765
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(2),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_2_rt_766
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(1),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_cy_1_rt_767
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(25),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_25_rt_768
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(24),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_24_rt_769
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(23),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_23_rt_770
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(22),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_22_rt_771
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(21),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_21_rt_772
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(20),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_20_rt_773
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(19),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_19_rt_774
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(18),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_18_rt_775
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(17),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_17_rt_776
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(16),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_16_rt_777
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(15),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_15_rt_778
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(14),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_14_rt_779
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(13),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_13_rt_780
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(12),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_12_rt_781
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(11),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_11_rt_782
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(10),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_10_rt_783
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(9),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_9_rt_784
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(8),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_8_rt_785
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(7),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_7_rt_786
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(6),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_6_rt_787
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(5),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_5_rt_788
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(4),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_4_rt_789
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(3),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_3_rt_790
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(2),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_2_rt_791
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(1),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_cy_1_rt_792
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => PULSEgEN_i(31),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_xor_31_rt_793
    );
  Nexys3A_Mcount_counter_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(17),
      O => Nexys3A_Mcount_counter_xor_17_rt_794
    );
  Nexys3A_Mcount_i_xor_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(26),
      O => Nexys3A_Mcount_i_xor_26_rt_795
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_counter(17),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_xor_17_rt_796
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_i(26),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_xor_26_rt_797
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_17 : LUT6
    generic map(
      INIT => X"0000A000CCCCCCCC"
    )
    port map (
      I0 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_5_586,
      I1 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_15_595,
      I2 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_8_588,
      I3 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_1_584,
      I4 => N36,
      I5 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_GND_8_o_i_31_equal_6_o
    );
  Nexys3A_i_26_GND_16_o_LessThan_9_o33_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_7_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_8_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_9_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_10_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_11_Q,
      I5 => Nexys3A_i_26_GND_16_o_add_7_OUT_12_Q,
      O => N38
    );
  Nexys3A_i_26_GND_16_o_LessThan_9_o33 : LUT6
    generic map(
      INIT => X"007FFFFF00FFFFFF"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_13_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_14_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_15_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_16_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_17_Q,
      I5 => N38,
      O => Nexys3A_i_26_GND_16_o_LessThan_9_o32
    );
  Nexys3A_i_26_PWR_16_o_LessThan_10_o32_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_8_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_9_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_10_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_11_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_12_Q,
      O => N40
    );
  Nexys3A_a : FD
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_a_rstpot_801,
      Q => Nexys3A_a_532
    );
  Nexys3A_i_26_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(26),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_26_rstpot_802
    );
  Nexys3A_i_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_26_rstpot_802,
      Q => Nexys3A_i(26)
    );
  Nexys3A_i_25_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(25),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_25_rstpot_803
    );
  Nexys3A_i_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_25_rstpot_803,
      Q => Nexys3A_i(25)
    );
  Nexys3A_i_24_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(24),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_24_rstpot_804
    );
  Nexys3A_i_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_24_rstpot_804,
      Q => Nexys3A_i(24)
    );
  Nexys3A_i_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(23),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_23_rstpot_805
    );
  Nexys3A_i_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_23_rstpot_805,
      Q => Nexys3A_i(23)
    );
  Nexys3A_i_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(22),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_22_rstpot_806
    );
  Nexys3A_i_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_22_rstpot_806,
      Q => Nexys3A_i(22)
    );
  Nexys3A_i_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(21),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_21_rstpot_807
    );
  Nexys3A_i_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_21_rstpot_807,
      Q => Nexys3A_i(21)
    );
  Nexys3A_i_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(20),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_20_rstpot_808
    );
  Nexys3A_i_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_20_rstpot_808,
      Q => Nexys3A_i(20)
    );
  Nexys3A_i_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(19),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_19_rstpot_809
    );
  Nexys3A_i_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_19_rstpot_809,
      Q => Nexys3A_i(19)
    );
  Nexys3A_i_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(18),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_18_rstpot_810
    );
  Nexys3A_i_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_18_rstpot_810,
      Q => Nexys3A_i(18)
    );
  Nexys3A_i_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(17),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_17_rstpot_811
    );
  Nexys3A_i_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_17_rstpot_811,
      Q => Nexys3A_i(17)
    );
  Nexys3A_i_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(16),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_16_rstpot_812
    );
  Nexys3A_i_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_16_rstpot_812,
      Q => Nexys3A_i(16)
    );
  Nexys3A_i_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(15),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_15_rstpot_813
    );
  Nexys3A_i_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_15_rstpot_813,
      Q => Nexys3A_i(15)
    );
  Nexys3A_i_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(14),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_14_rstpot_814
    );
  Nexys3A_i_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_14_rstpot_814,
      Q => Nexys3A_i(14)
    );
  Nexys3A_i_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(13),
      I1 => Nexys3A_n0049,
      O => Nexys3A_i_13_rstpot_815
    );
  Nexys3A_i_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_13_rstpot_815,
      Q => Nexys3A_i(13)
    );
  Nexys3A_i_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(12),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_12_rstpot_816
    );
  Nexys3A_i_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_12_rstpot_816,
      Q => Nexys3A_i(12)
    );
  Nexys3A_i_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(11),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_11_rstpot_817
    );
  Nexys3A_i_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_11_rstpot_817,
      Q => Nexys3A_i(11)
    );
  Nexys3A_i_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(10),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_10_rstpot_818
    );
  Nexys3A_i_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_10_rstpot_818,
      Q => Nexys3A_i(10)
    );
  Nexys3A_i_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(9),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_9_rstpot_819
    );
  Nexys3A_i_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_9_rstpot_819,
      Q => Nexys3A_i(9)
    );
  Nexys3A_i_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(8),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_8_rstpot_820
    );
  Nexys3A_i_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_8_rstpot_820,
      Q => Nexys3A_i(8)
    );
  Nexys3A_i_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(7),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_7_rstpot_821
    );
  Nexys3A_i_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_7_rstpot_821,
      Q => Nexys3A_i(7)
    );
  Nexys3A_i_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(6),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_6_rstpot_822
    );
  Nexys3A_i_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_6_rstpot_822,
      Q => Nexys3A_i(6)
    );
  Nexys3A_i_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(5),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_5_rstpot_823
    );
  Nexys3A_i_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_5_rstpot_823,
      Q => Nexys3A_i(5)
    );
  Nexys3A_i_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(4),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_4_rstpot_824
    );
  Nexys3A_i_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_4_rstpot_824,
      Q => Nexys3A_i(4)
    );
  Nexys3A_i_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(3),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_3_rstpot_825
    );
  Nexys3A_i_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_3_rstpot_825,
      Q => Nexys3A_i(3)
    );
  Nexys3A_i_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(2),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_2_rstpot_826
    );
  Nexys3A_i_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_2_rstpot_826,
      Q => Nexys3A_i(2)
    );
  Nexys3A_i_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(1),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_1_rstpot_827
    );
  Nexys3A_i_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_1_rstpot_827,
      Q => Nexys3A_i(1)
    );
  Nexys3A_i_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Nexys3A_Result(0),
      I1 => Nexys3A_n004971,
      O => Nexys3A_i_0_rstpot_828
    );
  Nexys3A_i_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => Nexys3A_i_0_rstpot_828,
      Q => Nexys3A_i(0)
    );
  Nexys3A_n004911_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_3_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_4_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_5_Q,
      O => N42
    );
  Nexys3A_n00495 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_11_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_10_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_9_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_7_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_6_Q,
      I5 => N42,
      O => Nexys3A_n00496_634
    );
  Nexys3A_a_rstpot_SW1 : LUT3
    generic map(
      INIT => X"8C"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_24_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_25_Q,
      I2 => Nexys3A_i_26_GND_16_o_LessThan_9_o3,
      O => N48
    );
  Nexys3A_a_rstpot_SW2 : LUT4
    generic map(
      INIT => X"C0E0"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_18_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_24_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_25_Q,
      I3 => Nexys3A_i_26_GND_16_o_LessThan_9_o3,
      O => N49
    );
  Nexys3A_a_rstpot_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_18_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_17_Q,
      O => N51
    );
  Nexys3A_a_rstpot_SW0_SW1 : LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_13_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_14_Q,
      I2 => Nexys3A_i_26_GND_16_o_add_7_OUT_15_Q,
      I3 => Nexys3A_i_26_GND_16_o_add_7_OUT_16_Q,
      I4 => Nexys3A_i_26_GND_16_o_add_7_OUT_17_Q,
      I5 => Nexys3A_i_26_GND_16_o_add_7_OUT_18_Q,
      O => N52
    );
  Nexys3A_a_rstpot_SW0 : LUT6
    generic map(
      INIT => X"CCCCCCCCFFFEEEFE"
    )
    port map (
      I0 => Nexys3A_i_26_GND_16_o_add_7_OUT_19_Q,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_25_Q,
      I2 => N51,
      I3 => N40,
      I4 => N52,
      I5 => Nexys3A_i_26_PWR_16_o_LessThan_10_o3,
      O => N47
    );
  Nexys3A_a_rstpot : LUT6
    generic map(
      INIT => X"BBFFB8FC8BCF88CC"
    )
    port map (
      I0 => Nexys3A_a_532,
      I1 => Nexys3A_i_26_GND_16_o_add_7_OUT_26_Q,
      I2 => Nexys3A_i_26_GND_16_o_LessThan_9_o32,
      I3 => N47,
      I4 => N48,
      I5 => N49,
      O => Nexys3A_a_rstpot_801
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_3_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_5_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_6_Q,
      I2 => PULSEgEN_i_31_GND_8_o_add_2_OUT_13_Q,
      I3 => PULSEgEN_i_31_GND_8_o_add_2_OUT_14_Q,
      I4 => PULSEgEN_i_31_GND_8_o_add_2_OUT_15_Q,
      O => N54
    );
  PULSEgEN_GND_8_o_i_31_equal_6_o_31_7_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
    port map (
      I0 => PULSEgEN_i_31_GND_8_o_add_2_OUT_16_Q,
      I1 => PULSEgEN_i_31_GND_8_o_add_2_OUT_17_Q,
      I2 => PULSEgEN_i_31_GND_8_o_add_2_OUT_28_Q,
      I3 => PULSEgEN_i_31_GND_8_o_add_2_OUT_29_Q,
      I4 => PULSEgEN_GND_8_o_i_31_equal_6_o_31_4,
      I5 => N54,
      O => N36
    );
  PULSEgEN_i_31_LD : LD
    generic map(
      INIT => '1'
    )
    port map (
      D => SET_DATA(1, 3),
      G => RESET_IBUF_BUFG_5,
      Q => PULSEgEN_i_31_LD_836
    );
  PULSEgEN_i_31_C_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFGP_4,
      CLR => RESET_IBUF_864,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_31_Q,
      Q => PULSEgEN_i_31_C_31_837
    );
  PULSEgEN_i_31_P_31 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => CLOCK_BUFGP_4,
      D => PULSEgEN_i_31_i_31_mux_4_OUT_31_Q,
      Q => PULSEgEN_i_31_P_31_838
    );
  PULSEgEN_i_311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PULSEgEN_i_31_LD_836,
      I1 => PULSEgEN_i_31_C_31_837,
      I2 => PULSEgEN_i_31_P_31_838,
      O => PULSEgEN_i(31)
    );
  Nexys3A_PWR_16_o_counter_17_equal_2_o_17_3_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => Nexys3A_counter_17_GND_16_o_add_0_OUT_0_Q,
      I1 => Nexys3A_counter_17_GND_16_o_add_0_OUT_1_Q,
      I2 => Nexys3A_counter_17_GND_16_o_add_0_OUT_11_Q,
      O => N56
    );
  Nexys3A_PWR_16_o_counter_17_equal_2_o_17_4 : LUT6
    generic map(
      INIT => X"0040000000000000"
    )
    port map (
      I0 => Nexys3A_counter_17_GND_16_o_add_0_OUT_15_Q,
      I1 => Nexys3A_counter_17_GND_16_o_add_0_OUT_16_Q,
      I2 => Nexys3A_counter_17_GND_16_o_add_0_OUT_17_Q,
      I3 => N56,
      I4 => Nexys3A_PWR_16_o_counter_17_equal_2_o_17_Q,
      I5 => Nexys3A_PWR_16_o_counter_17_equal_2_o_17_1_637,
      O => Nexys3A_PWR_16_o_counter_17_equal_2_o
    );
  PULSEgEN_mux2411 : LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
    port map (
      I0 => PULSEgEN_i_31_LD_836,
      I1 => PULSEgEN_i_31_C_31_837,
      I2 => PULSEgEN_i_31_P_31_838,
      I3 => PULSEgEN_i_31_GND_8_o_add_2_OUT_31_Q,
      I4 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61,
      O => PULSEgEN_i_31_i_31_mux_4_OUT_31_Q
    );
  TIMEsET_LOAD_EN1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd2_69,
      I1 => CONTROLfSM_STATE_FSM_FFd1_70,
      O => TIMEsET_LOAD_EN
    );
  TIMEcOUNT_Mmux_LS_MIN_3_SET_DATA_0_3_mux_23_OUT4_SW0 : LUT5
    generic map(
      INIT => X"89997777"
    )
    port map (
      I0 => TIMEcOUNT_LS_MIN(2),
      I1 => TIMEcOUNT_LS_MIN(1),
      I2 => TIMEcOUNT_MS_MIN(2),
      I3 => TIMEcOUNT_MS_MIN(1),
      I4 => TIMEcOUNT_LS_MIN(3),
      O => N28
    );
  TIMEcOUNT_n0118_inv1 : LUT4
    generic map(
      INIT => X"BAAA"
    )
    port map (
      I0 => PULSEgEN_ONE_MINUTE_11,
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      O => TIMEcOUNT_n0118_inv
    );
  TIMEcOUNT_Mmux_LS_MIN_3_SET_DATA_0_3_mux_23_OUT11 : LUT5
    generic map(
      INIT => X"55D55515"
    )
    port map (
      I0 => TIMEcOUNT_LS_MIN(0),
      I1 => CONTROLfSM_STATE_FSM_FFd1_70,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd3_68,
      I4 => TIMEsET_MINS_LS(0),
      O => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_0_Q
    );
  TIMEcOUNT_Mmux_LS_HR_3_SET_DATA_2_3_mux_27_OUT11 : LUT5
    generic map(
      INIT => X"55D55515"
    )
    port map (
      I0 => TIMEcOUNT_LS_HR(0),
      I1 => CONTROLfSM_STATE_FSM_FFd1_70,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd3_68,
      I4 => TIMEsET_HRS_LS(0),
      O => TIMEcOUNT_LS_HR_3_SET_DATA_2_3_mux_27_OUT_0_Q
    );
  TIMEcOUNT_Mmux_MS_MIN_3_SET_DATA_1_3_mux_25_OUT11 : LUT5
    generic map(
      INIT => X"55D55515"
    )
    port map (
      I0 => TIMEcOUNT_MS_MIN(0),
      I1 => CONTROLfSM_STATE_FSM_FFd1_70,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd3_68,
      I4 => TIMEsET_MINS_MS(0),
      O => TIMEcOUNT_MS_MIN_3_SET_DATA_1_3_mux_25_OUT_0_Q
    );
  TIMEcOUNT_Mmux_LS_MIN_3_SET_DATA_0_3_mux_23_OUT2 : LUT5
    generic map(
      INIT => X"55D55515"
    )
    port map (
      I0 => N58,
      I1 => CONTROLfSM_STATE_FSM_FFd2_69,
      I2 => CONTROLfSM_STATE_FSM_FFd1_70,
      I3 => CONTROLfSM_STATE_FSM_FFd3_68,
      I4 => TIMEsET_MINS_LS(1),
      O => TIMEcOUNT_LS_MIN_3_SET_DATA_0_3_mux_23_OUT_1_Q
    );
  TIMEsET_HRS_n0067_inv_SW1 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd3_68,
      I1 => PULSEgEN_HALF_SECOND_10,
      I2 => TIMEsET_HRS_LS(2),
      I3 => TIMEsET_HRS_LS(0),
      O => N60
    );
  TIMEsET_HRS_n0067_inv : LUT6
    generic map(
      INIT => X"0010010033733733"
    )
    port map (
      I0 => N60,
      I1 => CONTROLfSM_STATE_FSM_FFd1_70,
      I2 => TIMEsET_HRS_LS(1),
      I3 => TIMEsET_HRS_LS(3),
      I4 => TIMEsET_HRS_MS(1),
      I5 => CONTROLfSM_STATE_FSM_FFd2_69,
      O => TIMEsET_HRS_n0067_inv_321
    );
  TIMEcOUNT_Mmux_LS_MIN_3_SET_DATA_0_3_mux_23_OUT2_SW1 : LUT6
    generic map(
      INIT => X"AAAAAAAA55757575"
    )
    port map (
      I0 => TIMEcOUNT_LS_MIN(0),
      I1 => TIMEcOUNT_LS_MIN(2),
      I2 => TIMEcOUNT_LS_MIN(3),
      I3 => TIMEcOUNT_MS_MIN(1),
      I4 => TIMEcOUNT_MS_MIN(2),
      I5 => TIMEcOUNT_LS_MIN(1),
      O => N58
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT11 : LUT6
    generic map(
      INIT => X"11100100FFFEEFEE"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd2_69,
      I1 => CONTROLfSM_STATE_FSM_FFd1_70,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_MIN(0),
      I4 => ALARMrEGISTER_ALARM_DATA_0(0),
      I5 => TIMEsET_MINS_LS(0),
      O => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_0_Q
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT11 : LUT6
    generic map(
      INIT => X"11100100FFFEEFEE"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd2_69,
      I1 => CONTROLfSM_STATE_FSM_FFd1_70,
      I2 => CONTROLfSM_STATE_FSM_FFd3_68,
      I3 => TIMEcOUNT_LS_HR(0),
      I4 => ALARMrEGISTER_ALARM_DATA_2(0),
      I5 => TIMEsET_HRS_LS(0),
      O => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_0_Q
    );
  TIMEsET_MINS_n0056_inv1_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => TIMEsET_MINS_LS(2),
      I1 => TIMEsET_MINS_LS(3),
      I2 => TIMEsET_MINS_LS(1),
      O => N62
    );
  TIMEsET_MINS_n0056_inv1 : LUT6
    generic map(
      INIT => X"0000100055557555"
    )
    port map (
      I0 => CONTROLfSM_STATE_FSM_FFd1_70,
      I1 => N62,
      I2 => TIMEsET_MINS_LS(0),
      I3 => PULSEgEN_HALF_SECOND_10,
      I4 => CONTROLfSM_STATE_FSM_FFd3_68,
      I5 => CONTROLfSM_STATE_FSM_FFd2_69,
      O => TIMEsET_MINS_n0056_inv
    );
  TIMEsET_MINS_n0049_inv1 : LUT4
    generic map(
      INIT => X"022F"
    )
    port map (
      I0 => PULSEgEN_HALF_SECOND_10,
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd1_70,
      I3 => CONTROLfSM_STATE_FSM_FFd2_69,
      O => TIMEsET_MINS_n0049_inv
    );
  TIMEsET_HRS_n0056_inv1 : LUT4
    generic map(
      INIT => X"088F"
    )
    port map (
      I0 => PULSEgEN_HALF_SECOND_10,
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd1_70,
      I3 => CONTROLfSM_STATE_FSM_FFd2_69,
      O => TIMEsET_HRS_n0056_inv
    );
  TIMEcOUNT_n0094_inv2 : LUT6
    generic map(
      INIT => X"2AFF2A2A2A2A2A2A"
    )
    port map (
      I0 => TIMEcOUNT_n0113_inv2,
      I1 => TIMEcOUNT_MS_MIN(1),
      I2 => TIMEcOUNT_MS_MIN(2),
      I3 => CONTROLfSM_STATE_FSM_FFd3_68,
      I4 => CONTROLfSM_STATE_FSM_FFd2_69,
      I5 => CONTROLfSM_STATE_FSM_FFd1_70,
      O => TIMEcOUNT_n0094_inv
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_25_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_4_600,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_3_599,
      I3 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_1_597,
      I4 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_2_598,
      I5 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_843
    );
  PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_6_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => PULSEgEN_counter_25_GND_8_o_add_0_OUT_25_Q,
      I1 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_4_600,
      I2 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_3_599,
      I3 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_1_597,
      I4 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_2_598,
      I5 => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_Q,
      O => PULSEgEN_PWR_8_o_counter_25_equal_2_o_25_61
    );
  Nexys3A_n00497_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => Nexys3A_n00494_632,
      I1 => Nexys3A_n00495_633,
      I2 => Nexys3A_n00497_635,
      I3 => Nexys3A_n00492_630,
      I4 => Nexys3A_n00493_631,
      I5 => Nexys3A_n00496_634,
      O => Nexys3A_n004971
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT2 : MUXF7
    port map (
      I0 => N64,
      I1 => N65,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_1_Q
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT2_F : LUT4
    generic map(
      INIT => X"6626"
    )
    port map (
      I0 => TIMEsET_MINS_LS(1),
      I1 => TIMEsET_MINS_LS(0),
      I2 => TIMEsET_MINS_LS(3),
      I3 => TIMEsET_MINS_LS(2),
      O => N64
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT2_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_0(1),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_LS_MIN(1),
      O => N65
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT4 : MUXF7
    port map (
      I0 => N66,
      I1 => N67,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_3_Q
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT4_F : LUT4
    generic map(
      INIT => X"68AA"
    )
    port map (
      I0 => TIMEsET_MINS_LS(3),
      I1 => TIMEsET_MINS_LS(2),
      I2 => TIMEsET_MINS_LS(1),
      I3 => TIMEsET_MINS_LS(0),
      O => N66
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT4_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_0(3),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_LS_MIN(3),
      O => N67
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT3 : MUXF7
    port map (
      I0 => N68,
      I1 => N69,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_2_Q
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT3_F : LUT3
    generic map(
      INIT => X"42"
    )
    port map (
      I0 => TIMEsET_MINS_MS(2),
      I1 => TIMEsET_MINS_MS(1),
      I2 => TIMEsET_MINS_MS(0),
      O => N68
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT3_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_1(2),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_MS_MIN(2),
      O => N69
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT3 : MUXF7
    port map (
      I0 => N70,
      I1 => N71,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_MINS_LS_3_LOAD_DATA_0_3_mux_13_OUT_2_Q
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT3_F : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => TIMEsET_MINS_LS(2),
      I1 => TIMEsET_MINS_LS(1),
      I2 => TIMEsET_MINS_LS(0),
      O => N70
    );
  TIMEsET_MINS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT3_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_0(2),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_LS_MIN(2),
      O => N71
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT1 : MUXF7
    port map (
      I0 => N72,
      I1 => N73,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_0_Q
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT1_F : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => TIMEsET_MINS_MS(0),
      I1 => TIMEsET_MINS_MS(2),
      I2 => TIMEsET_MINS_MS(1),
      O => N72
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT1_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_1(0),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_MS_MIN(0),
      O => N73
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT2 : MUXF7
    port map (
      I0 => N74,
      I1 => N75,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_MINS_MS_3_LOAD_DATA_1_3_mux_15_OUT_1_Q
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT2_F : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => TIMEsET_MINS_MS(2),
      I1 => TIMEsET_MINS_MS(1),
      I2 => TIMEsET_MINS_MS(0),
      O => N74
    );
  TIMEsET_MINS_Mmux_MS_3_LOAD_DATA_1_3_mux_15_OUT2_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_1(1),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_MS_MIN(1),
      O => N75
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT2 : MUXF7
    port map (
      I0 => N76,
      I1 => N77,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_1_Q
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT2_F : LUT5
    generic map(
      INIT => X"66666626"
    )
    port map (
      I0 => TIMEsET_HRS_LS(1),
      I1 => TIMEsET_HRS_LS(0),
      I2 => TIMEsET_HRS_LS(3),
      I3 => TIMEsET_HRS_LS(2),
      I4 => TIMEsET_HRS_MS(1),
      O => N76
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT2_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_2(1),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_LS_HR(1),
      O => N77
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT4 : MUXF7
    port map (
      I0 => N78,
      I1 => N79,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_3_Q
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT4_F : LUT5
    generic map(
      INIT => X"6A68AAAA"
    )
    port map (
      I0 => TIMEsET_HRS_LS(3),
      I1 => TIMEsET_HRS_LS(2),
      I2 => TIMEsET_HRS_LS(1),
      I3 => TIMEsET_HRS_MS(1),
      I4 => TIMEsET_HRS_LS(0),
      O => N78
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT4_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_2(3),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_LS_HR(3),
      O => N79
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT3 : MUXF7
    port map (
      I0 => N80,
      I1 => N81,
      S => TIMEsET_LOAD_EN,
      O => TIMEsET_HRS_LS_3_LOAD_DATA_0_3_mux_13_OUT_2_Q
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT3_F : LUT5
    generic map(
      INIT => X"6A6A2A6A"
    )
    port map (
      I0 => TIMEsET_HRS_LS(2),
      I1 => TIMEsET_HRS_LS(1),
      I2 => TIMEsET_HRS_LS(0),
      I3 => TIMEsET_HRS_MS(1),
      I4 => TIMEsET_HRS_LS(3),
      O => N80
    );
  TIMEsET_HRS_Mmux_LS_3_LOAD_DATA_0_3_mux_13_OUT3_G : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ALARMrEGISTER_ALARM_DATA_2(2),
      I1 => CONTROLfSM_STATE_FSM_FFd3_68,
      I2 => CONTROLfSM_STATE_FSM_FFd2_69,
      I3 => CONTROLfSM_STATE_FSM_FFd1_70,
      I4 => TIMEcOUNT_LS_HR(2),
      O => N81
    );
  CLOCK_BUFGP : BUFGP
    port map (
      I => CLOCK,
      O => CLOCK_BUFGP_4
    );
  RESET_IBUF_BUFG : BUFG
    port map (
      O => RESET_IBUF_BUFG_5,
      I => RESET_IBUF_864
    );
  PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_lut_0_INV_0 : INV
    port map (
      I => PULSEgEN_counter(0),
      O => PULSEgEN_Madd_counter_25_GND_8_o_add_0_OUT_lut_0_Q
    );
  PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_lut_0_INV_0 : INV
    port map (
      I => PULSEgEN_i(0),
      O => PULSEgEN_Madd_i_31_GND_8_o_add_2_OUT_lut_0_Q
    );
  Nexys3A_Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => Nexys3A_counter(0),
      O => Nexys3A_Mcount_counter_lut(0)
    );
  Nexys3A_Mcount_i_lut_0_INV_0 : INV
    port map (
      I => Nexys3A_i(0),
      O => Nexys3A_Mcount_i_lut(0)
    );
  Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_lut_0_INV_0 : INV
    port map (
      I => Nexys3A_counter(0),
      O => Nexys3A_Madd_counter_17_GND_16_o_add_0_OUT_lut_0_Q
    );
  Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_lut_0_INV_0 : INV
    port map (
      I => Nexys3A_i(0),
      O => Nexys3A_Madd_i_26_GND_16_o_add_7_OUT_lut_0_Q
    );
  PULSEgEN_RESET_inv1_INV_0 : INV
    port map (
      I => RESET_IBUF_864,
      O => PULSEgEN_RESET_inv
    );

end Structure;

