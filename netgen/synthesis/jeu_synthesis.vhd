--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: jeu_synthesis.vhd
-- /___/   /\     Timestamp: Sun Jan 13 14:38:11 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm jeu -w -dir netgen/synthesis -ofmt vhdl -sim jeu.ngc jeu_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: jeu.ngc
-- Output file	: E:\2CS SIQ\SYSE\Projet\Code Source\jeu_final\netgen\synthesis\jeu_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: jeu
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

entity jeu is
  port (
    bt1 : in STD_LOGIC := 'X'; 
    bt2 : in STD_LOGIC := 'X'; 
    bt3 : in STD_LOGIC := 'X'; 
    bt4 : in STD_LOGIC := 'X'; 
    clkin : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    HS : out STD_LOGIC; 
    VS : out STD_LOGIC; 
    RGB : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end jeu;

architecture Structure of jeu is
  signal bt1_IBUF_0 : STD_LOGIC; 
  signal bt2_IBUF_1 : STD_LOGIC; 
  signal bt3_IBUF_2 : STD_LOGIC; 
  signal bt4_IBUF_3 : STD_LOGIC; 
  signal rst_IBUF_5 : STD_LOGIC; 
  signal clk16mhz : STD_LOGIC; 
  signal clk100mhz : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_R_9 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_G_10 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_B_11 : STD_LOGIC; 
  signal HS_OBUF_12 : STD_LOGIC; 
  signal VS_OBUF_13 : STD_LOGIC; 
  signal inst_dcm1_clkfx : STD_LOGIC; 
  signal inst_dcm1_clk0 : STD_LOGIC; 
  signal inst_dcm1_clkin1 : STD_LOGIC; 
  signal inst_main_video_en : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_32 : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_22 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_5_Q_48 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_4_Q_49 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_3_Q_50 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_2_Q_51 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_1_Q_52 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_0_Q_54 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_0_Q : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_5_Q_61 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_4_Q_62 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_3_Q_63 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_2_Q_64 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_1_Q_65 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_0_Q_66 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_lut_0_Q : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_5_Q_69 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_4_Q_70 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_3_Q_71 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_2_Q_72 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_1_Q_73 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_0_Q_74 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lut_0_Q : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lutdi : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q_77 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_4_Q_78 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_3_Q_79 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_2_Q_80 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_1_Q_81 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_Q_82 : STD_LOGIC; 
  signal inst_didact_Result_1_3 : STD_LOGIC; 
  signal inst_didact_Result_0_3 : STD_LOGIC; 
  signal inst_didact_Result_2_2 : STD_LOGIC; 
  signal inst_didact_Result_1_2 : STD_LOGIC; 
  signal inst_didact_Result_0_2 : STD_LOGIC; 
  signal inst_didact_Result_2_1 : STD_LOGIC; 
  signal inst_didact_Result_1_1 : STD_LOGIC; 
  signal inst_didact_Result_0_1 : STD_LOGIC; 
  signal inst_didact_n0148_inv : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_In_102 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113 : STD_LOGIC; 
  signal inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114 : STD_LOGIC; 
  signal inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115 : STD_LOGIC; 
  signal inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_120 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_In_125 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In1_127 : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd32_128 : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd31 : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd3 : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd11 : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd1_cy_0_1 : STD_LOGIC; 
  signal inst_didact_ADDERTREE_INTERNAL_Madd1_lut_0_1 : STD_LOGIC; 
  signal inst_didact_inst1_debounce_Q1_134 : STD_LOGIC; 
  signal inst_didact_inst1_debounce_Q2_135 : STD_LOGIC; 
  signal inst_didact_inst1_debounce_Q3_136 : STD_LOGIC; 
  signal inst_didact_inst2_debounce_Q1_137 : STD_LOGIC; 
  signal inst_didact_inst2_debounce_Q2_138 : STD_LOGIC; 
  signal inst_didact_inst2_debounce_Q3_139 : STD_LOGIC; 
  signal inst_didact_inst3_debounce_Q1_140 : STD_LOGIC; 
  signal inst_didact_inst3_debounce_Q2_141 : STD_LOGIC; 
  signal inst_didact_inst3_debounce_Q3_142 : STD_LOGIC; 
  signal inst_didact_inst4_debounce_Q1_143 : STD_LOGIC; 
  signal inst_didact_inst4_debounce_Q2_144 : STD_LOGIC; 
  signal inst_didact_inst4_debounce_Q3_145 : STD_LOGIC; 
  signal inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv : STD_LOGIC; 
  signal inst_didact_GND_6_o_BUS_0007_mux_10_OUT_0_Q : STD_LOGIC; 
  signal inst_didact_GND_6_o_BUS_0007_mux_10_OUT_1_Q : STD_LOGIC; 
  signal inst_didact_GND_6_o_BUS_0007_mux_10_OUT_3_Q : STD_LOGIC; 
  signal inst_didact_b1 : STD_LOGIC; 
  signal inst_didact_b0 : STD_LOGIC; 
  signal inst_didact_gs : STD_LOGIC; 
  signal inst_didact_debout4 : STD_LOGIC; 
  signal inst_didact_debout2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_clk2khz_166 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_clk4hz_167 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_clk2hz_168 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_clk1_5hz_169 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_clk1hz_170 : STD_LOGIC; 
  signal inst_didact_start_msa6_171 : STD_LOGIC; 
  signal inst_didact_start_msa5_172 : STD_LOGIC; 
  signal inst_didact_start_msa4_173 : STD_LOGIC; 
  signal inst_didact_start_msa3_174 : STD_LOGIC; 
  signal inst_didact_se4q_0_Q : STD_LOGIC; 
  signal inst_didact_se4q_1_Q : STD_LOGIC; 
  signal inst_didact_se4q_3_Q : STD_LOGIC; 
  signal inst_didact_enable_del6 : STD_LOGIC; 
  signal inst_didact_enable_del5 : STD_LOGIC; 
  signal inst_didact_enable_del4 : STD_LOGIC; 
  signal inst_didact_enable_del3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_20_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_19_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_18_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_17_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_16_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_15_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_14_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_13_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_12_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_11_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_10_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_9_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_8_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_7_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_6_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_5_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_4_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_3_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_2_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_1_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_0_4 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_11_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_10_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_9_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_8_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_7_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_6_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_5_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_4_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_3_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_2_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_1_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_0_3 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_22_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_21_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_20_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_19_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_18_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_17_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_16_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_15_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_14_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_13_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_12_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_11_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_10_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_9_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_8_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_7_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_6_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_5_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_4_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_3_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_2_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_1_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_0_2 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_21_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_20_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_19_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_18_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_17_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_16_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_15_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_14_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_13_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_12_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_11_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_10_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_9_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_8_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_7_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_6_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_5_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_4_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_3_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_2_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_1_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Result_0_1 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0030_inv_408 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0000_inv : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0012_inv : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0006_inv : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0018_inv : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div1hz_temp_413 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div2khz_temp_414 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div4hz_temp_415 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div2hz_temp_416 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div1_5hz_temp_417 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_2 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_12 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_9_12 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT42 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_27_o_9_1 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_11 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_FSM_FFd2_532 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_FSM_FFd1_In_533 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_FSM_FFd2_In_534 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_FSM_FFd2_535 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_FSM_FFd1_In : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_FSM_FFd2_In : STD_LOGIC; 
  signal inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_31_o : STD_LOGIC; 
  signal inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o : STD_LOGIC; 
  signal inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_0_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_1_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_2_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_3_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_4_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_5_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_6_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_7_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_8_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_9_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_0_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_1_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_2_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_3_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_4_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_5_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_6_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_7_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_8_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_9_Q : STD_LOGIC; 
  signal inst_main_Inst_vga_int_v_state_FSM_FFd1_561 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_h_state_FSM_FFd1_562 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_tempo_563 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_line_en_564 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_en_25_565 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1514_566 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF1931 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1431 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF161 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable151112 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o111 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF2011 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF201 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF17 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o35 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable17_576 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1441 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o34 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_VIDEO_EN_PWR_18_o_AND_43_o1 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable142_580 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o56 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_GND_23_o_iY_9_LessThan_27_o11 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable141_583 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable15 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable14 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable121 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable13_587 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable111_588 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o22 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o11_590 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_n0216_16_1 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Msub_GND_23_o_GND_23_o_sub_112_OUT_6_0_xor_6_11 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable11_593 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_n0477 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_pixel_blue : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_pixel_enable : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_pixel_red : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_pixel_green : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_iX_9_PWR_18_o_LessThan_11_o : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_8_o : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In1_608 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In1_609 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In2_610 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In1_611 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In2_612 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In3_613 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In2_614 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In1_616 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In1_618 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In1_619 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In2_620 : STD_LOGIC; 
  signal inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In3_621 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In2_622 : STD_LOGIC; 
  signal inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In3_623 : STD_LOGIC; 
  signal inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In1_624 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In2_625 : STD_LOGIC; 
  signal inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In3_626 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0006_inv1_627 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0006_inv2_628 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0006_inv3_629 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0018_inv1_630 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0018_inv2_631 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0012_inv1_632 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0012_inv2_633 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0000_inv1_634 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_n0000_inv2_635 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable112_645 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable113_646 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable114_647 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF171_648 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF172_649 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF173_650 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF174_651 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_SF175_652 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o12 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o13_655 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o14_656 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable151_657 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable152_658 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable153_659 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable154_660 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable155_661 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable156_662 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable157_663 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable158_664 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable159_665 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1510_666 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1511_667 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1512_668 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1513_669 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1515 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1518_671 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1519_672 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1520_673 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1521_674 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1522_675 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1523_676 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1524 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1527_678 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1528_679 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1529_680 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1530_681 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1531_682 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1532_683 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1533_684 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1534_685 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1535_686 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1536_687 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1537_688 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1538_689 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1539_690 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1540_691 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1541_692 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1542_693 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1543_694 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o1 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable143_696 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable144_697 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable145_698 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable146 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable1 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable12_701 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable19_702 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable110 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_Mmux_pixel_enable115 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o1 : STD_LOGIC; 
  signal inst_didact_Mcount_dipslay5_cpt_cy_1_rt_722 : STD_LOGIC; 
  signal inst_didact_Mcount_dipslay6_cpt_cy_1_rt_723 : STD_LOGIC; 
  signal inst_didact_Mcount_dipslay4_cpt_cy_1_rt_724 : STD_LOGIC; 
  signal inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_rt_725 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_19_rt_726 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_18_rt_727 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_17_rt_728 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_16_rt_729 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_15_rt_730 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_14_rt_731 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_13_rt_732 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_12_rt_733 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_11_rt_734 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_10_rt_735 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_9_rt_736 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_8_rt_737 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_7_rt_738 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_6_rt_739 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_5_rt_740 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_4_rt_741 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_3_rt_742 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_2_rt_743 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_1_rt_744 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_745 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_746 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_747 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_748 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_749 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_750 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_751 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_752 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_753 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_754 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_21_rt_755 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_20_rt_756 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_19_rt_757 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_18_rt_758 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_17_rt_759 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_16_rt_760 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_15_rt_761 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_14_rt_762 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_13_rt_763 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_12_rt_764 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_11_rt_765 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_10_rt_766 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_9_rt_767 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_8_rt_768 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_7_rt_769 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_6_rt_770 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_5_rt_771 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_4_rt_772 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_3_rt_773 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_2_rt_774 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_1_rt_775 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_776 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_777 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_778 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_779 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_780 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_781 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_782 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_783 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_784 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_785 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_786 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_787 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_788 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_789 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_790 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_791 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_792 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_793 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_794 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_795 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_21_rt_796 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_20_rt_797 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_19_rt_798 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_18_rt_799 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_17_rt_800 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_16_rt_801 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_15_rt_802 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_14_rt_803 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_13_rt_804 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_12_rt_805 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_11_rt_806 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_10_rt_807 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_9_rt_808 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_8_rt_809 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_7_rt_810 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_6_rt_811 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_5_rt_812 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_4_rt_813 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_3_rt_814 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_2_rt_815 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_1_rt_816 : STD_LOGIC; 
  signal inst_didact_Mcount_dipslay5_cpt_xor_2_rt_817 : STD_LOGIC; 
  signal inst_didact_Mcount_dipslay6_cpt_xor_2_rt_818 : STD_LOGIC; 
  signal inst_didact_Mcount_dipslay3_cpt_xor_1_rt_819 : STD_LOGIC; 
  signal inst_didact_Mcount_dipslay4_cpt_xor_2_rt_820 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_20_rt_821 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_822 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_22_rt_823 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_824 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_22_rt_825 : STD_LOGIC; 
  signal inst_didact_start_msa3_rstpot_826 : STD_LOGIC; 
  signal inst_didact_start_msa6_rstpot_827 : STD_LOGIC; 
  signal inst_didact_start_msa5_rstpot_828 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div2khz_temp_rstpot_829 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div1hz_temp_rstpot_830 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div2hz_temp_rstpot_831 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div1_5hz_temp_rstpot_832 : STD_LOGIC; 
  signal inst_didact_inst_diviseur_clk_div4hz_temp_rstpot_833 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_line_en_rstpot_834 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_tempo_rstpot : STD_LOGIC; 
  signal inst_main_Inst_vga_int_en_25_rstpot_836 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal inst_didact_dipslay3_cpt_1_rstpot_844 : STD_LOGIC; 
  signal inst_didact_dipslay3_cpt_0_rstpot_845 : STD_LOGIC; 
  signal inst_didact_dipslay5_cpt_2_rstpot_846 : STD_LOGIC; 
  signal inst_didact_dipslay5_cpt_1_rstpot_847 : STD_LOGIC; 
  signal inst_didact_dipslay5_cpt_0_rstpot_848 : STD_LOGIC; 
  signal inst_didact_dipslay6_cpt_2_rstpot_849 : STD_LOGIC; 
  signal inst_didact_dipslay6_cpt_1_rstpot_850 : STD_LOGIC; 
  signal inst_didact_dipslay6_cpt_0_rstpot_851 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal inst_didact_start_msa4_rstpot_857 : STD_LOGIC; 
  signal inst_didact_Mmux_GND_6_o_BUS_0001_mux_3_OUT11_lut_858 : STD_LOGIC; 
  signal inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT11_lut_859 : STD_LOGIC; 
  signal inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT11_lut_860 : STD_LOGIC; 
  signal inst_didact_n0148_inv1_lut_861 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_B_G_862 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_B_D_863 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_G_D_864 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_R_G_865 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_R_D_866 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_0_1_869 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_1_1_870 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_0_2_871 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_2_1_872 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_4_1_873 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_6_1_874 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_5_1_875 : STD_LOGIC; 
  signal inst_main_Inst_vga_int_x_count_3_1_876 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_R_1_891 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_R_2_892 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_G_1_893 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_G_2_894 : STD_LOGIC; 
  signal inst_main_Inst_set_rgb_B_1_895 : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_dcm1_dcm_sp_inst_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal seq : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal inst_main_Inst_vga_int_y_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal inst_main_Inst_vga_int_x_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal inst_didact_Mcount_dipslay5_cpt_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_didact_Mcount_dipslay5_cpt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_Mcount_dipslay6_cpt_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_didact_Mcount_dipslay6_cpt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_Mcount_dipslay3_cpt_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_Mcount_dipslay3_cpt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_Mcount_dipslay4_cpt_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_didact_Mcount_dipslay4_cpt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_dipslay4_cpt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal inst_didact_dipslay3_cpt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_didact_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal inst_didact_GND_6_o_BUS_0001_mux_3_OUT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal inst_didact_GND_6_o_BUS_0019_mux_28_OUT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_didact_GND_6_o_BUS_0013_mux_19_OUT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_didact_dipslay6_cpt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal inst_didact_dipslay5_cpt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal inst_didact_vseq : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_didact_se6q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_didact_se5q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_didact_seqqq : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt4hz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2khz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1hz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt2hz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_Result : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_cnt2khz : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_cnt4hz : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_cnt2hz : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_cnt1_5hz : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal inst_didact_inst_diviseur_clk_cnt1hz : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal inst_main_Inst_vga_int_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_main_Inst_vga_int_Result : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT : STD_LOGIC_VECTOR ( 6 downto 4 ); 
begin
  XST_VCC : VCC
    port map (
      P => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q
    );
  XST_GND : GND
    port map (
      G => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi
    );
  inst_dcm1_clkout1_buf : BUFG
    port map (
      O => clk16mhz,
      I => inst_dcm1_clkfx
    );
  inst_dcm1_clkout2_buf : BUFG
    port map (
      O => clk100mhz,
      I => inst_dcm1_clk0
    );
  inst_dcm1_dcm_sp_inst : DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 25,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 10.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"0000",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLK2X180 => NLW_inst_dcm1_dcm_sp_inst_CLK2X180_UNCONNECTED,
      PSCLK => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      CLK2X => NLW_inst_dcm1_dcm_sp_inst_CLK2X_UNCONNECTED,
      CLKFX => inst_dcm1_clkfx,
      CLK180 => NLW_inst_dcm1_dcm_sp_inst_CLK180_UNCONNECTED,
      CLK270 => NLW_inst_dcm1_dcm_sp_inst_CLK270_UNCONNECTED,
      RST => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      PSINCDEC => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      CLKIN => inst_dcm1_clkin1,
      CLKFB => clk100mhz,
      PSEN => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      CLK0 => inst_dcm1_clk0,
      CLKFX180 => NLW_inst_dcm1_dcm_sp_inst_CLKFX180_UNCONNECTED,
      CLKDV => NLW_inst_dcm1_dcm_sp_inst_CLKDV_UNCONNECTED,
      PSDONE => NLW_inst_dcm1_dcm_sp_inst_PSDONE_UNCONNECTED,
      CLK90 => NLW_inst_dcm1_dcm_sp_inst_CLK90_UNCONNECTED,
      LOCKED => NLW_inst_dcm1_dcm_sp_inst_LOCKED_UNCONNECTED,
      DSSEN => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      STATUS(7) => NLW_inst_dcm1_dcm_sp_inst_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_inst_dcm1_dcm_sp_inst_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_inst_dcm1_dcm_sp_inst_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_inst_dcm1_dcm_sp_inst_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_inst_dcm1_dcm_sp_inst_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_inst_dcm1_dcm_sp_inst_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_inst_dcm1_dcm_sp_inst_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_inst_dcm1_dcm_sp_inst_STATUS_0_UNCONNECTED
    );
  inst_dcm1_clkin1_buf : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clkin,
      O => inst_dcm1_clkin1
    );
  inst_didact_Mcount_dipslay5_cpt_xor_2_Q : XORCY
    port map (
      CI => inst_didact_Mcount_dipslay5_cpt_cy(1),
      LI => inst_didact_Mcount_dipslay5_cpt_xor_2_rt_817,
      O => inst_didact_Result_2_2
    );
  inst_didact_Mcount_dipslay5_cpt_xor_1_Q : XORCY
    port map (
      CI => inst_didact_Mcount_dipslay5_cpt_cy(0),
      LI => inst_didact_Mcount_dipslay5_cpt_cy_1_rt_722,
      O => inst_didact_Result_1_2
    );
  inst_didact_Mcount_dipslay5_cpt_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_Mcount_dipslay5_cpt_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_Mcount_dipslay5_cpt_cy_1_rt_722,
      O => inst_didact_Mcount_dipslay5_cpt_cy(1)
    );
  inst_didact_Mcount_dipslay5_cpt_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_Mcount_dipslay5_cpt_lut(0),
      O => inst_didact_Result_0_2
    );
  inst_didact_Mcount_dipslay5_cpt_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcount_dipslay5_cpt_lut(0),
      O => inst_didact_Mcount_dipslay5_cpt_cy(0)
    );
  inst_didact_Mcount_dipslay6_cpt_xor_2_Q : XORCY
    port map (
      CI => inst_didact_Mcount_dipslay6_cpt_cy(1),
      LI => inst_didact_Mcount_dipslay6_cpt_xor_2_rt_818,
      O => inst_didact_Result_2_1
    );
  inst_didact_Mcount_dipslay6_cpt_xor_1_Q : XORCY
    port map (
      CI => inst_didact_Mcount_dipslay6_cpt_cy(0),
      LI => inst_didact_Mcount_dipslay6_cpt_cy_1_rt_723,
      O => inst_didact_Result_1_1
    );
  inst_didact_Mcount_dipslay6_cpt_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_Mcount_dipslay6_cpt_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_Mcount_dipslay6_cpt_cy_1_rt_723,
      O => inst_didact_Mcount_dipslay6_cpt_cy(1)
    );
  inst_didact_Mcount_dipslay6_cpt_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_Mcount_dipslay6_cpt_lut(0),
      O => inst_didact_Result_0_1
    );
  inst_didact_Mcount_dipslay6_cpt_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcount_dipslay6_cpt_lut(0),
      O => inst_didact_Mcount_dipslay6_cpt_cy(0)
    );
  inst_didact_Mcount_dipslay3_cpt_xor_1_Q : XORCY
    port map (
      CI => inst_didact_Mcount_dipslay3_cpt_cy(0),
      LI => inst_didact_Mcount_dipslay3_cpt_xor_1_rt_819,
      O => inst_didact_Result_1_3
    );
  inst_didact_Mcount_dipslay3_cpt_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_Mcount_dipslay3_cpt_lut(0),
      O => inst_didact_Result_0_3
    );
  inst_didact_Mcount_dipslay3_cpt_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcount_dipslay3_cpt_lut(0),
      O => inst_didact_Mcount_dipslay3_cpt_cy(0)
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_5_Q_48,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_4_Q_49,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_5_Q_48
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_3_Q_50,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_4_Q_49
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_2_Q_51,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_3_Q_50
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_1_Q_52,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_2_Q_51
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_0_Q_54,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_1_Q_52
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_0_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_cy_0_Q_54
    );
  inst_didact_Mcount_dipslay4_cpt_xor_2_Q : XORCY
    port map (
      CI => inst_didact_Mcount_dipslay4_cpt_cy(1),
      LI => inst_didact_Mcount_dipslay4_cpt_xor_2_rt_820,
      O => inst_didact_Result(2)
    );
  inst_didact_Mcount_dipslay4_cpt_xor_1_Q : XORCY
    port map (
      CI => inst_didact_Mcount_dipslay4_cpt_cy(0),
      LI => inst_didact_Mcount_dipslay4_cpt_cy_1_rt_724,
      O => inst_didact_Result(1)
    );
  inst_didact_Mcount_dipslay4_cpt_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_Mcount_dipslay4_cpt_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_Mcount_dipslay4_cpt_cy_1_rt_724,
      O => inst_didact_Mcount_dipslay4_cpt_cy(1)
    );
  inst_didact_Mcount_dipslay4_cpt_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_Mcount_dipslay4_cpt_lut(0),
      O => inst_didact_Result(0)
    );
  inst_didact_Mcount_dipslay4_cpt_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcount_dipslay4_cpt_lut(0),
      O => inst_didact_Mcount_dipslay4_cpt_cy(0)
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_5_Q_61,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_4_Q_62,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_5_Q_61
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_3_Q_63,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_4_Q_62
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_2_Q_64,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_3_Q_63
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_1_Q_65,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_2_Q_64
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_0_Q_66,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_1_Q_65
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_lut_0_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_0_Q_66
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_5_Q_69,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_4_Q_70,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_5_Q_69
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_3_Q_71,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_4_Q_70
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_2_Q_72,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_3_Q_71
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_1_Q_73,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_2_Q_72
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_0_Q_74,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_1_Q_73
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lutdi,
      S => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lut_0_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_0_Q_74
    );
  inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_4_Q_78,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q_77
    );
  inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_3_Q_79,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_4_Q_78
    );
  inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_2_Q_80,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_3_Q_79
    );
  inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_1_Q_81,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_2_Q_80
    );
  inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_Q_82,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      O => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_1_Q_81
    );
  inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_rt_725,
      O => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_Q_82
    );
  inst_didact_dipslay4_cpt_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk1_5hz_169,
      CE => inst_didact_n0148_inv,
      CLR => rst_IBUF_5,
      D => inst_didact_Result(2),
      Q => inst_didact_dipslay4_cpt(2)
    );
  inst_didact_dipslay4_cpt_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk1_5hz_169,
      CE => inst_didact_n0148_inv,
      CLR => rst_IBUF_5,
      D => inst_didact_Result(1),
      Q => inst_didact_dipslay4_cpt(1)
    );
  inst_didact_dipslay4_cpt_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk1_5hz_169,
      CE => inst_didact_n0148_inv,
      CLR => rst_IBUF_5,
      D => inst_didact_Result(0),
      Q => inst_didact_dipslay4_cpt(0)
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In,
      Q => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_In_102,
      Q => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In,
      Q => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In,
      Q => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In,
      Q => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In,
      Q => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In,
      Q => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In,
      Q => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108
    );
  inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_In,
      Q => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113
    );
  inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_In,
      Q => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114
    );
  inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In,
      Q => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_In,
      Q => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In,
      Q => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_120
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_In_125,
      Q => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      CLR => rst_IBUF_5,
      D => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In,
      Q => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122
    );
  inst_didact_inst1_debounce_Q1 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => bt1_IBUF_0,
      Q => inst_didact_inst1_debounce_Q1_134
    );
  inst_didact_inst1_debounce_Q2 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst1_debounce_Q1_134,
      Q => inst_didact_inst1_debounce_Q2_135
    );
  inst_didact_inst1_debounce_Q3 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst1_debounce_Q2_135,
      Q => inst_didact_inst1_debounce_Q3_136
    );
  inst_didact_inst2_debounce_Q1 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => bt2_IBUF_1,
      Q => inst_didact_inst2_debounce_Q1_137
    );
  inst_didact_inst2_debounce_Q2 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst2_debounce_Q1_137,
      Q => inst_didact_inst2_debounce_Q2_138
    );
  inst_didact_inst2_debounce_Q3 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst2_debounce_Q2_138,
      Q => inst_didact_inst2_debounce_Q3_139
    );
  inst_didact_inst3_debounce_Q1 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => bt3_IBUF_2,
      Q => inst_didact_inst3_debounce_Q1_140
    );
  inst_didact_inst3_debounce_Q2 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst3_debounce_Q1_140,
      Q => inst_didact_inst3_debounce_Q2_141
    );
  inst_didact_inst3_debounce_Q3 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst3_debounce_Q2_141,
      Q => inst_didact_inst3_debounce_Q3_142
    );
  inst_didact_inst4_debounce_Q1 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => bt4_IBUF_3,
      Q => inst_didact_inst4_debounce_Q1_143
    );
  inst_didact_inst4_debounce_Q2 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst4_debounce_Q1_143,
      Q => inst_didact_inst4_debounce_Q2_144
    );
  inst_didact_inst4_debounce_Q3 : FD
    port map (
      C => inst_didact_inst_diviseur_clk_clk2khz_166,
      D => inst_didact_inst4_debounce_Q2_144,
      Q => inst_didact_inst4_debounce_Q3_145
    );
  inst_didact_se4q_3 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk1_5hz_169,
      CE => inst_didact_enable_del3,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0007_mux_10_OUT_3_Q,
      Q => inst_didact_se4q_3_Q
    );
  inst_didact_se4q_1 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk1_5hz_169,
      CE => inst_didact_enable_del3,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0007_mux_10_OUT_1_Q,
      Q => inst_didact_se4q_1_Q
    );
  inst_didact_se4q_0 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk1_5hz_169,
      CE => inst_didact_enable_del3,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0007_mux_10_OUT_0_Q,
      Q => inst_didact_se4q_0_Q
    );
  inst_didact_se6q_3 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del5,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(3),
      Q => inst_didact_se6q(3)
    );
  inst_didact_se6q_2 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del5,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(2),
      Q => inst_didact_se6q(2)
    );
  inst_didact_se6q_1 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del5,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(1),
      Q => inst_didact_se6q(1)
    );
  inst_didact_se6q_0 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del5,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(0),
      Q => inst_didact_se6q(0)
    );
  inst_didact_se5q_3 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del4,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(3),
      Q => inst_didact_se5q(3)
    );
  inst_didact_se5q_2 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del4,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(2),
      Q => inst_didact_se5q(2)
    );
  inst_didact_se5q_1 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del4,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(1),
      Q => inst_didact_se5q(1)
    );
  inst_didact_se5q_0 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CE => inst_didact_enable_del4,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(0),
      Q => inst_didact_se5q(0)
    );
  inst_didact_seqqq_2 : FDC
    port map (
      C => inst_didact_inst_diviseur_clk_clk1hz_170,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0001_mux_3_OUT(2),
      Q => inst_didact_seqqq(2)
    );
  inst_didact_seqqq_1 : FDC
    port map (
      C => inst_didact_inst_diviseur_clk_clk1hz_170,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0001_mux_3_OUT(1),
      Q => inst_didact_seqqq(1)
    );
  inst_didact_seqqq_0 : FDC
    port map (
      C => inst_didact_inst_diviseur_clk_clk1hz_170,
      CLR => rst_IBUF_5,
      D => inst_didact_GND_6_o_BUS_0001_mux_3_OUT(0),
      Q => inst_didact_seqqq(0)
    );
  inst_didact_vseq_3 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk4hz_167,
      CE => inst_didact_enable_del6,
      CLR => rst_IBUF_5,
      D => inst_didact_vseq(1),
      Q => inst_didact_vseq(3)
    );
  inst_didact_vseq_2 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk4hz_167,
      CE => inst_didact_enable_del6,
      CLR => rst_IBUF_5,
      D => inst_didact_vseq(0),
      Q => inst_didact_vseq(2)
    );
  inst_didact_vseq_1 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk4hz_167,
      CE => inst_didact_enable_del6,
      CLR => rst_IBUF_5,
      D => inst_didact_vseq(2),
      Q => inst_didact_vseq(1)
    );
  inst_didact_vseq_0 : FDCE
    port map (
      C => inst_didact_inst_diviseur_clk_clk4hz_167,
      CE => inst_didact_enable_del6,
      CLR => rst_IBUF_5,
      D => inst_didact_inst_diviseur_clk_clk2hz_168,
      Q => inst_didact_vseq(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_20_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(19),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_20_rt_821,
      O => inst_didact_inst_diviseur_clk_Result_20_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_19_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(18),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_19_rt_726,
      O => inst_didact_inst_diviseur_clk_Result_19_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_19_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(18),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_19_rt_726,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(19)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_18_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(17),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_18_rt_727,
      O => inst_didact_inst_diviseur_clk_Result_18_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_18_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(17),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_18_rt_727,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(18)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_17_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(16),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_17_rt_728,
      O => inst_didact_inst_diviseur_clk_Result_17_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_17_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(16),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_17_rt_728,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(17)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_16_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(15),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_16_rt_729,
      O => inst_didact_inst_diviseur_clk_Result_16_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_16_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(15),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_16_rt_729,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(16)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_15_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(14),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_15_rt_730,
      O => inst_didact_inst_diviseur_clk_Result_15_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_15_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(14),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_15_rt_730,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(15)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_14_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(13),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_14_rt_731,
      O => inst_didact_inst_diviseur_clk_Result_14_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_14_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(13),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_14_rt_731,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(14)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_13_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(12),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_13_rt_732,
      O => inst_didact_inst_diviseur_clk_Result_13_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_13_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(12),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_13_rt_732,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(13)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_12_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(11),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_12_rt_733,
      O => inst_didact_inst_diviseur_clk_Result_12_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_12_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(11),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_12_rt_733,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(12)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_11_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(10),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_11_rt_734,
      O => inst_didact_inst_diviseur_clk_Result_11_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_11_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(10),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_11_rt_734,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(11)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_10_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(9),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_10_rt_735,
      O => inst_didact_inst_diviseur_clk_Result_10_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_10_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(9),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_10_rt_735,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(10)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_9_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(8),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_9_rt_736,
      O => inst_didact_inst_diviseur_clk_Result_9_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_9_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(8),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_9_rt_736,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(9)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_8_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(7),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_8_rt_737,
      O => inst_didact_inst_diviseur_clk_Result_8_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_8_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(7),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_8_rt_737,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(8)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_7_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(6),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_7_rt_738,
      O => inst_didact_inst_diviseur_clk_Result_7_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_7_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(6),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_7_rt_738,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(7)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_6_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(5),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_6_rt_739,
      O => inst_didact_inst_diviseur_clk_Result_6_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(5),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_6_rt_739,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(6)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_5_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(4),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_5_rt_740,
      O => inst_didact_inst_diviseur_clk_Result_5_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(4),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_5_rt_740,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(5)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_4_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(3),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_4_rt_741,
      O => inst_didact_inst_diviseur_clk_Result_4_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(3),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_4_rt_741,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(4)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_3_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(2),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_3_rt_742,
      O => inst_didact_inst_diviseur_clk_Result_3_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(2),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_3_rt_742,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(3)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_2_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(1),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_2_rt_743,
      O => inst_didact_inst_diviseur_clk_Result_2_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(1),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_2_rt_743,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(2)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_1_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(0),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_1_rt_744,
      O => inst_didact_inst_diviseur_clk_Result_1_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_1_rt_744,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(1)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Result_0_4
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_11_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(10),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_822,
      O => inst_didact_inst_diviseur_clk_Result_11_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_10_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(9),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_745,
      O => inst_didact_inst_diviseur_clk_Result_10_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_10_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(9),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_745,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(10)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_9_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(8),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_746,
      O => inst_didact_inst_diviseur_clk_Result_9_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_9_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(8),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_746,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(9)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_8_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(7),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_747,
      O => inst_didact_inst_diviseur_clk_Result_8_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_8_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(7),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_747,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(8)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_7_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(6),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_748,
      O => inst_didact_inst_diviseur_clk_Result_7_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_7_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(6),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_748,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(7)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_6_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(5),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_749,
      O => inst_didact_inst_diviseur_clk_Result_6_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(5),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_749,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(6)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_5_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(4),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_750,
      O => inst_didact_inst_diviseur_clk_Result_5_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(4),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_750,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(5)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_4_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(3),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_751,
      O => inst_didact_inst_diviseur_clk_Result_4_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(3),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_751,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(4)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_3_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(2),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_752,
      O => inst_didact_inst_diviseur_clk_Result_3_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(2),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_752,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(3)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_2_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(1),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_753,
      O => inst_didact_inst_diviseur_clk_Result_2_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(1),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_753,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(2)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_1_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(0),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_754,
      O => inst_didact_inst_diviseur_clk_Result_1_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_754,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(1)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_lut(0),
      O => inst_didact_inst_diviseur_clk_Result_0_3
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_lut(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_22_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(21),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_22_rt_823,
      O => inst_didact_inst_diviseur_clk_Result(22)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_21_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(20),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_21_rt_755,
      O => inst_didact_inst_diviseur_clk_Result_21_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_21_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(20),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_21_rt_755,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(21)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_20_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(19),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_20_rt_756,
      O => inst_didact_inst_diviseur_clk_Result_20_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_20_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(19),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_20_rt_756,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(20)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_19_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(18),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_19_rt_757,
      O => inst_didact_inst_diviseur_clk_Result_19_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_19_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(18),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_19_rt_757,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(19)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_18_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(17),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_18_rt_758,
      O => inst_didact_inst_diviseur_clk_Result_18_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_18_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(17),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_18_rt_758,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(18)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_17_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(16),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_17_rt_759,
      O => inst_didact_inst_diviseur_clk_Result_17_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_17_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(16),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_17_rt_759,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(17)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_16_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(15),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_16_rt_760,
      O => inst_didact_inst_diviseur_clk_Result_16_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_16_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(15),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_16_rt_760,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(16)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_15_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(14),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_15_rt_761,
      O => inst_didact_inst_diviseur_clk_Result_15_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_15_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(14),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_15_rt_761,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(15)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_14_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(13),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_14_rt_762,
      O => inst_didact_inst_diviseur_clk_Result_14_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_14_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(13),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_14_rt_762,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(14)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_13_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(12),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_13_rt_763,
      O => inst_didact_inst_diviseur_clk_Result_13_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_13_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(12),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_13_rt_763,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(13)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_12_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(11),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_12_rt_764,
      O => inst_didact_inst_diviseur_clk_Result_12_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_12_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(11),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_12_rt_764,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(12)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_11_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(10),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_11_rt_765,
      O => inst_didact_inst_diviseur_clk_Result_11_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_11_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(10),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_11_rt_765,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(11)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_10_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(9),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_10_rt_766,
      O => inst_didact_inst_diviseur_clk_Result_10_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_10_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(9),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_10_rt_766,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(10)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_9_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(8),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_9_rt_767,
      O => inst_didact_inst_diviseur_clk_Result_9_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_9_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(8),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_9_rt_767,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(9)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_8_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(7),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_8_rt_768,
      O => inst_didact_inst_diviseur_clk_Result_8_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_8_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(7),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_8_rt_768,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(8)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_7_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(6),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_7_rt_769,
      O => inst_didact_inst_diviseur_clk_Result_7_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_7_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(6),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_7_rt_769,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(7)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_6_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(5),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_6_rt_770,
      O => inst_didact_inst_diviseur_clk_Result_6_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(5),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_6_rt_770,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(6)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_5_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(4),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_5_rt_771,
      O => inst_didact_inst_diviseur_clk_Result_5_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(4),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_5_rt_771,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(5)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_4_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(3),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_4_rt_772,
      O => inst_didact_inst_diviseur_clk_Result_4_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(3),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_4_rt_772,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(4)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_3_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(2),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_3_rt_773,
      O => inst_didact_inst_diviseur_clk_Result_3_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(2),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_3_rt_773,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(3)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_2_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(1),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_2_rt_774,
      O => inst_didact_inst_diviseur_clk_Result_2_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(1),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_2_rt_774,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(2)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_1_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(0),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_1_rt_775,
      O => inst_didact_inst_diviseur_clk_Result_1_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_1_rt_775,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(1)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Result_0_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_21_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(20),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_824,
      O => inst_didact_inst_diviseur_clk_Result(21)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_20_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(19),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_776,
      O => inst_didact_inst_diviseur_clk_Result(20)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_20_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(19),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_776,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(20)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_19_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(18),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_777,
      O => inst_didact_inst_diviseur_clk_Result(19)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_19_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(18),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_777,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(19)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_18_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(17),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_778,
      O => inst_didact_inst_diviseur_clk_Result(18)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_18_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(17),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_778,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(18)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_17_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(16),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_779,
      O => inst_didact_inst_diviseur_clk_Result(17)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_17_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(16),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_779,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(17)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_16_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(15),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_780,
      O => inst_didact_inst_diviseur_clk_Result(16)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_16_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(15),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_780,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(16)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_15_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(14),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_781,
      O => inst_didact_inst_diviseur_clk_Result(15)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_15_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(14),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_781,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(15)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_14_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(13),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_782,
      O => inst_didact_inst_diviseur_clk_Result(14)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_14_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(13),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_782,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(14)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_13_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(12),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_783,
      O => inst_didact_inst_diviseur_clk_Result(13)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_13_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(12),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_783,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(13)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_12_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(11),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_784,
      O => inst_didact_inst_diviseur_clk_Result(12)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_12_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(11),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_784,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(12)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_11_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(10),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_785,
      O => inst_didact_inst_diviseur_clk_Result(11)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_11_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(10),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_785,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(11)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_10_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(9),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_786,
      O => inst_didact_inst_diviseur_clk_Result(10)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_10_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(9),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_786,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(10)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_9_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(8),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_787,
      O => inst_didact_inst_diviseur_clk_Result(9)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_9_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(8),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_787,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(9)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_8_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(7),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_788,
      O => inst_didact_inst_diviseur_clk_Result(8)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_8_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(7),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_788,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(8)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_7_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(6),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_789,
      O => inst_didact_inst_diviseur_clk_Result(7)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_7_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(6),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_789,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(7)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_6_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(5),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_790,
      O => inst_didact_inst_diviseur_clk_Result(6)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(5),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_790,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(6)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_5_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(4),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_791,
      O => inst_didact_inst_diviseur_clk_Result(5)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(4),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_791,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(5)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_4_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(3),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_792,
      O => inst_didact_inst_diviseur_clk_Result(4)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(3),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_792,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(4)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_3_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(2),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_793,
      O => inst_didact_inst_diviseur_clk_Result(3)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(2),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_793,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(3)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_2_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(1),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_794,
      O => inst_didact_inst_diviseur_clk_Result(2)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(1),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_794,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(2)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_1_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(0),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_795,
      O => inst_didact_inst_diviseur_clk_Result(1)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_795,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(1)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Result(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_22_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(21),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_22_rt_825,
      O => inst_didact_inst_diviseur_clk_Result_22_1
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_21_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(20),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_21_rt_796,
      O => inst_didact_inst_diviseur_clk_Result_21_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_21_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(20),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_21_rt_796,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(21)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_20_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(19),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_20_rt_797,
      O => inst_didact_inst_diviseur_clk_Result_20_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_20_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(19),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_20_rt_797,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(20)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_19_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(18),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_19_rt_798,
      O => inst_didact_inst_diviseur_clk_Result_19_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_19_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(18),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_19_rt_798,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(19)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_18_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(17),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_18_rt_799,
      O => inst_didact_inst_diviseur_clk_Result_18_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_18_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(17),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_18_rt_799,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(18)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_17_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(16),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_17_rt_800,
      O => inst_didact_inst_diviseur_clk_Result_17_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_17_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(16),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_17_rt_800,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(17)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_16_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(15),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_16_rt_801,
      O => inst_didact_inst_diviseur_clk_Result_16_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_16_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(15),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_16_rt_801,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(16)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_15_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(14),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_15_rt_802,
      O => inst_didact_inst_diviseur_clk_Result_15_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_15_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(14),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_15_rt_802,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(15)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_14_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(13),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_14_rt_803,
      O => inst_didact_inst_diviseur_clk_Result_14_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_14_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(13),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_14_rt_803,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(14)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_13_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(12),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_13_rt_804,
      O => inst_didact_inst_diviseur_clk_Result_13_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_13_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(12),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_13_rt_804,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(13)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_12_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(11),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_12_rt_805,
      O => inst_didact_inst_diviseur_clk_Result_12_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_12_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(11),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_12_rt_805,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(12)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_11_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(10),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_11_rt_806,
      O => inst_didact_inst_diviseur_clk_Result_11_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_11_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(10),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_11_rt_806,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(11)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_10_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(9),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_10_rt_807,
      O => inst_didact_inst_diviseur_clk_Result_10_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_10_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(9),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_10_rt_807,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(10)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_9_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(8),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_9_rt_808,
      O => inst_didact_inst_diviseur_clk_Result_9_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_9_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(8),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_9_rt_808,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(9)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_8_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(7),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_8_rt_809,
      O => inst_didact_inst_diviseur_clk_Result_8_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_8_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(7),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_8_rt_809,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(8)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_7_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(6),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_7_rt_810,
      O => inst_didact_inst_diviseur_clk_Result_7_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_7_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(6),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_7_rt_810,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(7)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_6_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(5),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_6_rt_811,
      O => inst_didact_inst_diviseur_clk_Result_6_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_6_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(5),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_6_rt_811,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(6)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_5_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(4),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_5_rt_812,
      O => inst_didact_inst_diviseur_clk_Result_5_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_5_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(4),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_5_rt_812,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(5)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_4_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(3),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_4_rt_813,
      O => inst_didact_inst_diviseur_clk_Result_4_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_4_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(3),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_4_rt_813,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(4)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_3_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(2),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_3_rt_814,
      O => inst_didact_inst_diviseur_clk_Result_3_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_3_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(2),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_3_rt_814,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(3)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_2_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(1),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_2_rt_815,
      O => inst_didact_inst_diviseur_clk_Result_2_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_2_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(1),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_2_rt_815,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(2)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_1_Q : XORCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(0),
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_1_rt_816,
      O => inst_didact_inst_diviseur_clk_Result_1_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_1_Q : MUXCY
    port map (
      CI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(0),
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_1_rt_816,
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(1)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_0_Q : XORCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      LI => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Result_0_2
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_0_Q : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_1_Q,
      S => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_lut(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy(0)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_20_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(20)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_19_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(19)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_18_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(18)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_17_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(17)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_16_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(16)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_15_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(15)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_14_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(14)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_13_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(13)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_12_3,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(12)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_11_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(11)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_10_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(10)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_9_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(9)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_8_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(8)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_7_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(7)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_6_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(6)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_5_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(5)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_4_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(4)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_3_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(3)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_2_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(2)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_1_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(1)
    );
  inst_didact_inst_diviseur_clk_cnt4hz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_0_4,
      R => inst_didact_inst_diviseur_clk_n0018_inv,
      Q => inst_didact_inst_diviseur_clk_cnt4hz(0)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_11_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(11)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_10_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(10)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_9_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(9)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_8_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(8)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_7_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(7)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_6_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(6)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_5_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(5)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_4_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(4)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_3_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(3)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_2_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(2)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_1_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(1)
    );
  inst_didact_inst_diviseur_clk_cnt2khz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_0_3,
      R => inst_didact_inst_diviseur_clk_n0030_inv_408,
      Q => inst_didact_inst_diviseur_clk_cnt2khz(0)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_22_1,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(22)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_21_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(21)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_20_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(20)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_19_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(19)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_18_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(18)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_17_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(17)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_16_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(16)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_15_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(15)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_14_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(14)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_13_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(13)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_12_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(12)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_11_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(11)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_10_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(10)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_9_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(9)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_8_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(8)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_7_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(7)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_6_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(6)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_5_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(5)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_4_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(4)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_3_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(3)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_2_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(2)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_1_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(1)
    );
  inst_didact_inst_diviseur_clk_cnt1_5hz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_0_2,
      R => inst_didact_inst_diviseur_clk_n0006_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1_5hz(0)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(22),
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(22)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_21_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(21)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_20_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(20)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_19_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(19)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_18_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(18)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_17_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(17)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_16_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(16)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_15_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(15)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_14_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(14)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_13_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(13)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_12_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(12)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_11_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(11)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_10_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(10)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_9_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(9)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_8_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(8)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_7_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(7)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_6_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(6)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_5_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(5)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_4_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(4)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_3_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(3)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_2_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(2)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_1_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(1)
    );
  inst_didact_inst_diviseur_clk_cnt1hz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result_0_1,
      R => inst_didact_inst_diviseur_clk_n0000_inv,
      Q => inst_didact_inst_diviseur_clk_cnt1hz(0)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(21),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(21)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(20),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(20)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(19),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(19)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(18),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(18)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(17),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(17)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(16),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(16)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(15),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(15)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(14),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(14)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(13),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(13)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(12),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(12)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(11),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(11)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(10),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(10)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(9),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(9)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(8),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(8)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(7),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(7)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(6),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(6)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(5),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(5)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(4),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(4)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(3),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(3)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(2),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(2)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(1),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(1)
    );
  inst_didact_inst_diviseur_clk_cnt2hz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_Result(0),
      R => inst_didact_inst_diviseur_clk_n0012_inv,
      Q => inst_didact_inst_diviseur_clk_cnt2hz(0)
    );
  inst_didact_inst_diviseur_clk_clk4hz : FD
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div4hz_temp_415,
      Q => inst_didact_inst_diviseur_clk_clk4hz_167
    );
  inst_didact_inst_diviseur_clk_clk2khz : FD
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div2khz_temp_414,
      Q => inst_didact_inst_diviseur_clk_clk2khz_166
    );
  inst_didact_inst_diviseur_clk_clk1_5hz : FD
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div1_5hz_temp_417,
      Q => inst_didact_inst_diviseur_clk_clk1_5hz_169
    );
  inst_didact_inst_diviseur_clk_clk1hz : FD
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div1hz_temp_413,
      Q => inst_didact_inst_diviseur_clk_clk1hz_170
    );
  inst_didact_inst_diviseur_clk_clk2hz : FD
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div2hz_temp_416,
      Q => inst_didact_inst_diviseur_clk_clk2hz_168
    );
  inst_main_Inst_vga_int_count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_Result(1),
      Q => inst_main_Inst_vga_int_count(1)
    );
  inst_main_Inst_vga_int_count_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_Result(0),
      Q => inst_main_Inst_vga_int_count(0)
    );
  inst_main_Inst_vga_int_v_state_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_v_state_FSM_FFd1_In_533,
      Q => inst_main_Inst_vga_int_v_state_FSM_FFd1_561
    );
  inst_main_Inst_vga_int_v_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_v_state_FSM_FFd2_In_534,
      Q => inst_main_Inst_vga_int_v_state_FSM_FFd2_532
    );
  inst_main_Inst_vga_int_h_state_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_h_state_FSM_FFd1_In,
      Q => inst_main_Inst_vga_int_h_state_FSM_FFd1_562
    );
  inst_main_Inst_vga_int_h_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_h_state_FSM_FFd2_In,
      Q => inst_main_Inst_vga_int_h_state_FSM_FFd2_535
    );
  inst_main_Inst_vga_int_y_count_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_9_Q,
      Q => inst_main_Inst_vga_int_y_count(9)
    );
  inst_main_Inst_vga_int_y_count_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_8_Q,
      Q => inst_main_Inst_vga_int_y_count(8)
    );
  inst_main_Inst_vga_int_y_count_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_7_Q,
      Q => inst_main_Inst_vga_int_y_count(7)
    );
  inst_main_Inst_vga_int_y_count_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_6_Q,
      Q => inst_main_Inst_vga_int_y_count(6)
    );
  inst_main_Inst_vga_int_y_count_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_5_Q,
      Q => inst_main_Inst_vga_int_y_count(5)
    );
  inst_main_Inst_vga_int_y_count_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_4_Q,
      Q => inst_main_Inst_vga_int_y_count(4)
    );
  inst_main_Inst_vga_int_y_count_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_3_Q,
      Q => inst_main_Inst_vga_int_y_count(3)
    );
  inst_main_Inst_vga_int_y_count_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_2_Q,
      Q => inst_main_Inst_vga_int_y_count(2)
    );
  inst_main_Inst_vga_int_y_count_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_1_Q,
      Q => inst_main_Inst_vga_int_y_count(1)
    );
  inst_main_Inst_vga_int_y_count_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_line_en_564,
      D => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_0_Q,
      Q => inst_main_Inst_vga_int_y_count(0)
    );
  inst_main_Inst_vga_int_x_count_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_9_Q,
      Q => inst_main_Inst_vga_int_x_count(9)
    );
  inst_main_Inst_vga_int_x_count_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_8_Q,
      Q => inst_main_Inst_vga_int_x_count(8)
    );
  inst_main_Inst_vga_int_x_count_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_7_Q,
      Q => inst_main_Inst_vga_int_x_count(7)
    );
  inst_main_Inst_vga_int_x_count_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_6_Q,
      Q => inst_main_Inst_vga_int_x_count(6)
    );
  inst_main_Inst_vga_int_x_count_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_5_Q,
      Q => inst_main_Inst_vga_int_x_count(5)
    );
  inst_main_Inst_vga_int_x_count_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_4_Q,
      Q => inst_main_Inst_vga_int_x_count(4)
    );
  inst_main_Inst_vga_int_x_count_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_3_Q,
      Q => inst_main_Inst_vga_int_x_count(3)
    );
  inst_main_Inst_vga_int_x_count_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_2_Q,
      Q => inst_main_Inst_vga_int_x_count(2)
    );
  inst_main_Inst_vga_int_x_count_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_1_Q,
      Q => inst_main_Inst_vga_int_x_count(1)
    );
  inst_main_Inst_vga_int_x_count_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_0_Q,
      Q => inst_main_Inst_vga_int_x_count(0)
    );
  inst_didact_ADDERTREE_INTERNAL_Madd32 : LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
    port map (
      I0 => inst_didact_se6q(0),
      I1 => inst_didact_vseq(0),
      I2 => inst_didact_se4q_0_Q,
      I3 => inst_didact_se5q(0),
      I4 => inst_didact_seqqq(0),
      O => inst_didact_ADDERTREE_INTERNAL_Madd3
    );
  inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_11 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => inst_didact_ADDERTREE_INTERNAL_Madd1_lut_0_1,
      I1 => inst_didact_ADDERTREE_INTERNAL_Madd3,
      I2 => inst_didact_se6q(1),
      I3 => inst_didact_vseq(1),
      O => seq(1)
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In11 : LUT5
    generic map(
      INIT => X"A8FFFFFF"
    )
    port map (
      I0 => inst_didact_b1,
      I1 => inst_didact_debout2,
      I2 => inst_didact_debout4,
      I3 => inst_didact_gs,
      I4 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In1_127
    );
  inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"FAAAFAAAFAAA7AAA"
    )
    port map (
      I0 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I1 => inst_didact_b0,
      I2 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115,
      I3 => inst_didact_gs,
      I4 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      I5 => inst_didact_b1,
      O => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_In
    );
  inst_didact_ADDERTREE_INTERNAL_Madd311 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => inst_didact_se6q(1),
      I1 => inst_didact_vseq(1),
      I2 => inst_didact_ADDERTREE_INTERNAL_Madd1_lut_0_1,
      O => inst_didact_ADDERTREE_INTERNAL_Madd31
    );
  inst_didact_ADDERTREE_INTERNAL_Madd111 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => inst_didact_se5q(1),
      I1 => inst_didact_seqqq(1),
      I2 => inst_didact_se4q_1_Q,
      O => inst_didact_ADDERTREE_INTERNAL_Madd11
    );
  inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"FFFFFFFF88888880"
    )
    port map (
      I0 => inst_didact_gs,
      I1 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115,
      I2 => inst_didact_b0,
      I3 => inst_didact_b1,
      I4 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I5 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      O => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_In
    );
  inst_didact_Inst_msa6_hdl_etatpres_enable_del1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      O => inst_didact_enable_del6
    );
  inst_didact_Inst_msa5_hdl_etatpres_enable_del1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      O => inst_didact_enable_del5
    );
  inst_didact_Inst_msa3_hdl_etatpres_enable_del1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115,
      I1 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I2 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      O => inst_didact_enable_del3
    );
  inst_didact_Inst_msa4_hdl_etatpres_enable_del1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      O => inst_didact_enable_del4
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In1_127,
      I2 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_120,
      I3 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121,
      I4 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I5 => inst_didact_gs,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_In
    );
  inst_didact_inst2_debounce_sig_out1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_inst2_debounce_Q3_139,
      I1 => inst_didact_inst2_debounce_Q2_138,
      I2 => inst_didact_inst2_debounce_Q1_137,
      O => inst_didact_debout2
    );
  inst_didact_inst4_debounce_sig_out1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_inst4_debounce_Q3_145,
      I1 => inst_didact_inst4_debounce_Q2_144,
      I2 => inst_didact_inst4_debounce_Q1_143,
      O => inst_didact_debout4
    );
  inst_didact_gs1 : LUT5
    generic map(
      INIT => X"EEEEFEEE"
    )
    port map (
      I0 => inst_didact_b1,
      I1 => inst_didact_debout2,
      I2 => inst_didact_inst1_debounce_Q1_134,
      I3 => inst_didact_inst1_debounce_Q2_135,
      I4 => inst_didact_inst1_debounce_Q3_136,
      O => inst_didact_gs
    );
  inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_121 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count_0_1_869,
      I1 => inst_main_Inst_vga_int_x_count_4_1_873,
      I2 => inst_main_Inst_vga_int_x_count_2_1_872,
      I3 => inst_main_Inst_vga_int_x_count_1_1_870,
      I4 => inst_main_Inst_vga_int_x_count_5_1_875,
      I5 => inst_main_Inst_vga_int_x_count_3_1_876,
      O => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_12
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT51 : LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(4),
      I1 => inst_main_Inst_vga_int_x_count(3),
      I2 => inst_main_Inst_vga_int_x_count(2),
      I3 => inst_main_Inst_vga_int_x_count(1),
      I4 => inst_main_Inst_vga_int_x_count(0),
      I5 => inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_4_Q
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT42 : LUT5
    generic map(
      INIT => X"6AAA0000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(0),
      I4 => inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_3_Q
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT61 : LUT6
    generic map(
      INIT => X"F0F8303800000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(4),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT42,
      I4 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      I5 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_5_Q
    );
  inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_9_121 : LUT6
    generic map(
      INIT => X"0000000040000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_vga_int_y_count(7),
      I2 => inst_main_Inst_vga_int_y_count(8),
      I3 => inst_main_Inst_vga_int_y_count(6),
      I4 => inst_main_Inst_vga_int_y_count(4),
      I5 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      O => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_9_12
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT81 : LUT6
    generic map(
      INIT => X"AAAA6AAA00000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(7),
      I1 => inst_main_Inst_vga_int_y_count(6),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_vga_int_y_count(4),
      I4 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      I5 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_7_Q
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT91 : LUT6
    generic map(
      INIT => X"EA6AAA2A00000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(8),
      I1 => inst_main_Inst_vga_int_x_count(7),
      I2 => inst_main_Inst_vga_int_x_count(6),
      I3 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_11,
      I4 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_12,
      I5 => inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_8_Q
    );
  inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_111 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(1),
      I4 => inst_main_Inst_vga_int_x_count(4),
      I5 => inst_main_Inst_vga_int_x_count(5),
      O => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_11
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT71 : LUT5
    generic map(
      INIT => X"AA6A0000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(6),
      I1 => inst_main_Inst_vga_int_y_count(4),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      I4 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_6_Q
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT411 : LUT6
    generic map(
      INIT => X"42665377CAEEDBFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I2 => inst_main_Inst_vga_int_x_count(5),
      I3 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_2,
      I4 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o,
      I5 => inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o,
      O => inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT21 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(1),
      I1 => inst_main_Inst_vga_int_y_count(0),
      I2 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_1_Q
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT11 : LUT4
    generic map(
      INIT => X"0B0F"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I1 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      I2 => inst_main_Inst_vga_int_y_count(0),
      I3 => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_31_o,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_0_Q
    );
  inst_main_Inst_vga_int_h_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"5C4CDCCC"
    )
    port map (
      I0 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I2 => inst_main_Inst_vga_int_en_25_565,
      I3 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o,
      I4 => inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o,
      O => inst_main_Inst_vga_int_h_state_FSM_FFd2_In
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT81 : LUT5
    generic map(
      INIT => X"E6A20000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(7),
      I1 => inst_main_Inst_vga_int_x_count(6),
      I2 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_11,
      I3 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_12,
      I4 => inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_7_Q
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT51 : LUT5
    generic map(
      INIT => X"CE020000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(4),
      I2 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT42,
      I3 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      I4 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_4_Q
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT31 : LUT4
    generic map(
      INIT => X"6C00"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(1),
      I1 => inst_main_Inst_vga_int_y_count(2),
      I2 => inst_main_Inst_vga_int_y_count(0),
      I3 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_2_Q
    );
  inst_main_Inst_vga_int_h_state_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      I0 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I2 => inst_main_Inst_vga_int_x_count(5),
      I3 => inst_main_Inst_vga_int_en_25_565,
      I4 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_2,
      O => inst_main_Inst_vga_int_h_state_FSM_FFd1_In
    );
  inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o_9_1 : LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(7),
      I1 => inst_main_Inst_vga_int_x_count(8),
      I2 => inst_main_Inst_vga_int_x_count(9),
      I3 => inst_main_Inst_vga_int_x_count(6),
      I4 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_12,
      O => inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT421 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(2),
      I1 => inst_main_Inst_vga_int_y_count(0),
      I2 => inst_main_Inst_vga_int_y_count(1),
      O => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT42
    );
  inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_31_o_9_1 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(0),
      I1 => inst_main_Inst_vga_int_y_count(2),
      I2 => inst_main_Inst_vga_int_y_count(3),
      I3 => inst_main_Inst_vga_int_y_count(4),
      I4 => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_27_o_9_1,
      O => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_31_o
    );
  inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_27_o_9_11 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_vga_int_y_count(7),
      I2 => inst_main_Inst_vga_int_y_count(8),
      I3 => inst_main_Inst_vga_int_y_count(6),
      I4 => inst_main_Inst_vga_int_y_count(1),
      I5 => inst_main_Inst_vga_int_y_count(5),
      O => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_27_o_9_1
    );
  inst_main_Inst_vga_int_VIDEO_EN1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      I1 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I2 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I3 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      O => inst_main_video_en
    );
  inst_main_Inst_vga_int_line_clk1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      O => HS_OBUF_12
    );
  inst_main_Inst_vga_int_VS1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I1 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      O => VS_OBUF_13
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT21 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(1),
      I1 => inst_main_Inst_vga_int_x_count(0),
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_1_Q
    );
  inst_main_Inst_vga_int_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_main_Inst_vga_int_count(1),
      I1 => inst_main_Inst_vga_int_count(0),
      O => inst_main_Inst_vga_int_Result(1)
    );
  inst_main_Inst_set_rgb_VIDEO_EN_PWR_18_o_AND_43_o11 : LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable13_587,
      I1 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o,
      I2 => inst_main_Inst_set_rgb_iX_9_PWR_18_o_LessThan_11_o,
      I3 => inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o,
      I4 => inst_main_Inst_set_rgb_pixel_blue,
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable17_576,
      O => inst_main_Inst_set_rgb_VIDEO_EN_PWR_18_o_AND_43_o1
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable15141 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(4),
      I2 => inst_main_Inst_vga_int_x_count(6),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1514_566
    );
  inst_main_Inst_set_rgb_SF19311 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(2),
      I2 => inst_main_Inst_vga_int_y_count(1),
      O => inst_main_Inst_set_rgb_SF1931
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable14311 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(5),
      I1 => inst_main_Inst_vga_int_x_count(4),
      I2 => inst_main_Inst_vga_int_x_count(3),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1431
    );
  inst_main_Inst_set_rgb_SF1611 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(0),
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_vga_int_y_count(2),
      O => inst_main_Inst_set_rgb_SF161
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable151231 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_vga_int_x_count(3),
      I2 => inst_main_Inst_vga_int_x_count(6),
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o34
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1511121 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(2),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable151112
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o1111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(4),
      I1 => inst_main_Inst_vga_int_x_count(5),
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o111
    );
  inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o11 : LUT5
    generic map(
      INIT => X"FFFFA888"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(8),
      I1 => inst_main_Inst_vga_int_x_count(7),
      I2 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o11_590,
      I3 => inst_main_Inst_vga_int_x_count(6),
      I4 => inst_main_Inst_vga_int_x_count(9),
      O => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o351 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(4),
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o35
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable14411 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(5),
      I1 => inst_main_Inst_vga_int_y_count(4),
      I2 => inst_main_Inst_vga_int_y_count(7),
      I3 => inst_main_Inst_vga_int_y_count(6),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1441
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1421 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(2),
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(3),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable142_580
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o561 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(2),
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(5),
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o56
    );
  inst_main_Inst_set_rgb_GND_23_o_iY_9_LessThan_27_o111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(2),
      I1 => inst_main_Inst_vga_int_y_count(4),
      I2 => inst_main_Inst_vga_int_y_count(3),
      O => inst_main_Inst_set_rgb_GND_23_o_iY_9_LessThan_27_o11
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1411 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(5),
      I2 => inst_main_Inst_vga_int_y_count(4),
      I3 => inst_main_Inst_vga_int_y_count(2),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable141_583
    );
  inst_main_Inst_set_rgb_Mmux_pixel_red11 : LUT5
    generic map(
      INIT => X"FFFF0080"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_8_o,
      I1 => inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable11_593,
      I3 => inst_main_Inst_vga_int_y_count(9),
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable15,
      O => inst_main_Inst_set_rgb_pixel_red
    );
  inst_main_Inst_set_rgb_Mmux_pixel_blue11 : LUT5
    generic map(
      INIT => X"FFFF8000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_8_o,
      I1 => inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o,
      I2 => inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable13_587,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable14,
      O => inst_main_Inst_set_rgb_pixel_blue
    );
  inst_main_Inst_set_rgb_pixel_green1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o,
      I1 => inst_main_Inst_set_rgb_iX_9_PWR_18_o_LessThan_11_o,
      I2 => inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable13_587,
      O => inst_main_Inst_set_rgb_pixel_green
    );
  inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_8_o11 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(7),
      I1 => inst_main_Inst_vga_int_x_count(8),
      I2 => inst_main_Inst_vga_int_x_count(9),
      I3 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o11_590,
      I4 => inst_main_Inst_vga_int_x_count(6),
      O => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_8_o
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1111 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(1),
      I1 => inst_main_Inst_vga_int_y_count(0),
      I2 => inst_main_Inst_vga_int_y_count(2),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable111_588
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o221 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(0),
      I1 => inst_main_Inst_vga_int_x_count(1),
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o22
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In1 : LUT6
    generic map(
      INIT => X"A2FFA2FFA2FFF7F7"
    )
    port map (
      I0 => inst_didact_b1,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I3 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I4 => inst_didact_debout2,
      I5 => inst_didact_debout4,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In1_608
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"EAFFE2EAAA3FA2AA"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I2 => inst_didact_gs,
      I3 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I4 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I5 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In1_608,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_In
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In1 : LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I1 => inst_didact_b1,
      I2 => inst_didact_debout2,
      I3 => inst_didact_debout4,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In1_609
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"6EEE7FFFFFFFFFFF"
    )
    port map (
      I0 => inst_didact_gs,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I2 => inst_didact_b0,
      I3 => inst_didact_b1,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I5 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In2_610
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In3 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In1_609,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I2 => inst_didact_gs,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In2_610,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_In
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In2 : LUT5
    generic map(
      INIT => X"040404AE"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      I1 => inst_didact_start_msa5_172,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I4 => inst_didact_gs,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In2_612
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In3 : LUT6
    generic map(
      INIT => X"BBB9FFFFFFFDFDFF"
    )
    port map (
      I0 => inst_didact_gs,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I2 => inst_didact_b0,
      I3 => inst_didact_b1,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      I5 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In3_613
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In4 : LUT6
    generic map(
      INIT => X"FFFFB380B380B380"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In1_611,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I2 => inst_didact_gs,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In2_612,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I5 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In3_613,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_In : LUT6
    generic map(
      INIT => X"BFBFBFBF08888888"
    )
    port map (
      I0 => inst_didact_gs,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I2 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_120,
      I3 => inst_didact_b0,
      I4 => N2,
      I5 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_In_125
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"8FFF87FFD7FFB7FF"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I3 => inst_didact_gs,
      I4 => inst_didact_b0,
      I5 => inst_didact_b1,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In1_616
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In2 : LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In1_616,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I3 => inst_didact_gs,
      I4 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I5 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_In
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"88A8A222AAAAAAAA"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I2 => inst_didact_b0,
      I3 => inst_didact_b1,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I5 => inst_didact_gs,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In1_618
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In2 : LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => inst_didact_gs,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In1_618,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_In
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In2 : LUT6
    generic map(
      INIT => X"F9F0FBF29990FBF2"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      I4 => inst_didact_gs,
      I5 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In1_619,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In2_620
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In3 : LUT6
    generic map(
      INIT => X"10101001FFFFFFFF"
    )
    port map (
      I0 => inst_didact_b1,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I3 => inst_didact_debout2,
      I4 => inst_didact_debout4,
      I5 => inst_didact_gs,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In3_621
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In4 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In3_621,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In2_620,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In3 : LUT6
    generic map(
      INIT => X"AAAAAAAA2022AA20"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I3 => inst_didact_b1,
      I4 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I5 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In2_622,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In3_623
    );
  inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In1 : LUT6
    generic map(
      INIT => X"EFEFEFF6FFFFFFFF"
    )
    port map (
      I0 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      I1 => inst_didact_b1,
      I2 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I3 => inst_didact_debout4,
      I4 => inst_didact_debout2,
      I5 => inst_didact_gs,
      O => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In1_624
    );
  inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"CCDCDDFE001055BA"
    )
    port map (
      I0 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      I1 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115,
      I2 => inst_didact_start_msa3_174,
      I3 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I4 => inst_didact_gs,
      I5 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In1_624,
      O => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_In
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"01010144FFFFFFFF"
    )
    port map (
      I0 => inst_didact_b1,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121,
      I2 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I3 => inst_didact_debout4,
      I4 => inst_didact_debout2,
      I5 => inst_didact_gs,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In2_625
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In3 : LUT6
    generic map(
      INIT => X"FFFFAA82FFFFAE8E"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_120,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121,
      I2 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I3 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In2_625,
      I4 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In3_626,
      I5 => inst_didact_gs,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In
    );
  inst_didact_inst_diviseur_clk_n0006_inv1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(15),
      I1 => inst_didact_inst_diviseur_clk_cnt1_5hz(16),
      I2 => inst_didact_inst_diviseur_clk_cnt1_5hz(17),
      O => inst_didact_inst_diviseur_clk_n0006_inv1_627
    );
  inst_didact_inst_diviseur_clk_n0006_inv2 : LUT5
    generic map(
      INIT => X"88888000"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(11),
      I1 => inst_didact_inst_diviseur_clk_cnt1_5hz(10),
      I2 => inst_didact_inst_diviseur_clk_cnt1_5hz(7),
      I3 => inst_didact_inst_diviseur_clk_cnt1_5hz(8),
      I4 => inst_didact_inst_diviseur_clk_cnt1_5hz(9),
      O => inst_didact_inst_diviseur_clk_n0006_inv2_628
    );
  inst_didact_inst_diviseur_clk_n0006_inv3 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_n0006_inv1_627,
      I1 => inst_didact_inst_diviseur_clk_cnt1_5hz(12),
      I2 => inst_didact_inst_diviseur_clk_cnt1_5hz(13),
      I3 => inst_didact_inst_diviseur_clk_cnt1_5hz(14),
      I4 => inst_didact_inst_diviseur_clk_n0006_inv2_628,
      I5 => inst_didact_inst_diviseur_clk_cnt1_5hz(18),
      O => inst_didact_inst_diviseur_clk_n0006_inv3_629
    );
  inst_didact_inst_diviseur_clk_n0006_inv4 : LUT5
    generic map(
      INIT => X"AAAA8000"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(22),
      I1 => inst_didact_inst_diviseur_clk_n0006_inv3_629,
      I2 => inst_didact_inst_diviseur_clk_cnt1_5hz(19),
      I3 => inst_didact_inst_diviseur_clk_cnt1_5hz(20),
      I4 => inst_didact_inst_diviseur_clk_cnt1_5hz(21),
      O => inst_didact_inst_diviseur_clk_n0006_inv
    );
  inst_didact_inst_diviseur_clk_n0018_inv1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(10),
      I1 => inst_didact_inst_diviseur_clk_cnt4hz(7),
      I2 => inst_didact_inst_diviseur_clk_cnt4hz(8),
      I3 => inst_didact_inst_diviseur_clk_cnt4hz(9),
      O => inst_didact_inst_diviseur_clk_n0018_inv1_630
    );
  inst_didact_inst_diviseur_clk_n0018_inv2 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(15),
      I1 => inst_didact_inst_diviseur_clk_cnt4hz(13),
      I2 => inst_didact_inst_diviseur_clk_cnt4hz(14),
      I3 => inst_didact_inst_diviseur_clk_cnt4hz(11),
      I4 => inst_didact_inst_diviseur_clk_cnt4hz(12),
      I5 => inst_didact_inst_diviseur_clk_n0018_inv1_630,
      O => inst_didact_inst_diviseur_clk_n0018_inv2_631
    );
  inst_didact_inst_diviseur_clk_n0018_inv3 : LUT6
    generic map(
      INIT => X"8000800080000000"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(17),
      I1 => inst_didact_inst_diviseur_clk_cnt4hz(18),
      I2 => inst_didact_inst_diviseur_clk_cnt4hz(19),
      I3 => inst_didact_inst_diviseur_clk_cnt4hz(20),
      I4 => inst_didact_inst_diviseur_clk_cnt4hz(16),
      I5 => inst_didact_inst_diviseur_clk_n0018_inv2_631,
      O => inst_didact_inst_diviseur_clk_n0018_inv
    );
  inst_didact_inst_diviseur_clk_n0012_inv1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(11),
      I1 => inst_didact_inst_diviseur_clk_cnt2hz(10),
      I2 => inst_didact_inst_diviseur_clk_cnt2hz(8),
      I3 => inst_didact_inst_diviseur_clk_cnt2hz(9),
      O => inst_didact_inst_diviseur_clk_n0012_inv1_632
    );
  inst_didact_inst_diviseur_clk_n0012_inv2 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(16),
      I1 => inst_didact_inst_diviseur_clk_cnt2hz(14),
      I2 => inst_didact_inst_diviseur_clk_cnt2hz(15),
      I3 => inst_didact_inst_diviseur_clk_cnt2hz(12),
      I4 => inst_didact_inst_diviseur_clk_cnt2hz(13),
      I5 => inst_didact_inst_diviseur_clk_n0012_inv1_632,
      O => inst_didact_inst_diviseur_clk_n0012_inv2_633
    );
  inst_didact_inst_diviseur_clk_n0012_inv3 : LUT6
    generic map(
      INIT => X"8000800080000000"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(18),
      I1 => inst_didact_inst_diviseur_clk_cnt2hz(19),
      I2 => inst_didact_inst_diviseur_clk_cnt2hz(20),
      I3 => inst_didact_inst_diviseur_clk_cnt2hz(21),
      I4 => inst_didact_inst_diviseur_clk_cnt2hz(17),
      I5 => inst_didact_inst_diviseur_clk_n0012_inv2_633,
      O => inst_didact_inst_diviseur_clk_n0012_inv
    );
  inst_didact_inst_diviseur_clk_n0000_inv1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(12),
      I1 => inst_didact_inst_diviseur_clk_cnt1hz(10),
      I2 => inst_didact_inst_diviseur_clk_cnt1hz(11),
      I3 => inst_didact_inst_diviseur_clk_cnt1hz(9),
      O => inst_didact_inst_diviseur_clk_n0000_inv1_634
    );
  inst_didact_inst_diviseur_clk_n0000_inv2 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(17),
      I1 => inst_didact_inst_diviseur_clk_cnt1hz(15),
      I2 => inst_didact_inst_diviseur_clk_cnt1hz(16),
      I3 => inst_didact_inst_diviseur_clk_cnt1hz(13),
      I4 => inst_didact_inst_diviseur_clk_cnt1hz(14),
      I5 => inst_didact_inst_diviseur_clk_n0000_inv1_634,
      O => inst_didact_inst_diviseur_clk_n0000_inv2_635
    );
  inst_didact_inst_diviseur_clk_n0000_inv3 : LUT6
    generic map(
      INIT => X"8000800080000000"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(19),
      I1 => inst_didact_inst_diviseur_clk_cnt1hz(20),
      I2 => inst_didact_inst_diviseur_clk_cnt1hz(21),
      I3 => inst_didact_inst_diviseur_clk_cnt1hz(22),
      I4 => inst_didact_inst_diviseur_clk_cnt1hz(18),
      I5 => inst_didact_inst_diviseur_clk_n0000_inv2_635,
      O => inst_didact_inst_diviseur_clk_n0000_inv
    );
  inst_didact_inst_diviseur_clk_n0030_inv_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(6),
      I1 => inst_didact_inst_diviseur_clk_cnt2khz(5),
      O => N9
    );
  inst_didact_inst_diviseur_clk_n0030_inv : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(7),
      I1 => inst_didact_inst_diviseur_clk_cnt2khz(11),
      I2 => inst_didact_inst_diviseur_clk_cnt2khz(9),
      I3 => inst_didact_inst_diviseur_clk_cnt2khz(8),
      I4 => inst_didact_inst_diviseur_clk_cnt2khz(10),
      I5 => N9,
      O => inst_didact_inst_diviseur_clk_n0030_inv_408
    );
  inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(8),
      I1 => inst_main_Inst_vga_int_x_count(7),
      O => N11
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT6_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(0),
      I1 => inst_main_Inst_vga_int_x_count(4),
      O => N13
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT6 : LUT6
    generic map(
      INIT => X"AAAA6AAA00000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(5),
      I1 => inst_main_Inst_vga_int_x_count(3),
      I2 => inst_main_Inst_vga_int_x_count(2),
      I3 => inst_main_Inst_vga_int_x_count(1),
      I4 => N13,
      I5 => inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_5_Q
    );
  inst_main_Inst_vga_int_v_state_FSM_FFd1_In_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(0),
      I1 => inst_main_Inst_vga_int_y_count(3),
      I2 => inst_main_Inst_vga_int_y_count(2),
      I3 => inst_main_Inst_vga_int_y_count(4),
      O => N15
    );
  inst_main_Inst_vga_int_v_state_FSM_FFd1_In : LUT6
    generic map(
      INIT => X"EEEEA2AAAAAAA2AA"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I1 => inst_main_Inst_vga_int_line_en_564,
      I2 => N15,
      I3 => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_27_o_9_1,
      I4 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      I5 => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_31_o,
      O => inst_main_Inst_vga_int_v_state_FSM_FFd1_In_533
    );
  inst_main_Inst_vga_int_v_state_FSM_FFd2_In_SW0 : LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(2),
      I2 => inst_main_Inst_vga_int_y_count(4),
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_27_o_9_1,
      O => N19
    );
  inst_main_Inst_vga_int_v_state_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"CC4CDC5CCCCCDCDC"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I1 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      I2 => inst_main_Inst_vga_int_line_en_564,
      I3 => inst_main_Inst_vga_int_y_count(5),
      I4 => N19,
      I5 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_9_12,
      O => inst_main_Inst_vga_int_v_state_FSM_FFd2_In_534
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT9_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(4),
      I1 => inst_main_Inst_vga_int_y_count(5),
      O => N21
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT9 : LUT6
    generic map(
      INIT => X"F0F078F000000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(7),
      I1 => inst_main_Inst_vga_int_y_count(6),
      I2 => inst_main_Inst_vga_int_y_count(8),
      I3 => N21,
      I4 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      I5 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_8_Q
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT10_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(7),
      I1 => inst_main_Inst_vga_int_x_count(6),
      O => N23
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT10 : LUT6
    generic map(
      INIT => X"EC6CCC4C00000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(8),
      I1 => inst_main_Inst_vga_int_x_count(9),
      I2 => N23,
      I3 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_11,
      I4 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_12,
      I5 => inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT41,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_9_Q
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT10_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(6),
      I1 => inst_main_Inst_vga_int_y_count(7),
      I2 => inst_main_Inst_vga_int_y_count(8),
      I3 => inst_main_Inst_vga_int_y_count(4),
      O => N25
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT10 : LUT6
    generic map(
      INIT => X"EEEEAA2A00000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_vga_int_y_count(5),
      I2 => N25,
      I3 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      I4 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_9_12,
      I5 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_9_Q
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable13_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(7),
      I1 => inst_main_Inst_vga_int_y_count(8),
      I2 => inst_main_Inst_vga_int_y_count(4),
      I3 => inst_main_Inst_vga_int_y_count(9),
      I4 => inst_main_Inst_vga_int_y_count(5),
      O => N27
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable13 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(0),
      I2 => inst_main_Inst_vga_int_y_count(1),
      I3 => inst_main_Inst_vga_int_y_count(2),
      I4 => inst_main_Inst_vga_int_y_count(6),
      I5 => N27,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable13_587
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable111 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(6),
      I1 => inst_main_Inst_vga_int_y_count(8),
      I2 => inst_main_Inst_vga_int_y_count(7),
      I3 => inst_main_Inst_vga_int_y_count(5),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable112_645
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable112 : LUT6
    generic map(
      INIT => X"8080808080000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(4),
      I1 => inst_main_Inst_vga_int_y_count(3),
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable112_645,
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_y_count(1),
      I5 => inst_main_Inst_vga_int_y_count(2),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable113_646
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable113 : LUT6
    generic map(
      INIT => X"0455FFFFFFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(5),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable111_588,
      I2 => inst_main_Inst_vga_int_y_count(3),
      I3 => inst_main_Inst_vga_int_y_count(4),
      I4 => inst_main_Inst_vga_int_y_count(7),
      I5 => inst_main_Inst_vga_int_y_count(6),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable114_647
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable114 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(8),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable114_647,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable113_646,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable11_593
    );
  inst_main_Inst_set_rgb_SF171 : LUT6
    generic map(
      INIT => X"0008000080088000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable142_580,
      I1 => inst_main_Inst_vga_int_y_count(4),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_y_count(5),
      I5 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      O => inst_main_Inst_set_rgb_SF171_648
    );
  inst_main_Inst_set_rgb_SF172 : LUT6
    generic map(
      INIT => X"0004101040445050"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(2),
      I1 => inst_main_Inst_vga_int_y_count(0),
      I2 => inst_main_Inst_vga_int_y_count(1),
      I3 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I4 => inst_main_Inst_vga_int_x_count(0),
      I5 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      O => inst_main_Inst_set_rgb_SF172_649
    );
  inst_main_Inst_set_rgb_SF173 : LUT6
    generic map(
      INIT => X"FFFFFFFF00022022"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_iY_9_LessThan_27_o11,
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(0),
      I3 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I4 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I5 => inst_main_Inst_set_rgb_SF172_649,
      O => inst_main_Inst_set_rgb_SF173_650
    );
  inst_main_Inst_set_rgb_SF175 : LUT6
    generic map(
      INIT => X"F2FFF2F2FFFFFFF2"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_SF173_650,
      I1 => inst_main_Inst_vga_int_y_count(5),
      I2 => inst_main_Inst_set_rgb_SF171_648,
      I3 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I4 => inst_main_Inst_set_rgb_SF174_651,
      I5 => inst_main_Inst_vga_int_x_count(4),
      O => inst_main_Inst_set_rgb_SF175_652
    );
  inst_main_Inst_set_rgb_n0477_6_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(1),
      I1 => inst_main_Inst_vga_int_x_count(5),
      O => N29
    );
  inst_main_Inst_set_rgb_n0477_6_Q : LUT6
    generic map(
      INIT => X"0000002000200800"
    )
    port map (
      I0 => N29,
      I1 => inst_main_Inst_vga_int_x_count(3),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(4),
      I4 => inst_main_Inst_vga_int_x_count(2),
      I5 => inst_main_Inst_vga_int_x_count(6),
      O => inst_main_Inst_set_rgb_n0477
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o16 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA8AA"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o14_656,
      I1 => inst_main_Inst_vga_int_x_count(6),
      I2 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o111,
      I3 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o22,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable151112,
      I5 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o13_655,
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable151 : LUT5
    generic map(
      INIT => X"FFFF8880"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(6),
      I1 => inst_main_Inst_vga_int_y_count(7),
      I2 => inst_main_Inst_set_rgb_GND_23_o_iY_9_LessThan_27_o11,
      I3 => inst_main_Inst_vga_int_y_count(5),
      I4 => inst_main_Inst_vga_int_y_count(9),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable151_657
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable152 : LUT5
    generic map(
      INIT => X"4444E444"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(8),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable151_657,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1441,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable111_588,
      I4 => inst_main_Inst_vga_int_y_count(3),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable152_658
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable153 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(1),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable153_659
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable154 : LUT6
    generic map(
      INIT => X"AA2AA8A8AA2AAAAA"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable152_658,
      I1 => inst_main_Inst_vga_int_x_count(4),
      I2 => inst_main_Inst_vga_int_x_count(5),
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable153_659,
      I4 => inst_main_Inst_vga_int_x_count(6),
      I5 => inst_main_Inst_set_rgb_Msub_GND_23_o_GND_23_o_sub_112_OUT_6_0_xor_6_11,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable154_660
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1511 : LUT6
    generic map(
      INIT => X"FFFFFFFF2008FFFF"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_SF1931,
      I1 => inst_main_Inst_vga_int_y_count(4),
      I2 => inst_main_Inst_vga_int_y_count(0),
      I3 => inst_main_Inst_vga_int_y_count(5),
      I4 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o35,
      I5 => inst_main_Inst_set_rgb_SF161,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1511_667
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1512 : LUT6
    generic map(
      INIT => X"99BB88809BBB8B83"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(4),
      I1 => inst_main_Inst_vga_int_y_count(5),
      I2 => inst_main_Inst_vga_int_y_count(1),
      I3 => inst_main_Inst_vga_int_y_count(3),
      I4 => inst_main_Inst_vga_int_y_count(2),
      I5 => inst_main_Inst_vga_int_y_count(0),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1512_668
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1513 : LUT6
    generic map(
      INIT => X"FEFF5455FFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(5),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable151112,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1512_668,
      I3 => inst_main_Inst_vga_int_x_count(4),
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable1511_667,
      I5 => inst_main_Inst_vga_int_x_count(6),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1513_669
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1519 : LUT6
    generic map(
      INIT => X"F6F6F6F6F6FFF6F6"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(4),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_set_rgb_SF161,
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_y_count(1),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable141_583,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1520_673
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1520 : LUT6
    generic map(
      INIT => X"AAAAAA2A88888808"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_SF17,
      I1 => inst_main_Inst_vga_int_x_count(5),
      I2 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o34,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable1520_673,
      I4 => inst_main_Inst_vga_int_x_count(1),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable1519_672,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1521_674
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1521 : LUT5
    generic map(
      INIT => X"00808000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(6),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable1431,
      I2 => inst_main_Inst_vga_int_x_count(2),
      I3 => inst_main_Inst_vga_int_x_count(0),
      I4 => inst_main_Inst_vga_int_x_count(1),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1522_675
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1522 : LUT6
    generic map(
      INIT => X"FFFFFFFF08000008"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o34,
      I1 => inst_main_Inst_vga_int_x_count(5),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(4),
      I4 => inst_main_Inst_vga_int_x_count(0),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable1522_675,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1523_676
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1527 : LUT6
    generic map(
      INIT => X"FFFFFFFF22A2AAAA"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable1527_678,
      I1 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I2 => inst_main_Inst_set_rgb_n0216_16_1,
      I3 => inst_main_Inst_vga_int_y_count(5),
      I4 => inst_main_Inst_vga_int_x_count(1),
      I5 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1528_679
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1529 : LUT6
    generic map(
      INIT => X"F9B9F9FDFFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o22,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1529_680,
      I3 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4),
      I4 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o,
      I5 => inst_main_Inst_vga_int_x_count(3),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1530_681
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1531 : LUT6
    generic map(
      INIT => X"EEE00000EEE0EEE0"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable1528_679,
      I2 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable1530_681,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable1531_682,
      I5 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1532_683
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1532 : LUT6
    generic map(
      INIT => X"A8A8A8A8A8FFA8A8"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable1521_674,
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable1523_676,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1532_683,
      I3 => inst_main_Inst_vga_int_x_count(5),
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable1514_566,
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable121,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1533_684
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1533 : LUT6
    generic map(
      INIT => X"0008800000080000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_SF17,
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4),
      I3 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I4 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I5 => inst_main_Inst_vga_int_x_count(0),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1534_685
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1534 : LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(4),
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(6),
      I4 => inst_main_Inst_vga_int_x_count(5),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable1534_685,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1535_686
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1535 : LUT6
    generic map(
      INIT => X"AAAAAAAA8888A888"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable1515,
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable1533_684,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1535_686,
      I3 => inst_main_Inst_vga_int_x_count(2),
      I4 => inst_main_Inst_vga_int_x_count(3),
      I5 => inst_main_Inst_set_rgb_n0477,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1536_687
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1537 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(1),
      I4 => inst_main_Inst_vga_int_x_count(3),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable1537_688,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1538_689
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1538 : LUT6
    generic map(
      INIT => X"4040404044404040"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable154_660,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1536_687,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable1538_689,
      I4 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4),
      I5 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1539_690
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1539 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(9),
      I1 => inst_main_Inst_vga_int_x_count(8),
      I2 => inst_main_Inst_vga_int_x_count(7),
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable1539_690,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1540_691
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1540 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_120,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121,
      I2 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1541_692
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1541 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1542_693
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1542 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0008"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I3 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable1542_693,
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable1541_692,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1543_694
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1543 : LUT5
    generic map(
      INIT => X"AAAA8000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable1540_691,
      I1 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115,
      I2 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I3 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable1543_694,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable15
    );
  inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o11 : LUT5
    generic map(
      INIT => X"15FFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(5),
      I4 => inst_main_Inst_vga_int_x_count(4),
      O => inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o1
    );
  inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o12 : LUT5
    generic map(
      INIT => X"11111151"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(9),
      I1 => inst_main_Inst_vga_int_x_count(8),
      I2 => inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o1,
      I3 => inst_main_Inst_vga_int_x_count(6),
      I4 => inst_main_Inst_vga_int_x_count(7),
      O => inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable141 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable141_583,
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(6),
      I3 => inst_main_Inst_vga_int_y_count(7),
      I4 => inst_main_Inst_vga_int_y_count(8),
      I5 => inst_main_Inst_vga_int_y_count(0),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable143_696
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable142 : LUT6
    generic map(
      INIT => X"4444444444445444"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable143_696,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1441,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable142_580,
      I4 => inst_main_Inst_vga_int_y_count(8),
      I5 => inst_main_Inst_vga_int_y_count(0),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable144_697
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable143 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(0),
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_vga_int_x_count(2),
      I3 => inst_main_Inst_vga_int_x_count(5),
      I4 => inst_main_Inst_vga_int_x_count(9),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable1514_566,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable145_698
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable144 : LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(6),
      I1 => inst_main_Inst_vga_int_x_count(9),
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable1431,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable121,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable145_698,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable146
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable145 : LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable144_697,
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable146,
      I2 => inst_main_Inst_vga_int_x_count(7),
      I3 => inst_main_Inst_vga_int_x_count(8),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable14
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable11 : LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_pixel_green,
      I1 => seq(1),
      I2 => bt2_IBUF_1,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable15,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable14,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable12 : LUT6
    generic map(
      INIT => X"AA8888AA8AA8A88A"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable17_576,
      I1 => bt3_IBUF_2,
      I2 => inst_didact_ADDERTREE_INTERNAL_Madd3,
      I3 => inst_didact_ADDERTREE_INTERNAL_Madd31,
      I4 => inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_22,
      I5 => seq(1),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable12_701
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable16 : LUT6
    generic map(
      INIT => X"9699669696999699"
    )
    port map (
      I0 => inst_didact_ADDERTREE_INTERNAL_Madd32_128,
      I1 => inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_32,
      I2 => inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_22,
      I3 => inst_didact_ADDERTREE_INTERNAL_Madd31,
      I4 => seq(1),
      I5 => inst_didact_ADDERTREE_INTERNAL_Madd3,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable19_702
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable17 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => inst_didact_se4q_0_Q,
      I1 => inst_didact_se5q(0),
      I2 => inst_didact_se6q(0),
      I3 => inst_didact_seqqq(0),
      I4 => inst_didact_vseq(0),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable110
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable19 : LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable1,
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable12_701,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable115,
      I3 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_8_o,
      I4 => inst_main_Inst_set_rgb_iX_9_GND_23_o_LessThan_7_o,
      O => inst_main_Inst_set_rgb_pixel_enable
    );
  inst_main_Inst_set_rgb_iX_9_PWR_18_o_LessThan_11_o1_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(5),
      I1 => inst_main_Inst_vga_int_x_count(4),
      I2 => inst_main_Inst_vga_int_x_count(6),
      O => N31
    );
  inst_main_Inst_set_rgb_iX_9_PWR_18_o_LessThan_11_o1 : LUT6
    generic map(
      INIT => X"10111010FFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(7),
      I1 => inst_main_Inst_vga_int_x_count(8),
      I2 => N31,
      I3 => inst_main_Inst_vga_int_x_count(3),
      I4 => inst_main_Inst_set_rgb_SF2011,
      I5 => inst_main_Inst_vga_int_x_count(9),
      O => inst_main_Inst_set_rgb_iX_9_PWR_18_o_LessThan_11_o
    );
  inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o11 : LUT6
    generic map(
      INIT => X"0111FFFFFFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(4),
      I1 => inst_main_Inst_vga_int_y_count(3),
      I2 => inst_main_Inst_vga_int_y_count(2),
      I3 => inst_main_Inst_vga_int_y_count(1),
      I4 => inst_main_Inst_vga_int_y_count(7),
      I5 => inst_main_Inst_vga_int_y_count(6),
      O => inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o1
    );
  inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o12 : LUT4
    generic map(
      INIT => X"1101"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_vga_int_y_count(8),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o1,
      O => inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o
    );
  bt1_IBUF : IBUF
    port map (
      I => bt1,
      O => bt1_IBUF_0
    );
  bt2_IBUF : IBUF
    port map (
      I => bt2,
      O => bt2_IBUF_1
    );
  bt3_IBUF : IBUF
    port map (
      I => bt3,
      O => bt3_IBUF_2
    );
  bt4_IBUF : IBUF
    port map (
      I => bt4,
      O => bt4_IBUF_3
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_5
    );
  RGB_7_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_R_1_891,
      O => RGB(7)
    );
  RGB_6_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_R_2_892,
      O => RGB(6)
    );
  RGB_5_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_R_9,
      O => RGB(5)
    );
  RGB_4_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_G_1_893,
      O => RGB(4)
    );
  RGB_3_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_G_2_894,
      O => RGB(3)
    );
  RGB_2_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_G_10,
      O => RGB(2)
    );
  RGB_1_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_B_1_895,
      O => RGB(1)
    );
  RGB_0_OBUF : OBUF
    port map (
      I => inst_main_Inst_set_rgb_B_11,
      O => RGB(0)
    );
  HS_OBUF : OBUF
    port map (
      I => HS_OBUF_12,
      O => HS
    );
  VS_OBUF : OBUF
    port map (
      I => VS_OBUF_13,
      O => VS
    );
  inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_didact_dipslay3_cpt(0),
      I1 => inst_didact_dipslay3_cpt(1),
      O => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lut_0_Q
    );
  inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_lut_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(1),
      I1 => inst_didact_dipslay6_cpt(2),
      O => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_lut_0_Q
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lut_0_1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(1),
      I1 => inst_didact_dipslay5_cpt(2),
      I2 => inst_didact_dipslay5_cpt(0),
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lut_0_Q
    );
  inst_didact_Mcount_dipslay5_cpt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(1),
      O => inst_didact_Mcount_dipslay5_cpt_cy_1_rt_722
    );
  inst_didact_Mcount_dipslay6_cpt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(1),
      O => inst_didact_Mcount_dipslay6_cpt_cy_1_rt_723
    );
  inst_didact_Mcount_dipslay4_cpt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay4_cpt(1),
      O => inst_didact_Mcount_dipslay4_cpt_cy_1_rt_724
    );
  inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay4_cpt(2),
      O => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_0_rt_725
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(19),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_19_rt_726
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(18),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_18_rt_727
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(17),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_17_rt_728
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(16),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_16_rt_729
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(15),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_15_rt_730
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(14),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_14_rt_731
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(13),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_13_rt_732
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(12),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_12_rt_733
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(11),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_11_rt_734
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(10),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_10_rt_735
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(9),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_9_rt_736
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(8),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_8_rt_737
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(7),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_7_rt_738
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(6),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_6_rt_739
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(5),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_5_rt_740
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(4),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_4_rt_741
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(3),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_3_rt_742
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(2),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_2_rt_743
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(1),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_cy_1_rt_744
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(10),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_745
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(9),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_746
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(8),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_747
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(7),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_748
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(6),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_749
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(5),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_750
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(4),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_751
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(3),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_752
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(2),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_753
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(1),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_754
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(21),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_21_rt_755
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(20),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_20_rt_756
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(19),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_19_rt_757
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(18),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_18_rt_758
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(17),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_17_rt_759
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(16),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_16_rt_760
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(15),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_15_rt_761
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(14),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_14_rt_762
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(13),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_13_rt_763
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(12),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_12_rt_764
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(11),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_11_rt_765
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(10),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_10_rt_766
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(9),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_9_rt_767
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(8),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_8_rt_768
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(7),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_7_rt_769
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(6),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_6_rt_770
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(5),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_5_rt_771
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(4),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_4_rt_772
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(3),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_3_rt_773
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(2),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_2_rt_774
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(1),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_cy_1_rt_775
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(20),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_776
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(19),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_777
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(18),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_778
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(17),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_779
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(16),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_780
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(15),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_781
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(14),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_782
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(13),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_783
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(12),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_784
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(11),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_785
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(10),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_786
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(9),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_787
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(8),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_788
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(7),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_789
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(6),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_790
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(5),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_791
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(4),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_792
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(3),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_793
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(2),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_794
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(1),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_795
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(21),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_21_rt_796
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(20),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_20_rt_797
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(19),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_19_rt_798
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(18),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_18_rt_799
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(17),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_17_rt_800
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(16),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_16_rt_801
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(15),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_15_rt_802
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(14),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_14_rt_803
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(13),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_13_rt_804
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(12),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_12_rt_805
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(11),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_11_rt_806
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(10),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_10_rt_807
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(9),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_9_rt_808
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(8),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_8_rt_809
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(7),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_7_rt_810
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(6),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_6_rt_811
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(5),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_5_rt_812
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(4),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_4_rt_813
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(3),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_3_rt_814
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(2),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_2_rt_815
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(1),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_cy_1_rt_816
    );
  inst_didact_Mcount_dipslay5_cpt_xor_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(2),
      O => inst_didact_Mcount_dipslay5_cpt_xor_2_rt_817
    );
  inst_didact_Mcount_dipslay6_cpt_xor_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(2),
      O => inst_didact_Mcount_dipslay6_cpt_xor_2_rt_818
    );
  inst_didact_Mcount_dipslay3_cpt_xor_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay3_cpt(1),
      O => inst_didact_Mcount_dipslay3_cpt_xor_1_rt_819
    );
  inst_didact_Mcount_dipslay4_cpt_xor_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_dipslay4_cpt(2),
      O => inst_didact_Mcount_dipslay4_cpt_xor_2_rt_820
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt4hz(20),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_xor_20_rt_821
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2khz(11),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_822
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1hz(22),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_xor_22_rt_823
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt2hz(21),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_824
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_cnt1_5hz(22),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_xor_22_rt_825
    );
  inst_didact_start_msa3 : FDC
    port map (
      C => inst_didact_inst_diviseur_clk_clk1hz_170,
      CLR => rst_IBUF_5,
      D => inst_didact_start_msa3_rstpot_826,
      Q => inst_didact_start_msa3_174
    );
  inst_didact_start_msa6 : FDC
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_start_msa6_rstpot_827,
      Q => inst_didact_start_msa6_171
    );
  inst_didact_start_msa5 : FDC
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_start_msa5_rstpot_828,
      Q => inst_didact_start_msa5_172
    );
  inst_didact_inst_diviseur_clk_div2khz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div2khz_temp_rstpot_829,
      Q => inst_didact_inst_diviseur_clk_div2khz_temp_414
    );
  inst_didact_inst_diviseur_clk_div1hz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div1hz_temp_rstpot_830,
      Q => inst_didact_inst_diviseur_clk_div1hz_temp_413
    );
  inst_didact_inst_diviseur_clk_div2hz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div2hz_temp_rstpot_831,
      Q => inst_didact_inst_diviseur_clk_div2hz_temp_416
    );
  inst_didact_inst_diviseur_clk_div1_5hz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div1_5hz_temp_rstpot_832,
      Q => inst_didact_inst_diviseur_clk_div1_5hz_temp_417
    );
  inst_didact_inst_diviseur_clk_div4hz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk16mhz,
      D => inst_didact_inst_diviseur_clk_div4hz_temp_rstpot_833,
      Q => inst_didact_inst_diviseur_clk_div4hz_temp_415
    );
  inst_main_Inst_vga_int_line_en : FD
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_line_en_rstpot_834,
      Q => inst_main_Inst_vga_int_line_en_564
    );
  inst_main_Inst_vga_int_tempo : FD
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_tempo_rstpot,
      Q => inst_main_Inst_vga_int_tempo_563
    );
  inst_main_Inst_vga_int_en_25 : FD
    port map (
      C => clk100mhz,
      D => inst_main_Inst_vga_int_en_25_rstpot_836,
      Q => inst_main_Inst_vga_int_en_25_565
    );
  inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_111 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(2),
      I3 => inst_main_Inst_vga_int_y_count(0),
      O => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11
    );
  inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_9_121_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_vga_int_y_count(7),
      I2 => inst_main_Inst_vga_int_y_count(6),
      I3 => inst_main_Inst_vga_int_y_count(8),
      I4 => inst_main_Inst_vga_int_y_count(4),
      I5 => inst_main_Inst_vga_int_y_count(5),
      O => N33
    );
  inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_1_SW1 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count_0_2_871,
      I1 => inst_main_Inst_vga_int_x_count_1_1_870,
      I2 => inst_main_Inst_vga_int_x_count_6_1_874,
      O => N35
    );
  inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_21 : LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(9),
      I1 => inst_main_Inst_vga_int_x_count(4),
      I2 => inst_main_Inst_vga_int_x_count(3),
      I3 => inst_main_Inst_vga_int_x_count(2),
      I4 => N35,
      I5 => N11,
      O => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_2
    );
  inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_1_SW2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count_0_2_871,
      I1 => inst_main_Inst_vga_int_x_count_2_1_872,
      I2 => inst_main_Inst_vga_int_x_count_1_1_870,
      I3 => inst_main_Inst_vga_int_x_count_6_1_874,
      O => N37
    );
  inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o_9_1 : LUT6
    generic map(
      INIT => X"0000000004000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(9),
      I1 => inst_main_Inst_vga_int_x_count(4),
      I2 => inst_main_Inst_vga_int_x_count(5),
      I3 => inst_main_Inst_vga_int_x_count(3),
      I4 => N37,
      I5 => N11,
      O => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT31 : LUT6
    generic map(
      INIT => X"0F0F00FF33335555"
    )
    port map (
      I0 => N44,
      I1 => N45,
      I2 => N47,
      I3 => N46,
      I4 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o,
      I5 => inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_2_Q
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT43 : LUT5
    generic map(
      INIT => X"6AAA0000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(3),
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(2),
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527,
      O => inst_main_Inst_vga_int_v_state_1_y_count_9_wide_mux_42_OUT_3_Q
    );
  inst_didact_dipslay3_cpt_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk1hz_170,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay3_cpt_1_rstpot_844,
      Q => inst_didact_dipslay3_cpt(1)
    );
  inst_didact_dipslay3_cpt_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk1hz_170,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay3_cpt_0_rstpot_845,
      Q => inst_didact_dipslay3_cpt(0)
    );
  inst_didact_dipslay5_cpt_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay5_cpt_2_rstpot_846,
      Q => inst_didact_dipslay5_cpt(2)
    );
  inst_didact_dipslay5_cpt_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay5_cpt_1_rstpot_847,
      Q => inst_didact_dipslay5_cpt(1)
    );
  inst_didact_dipslay5_cpt_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay5_cpt_0_rstpot_848,
      Q => inst_didact_dipslay5_cpt(0)
    );
  inst_didact_dipslay6_cpt_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay6_cpt_2_rstpot_849,
      Q => inst_didact_dipslay6_cpt(2)
    );
  inst_didact_dipslay6_cpt_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay6_cpt_1_rstpot_850,
      Q => inst_didact_dipslay6_cpt(1)
    );
  inst_didact_dipslay6_cpt_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_didact_inst_diviseur_clk_clk2hz_168,
      CLR => rst_IBUF_5,
      D => inst_didact_dipslay6_cpt_0_rstpot_851,
      Q => inst_didact_dipslay6_cpt(0)
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT71_SW0 : LUT4
    generic map(
      INIT => X"9810"
    )
    port map (
      I0 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I2 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o,
      I3 => inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o,
      O => N51
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT71_SW1 : LUT5
    generic map(
      INIT => X"DBCA5342"
    )
    port map (
      I0 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I2 => inst_main_Inst_vga_int_x_count(5),
      I3 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_4_o,
      I4 => inst_main_Inst_vga_int_PWR_17_o_x_count_9_equal_12_o,
      O => N52
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT71 : LUT6
    generic map(
      INIT => X"0000D80000D8D8D8"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(6),
      I1 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_11,
      I2 => inst_main_Inst_vga_int_Madd_x_count_9_GND_22_o_add_16_OUT_xor_6_12,
      I3 => inst_main_Inst_vga_int_GND_22_o_x_count_9_equal_16_o_9_2,
      I4 => N52,
      I5 => N51,
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_6_Q
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I1 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      O => N54
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_SW2 : LUT6
    generic map(
      INIT => X"7777773657777777"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      I1 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I2 => inst_main_Inst_vga_int_y_count(3),
      I3 => inst_main_Inst_vga_int_y_count(2),
      I4 => inst_main_Inst_vga_int_y_count(4),
      I5 => inst_main_Inst_vga_int_y_count(0),
      O => N55
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_SW3 : LUT6
    generic map(
      INIT => X"FFFFFFDEBFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_v_state_FSM_FFd1_561,
      I1 => inst_main_Inst_vga_int_v_state_FSM_FFd2_532,
      I2 => inst_main_Inst_vga_int_y_count(3),
      I3 => inst_main_Inst_vga_int_y_count(2),
      I4 => inst_main_Inst_vga_int_y_count(4),
      I5 => inst_main_Inst_vga_int_y_count(0),
      O => N56
    );
  inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41 : LUT6
    generic map(
      INIT => X"FF00FFFFFC30EEEE"
    )
    port map (
      I0 => N54,
      I1 => N33,
      I2 => N55,
      I3 => N56,
      I4 => inst_main_Inst_vga_int_GND_22_o_y_count_9_equal_27_o_9_1,
      I5 => inst_main_Inst_vga_int_Madd_y_count_9_GND_22_o_add_39_OUT_xor_4_11,
      O => inst_main_Inst_vga_int_Mmux_v_state_1_y_count_9_wide_mux_42_OUT41_527
    );
  inst_didact_start_msa4 : FDC
    port map (
      C => inst_didact_inst_diviseur_clk_clk1_5hz_169,
      CLR => rst_IBUF_5,
      D => inst_didact_start_msa4_rstpot_857,
      Q => inst_didact_start_msa4_173
    );
  inst_didact_Mmux_GND_6_o_BUS_0001_mux_3_OUT11_lut : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => inst_didact_dipslay3_cpt(0),
      I1 => inst_didact_dipslay3_cpt(1),
      O => inst_didact_Mmux_GND_6_o_BUS_0001_mux_3_OUT11_lut_858
    );
  inst_didact_Mmux_GND_6_o_BUS_0001_mux_3_OUT11_cy : MUXCY
    port map (
      CI => inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_Mmux_GND_6_o_BUS_0001_mux_3_OUT11_lut_858,
      O => inst_didact_GND_6_o_BUS_0001_mux_3_OUT(0)
    );
  inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT11_lut : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(2),
      I1 => inst_didact_dipslay6_cpt(0),
      I2 => inst_didact_dipslay6_cpt(1),
      O => inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT11_lut_859
    );
  inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT11_cy : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT11_lut_859,
      O => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(0)
    );
  inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lutdi1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(2),
      I1 => inst_didact_dipslay5_cpt(1),
      O => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_lutdi
    );
  inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT11_lut : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(2),
      I1 => inst_didact_dipslay5_cpt(1),
      I2 => inst_didact_dipslay5_cpt(0),
      O => inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT11_lut_860
    );
  inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT11_cy : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT11_lut_860,
      O => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(0)
    );
  inst_didact_n0148_inv1_lut : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115,
      I1 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I2 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      O => inst_didact_n0148_inv1_lut_861
    );
  inst_didact_n0148_inv1_cy : MUXCY
    port map (
      CI => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q_77,
      DI => inst_didact_Mcompar_GND_6_o_dipslay3_cpt_31_LessThan_1_o_lutdi,
      S => inst_didact_n0148_inv1_lut_861,
      O => inst_didact_n0148_inv
    );
  inst_didact_start_msa3_rstpot : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv,
      I1 => inst_didact_start_msa3_174,
      O => inst_didact_start_msa3_rstpot_826
    );
  inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT31 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      I1 => inst_didact_dipslay5_cpt(1),
      I2 => inst_didact_dipslay5_cpt(2),
      I3 => inst_didact_dipslay5_cpt(0),
      O => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(2)
    );
  inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT41 : LUT4
    generic map(
      INIT => X"0440"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(1),
      I1 => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      I2 => inst_didact_dipslay6_cpt(0),
      I3 => inst_didact_dipslay6_cpt(2),
      O => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(3)
    );
  inst_didact_Mmux_GND_6_o_BUS_0001_mux_3_OUT21 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_dipslay3_cpt(1),
      I1 => inst_didact_dipslay3_cpt(0),
      I2 => inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv,
      O => inst_didact_GND_6_o_BUS_0001_mux_3_OUT(1)
    );
  inst_didact_Mmux_GND_6_o_BUS_0001_mux_3_OUT31 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv,
      I1 => inst_didact_dipslay3_cpt(1),
      O => inst_didact_GND_6_o_BUS_0001_mux_3_OUT(2)
    );
  inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT21 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(0),
      I1 => inst_didact_dipslay6_cpt(1),
      I2 => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      I3 => inst_didact_dipslay6_cpt(2),
      O => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(1)
    );
  inst_didact_Mmux_GND_6_o_BUS_0019_mux_28_OUT31 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(0),
      I1 => inst_didact_dipslay6_cpt(1),
      I2 => inst_didact_dipslay6_cpt(2),
      I3 => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      O => inst_didact_GND_6_o_BUS_0019_mux_28_OUT(2)
    );
  inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT21 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(2),
      I1 => inst_didact_dipslay5_cpt(0),
      I2 => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      O => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(1)
    );
  inst_didact_Mmux_GND_6_o_BUS_0013_mux_19_OUT41 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(0),
      I1 => inst_didact_dipslay5_cpt(2),
      I2 => inst_didact_dipslay5_cpt(1),
      I3 => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      O => inst_didact_GND_6_o_BUS_0013_mux_19_OUT(3)
    );
  inst_didact_start_msa6_rstpot : LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I4 => inst_didact_start_msa6_171,
      O => inst_didact_start_msa6_rstpot_827
    );
  inst_didact_start_msa5_rstpot : LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      I0 => inst_didact_start_msa5_172,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I2 => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      I3 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      O => inst_didact_start_msa5_rstpot_828
    );
  inst_didact_dipslay3_cpt_1_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv,
      I1 => inst_didact_dipslay3_cpt(1),
      I2 => inst_didact_Result_1_3,
      O => inst_didact_dipslay3_cpt_1_rstpot_844
    );
  inst_didact_dipslay3_cpt_0_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_didact_GND_6_o_dipslay3_cpt_31_LessThan_1_o_inv,
      I1 => inst_didact_dipslay3_cpt(0),
      I2 => inst_didact_Result_0_3,
      O => inst_didact_dipslay3_cpt_0_rstpot_845
    );
  inst_didact_dipslay5_cpt_2_rstpot : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(2),
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I2 => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      I3 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I4 => inst_didact_Result_2_2,
      O => inst_didact_dipslay5_cpt_2_rstpot_846
    );
  inst_didact_dipslay5_cpt_1_rstpot : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(1),
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I2 => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      I3 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I4 => inst_didact_Result_1_2,
      O => inst_didact_dipslay5_cpt_1_rstpot_847
    );
  inst_didact_dipslay5_cpt_0_rstpot : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => inst_didact_dipslay5_cpt(0),
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I2 => inst_didact_Mcompar_GND_6_o_dipslay5_cpt_31_LessThan_17_o_cy_6_Q_68,
      I3 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I4 => inst_didact_Result_0_2,
      O => inst_didact_dipslay5_cpt_0_rstpot_848
    );
  inst_didact_dipslay6_cpt_2_rstpot : LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(2),
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I4 => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      I5 => inst_didact_Result_2_1,
      O => inst_didact_dipslay6_cpt_2_rstpot_849
    );
  inst_didact_dipslay6_cpt_1_rstpot : LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(1),
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I4 => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      I5 => inst_didact_Result_1_1,
      O => inst_didact_dipslay6_cpt_1_rstpot_850
    );
  inst_didact_dipslay6_cpt_0_rstpot : LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => inst_didact_dipslay6_cpt(0),
      I1 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_108,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I3 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I4 => inst_didact_Mcompar_GND_6_o_dipslay6_cpt_31_LessThan_26_o_cy_6_Q_60,
      I5 => inst_didact_Result_0_1,
      O => inst_didact_dipslay6_cpt_0_rstpot_851
    );
  inst_didact_Mmux_GND_6_o_BUS_0007_mux_10_OUT31 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q_77,
      I1 => inst_didact_dipslay4_cpt(0),
      I2 => inst_didact_dipslay4_cpt(1),
      O => inst_didact_GND_6_o_BUS_0007_mux_10_OUT_3_Q
    );
  inst_didact_Mmux_GND_6_o_BUS_0007_mux_10_OUT11 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_dipslay4_cpt(1),
      I1 => inst_didact_dipslay4_cpt(0),
      I2 => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q_77,
      O => inst_didact_GND_6_o_BUS_0007_mux_10_OUT_0_Q
    );
  inst_didact_Mmux_GND_6_o_BUS_0007_mux_10_OUT21 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => inst_didact_dipslay4_cpt(0),
      I1 => inst_didact_dipslay4_cpt(1),
      I2 => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q_77,
      O => inst_didact_GND_6_o_BUS_0007_mux_10_OUT_1_Q
    );
  inst_didact_start_msa4_rstpot : LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
    port map (
      I0 => inst_didact_start_msa4_173,
      I1 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd2_114,
      I2 => inst_didact_Mcompar_GND_6_o_dipslay4_cpt_31_LessThan_8_o_cy_5_Q_77,
      I3 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd1_113,
      I4 => inst_didact_Inst_msa3_hdl_etatpres_FSM_FFd3_115,
      O => inst_didact_start_msa4_rstpot_857
    );
  inst_main_Inst_set_rgb_B : LD
    port map (
      D => inst_main_Inst_set_rgb_B_D_863,
      G => inst_main_Inst_set_rgb_B_G_862,
      Q => inst_main_Inst_set_rgb_B_11
    );
  inst_main_Inst_set_rgb_G : LD
    port map (
      D => inst_main_Inst_set_rgb_G_D_864,
      G => inst_main_Inst_set_rgb_B_G_862,
      Q => inst_main_Inst_set_rgb_G_10
    );
  inst_main_Inst_set_rgb_R : LD
    port map (
      D => inst_main_Inst_set_rgb_R_D_866,
      G => inst_main_Inst_set_rgb_R_G_865,
      Q => inst_main_Inst_set_rgb_R_9
    );
  inst_main_Inst_vga_int_en_25_rstpot : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_main_Inst_vga_int_count(1),
      I1 => inst_main_Inst_vga_int_count(0),
      O => inst_main_Inst_vga_int_en_25_rstpot_836
    );
  inst_main_Inst_vga_int_tempo_rstpot1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      O => inst_main_Inst_vga_int_tempo_rstpot
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT411_SW5 : LUT5
    generic map(
      INIT => X"959595FF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I4 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      O => N45
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT411_SW6 : LUT5
    generic map(
      INIT => X"FF959595"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I4 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      O => N46
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT411_SW7 : LUT5
    generic map(
      INIT => X"FF9595FF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      I4 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      O => N47
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In2 : LUT6
    generic map(
      INIT => X"FF55545557555455"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I1 => inst_didact_debout2,
      I2 => inst_didact_debout4,
      I3 => inst_didact_gs,
      I4 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I5 => inst_didact_b1,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In2_622
    );
  inst_didact_inst_diviseur_clk_div1hz_temp_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_n0000_inv,
      I1 => inst_didact_inst_diviseur_clk_div1hz_temp_413,
      O => inst_didact_inst_diviseur_clk_div1hz_temp_rstpot_830
    );
  inst_didact_inst_diviseur_clk_div2hz_temp_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_n0012_inv,
      I1 => inst_didact_inst_diviseur_clk_div2hz_temp_416,
      O => inst_didact_inst_diviseur_clk_div2hz_temp_rstpot_831
    );
  inst_didact_inst_diviseur_clk_div4hz_temp_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_n0018_inv,
      I1 => inst_didact_inst_diviseur_clk_div4hz_temp_415,
      O => inst_didact_inst_diviseur_clk_div4hz_temp_rstpot_833
    );
  inst_didact_inst_diviseur_clk_div2khz_temp_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_n0030_inv_408,
      I1 => inst_didact_inst_diviseur_clk_div2khz_temp_414,
      O => inst_didact_inst_diviseur_clk_div2khz_temp_rstpot_829
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable18 : LUT6
    generic map(
      INIT => X"FFFF222022202220"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable11_593,
      I1 => inst_main_Inst_vga_int_y_count(9),
      I2 => bt1_IBUF_0,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable110,
      I4 => N96,
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable13_587,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable115
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT411_SW4 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_x_count(1),
      O => N44
    );
  inst_main_Inst_vga_int_line_en_rstpot : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => inst_main_Inst_vga_int_tempo_563,
      I1 => inst_main_Inst_vga_int_h_state_FSM_FFd1_562,
      I2 => inst_main_Inst_vga_int_h_state_FSM_FFd2_535,
      O => inst_main_Inst_vga_int_line_en_rstpot_834
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In2 : LUT6
    generic map(
      INIT => X"8880AAAAAAAAAAAA"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I1 => inst_didact_b1,
      I2 => inst_didact_debout2,
      I3 => inst_didact_debout4,
      I4 => inst_didact_gs,
      I5 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_In3_626
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In1 : LUT5
    generic map(
      INIT => X"777F222A"
    )
    port map (
      I0 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd1_105,
      I1 => inst_didact_b1,
      I2 => inst_didact_debout4,
      I3 => inst_didact_debout2,
      I4 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_106,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd4_In1_611
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_In_SW0 : LUT5
    generic map(
      INIT => X"99A99999"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I1 => inst_didact_debout4,
      I2 => inst_didact_inst3_debounce_Q2_141,
      I3 => inst_didact_inst3_debounce_Q3_142,
      I4 => inst_didact_inst3_debounce_Q1_140,
      O => N2
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_In_SW2 : LUT6
    generic map(
      INIT => X"0181018101810101"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I2 => inst_didact_gs,
      I3 => inst_didact_b1,
      I4 => inst_didact_debout2,
      I5 => inst_didact_debout4,
      O => N6
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1510 : LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_SF201,
      I1 => inst_main_Inst_set_rgb_n0477,
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable159_665,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1510_666
    );
  inst_main_Inst_set_rgb_SF176 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7F7F7"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_vga_int_x_count(3),
      I3 => inst_main_Inst_vga_int_x_count(5),
      I4 => inst_main_Inst_vga_int_x_count(4),
      I5 => inst_main_Inst_set_rgb_SF175_652,
      O => inst_main_Inst_set_rgb_SF17
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable155 : LUT5
    generic map(
      INIT => X"EAAAE280"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(2),
      I4 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable155_661
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1518 : LUT5
    generic map(
      INIT => X"FDDFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(6),
      I1 => inst_main_Inst_set_rgb_Mmux_pixel_enable1518_671,
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(0),
      I4 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o35,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1519_672
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1523 : LUT5
    generic map(
      INIT => X"18101010"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(0),
      I1 => inst_main_Inst_vga_int_y_count(2),
      I2 => inst_main_Inst_vga_int_y_count(1),
      I3 => inst_main_Inst_vga_int_y_count(3),
      I4 => inst_main_Inst_vga_int_y_count(4),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1524
    );
  inst_main_Inst_set_rgb_n0216_16_11 : LUT5
    generic map(
      INIT => X"18080808"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(0),
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(2),
      I3 => inst_main_Inst_vga_int_y_count(4),
      I4 => inst_main_Inst_vga_int_y_count(3),
      O => inst_main_Inst_set_rgb_n0216_16_1
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable158 : LUT6
    generic map(
      INIT => X"FFFFFFFF8AAA2222"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_SF201,
      I1 => inst_main_Inst_vga_int_y_count(0),
      I2 => inst_main_Inst_vga_int_y_count(4),
      I3 => inst_main_Inst_vga_int_y_count(3),
      I4 => inst_main_Inst_vga_int_y_count(2),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable157_663,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable158_664
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable159 : LUT6
    generic map(
      INIT => X"A8AA2222AAAA2222"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable158_664,
      I1 => inst_main_Inst_vga_int_y_count(1),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_vga_int_y_count(3),
      I4 => inst_main_Inst_vga_int_y_count(2),
      I5 => inst_main_Inst_vga_int_y_count(4),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable159_665
    );
  inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_221 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => inst_didact_ADDERTREE_INTERNAL_Madd11,
      I1 => inst_didact_ADDERTREE_INTERNAL_Madd1_cy_0_1,
      I2 => inst_didact_se5q(2),
      I3 => inst_didact_seqqq(2),
      I4 => inst_didact_se6q(2),
      I5 => inst_didact_vseq(2),
      O => inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_22
    );
  inst_didact_ADDERTREE_INTERNAL_Madd321 : LUT6
    generic map(
      INIT => X"8EE8E88EE88E8EE8"
    )
    port map (
      I0 => inst_didact_se6q(2),
      I1 => inst_didact_vseq(2),
      I2 => inst_didact_ADDERTREE_INTERNAL_Madd11,
      I3 => inst_didact_ADDERTREE_INTERNAL_Madd1_cy_0_1,
      I4 => inst_didact_se5q(2),
      I5 => inst_didact_seqqq(2),
      O => inst_didact_ADDERTREE_INTERNAL_Madd32_128
    );
  inst_didact_ADDERTREE_INTERNAL_Madd1_cy_0_21 : LUT6
    generic map(
      INIT => X"E80000E800E8E800"
    )
    port map (
      I0 => inst_didact_se5q(0),
      I1 => inst_didact_seqqq(0),
      I2 => inst_didact_se4q_0_Q,
      I3 => inst_didact_se4q_1_Q,
      I4 => inst_didact_se5q(1),
      I5 => inst_didact_seqqq(1),
      O => inst_didact_ADDERTREE_INTERNAL_Madd1_cy_0_1
    );
  inst_didact_ADDERTREE_INTERNAL_Madd1_lut_0_11 : LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
    port map (
      I0 => inst_didact_se5q(0),
      I1 => inst_didact_seqqq(0),
      I2 => inst_didact_se4q_0_Q,
      I3 => inst_didact_se4q_1_Q,
      I4 => inst_didact_se5q(1),
      I5 => inst_didact_seqqq(1),
      O => inst_didact_ADDERTREE_INTERNAL_Madd1_lut_0_1
    );
  inst_main_Inst_set_rgb_Msub_GND_23_o_GND_23_o_sub_112_OUT_6_0_xor_6_12 : LUT5
    generic map(
      INIT => X"AAAAA999"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(6),
      I1 => inst_main_Inst_vga_int_x_count(4),
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable121,
      I3 => inst_main_Inst_vga_int_x_count(3),
      I4 => inst_main_Inst_vga_int_x_count(5),
      O => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6)
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1211 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(0),
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_vga_int_x_count(2),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable121
    );
  inst_main_Inst_set_rgb_SF20111 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(0),
      I1 => inst_main_Inst_vga_int_x_count(1),
      I2 => inst_main_Inst_vga_int_x_count(2),
      O => inst_main_Inst_set_rgb_SF2011
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable171 : LUT6
    generic map(
      INIT => X"4040400040004000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o,
      I2 => inst_main_Inst_set_rgb_iX_9_PWR_18_o_LessThan_11_o,
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable113_646,
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable114_647,
      I5 => inst_main_Inst_vga_int_y_count(8),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable17_576
    );
  inst_main_Inst_set_rgb_SF174 : LUT6
    generic map(
      INIT => X"777777F777777777"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(0),
      I1 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_vga_int_y_count(4),
      I4 => inst_main_Inst_vga_int_y_count(0),
      I5 => inst_main_Inst_set_rgb_SF1931,
      O => inst_main_Inst_set_rgb_SF174_651
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o14 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(4),
      I1 => inst_main_Inst_vga_int_x_count(5),
      I2 => inst_main_Inst_vga_int_x_count(2),
      I3 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o12,
      I4 => inst_main_Inst_vga_int_x_count(3),
      I5 => inst_main_Inst_vga_int_x_count(6),
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o13_655
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o15 : LUT5
    generic map(
      INIT => X"AA2AFF7F"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(5),
      I1 => inst_main_Inst_set_rgb_SF1931,
      I2 => inst_main_Inst_vga_int_y_count(0),
      I3 => inst_main_Inst_vga_int_y_count(4),
      I4 => inst_main_Inst_set_rgb_n0216_16_1,
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o14_656
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable157 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable156_662,
      I1 => inst_main_Inst_vga_int_x_count(3),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(1),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable157_663
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1514 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_Mmux_pixel_enable1510_666,
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable1513_669,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1515
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1528 : LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I1 => inst_main_Inst_vga_int_y_count(0),
      I2 => inst_main_Inst_vga_int_y_count(2),
      I3 => inst_main_Inst_vga_int_y_count(1),
      I4 => inst_main_Inst_vga_int_y_count(5),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1529_680
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1536 : LUT6
    generic map(
      INIT => X"0402000280020002"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(1),
      I1 => inst_main_Inst_vga_int_y_count(2),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_y_count(3),
      I5 => inst_main_Inst_vga_int_y_count(4),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1537_688
    );
  inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_321_SW0 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => inst_didact_se5q(3),
      I1 => inst_didact_se6q(3),
      I2 => inst_didact_vseq(3),
      O => N98
    );
  inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_321 : LUT6
    generic map(
      INIT => X"7E81E817817E17E8"
    )
    port map (
      I0 => inst_didact_se5q(2),
      I1 => inst_didact_seqqq(2),
      I2 => inst_didact_ADDERTREE_INTERNAL_Madd11,
      I3 => inst_didact_se4q_3_Q,
      I4 => inst_didact_ADDERTREE_INTERNAL_Madd1_cy_0_1,
      I5 => N98,
      O => inst_didact_ADDERTREE_INTERNAL_Madd3_lut_0_32
    );
  inst_main_Inst_set_rgb_R_G : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_pixel_green,
      I1 => inst_main_Inst_set_rgb_pixel_enable,
      I2 => inst_main_video_en,
      I3 => inst_main_Inst_set_rgb_pixel_red,
      I4 => inst_main_Inst_set_rgb_pixel_blue,
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable17_576,
      O => inst_main_Inst_set_rgb_R_G_865
    );
  inst_main_Inst_set_rgb_R_D : LUT6
    generic map(
      INIT => X"8888888800000080"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_pixel_enable,
      I1 => inst_main_video_en,
      I2 => inst_main_Inst_set_rgb_Mmux_pixel_enable17_576,
      I3 => inst_main_Inst_set_rgb_pixel_blue,
      I4 => inst_main_Inst_set_rgb_pixel_green,
      I5 => inst_main_Inst_set_rgb_pixel_red,
      O => inst_main_Inst_set_rgb_R_D_866
    );
  inst_main_Inst_set_rgb_B_G : LUT6
    generic map(
      INIT => X"FFFFFFFFF7F7FFF7"
    )
    port map (
      I0 => inst_main_video_en,
      I1 => inst_main_Inst_set_rgb_pixel_enable,
      I2 => inst_main_Inst_set_rgb_pixel_red,
      I3 => inst_main_Inst_set_rgb_pixel_blue,
      I4 => inst_main_Inst_set_rgb_pixel_green,
      I5 => inst_main_Inst_set_rgb_VIDEO_EN_PWR_18_o_AND_43_o1,
      O => inst_main_Inst_set_rgb_B_G_862
    );
  inst_main_Inst_set_rgb_B_D : LUT6
    generic map(
      INIT => X"0100000000000000"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_VIDEO_EN_PWR_18_o_AND_43_o1,
      I1 => inst_main_Inst_set_rgb_pixel_red,
      I2 => inst_main_Inst_set_rgb_pixel_green,
      I3 => inst_main_video_en,
      I4 => inst_main_Inst_set_rgb_pixel_enable,
      I5 => inst_main_Inst_set_rgb_pixel_blue,
      O => inst_main_Inst_set_rgb_B_D_863
    );
  inst_main_Inst_set_rgb_G_D : LUT6
    generic map(
      INIT => X"0080008000000080"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_VIDEO_EN_PWR_18_o_AND_43_o1,
      I1 => inst_main_Inst_set_rgb_pixel_enable,
      I2 => inst_main_video_en,
      I3 => inst_main_Inst_set_rgb_pixel_red,
      I4 => inst_main_Inst_set_rgb_pixel_blue,
      I5 => inst_main_Inst_set_rgb_pixel_green,
      O => inst_main_Inst_set_rgb_G_D_864
    );
  inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"C2C2E0C2C2C2C2C2"
    )
    port map (
      I0 => inst_didact_debout2,
      I1 => inst_didact_debout4,
      I2 => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd3_107,
      I3 => inst_didact_inst3_debounce_Q2_141,
      I4 => inst_didact_inst3_debounce_Q3_142,
      I5 => inst_didact_inst3_debounce_Q1_140,
      O => inst_didact_Inst_msa5_hdl_etatpres_FSM_FFd2_In1_619
    );
  inst_didact_inst_diviseur_clk_div1_5hz_temp_rstpot : LUT6
    generic map(
      INIT => X"56666666AAAAAAAA"
    )
    port map (
      I0 => inst_didact_inst_diviseur_clk_div1_5hz_temp_417,
      I1 => inst_didact_inst_diviseur_clk_cnt1_5hz(21),
      I2 => inst_didact_inst_diviseur_clk_cnt1_5hz(20),
      I3 => inst_didact_inst_diviseur_clk_cnt1_5hz(19),
      I4 => inst_didact_inst_diviseur_clk_n0006_inv3_629,
      I5 => inst_didact_inst_diviseur_clk_cnt1_5hz(22),
      O => inst_didact_inst_diviseur_clk_div1_5hz_temp_rstpot_832
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable18_SW0 : LUT6
    generic map(
      INIT => X"1101110111010000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(9),
      I1 => inst_main_Inst_vga_int_y_count(8),
      I2 => inst_main_Inst_vga_int_y_count(5),
      I3 => inst_main_Inst_set_rgb_iY_9_GND_23_o_LessThan_10_o1,
      I4 => bt4_IBUF_3,
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable19_702,
      O => N96
    );
  inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o111 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(2),
      I4 => inst_main_Inst_vga_int_x_count(4),
      I5 => inst_main_Inst_vga_int_x_count(5),
      O => inst_main_Inst_set_rgb_GND_23_o_iX_9_LessThan_12_o11_590
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1530 : LUT6
    generic map(
      INIT => X"1511111111111111"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I1 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4),
      I2 => inst_main_Inst_vga_int_x_count(5),
      I3 => inst_main_Inst_set_rgb_Mmux_pixel_enable121,
      I4 => inst_main_Inst_vga_int_x_count(3),
      I5 => inst_main_Inst_set_rgb_SF2011,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1531_682
    );
  inst_main_Inst_set_rgb_Msub_GND_23_o_GND_23_o_sub_112_OUT_6_0_xor_6_111 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(3),
      O => inst_main_Inst_set_rgb_Msub_GND_23_o_GND_23_o_sub_112_OUT_6_0_xor_6_11
    );
  inst_main_Inst_set_rgb_Msub_GND_23_o_GND_23_o_sub_112_OUT_6_0_xor_4_11 : LUT5
    generic map(
      INIT => X"99999995"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(4),
      I1 => inst_main_Inst_vga_int_x_count(3),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(1),
      I4 => inst_main_Inst_vga_int_x_count(2),
      O => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4)
    );
  inst_didact_b01 : LUT6
    generic map(
      INIT => X"08FF080808080808"
    )
    port map (
      I0 => inst_didact_inst2_debounce_Q2_138,
      I1 => inst_didact_inst2_debounce_Q1_137,
      I2 => inst_didact_inst2_debounce_Q3_139,
      I3 => inst_didact_inst4_debounce_Q3_145,
      I4 => inst_didact_inst4_debounce_Q2_144,
      I5 => inst_didact_inst4_debounce_Q1_143,
      O => inst_didact_b0
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable156 : LUT6
    generic map(
      INIT => X"0080008000800000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(6),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(5),
      I3 => inst_main_Inst_vga_int_x_count(4),
      I4 => inst_main_Inst_vga_int_x_count(3),
      I5 => inst_main_Inst_set_rgb_Mmux_pixel_enable155_661,
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable156_662
    );
  inst_didact_b11 : LUT6
    generic map(
      INIT => X"08FF080808080808"
    )
    port map (
      I0 => inst_didact_inst3_debounce_Q2_141,
      I1 => inst_didact_inst3_debounce_Q1_140,
      I2 => inst_didact_inst3_debounce_Q3_142,
      I3 => inst_didact_inst4_debounce_Q3_145,
      I4 => inst_didact_inst4_debounce_Q2_144,
      I5 => inst_didact_inst4_debounce_Q1_143,
      O => inst_didact_b1
    );
  inst_main_Inst_set_rgb_Msub_GND_23_o_GND_23_o_sub_112_OUT_6_0_xor_5_11 : LUT6
    generic map(
      INIT => X"AAAAAAAA99999995"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(5),
      I1 => inst_main_Inst_vga_int_x_count(3),
      I2 => inst_main_Inst_vga_int_x_count(1),
      I3 => inst_main_Inst_vga_int_x_count(2),
      I4 => inst_main_Inst_vga_int_x_count(0),
      I5 => inst_main_Inst_vga_int_x_count(4),
      O => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5)
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In2 : LUT6
    generic map(
      INIT => X"BF00BFBFBFBFBFBF"
    )
    port map (
      I0 => inst_didact_inst4_debounce_Q3_145,
      I1 => inst_didact_inst4_debounce_Q2_144,
      I2 => inst_didact_inst4_debounce_Q1_143,
      I3 => inst_didact_inst2_debounce_Q3_139,
      I4 => inst_didact_inst2_debounce_Q1_137,
      I5 => inst_didact_inst2_debounce_Q2_138,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In2_614
    );
  inst_main_Inst_vga_int_x_count_0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_0_Q,
      Q => inst_main_Inst_vga_int_x_count_0_1_869
    );
  inst_main_Inst_vga_int_x_count_1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_1_Q,
      Q => inst_main_Inst_vga_int_x_count_1_1_870
    );
  inst_main_Inst_vga_int_x_count_0_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_0_Q,
      Q => inst_main_Inst_vga_int_x_count_0_2_871
    );
  inst_main_Inst_vga_int_x_count_2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_2_Q,
      Q => inst_main_Inst_vga_int_x_count_2_1_872
    );
  inst_main_Inst_vga_int_x_count_4_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_4_Q,
      Q => inst_main_Inst_vga_int_x_count_4_1_873
    );
  inst_main_Inst_vga_int_x_count_6_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_6_Q,
      Q => inst_main_Inst_vga_int_x_count_6_1_874
    );
  inst_main_Inst_vga_int_x_count_5_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_5_Q,
      Q => inst_main_Inst_vga_int_x_count_5_1_875
    );
  inst_main_Inst_vga_int_x_count_3_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk100mhz,
      CE => inst_main_Inst_vga_int_en_25_565,
      D => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_3_Q,
      Q => inst_main_Inst_vga_int_x_count_3_1_876
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In4 : MUXF7
    port map (
      I0 => N100,
      I1 => N101,
      S => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd2_120,
      O => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In4_F : LUT5
    generic map(
      INIT => X"AAF7AAA2"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I1 => inst_didact_b1,
      I2 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In2_614,
      I3 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121,
      I4 => inst_didact_start_msa4_173,
      O => N100
    );
  inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In4_G : LUT6
    generic map(
      INIT => X"F8FAFAF8A8AAAFAF"
    )
    port map (
      I0 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_122,
      I1 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd4_In2_614,
      I2 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd3_121,
      I3 => inst_didact_b1,
      I4 => inst_didact_Inst_msa4_hdl_etatpres_FSM_FFd1_119,
      I5 => inst_didact_gs,
      O => N101
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In6 : MUXF7
    port map (
      I0 => N102,
      I1 => N103,
      S => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In6_F : LUT6
    generic map(
      INIT => X"FFFFFFFF040455AE"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I1 => inst_didact_start_msa6_171,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I3 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I4 => inst_didact_gs,
      I5 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In3_623,
      O => N102
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In6_G : LUT6
    generic map(
      INIT => X"FFFFFFFF19889988"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      I1 => inst_didact_gs,
      I2 => inst_didact_b0,
      I3 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I4 => inst_didact_b1,
      I5 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_In3_623,
      O => N103
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o13 : MUXF7
    port map (
      I0 => N104,
      I1 => N105,
      S => inst_main_Inst_vga_int_y_count(2),
      O => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o12
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o13_F : LUT5
    generic map(
      INIT => X"AAAAEC6A"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(1),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_y_count(1),
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_y_count(5),
      O => N104
    );
  inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o13_G : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2AAA"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(1),
      I1 => inst_main_Inst_vga_int_y_count(3),
      I2 => inst_main_Inst_vga_int_y_count(4),
      I3 => inst_main_Inst_vga_int_y_count(1),
      I4 => inst_main_Inst_vga_int_x_count(0),
      I5 => inst_main_Inst_vga_int_y_count(5),
      O => N105
    );
  inst_main_Inst_set_rgb_SF2013 : MUXF7
    port map (
      I0 => N106,
      I1 => N107,
      S => inst_main_Inst_vga_int_x_count(3),
      O => inst_main_Inst_set_rgb_SF201
    );
  inst_main_Inst_set_rgb_SF2013_F : LUT6
    generic map(
      INIT => X"FECEA880FFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(2),
      I1 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(1),
      I4 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I5 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4),
      O => N106
    );
  inst_main_Inst_set_rgb_SF2013_G : LUT6
    generic map(
      INIT => X"AB11BB17FFFFFFFF"
    )
    port map (
      I0 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(6),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      I4 => inst_main_Inst_vga_int_x_count(1),
      I5 => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(4),
      O => N107
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1517 : MUXF7
    port map (
      I0 => N108,
      I1 => N109,
      S => inst_main_Inst_vga_int_y_count(5),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1518_671
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1517_F : LUT6
    generic map(
      INIT => X"80000080AAAA0000"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(1),
      I1 => inst_main_Inst_vga_int_y_count(3),
      I2 => inst_main_Inst_vga_int_y_count(4),
      I3 => inst_main_Inst_vga_int_x_count(0),
      I4 => inst_main_Inst_vga_int_y_count(0),
      I5 => inst_main_Inst_vga_int_y_count(2),
      O => N108
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1517_G : LUT6
    generic map(
      INIT => X"0404144444444444"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(4),
      I1 => inst_main_Inst_vga_int_x_count(0),
      I2 => inst_main_Inst_vga_int_y_count(3),
      I3 => inst_main_Inst_vga_int_y_count(0),
      I4 => inst_main_Inst_vga_int_y_count(1),
      I5 => inst_main_Inst_vga_int_y_count(2),
      O => N109
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1526 : MUXF7
    port map (
      I0 => N110,
      I1 => N111,
      S => inst_main_Inst_set_rgb_GND_23_o_GND_23_o_sub_112_OUT(5),
      O => inst_main_Inst_set_rgb_Mmux_pixel_enable1527_678
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1526_F : LUT6
    generic map(
      INIT => X"FFFF222022202220"
    )
    port map (
      I0 => inst_main_Inst_vga_int_x_count(3),
      I1 => inst_main_Inst_vga_int_x_count(2),
      I2 => inst_main_Inst_vga_int_x_count(0),
      I3 => inst_main_Inst_vga_int_x_count(1),
      I4 => inst_main_Inst_vga_int_y_count(0),
      I5 => inst_main_Inst_set_rgb_Mmux_PWR_18_o_GND_23_o_equal_114_o56,
      O => N110
    );
  inst_main_Inst_set_rgb_Mmux_pixel_enable1526_G : LUT6
    generic map(
      INIT => X"44F444F444544404"
    )
    port map (
      I0 => inst_main_Inst_vga_int_y_count(5),
      I1 => inst_main_Inst_set_rgb_n0216_16_1,
      I2 => inst_main_Inst_vga_int_x_count(3),
      I3 => inst_main_Inst_vga_int_x_count(2),
      I4 => inst_main_Inst_set_rgb_Mmux_pixel_enable1524,
      I5 => inst_main_Inst_vga_int_x_count(1),
      O => N111
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_In : MUXF7
    port map (
      I0 => N112,
      I1 => N113,
      S => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_98,
      O => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_In_102
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_In_F : LUT5
    generic map(
      INIT => X"AEEE0444"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I1 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I3 => inst_didact_b1,
      I4 => N6,
      O => N112
    );
  inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd2_In_G : LUT6
    generic map(
      INIT => X"ABBA5D55FFFFFFFF"
    )
    port map (
      I0 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd3_99,
      I1 => inst_didact_b0,
      I2 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd1_97,
      I3 => inst_didact_b1,
      I4 => inst_didact_Inst_msa6_hdl_etatpres_FSM_FFd4_100,
      I5 => inst_didact_gs,
      O => N113
    );
  inst_didact_Mcount_dipslay5_cpt_lut_0_INV_0 : INV
    port map (
      I => inst_didact_dipslay5_cpt(0),
      O => inst_didact_Mcount_dipslay5_cpt_lut(0)
    );
  inst_didact_Mcount_dipslay6_cpt_lut_0_INV_0 : INV
    port map (
      I => inst_didact_dipslay6_cpt(0),
      O => inst_didact_Mcount_dipslay6_cpt_lut(0)
    );
  inst_didact_Mcount_dipslay3_cpt_lut_0_INV_0 : INV
    port map (
      I => inst_didact_dipslay3_cpt(0),
      O => inst_didact_Mcount_dipslay3_cpt_lut(0)
    );
  inst_didact_Mcount_dipslay4_cpt_lut_0_INV_0 : INV
    port map (
      I => inst_didact_dipslay4_cpt(0),
      O => inst_didact_Mcount_dipslay4_cpt_lut(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt4hz_lut_0_INV_0 : INV
    port map (
      I => inst_didact_inst_diviseur_clk_cnt4hz(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt4hz_lut(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2khz_lut_0_INV_0 : INV
    port map (
      I => inst_didact_inst_diviseur_clk_cnt2khz(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2khz_lut(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1hz_lut_0_INV_0 : INV
    port map (
      I => inst_didact_inst_diviseur_clk_cnt1hz(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1hz_lut(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt2hz_lut_0_INV_0 : INV
    port map (
      I => inst_didact_inst_diviseur_clk_cnt2hz(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt2hz_lut(0)
    );
  inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_lut_0_INV_0 : INV
    port map (
      I => inst_didact_inst_diviseur_clk_cnt1_5hz(0),
      O => inst_didact_inst_diviseur_clk_Mcount_cnt1_5hz_lut(0)
    );
  inst_main_Inst_vga_int_Mmux_h_state_1_x_count_9_wide_mux_19_OUT11_INV_0 : INV
    port map (
      I => inst_main_Inst_vga_int_x_count(0),
      O => inst_main_Inst_vga_int_h_state_1_x_count_9_wide_mux_19_OUT_0_Q
    );
  inst_main_Inst_vga_int_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => inst_main_Inst_vga_int_count(0),
      O => inst_main_Inst_vga_int_Result(0)
    );
  inst_main_Inst_set_rgb_R_1 : LD
    port map (
      D => inst_main_Inst_set_rgb_R_D_866,
      G => inst_main_Inst_set_rgb_R_G_865,
      Q => inst_main_Inst_set_rgb_R_1_891
    );
  inst_main_Inst_set_rgb_R_2 : LD
    port map (
      D => inst_main_Inst_set_rgb_R_D_866,
      G => inst_main_Inst_set_rgb_R_G_865,
      Q => inst_main_Inst_set_rgb_R_2_892
    );
  inst_main_Inst_set_rgb_G_1 : LD
    port map (
      D => inst_main_Inst_set_rgb_G_D_864,
      G => inst_main_Inst_set_rgb_B_G_862,
      Q => inst_main_Inst_set_rgb_G_1_893
    );
  inst_main_Inst_set_rgb_G_2 : LD
    port map (
      D => inst_main_Inst_set_rgb_G_D_864,
      G => inst_main_Inst_set_rgb_B_G_862,
      Q => inst_main_Inst_set_rgb_G_2_894
    );
  inst_main_Inst_set_rgb_B_1 : LD
    port map (
      D => inst_main_Inst_set_rgb_B_D_863,
      G => inst_main_Inst_set_rgb_B_G_862,
      Q => inst_main_Inst_set_rgb_B_1_895
    );

end Structure;

