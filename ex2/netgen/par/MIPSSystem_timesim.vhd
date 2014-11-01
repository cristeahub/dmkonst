--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: MIPSSystem_timesim.vhd
-- /___/   /\     Timestamp: Wed Oct 15 14:01:19 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf MIPSSystem.pcf -rpw 100 -tpw 0 -ar Structure -tm MIPSSystem -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim MIPSSystem.ncd MIPSSystem_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.15 2010-12-02)
-- Input file	: MIPSSystem.ncd
-- Output file	: /home/aleksanb/Projects/dmkonst/ex1/netgen/par/MIPSSystem_timesim.vhd
-- # of Entities	: 1
-- Design Name	: MIPSSystem
-- Xilinx	: /opt/Xilinx/12.4/ISE_DS/ISE/
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity MIPSSystem is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    UART_Rx : in STD_LOGIC := 'X'; 
    UART_Tx : out STD_LOGIC; 
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end MIPSSystem;

architecture Structure of MIPSSystem is
  signal HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0366_inv_0 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021 : STD_LOGIC; 
  signal N30_0 : STD_LOGIC; 
  signal hcDMemWriteEnable : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntWrite_6026 : STD_LOGIC; 
  signal HostCommInst_procEnableSignal_6027 : STD_LOGIC; 
  signal hcIMemWriteEnable_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0347_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_binWriteOp_6030 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iWriteReq_6033 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_writeOp_6038 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N59 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_2_0 : STD_LOGIC; 
  signal reset_IBUF_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N17 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataNibble_2_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N70 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N135 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In3 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_155_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_n0052_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_newTxData_6056 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_30_o_MUX_516_o_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_readOp_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iReadReq_6062 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_116_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0323_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_binLastByte : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_binReadOp_6066 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_sTxBusy_6067 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_binReadOp_PWR_37_o_MUX_540_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_79_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N57_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0406_inv21 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_readDoneS_6079 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataInHexRange_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_rxData_7_GND_181_o_equal_1_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N63 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_In : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_6087 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_In1_6088 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_6089 : STD_LOGIC; 
  signal MIPSProcInst_alu_result_out_11_0 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_In2_6096 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_6097 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_6098 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_In3_6099 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_N24 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_In1_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_result_out_26_0 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable1_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0406_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT1 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result614 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6123_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_ce16_6135 : STD_LOGIC; 
  signal MIPSProcInst_reg_write : STD_LOGIC; 
  signal MIPSProcInst_ir_write_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_0 : STD_LOGIC; 
  signal procDMemWriteEnable : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_Q_6379 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_Q_6384 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_6388 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_Q_6391 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal MIPSProcInst_N193 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_0_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_1_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_2_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_Q_6409 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_3_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_4_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_5_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_6_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_Q_6424 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_7_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_8_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_9_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_10_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_Q_6437 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_11_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_12_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_13_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_14_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_Q_6449 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_15_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_16_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_17_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_18_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_Q_6462 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_19_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_20_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_21_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_22_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_Q_6475 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_23_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_24_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_25_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_26_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_Q_6488 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_27_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_28_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_29_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_30_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result1_split_31_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_Q_6505 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_Q_6514 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_Q_6516 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_0_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_1_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_2_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_Q_6521 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_3_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_4_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_5_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_6_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_Q_6526 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_7_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_8_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_9_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_10_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_Q_6532 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_11_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_12_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_13_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_14_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0372_inv_6546 : STD_LOGIC; 
  signal UART_Rx_IBUF_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_serOut_6554 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal N111_0 : STD_LOGIC; 
  signal HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11_6560 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_readDone_6561 : STD_LOGIC; 
  signal HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_1 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataNibble_3_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0369_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataNibble_1_0 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_2_6570 : STD_LOGIC; 
  signal MIPSProcInst_N86 : STD_LOGIC; 
  signal MIPSProcInst_alu_N132_0 : STD_LOGIC; 
  signal N60_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh123 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result634_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh119 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh115 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh107 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh43 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh11 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh3 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh7 : STD_LOGIC; 
  signal MIPSProcInst_alu_n0031 : STD_LOGIC; 
  signal HostCommInst_N3 : STD_LOGIC; 
  signal HostCommInst_procResetSignal_6587 : STD_LOGIC; 
  signal MIPSProcInst_alu_N50_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_N51_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6135 : STD_LOGIC; 
  signal MIPSProcInst_alu_N32 : STD_LOGIC; 
  signal MIPSProcInst_alu_result_out_27_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6125_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh1 : STD_LOGIC; 
  signal MIPSProcInst_alu_N5 : STD_LOGIC; 
  signal MIPSProcInst_alu_N49 : STD_LOGIC; 
  signal MIPSProcInst_alu_N57_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_result_out_1_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_N118 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh124 : STD_LOGIC; 
  signal MIPSProcInst_alu_N52 : STD_LOGIC; 
  signal MIPSProcInst_alu_result_out_8_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh40 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh12_6607 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh20 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6173_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh16 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh120 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6264_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_N59 : STD_LOGIC; 
  signal MIPSProcInst_alu_result_out_3_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_N120 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh6 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh10 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6233_6618 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6193_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh18 : STD_LOGIC; 
  signal MIPSProcInst_alu_N31 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh23 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh47 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh15 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6255_6627 : STD_LOGIC; 
  signal MIPSProcInst_alu_result_out_31_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6254 : STD_LOGIC; 
  signal MIPSProcInst_alu_N138 : STD_LOGIC; 
  signal MIPSProcInst_alu_N48_0 : STD_LOGIC; 
  signal MIPSProcInst_alu_N29_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0411_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_N3 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable8_6648 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result617 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6171_6651 : STD_LOGIC; 
  signal MIPSProcInst_alu_N3 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result67 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result672_6655 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6181_6660 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result618 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6183 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable2_6664 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6214_6669 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result621_6670 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6213 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6211_6672 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable7_6674 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable : STD_LOGIC; 
  signal HostCommInst_GND_147_o_regAddress_15_equal_3_o_mmx_out : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N46 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0326_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_binWriteOp_PWR_37_o_MUX_542_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrAutoInc_6708 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntRead_6747 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable6_6757 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_sendStatFlag_6758 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result615 : STD_LOGIC; 
  signal MIPSProcInst_alu_N33 : STD_LOGIC; 
  signal MIPSProcInst_alu_out4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal MIPSProcInst_alu_out : STD_LOGIC; 
  signal MIPSProcInst_alu_out1_6764 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_In2_6765 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_In : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_In1_6767 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_In : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_In3_6771 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0_0 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_In2_6791 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_In : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0406_inv211_6798 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_n0050_inv_6806 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6101 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh146 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6102_6810 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_3_6814 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result62 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result64 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result65 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result66 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh19 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_4_6821 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh112 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6131_6823 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh8 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh116 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh21_6826 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6151_6827 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6223 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh125 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6232_6831 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result627 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result629 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh13 : STD_LOGIC; 
  signal MIPSProcInst_alu_N30 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh14 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh22 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh4 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh9 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh5 : STD_LOGIC; 
  signal MIPSProcInst_alu_N130 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6143_6842 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh17 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6153_6844 : STD_LOGIC; 
  signal MIPSProcInst_alu_N129 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh44 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_1_6847 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_1_6848 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_1_6849 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_1_6850 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh45 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh46 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6113_6858 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6112_6859 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6111_6860 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result616 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6243_6863 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal HostCommInst_regWriteEnable_GND_147_o_AND_174_o : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6210 : STD_LOGIC; 
  signal MIPSProcInst_alu_N114 : STD_LOGIC; 
  signal MIPSProcInst_alu_N54 : STD_LOGIC; 
  signal MIPSProcInst_alu_N117 : STD_LOGIC; 
  signal MIPSProcInst_alu_N53 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh126 : STD_LOGIC; 
  signal MIPSProcInst_alu_N119 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result68 : STD_LOGIC; 
  signal MIPSProcInst_alu_N55 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result682_6875 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result69 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result692_6877 : STD_LOGIC; 
  signal MIPSProcInst_alu_N56 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result683_6879 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result691_6880 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_2_6882 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_2_6884 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_2_6885 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6163_6886 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6144_6887 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6164_6888 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result611 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result612 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6132_6891 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6133_6892 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6141_6893 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result630 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6224_6895 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result622_6896 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh151 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6302_6898 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6136_6899 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh121 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6152_6901 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh118 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh122 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh106 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result623_6906 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result632 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh104 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6146 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh149 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6161_6911 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6244_6912 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result624_6913 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6321_6914 : STD_LOGIC; 
  signal MIPSProcInst_alu_N113 : STD_LOGIC; 
  signal MIPSProcInst_alu_N139 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh114 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6271_6918 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6273_6919 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result628 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6282_6922 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh150 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6292_6924 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result671_6926 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In1_6927 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0335_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0342_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1_6930 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_6931 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1_6933 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2_6934 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_n0054_inv : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result626 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6263 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_6939 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_n0057_inv_6941 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6114_6944 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd2_In2_6945 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0351_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_108_o : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_n0061_inv : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_In3_6951 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT7 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_f7_6955 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh105 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh113 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result641_6958 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result651_6959 : STD_LOGIC; 
  signal HostCommInst_regWriteEnable_GND_147_o_AND_173_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_6961 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_N4 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6121_6969 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6124_6970 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result661_6971 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT31_6972 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N52 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result684_6975 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result693_6976 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_In4_6978 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result681_6981 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6312 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6313_6984 : STD_LOGIC; 
  signal MIPSProcInst_alu_N136 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6203 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_In3_6987 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6322_6989 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6215_6990 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result61 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh109 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh117 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6154_6994 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6165_6995 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result625 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result613 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6134_7002 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6145_7003 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6231_7009 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6234 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6241_7011 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable3_7012 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6221_7013 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6291_7014 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6301_7015 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh41 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh110 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6272_7020 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6281_7021 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal MIPSProcInst_alu_Sh108 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DOPBDOP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DOPBDOP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DOPADOP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DOPADOP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DIPADIP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DIPADIP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR2 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR3 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR4 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DIPBDIP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_DIPBDIP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR2 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR3 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR4 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_WEBWEU0_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_WEBWEU1_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_WEAWEL0_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_WEAWEL1_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_RSTA_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_REGCEBREGCE_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_CLKBRDCLK_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_CLKAWRCLK_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ENAWREN_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_REGCEA_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_ENBRDEN_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file_RSTBRST_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DOPBDOP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DOPBDOP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DOPADOP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DOPADOP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DIPADIP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DIPADIP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR2 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR3 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR4 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DIPBDIP0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_DIPBDIP1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR0 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR1 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR2 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR3 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR4 : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_WEBWEU0_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_WEBWEU1_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_WEAWEL0_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_WEAWEL1_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_RSTA_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_REGCEBREGCE_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_CLKBRDCLK_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_CLKAWRCLK_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ENAWREN_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_REGCEA_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_ENBRDEN_INT : STD_LOGIC; 
  signal MIPSProcInst_registers_Mram_register_file1_RSTBRST_INT : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt_521 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt_pack_7 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q_515 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q_510 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q_499 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_counter_6_rt_543 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q_527 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q_577 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_counter_9_rt_573 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q_568 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q_556 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q_607 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q_602 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q_597 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q_586 : STD_LOGIC; 
  signal MIPSProcInst_alu_a_mux_out_0_rt_639 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi_880 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_0_Q_879 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi1_874 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_1_Q_873 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi2_868 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_2_Q_867 : STD_LOGIC; 
  signal ProtoComp40_CYINITVCC_1 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi3_860 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_3_Q_859 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi4_910 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_4_Q_909 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi5_904 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_5_Q_903 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi6_898 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_6_Q_897 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi7_890 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_7_Q_889 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi8_940 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_8_Q_939 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi9_934 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_9_Q_933 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi10_928 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_10_Q_927 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi11_920 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_11_Q_919 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi12_970 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_12_Q_969 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi13_964 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_13_Q_963 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi14_958 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_14_Q_957 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_Q_956 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi15_950 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_15_Q_949 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_lut_0_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_1_rt_991 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_2_rt_988 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_0_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_1_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_2_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_3_Q : STD_LOGIC; 
  signal ProtoComp43_CYINITGND_0 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_3_rt_979 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_8_rt_1016 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_9_rt_1013 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_10_rt_1010 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_8_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_9_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_10_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_11_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_11_rt_1001 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_12_rt_1036 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_13_rt_1033 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_14_rt_1030 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_12_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_13_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_14_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_rt_1023 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_0_rt_1079 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount1 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount3 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount4 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount5 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount6 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount7 : STD_LOGIC; 
  signal UART_Rx_IBUF_1127 : STD_LOGIC; 
  signal reset_IBUF_1132 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1135 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result634_1147 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_12_rstpot_1204 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_13_rstpot_1199 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_14_rstpot_1194 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_15_rstpot_1188 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_rxData_1_INV_108_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_pack_9 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0335_inv_pack_2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_561_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o_pack_4 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_readOp_1292 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_157_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_158_o : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal MIPSProcInst_alu_N49_pack_3 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_20_rstpot_1450 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_21_rstpot_1445 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_22_rstpot_1440 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_23_rstpot_1434 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_4_rt_1473 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_5_rt_1470 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_6_rt_1467 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_4_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_6_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_7_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_7_rt_1457 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_13_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_14_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_15_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_11_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_12_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_10_Q : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In22 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In221_1542 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N57 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_pack_6 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_rt_1645 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_rt_1639 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_pack_2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_rt_1634 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_pack_4 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_rt_1629 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_0_rstpot_1670 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_1_rstpot_1665 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_2_rstpot_1660 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_3_rstpot_1654 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_4_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_6_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_7_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_8_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_9_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_10_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_11_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_9_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_7_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_8_Q : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_n0054_inv_pack_9 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_count16 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_count16_2_pack_11 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_count162 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_count161 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_count163 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal MIPSProcInst_pc_write_enable1_1950 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_0_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_1_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_2_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_3_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataNibble_2_1_2079 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataNibble_2_2_2068 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_3_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_4_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_6_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_0_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_1_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_2_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_N17_pack_10 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_pack_7 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_rxBusy_PWR_31_o_MUX_528_o : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_16_rstpot_2285 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_17_rstpot_2280 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_18_rstpot_2275 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_19_rstpot_2269 : STD_LOGIC; 
  signal hcIMemWriteEnable : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_2_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_12_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_13_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_14_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_15_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_bitCount_0_pack_5 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount1 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_bitCount_2_pack_7 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount3 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal MIPSProcInst_alu_N51 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_27_rstpot_2530 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_28_rstpot_2515 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_29_rstpot_2506 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal MIPSProcInst_alu_N50 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_24_rstpot_2581 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_25_rstpot_2576 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_26_rstpot_2571 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd3_In3_pack_4 : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd4_In1_2628 : STD_LOGIC; 
  signal HostCommInst_Mmux_regReadData1 : STD_LOGIC; 
  signal HostCommInst_Mmux_regReadData11_2637 : STD_LOGIC; 
  signal HostCommInst_Mmux_regReadData1_f7_2636 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_4_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_6_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_7_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_pack_10 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_In : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_In : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_2782 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7_pack_1 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_7_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_6_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In41_2827 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_f7_pack_11 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_count16 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_count16_1_pack_10 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_count161 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_count162 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ur_Mcount_count163 : STD_LOGIC; 
  signal HostCommInst_regWriteEnable_GND_147_o_AND_173_o_pack_3 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_6_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_7_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_pack_7 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_n0366_inv : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_0_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_1_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_6_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_7_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_30_o_MUX_516_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_0_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_8_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_1_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3_pack_5 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_3_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_2_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5_pack_7 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_5_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_4_Q : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o_pack_1 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_newTxData_Mux_107_o : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_bitCount_0_pack_10 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount1 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_bitCount_2_pack_13 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount3 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_8_rstpot_3300 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_9_rstpot_3295 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_10_rstpot_3290 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_11_rstpot_3284 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal MIPSProcInst_ir_write : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_4_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_0_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_1_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_3_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_2_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_3_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4_pack_12 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_4_Q : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataNibble_3_2 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataNibble_3_21_3499 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_dataInHexRange : STD_LOGIC; 
  signal MIPSProcInst_control_unit_state_FSM_FFd1_In_pack_10 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6173 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6264_3809 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6193 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal MIPSProcInst_alu_N29 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_ut_ut_PWR_30_o_dataBuf_0_MUX_526_o : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal MIPSProcInst_alu_N132 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal MIPSProcInst_alu_N48 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal MIPSProcInst_alu_N57 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_30_rstpot_5692 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_31_rstpot_5684 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6125_5817 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_4_rstpot_5862 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_5_rstpot_5857 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_6_rstpot_5852 : STD_LOGIC; 
  signal MIPSProcInst_pc_pc_out_7_rstpot_5846 : STD_LOGIC; 
  signal MIPSProcInst_alu_Mmux_alu_result6123 : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_13_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_14_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_15_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_16_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_17_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_18_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_19_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_20_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_21_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_22_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_23_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_24_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_25_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_26_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_27_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_28_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_29_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_30_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_31_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_UART_Tx_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrAutoInc_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iReadReq_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntRead_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntRead_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_writeOp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readOp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binWriteOp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDone_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDone_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binReadOp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sendStatFlag_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sendStatFlag_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iWriteReq_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxBusy_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntWrite_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntWrite_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_newRxData_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDoneS_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDoneS_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_23_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_procEnableSignal_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_procEnableSignal_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_newTxData_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_ce16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sTxBusy_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sTxBusy_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_procResetSignal_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_procResetSignal_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_25_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_serOut_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_31_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_alu_out_value_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_pc_pc_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_0_IN : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_12_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_13_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_1_OBUF_1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_5_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_1_OBUF_1_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_9_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_leds_0_OBUF_1_11_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal HostCommInst_UARTHandlerInst_up_txNibble : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_readDataS : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ur_rxData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_iIntAddress : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_dataParam : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_addrParam : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ut_dataBuf : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal MIPSProcInst_pc_mux_out : STD_LOGIC_VECTOR ( 27 downto 0 ); 
  signal MIPSProcInst_pc_source : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal MIPSProcInst_alu_out_value_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal MIPSProcInst_instruction_register_instruction_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_txData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ut_bitCount : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ur_bitCount : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MIPSProcInst_alu_b_mux_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ut_count16 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ur_count16 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ur_inSync : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal MIPSProcInst_read_data_1_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal MIPSProcInst_write_register_mux_out : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal MIPSProcInst_write_data_mux_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal procIMemReadData : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal MIPSProcInst_pc_pc_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_intWrData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal hcIMemReadData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal procDMemReadData : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal hcDMemReadData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal procDMemWriteData : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_bg_counter : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal MIPSProcInst_alu_op : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal MIPSProcInst_alu_a_mux_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal MIPSProcInst_alu_control_out : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal MIPSProcInst_alu_src_b : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_binByteCount : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal MIPSProcInst_alu_src_a : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_dataNibble : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal MIPSProcInst_alu_result_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_ut_ur_dataBuf : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal HostCommInst_UARTHandlerInst_up_txChar : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal HostCommInst_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal MIPSProcInst_alu_Mmux_alu_result1_rs_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal MIPSProcInst_alu_Mmux_alu_result1_split : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal HostCommInst_regReadData : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR : STD_LOGIC_VECTOR ( 9 downto 5 ); 
begin
  MIPSProcInst_registers_Mram_register_file_WEBWEU0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file_WEBWEU0_INT
    );
  MIPSProcInst_registers_Mram_register_file_WEBWEU1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file_WEBWEU1_INT
    );
  MIPSProcInst_registers_Mram_register_file_WEAWEL0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file_WEAWEL0_INT
    );
  MIPSProcInst_registers_Mram_register_file_WEAWEL1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file_WEAWEL1_INT
    );
  MIPSProcInst_registers_Mram_register_file_RSTAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => MIPSProcInst_registers_Mram_register_file_RSTA_INT
    );
  MIPSProcInst_registers_Mram_register_file_REGCEBREGCEINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file_REGCEBREGCE_INT
    );
  MIPSProcInst_registers_Mram_register_file_CLKBRDCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => MIPSProcInst_registers_Mram_register_file_CLKBRDCLK_INT
    );
  MIPSProcInst_registers_Mram_register_file_CLKAWRCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => MIPSProcInst_registers_Mram_register_file_CLKAWRCLK_INT
    );
  MIPSProcInst_registers_Mram_register_file_ENAWRENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file_ENAWREN_INT
    );
  MIPSProcInst_registers_Mram_register_file_REGCEAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file_REGCEA_INT
    );
  MIPSProcInst_registers_Mram_register_file_ENBRDENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file_ENBRDEN_INT
    );
  MIPSProcInst_registers_Mram_register_file_RSTBRSTINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y12",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => MIPSProcInst_registers_Mram_register_file_RSTBRST_INT
    );
  MIPSProcInst_registers_Mram_register_file : X_RAMB8BWER
    generic map(
      DATA_WIDTH_A => 36,
      DATA_WIDTH_B => 36,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RAM_MODE => "SDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      LOC => "RAMB8_X1Y12"
    )
    port map (
      RSTBRST => MIPSProcInst_registers_Mram_register_file_RSTBRST_INT,
      ENBRDEN => MIPSProcInst_registers_Mram_register_file_ENBRDEN_INT,
      REGCEA => MIPSProcInst_registers_Mram_register_file_REGCEA_INT,
      ENAWREN => MIPSProcInst_registers_Mram_register_file_ENAWREN_INT,
      CLKAWRCLK => MIPSProcInst_registers_Mram_register_file_CLKAWRCLK_INT,
      CLKBRDCLK => MIPSProcInst_registers_Mram_register_file_CLKBRDCLK_INT,
      REGCEBREGCE => MIPSProcInst_registers_Mram_register_file_REGCEBREGCE_INT,
      RSTA => MIPSProcInst_registers_Mram_register_file_RSTA_INT,
      WEAWEL(1) => MIPSProcInst_registers_Mram_register_file_WEAWEL1_INT,
      WEAWEL(0) => MIPSProcInst_registers_Mram_register_file_WEAWEL0_INT,
      WEBWEU(1) => MIPSProcInst_registers_Mram_register_file_WEBWEU1_INT,
      WEBWEU(0) => MIPSProcInst_registers_Mram_register_file_WEBWEU0_INT,
      ADDRAWRADDR(12) => GND,
      ADDRAWRADDR(11) => GND,
      ADDRAWRADDR(10) => GND,
      ADDRAWRADDR(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(9),
      ADDRAWRADDR(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(8),
      ADDRAWRADDR(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(7),
      ADDRAWRADDR(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(6),
      ADDRAWRADDR(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(5),
      ADDRAWRADDR(4) => MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR4,
      ADDRAWRADDR(3) => MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR3,
      ADDRAWRADDR(2) => MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR2,
      ADDRAWRADDR(1) => MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR1,
      ADDRAWRADDR(0) => MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR0,
      DIPBDIP(1) => MIPSProcInst_registers_Mram_register_file_DIPBDIP1,
      DIPBDIP(0) => MIPSProcInst_registers_Mram_register_file_DIPBDIP0,
      DIBDI(15) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(15),
      DIBDI(14) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(14),
      DIBDI(13) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(13),
      DIBDI(12) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(12),
      DIBDI(11) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(11),
      DIBDI(10) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(10),
      DIBDI(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(9),
      DIBDI(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(8),
      DIBDI(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(7),
      DIBDI(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(6),
      DIBDI(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(5),
      DIBDI(4) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(4),
      DIBDI(3) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(3),
      DIBDI(2) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(2),
      DIBDI(1) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(1),
      DIBDI(0) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(0),
      DIADI(15) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(15),
      DIADI(14) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(14),
      DIADI(13) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(13),
      DIADI(12) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(12),
      DIADI(11) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(11),
      DIADI(10) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(10),
      DIADI(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(9),
      DIADI(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(8),
      DIADI(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(7),
      DIADI(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(6),
      DIADI(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(5),
      DIADI(4) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(4),
      DIADI(3) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(3),
      DIADI(2) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(2),
      DIADI(1) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(1),
      DIADI(0) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(0),
      ADDRBRDADDR(12) => GND,
      ADDRBRDADDR(11) => GND,
      ADDRBRDADDR(10) => GND,
      ADDRBRDADDR(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(9),
      ADDRBRDADDR(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(8),
      ADDRBRDADDR(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(7),
      ADDRBRDADDR(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(6),
      ADDRBRDADDR(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(5),
      ADDRBRDADDR(4) => MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR4,
      ADDRBRDADDR(3) => MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR3,
      ADDRBRDADDR(2) => MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR2,
      ADDRBRDADDR(1) => MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR1,
      ADDRBRDADDR(0) => MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR0,
      DIPADIP(1) => MIPSProcInst_registers_Mram_register_file_DIPADIP1,
      DIPADIP(0) => MIPSProcInst_registers_Mram_register_file_DIPADIP0,
      DOADO(15) => MIPSProcInst_read_data_1_out(15),
      DOADO(14) => MIPSProcInst_read_data_1_out(14),
      DOADO(13) => MIPSProcInst_read_data_1_out(13),
      DOADO(12) => MIPSProcInst_read_data_1_out(12),
      DOADO(11) => MIPSProcInst_read_data_1_out(11),
      DOADO(10) => MIPSProcInst_read_data_1_out(10),
      DOADO(9) => MIPSProcInst_read_data_1_out(9),
      DOADO(8) => MIPSProcInst_read_data_1_out(8),
      DOADO(7) => MIPSProcInst_read_data_1_out(7),
      DOADO(6) => MIPSProcInst_read_data_1_out(6),
      DOADO(5) => MIPSProcInst_read_data_1_out(5),
      DOADO(4) => MIPSProcInst_read_data_1_out(4),
      DOADO(3) => MIPSProcInst_read_data_1_out(3),
      DOADO(2) => MIPSProcInst_read_data_1_out(2),
      DOADO(1) => MIPSProcInst_read_data_1_out(1),
      DOADO(0) => MIPSProcInst_read_data_1_out(0),
      DOPADOP(1) => MIPSProcInst_registers_Mram_register_file_DOPADOP1,
      DOPADOP(0) => MIPSProcInst_registers_Mram_register_file_DOPADOP0,
      DOPBDOP(1) => MIPSProcInst_registers_Mram_register_file_DOPBDOP1,
      DOPBDOP(0) => MIPSProcInst_registers_Mram_register_file_DOPBDOP0,
      DOBDO(15) => MIPSProcInst_read_data_1_out(31),
      DOBDO(14) => MIPSProcInst_read_data_1_out(30),
      DOBDO(13) => MIPSProcInst_read_data_1_out(29),
      DOBDO(12) => MIPSProcInst_read_data_1_out(28),
      DOBDO(11) => MIPSProcInst_read_data_1_out(27),
      DOBDO(10) => MIPSProcInst_read_data_1_out(26),
      DOBDO(9) => MIPSProcInst_read_data_1_out(25),
      DOBDO(8) => MIPSProcInst_read_data_1_out(24),
      DOBDO(7) => MIPSProcInst_read_data_1_out(23),
      DOBDO(6) => MIPSProcInst_read_data_1_out(22),
      DOBDO(5) => MIPSProcInst_read_data_1_out(21),
      DOBDO(4) => MIPSProcInst_read_data_1_out(20),
      DOBDO(3) => MIPSProcInst_read_data_1_out(19),
      DOBDO(2) => MIPSProcInst_read_data_1_out(18),
      DOBDO(1) => MIPSProcInst_read_data_1_out(17),
      DOBDO(0) => MIPSProcInst_read_data_1_out(16)
    );
  InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 36,
      DATA_WIDTH_B => 9,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => FALSE,
      EN_RSTRAM_B => FALSE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y14"
    )
    port map (
      CLKA => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA,
      CLKB => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB,
      ENA => '1',
      ENB => '1',
      REGCEA => '0',
      REGCEB => '0',
      RSTA => '0',
      RSTB => '0',
      ADDRA(13) => '0',
      ADDRA(12) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q,
      ADDRA(11) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q,
      ADDRA(10) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q,
      ADDRA(9) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q,
      ADDRA(8) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q,
      ADDRA(7) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q,
      ADDRA(6) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q,
      ADDRA(5) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q,
      ADDRA(4) => '0',
      ADDRA(3) => '0',
      ADDRA(2) => '0',
      ADDRA(1) => '0',
      ADDRA(0) => '0',
      ADDRB(13) => '0',
      ADDRB(12) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q,
      ADDRB(11) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q,
      ADDRB(10) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q,
      ADDRB(9) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q,
      ADDRB(8) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q,
      ADDRB(7) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q,
      ADDRB(6) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q,
      ADDRB(5) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q,
      ADDRB(4) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q,
      ADDRB(3) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q,
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(31) => '0',
      DIA(30) => '0',
      DIA(29) => '0',
      DIA(28) => '0',
      DIA(27) => '0',
      DIA(26) => '0',
      DIA(25) => '0',
      DIA(24) => '0',
      DIA(23) => '0',
      DIA(22) => '0',
      DIA(21) => '0',
      DIA(20) => '0',
      DIA(19) => '0',
      DIA(18) => '0',
      DIA(17) => '0',
      DIA(16) => '0',
      DIA(15) => '0',
      DIA(14) => '0',
      DIA(13) => '0',
      DIA(12) => '0',
      DIA(11) => '0',
      DIA(10) => '0',
      DIA(9) => '0',
      DIA(8) => '0',
      DIA(7) => '0',
      DIA(6) => '0',
      DIA(5) => '0',
      DIA(4) => '0',
      DIA(3) => '0',
      DIA(2) => '0',
      DIA(1) => '0',
      DIA(0) => '0',
      DIB(31) => '0',
      DIB(30) => '0',
      DIB(29) => '0',
      DIB(28) => '0',
      DIB(27) => '0',
      DIB(26) => '0',
      DIB(25) => '0',
      DIB(24) => '0',
      DIB(23) => '0',
      DIB(22) => '0',
      DIB(21) => '0',
      DIB(20) => '0',
      DIB(19) => '0',
      DIB(18) => '0',
      DIB(17) => '0',
      DIB(16) => '0',
      DIB(15) => '0',
      DIB(14) => '0',
      DIB(13) => '0',
      DIB(12) => '0',
      DIB(11) => '0',
      DIB(10) => '0',
      DIB(9) => '0',
      DIB(8) => '0',
      DIB(7) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q,
      DIB(6) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q,
      DIB(5) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q,
      DIB(4) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q,
      DIB(3) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q,
      DIB(2) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q,
      DIB(1) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q,
      DIB(0) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q,
      DIPA(3) => '0',
      DIPA(2) => '0',
      DIPA(1) => '0',
      DIPA(0) => '0',
      DIPB(3) => '0',
      DIPB(2) => '0',
      DIPB(1) => '0',
      DIPB(0) => '0',
      DOA(31) => procIMemReadData(31),
      DOA(30) => procIMemReadData(30),
      DOA(29) => procIMemReadData(29),
      DOA(28) => procIMemReadData(28),
      DOA(27) => procIMemReadData(27),
      DOA(26) => procIMemReadData(26),
      DOA(25) => procIMemReadData(25),
      DOA(24) => procIMemReadData(24),
      DOA(23) => procIMemReadData(23),
      DOA(22) => procIMemReadData(22),
      DOA(21) => procIMemReadData(21),
      DOA(20) => procIMemReadData(20),
      DOA(19) => procIMemReadData(19),
      DOA(18) => procIMemReadData(18),
      DOA(17) => procIMemReadData(17),
      DOA(16) => procIMemReadData(16),
      DOA(15) => procIMemReadData(15),
      DOA(14) => procIMemReadData(14),
      DOA(13) => procIMemReadData(13),
      DOA(12) => procIMemReadData(12),
      DOA(11) => procIMemReadData(11),
      DOA(10) => procIMemReadData(10),
      DOA(9) => procIMemReadData(9),
      DOA(8) => procIMemReadData(8),
      DOA(7) => procIMemReadData(7),
      DOA(6) => procIMemReadData(6),
      DOA(5) => procIMemReadData(5),
      DOA(4) => procIMemReadData(4),
      DOA(3) => procIMemReadData(3),
      DOA(2) => procIMemReadData(2),
      DOA(1) => procIMemReadData(1),
      DOA(0) => procIMemReadData(0),
      DOB(31) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_31_UNCONNECTED,
      DOB(30) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_30_UNCONNECTED,
      DOB(29) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_29_UNCONNECTED,
      DOB(28) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_28_UNCONNECTED,
      DOB(27) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_27_UNCONNECTED,
      DOB(26) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_26_UNCONNECTED,
      DOB(25) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_25_UNCONNECTED,
      DOB(24) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_24_UNCONNECTED,
      DOB(23) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_23_UNCONNECTED,
      DOB(22) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_22_UNCONNECTED,
      DOB(21) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_21_UNCONNECTED,
      DOB(20) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_20_UNCONNECTED,
      DOB(19) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_19_UNCONNECTED,
      DOB(18) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_18_UNCONNECTED,
      DOB(17) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_17_UNCONNECTED,
      DOB(16) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_16_UNCONNECTED,
      DOB(15) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_15_UNCONNECTED,
      DOB(14) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_14_UNCONNECTED,
      DOB(13) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_13_UNCONNECTED,
      DOB(12) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_12_UNCONNECTED,
      DOB(11) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_11_UNCONNECTED,
      DOB(10) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_10_UNCONNECTED,
      DOB(9) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_9_UNCONNECTED,
      DOB(8) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_8_UNCONNECTED,
      DOB(7) => hcIMemReadData(7),
      DOB(6) => hcIMemReadData(6),
      DOB(5) => hcIMemReadData(5),
      DOB(4) => hcIMemReadData(4),
      DOB(3) => hcIMemReadData(3),
      DOB(2) => hcIMemReadData(2),
      DOB(1) => hcIMemReadData(1),
      DOB(0) => hcIMemReadData(0),
      DOPA(3) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_0_UNCONNECTED,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEB(3) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q,
      WEB(2) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q,
      WEB(1) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q,
      WEB(0) => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q
    );
  DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 36,
      DATA_WIDTH_B => 9,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => FALSE,
      EN_RSTRAM_B => FALSE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y10"
    )
    port map (
      CLKA => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA,
      CLKB => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB,
      ENA => '1',
      ENB => '1',
      REGCEA => '0',
      REGCEB => '0',
      RSTA => '0',
      RSTB => '0',
      ADDRA(13) => '0',
      ADDRA(12) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q,
      ADDRA(11) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q,
      ADDRA(10) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q,
      ADDRA(9) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q,
      ADDRA(8) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q,
      ADDRA(7) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q,
      ADDRA(6) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q,
      ADDRA(5) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q,
      ADDRA(4) => '0',
      ADDRA(3) => '0',
      ADDRA(2) => '0',
      ADDRA(1) => '0',
      ADDRA(0) => '0',
      ADDRB(13) => '0',
      ADDRB(12) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q,
      ADDRB(11) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q,
      ADDRB(10) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q,
      ADDRB(9) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q,
      ADDRB(8) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q,
      ADDRB(7) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q,
      ADDRB(6) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q,
      ADDRB(5) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q,
      ADDRB(4) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q,
      ADDRB(3) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q,
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(31) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_31_Q,
      DIA(30) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_30_Q,
      DIA(29) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_29_Q,
      DIA(28) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_28_Q,
      DIA(27) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_27_Q,
      DIA(26) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_26_Q,
      DIA(25) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_25_Q,
      DIA(24) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_24_Q,
      DIA(23) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_23_Q,
      DIA(22) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_22_Q,
      DIA(21) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_21_Q,
      DIA(20) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_20_Q,
      DIA(19) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_19_Q,
      DIA(18) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_18_Q,
      DIA(17) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_17_Q,
      DIA(16) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_16_Q,
      DIA(15) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_15_Q,
      DIA(14) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_14_Q,
      DIA(13) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_13_Q,
      DIA(12) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_12_Q,
      DIA(11) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_11_Q,
      DIA(10) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_10_Q,
      DIA(9) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_9_Q,
      DIA(8) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_8_Q,
      DIA(7) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_7_Q,
      DIA(6) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_6_Q,
      DIA(5) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_5_Q,
      DIA(4) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_4_Q,
      DIA(3) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_3_Q,
      DIA(2) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_2_Q,
      DIA(1) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_1_Q,
      DIA(0) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_0_Q,
      DIB(31) => '0',
      DIB(30) => '0',
      DIB(29) => '0',
      DIB(28) => '0',
      DIB(27) => '0',
      DIB(26) => '0',
      DIB(25) => '0',
      DIB(24) => '0',
      DIB(23) => '0',
      DIB(22) => '0',
      DIB(21) => '0',
      DIB(20) => '0',
      DIB(19) => '0',
      DIB(18) => '0',
      DIB(17) => '0',
      DIB(16) => '0',
      DIB(15) => '0',
      DIB(14) => '0',
      DIB(13) => '0',
      DIB(12) => '0',
      DIB(11) => '0',
      DIB(10) => '0',
      DIB(9) => '0',
      DIB(8) => '0',
      DIB(7) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q,
      DIB(6) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q,
      DIB(5) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q,
      DIB(4) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q,
      DIB(3) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q,
      DIB(2) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q,
      DIB(1) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q,
      DIB(0) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q,
      DIPA(3) => '0',
      DIPA(2) => '0',
      DIPA(1) => '0',
      DIPA(0) => '0',
      DIPB(3) => '0',
      DIPB(2) => '0',
      DIPB(1) => '0',
      DIPB(0) => '0',
      DOA(31) => procDMemReadData(31),
      DOA(30) => procDMemReadData(30),
      DOA(29) => procDMemReadData(29),
      DOA(28) => procDMemReadData(28),
      DOA(27) => procDMemReadData(27),
      DOA(26) => procDMemReadData(26),
      DOA(25) => procDMemReadData(25),
      DOA(24) => procDMemReadData(24),
      DOA(23) => procDMemReadData(23),
      DOA(22) => procDMemReadData(22),
      DOA(21) => procDMemReadData(21),
      DOA(20) => procDMemReadData(20),
      DOA(19) => procDMemReadData(19),
      DOA(18) => procDMemReadData(18),
      DOA(17) => procDMemReadData(17),
      DOA(16) => procDMemReadData(16),
      DOA(15) => procDMemReadData(15),
      DOA(14) => procDMemReadData(14),
      DOA(13) => procDMemReadData(13),
      DOA(12) => procDMemReadData(12),
      DOA(11) => procDMemReadData(11),
      DOA(10) => procDMemReadData(10),
      DOA(9) => procDMemReadData(9),
      DOA(8) => procDMemReadData(8),
      DOA(7) => procDMemReadData(7),
      DOA(6) => procDMemReadData(6),
      DOA(5) => procDMemReadData(5),
      DOA(4) => procDMemReadData(4),
      DOA(3) => procDMemReadData(3),
      DOA(2) => procDMemReadData(2),
      DOA(1) => procDMemReadData(1),
      DOA(0) => procDMemReadData(0),
      DOB(31) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_31_UNCONNECTED,
      DOB(30) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_30_UNCONNECTED,
      DOB(29) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_29_UNCONNECTED,
      DOB(28) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_28_UNCONNECTED,
      DOB(27) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_27_UNCONNECTED,
      DOB(26) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_26_UNCONNECTED,
      DOB(25) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_25_UNCONNECTED,
      DOB(24) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_24_UNCONNECTED,
      DOB(23) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_23_UNCONNECTED,
      DOB(22) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_22_UNCONNECTED,
      DOB(21) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_21_UNCONNECTED,
      DOB(20) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_20_UNCONNECTED,
      DOB(19) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_19_UNCONNECTED,
      DOB(18) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_18_UNCONNECTED,
      DOB(17) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_17_UNCONNECTED,
      DOB(16) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_16_UNCONNECTED,
      DOB(15) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_15_UNCONNECTED,
      DOB(14) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_14_UNCONNECTED,
      DOB(13) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_13_UNCONNECTED,
      DOB(12) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_12_UNCONNECTED,
      DOB(11) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_11_UNCONNECTED,
      DOB(10) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_10_UNCONNECTED,
      DOB(9) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_9_UNCONNECTED,
      DOB(8) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOB_8_UNCONNECTED,
      DOB(7) => hcDMemReadData(7),
      DOB(6) => hcDMemReadData(6),
      DOB(5) => hcDMemReadData(5),
      DOB(4) => hcDMemReadData(4),
      DOB(3) => hcDMemReadData(3),
      DOB(2) => hcDMemReadData(2),
      DOB(1) => hcDMemReadData(1),
      DOB(0) => hcDMemReadData(0),
      DOPA(3) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DOPB_0_UNCONNECTED,
      WEA(3) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_3_Q,
      WEA(2) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_2_Q,
      WEA(1) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_1_Q,
      WEA(0) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_0_Q,
      WEB(3) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q,
      WEB(2) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q,
      WEB(1) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q,
      WEB(0) => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q
    );
  MIPSProcInst_registers_Mram_register_file1_WEBWEU0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file1_WEBWEU0_INT
    );
  MIPSProcInst_registers_Mram_register_file1_WEBWEU1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file1_WEBWEU1_INT
    );
  MIPSProcInst_registers_Mram_register_file1_WEAWEL0INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file1_WEAWEL0_INT
    );
  MIPSProcInst_registers_Mram_register_file1_WEAWEL1INV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_reg_write,
      O => MIPSProcInst_registers_Mram_register_file1_WEAWEL1_INT
    );
  MIPSProcInst_registers_Mram_register_file1_RSTAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => MIPSProcInst_registers_Mram_register_file1_RSTA_INT
    );
  MIPSProcInst_registers_Mram_register_file1_REGCEBREGCEINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file1_REGCEBREGCE_INT
    );
  MIPSProcInst_registers_Mram_register_file1_CLKBRDCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => MIPSProcInst_registers_Mram_register_file1_CLKBRDCLK_INT
    );
  MIPSProcInst_registers_Mram_register_file1_CLKAWRCLKINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => MIPSProcInst_registers_Mram_register_file1_CLKAWRCLK_INT
    );
  MIPSProcInst_registers_Mram_register_file1_ENAWRENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file1_ENAWREN_INT
    );
  MIPSProcInst_registers_Mram_register_file1_REGCEAINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file1_REGCEA_INT
    );
  MIPSProcInst_registers_Mram_register_file1_ENBRDENINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '1',
      O => MIPSProcInst_registers_Mram_register_file1_ENBRDEN_INT
    );
  MIPSProcInst_registers_Mram_register_file1_RSTBRSTINV : X_BUF
    generic map(
      LOC => "RAMB8_X1Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => MIPSProcInst_registers_Mram_register_file1_RSTBRST_INT
    );
  MIPSProcInst_registers_Mram_register_file1 : X_RAMB8BWER
    generic map(
      DATA_WIDTH_A => 36,
      DATA_WIDTH_B => 36,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RAM_MODE => "SDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      LOC => "RAMB8_X1Y13"
    )
    port map (
      RSTBRST => MIPSProcInst_registers_Mram_register_file1_RSTBRST_INT,
      ENBRDEN => MIPSProcInst_registers_Mram_register_file1_ENBRDEN_INT,
      REGCEA => MIPSProcInst_registers_Mram_register_file1_REGCEA_INT,
      ENAWREN => MIPSProcInst_registers_Mram_register_file1_ENAWREN_INT,
      CLKAWRCLK => MIPSProcInst_registers_Mram_register_file1_CLKAWRCLK_INT,
      CLKBRDCLK => MIPSProcInst_registers_Mram_register_file1_CLKBRDCLK_INT,
      REGCEBREGCE => MIPSProcInst_registers_Mram_register_file1_REGCEBREGCE_INT,
      RSTA => MIPSProcInst_registers_Mram_register_file1_RSTA_INT,
      WEAWEL(1) => MIPSProcInst_registers_Mram_register_file1_WEAWEL1_INT,
      WEAWEL(0) => MIPSProcInst_registers_Mram_register_file1_WEAWEL0_INT,
      WEBWEU(1) => MIPSProcInst_registers_Mram_register_file1_WEBWEU1_INT,
      WEBWEU(0) => MIPSProcInst_registers_Mram_register_file1_WEBWEU0_INT,
      ADDRAWRADDR(12) => GND,
      ADDRAWRADDR(11) => GND,
      ADDRAWRADDR(10) => GND,
      ADDRAWRADDR(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(9),
      ADDRAWRADDR(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(8),
      ADDRAWRADDR(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(7),
      ADDRAWRADDR(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(6),
      ADDRAWRADDR(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(5),
      ADDRAWRADDR(4) => MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR4,
      ADDRAWRADDR(3) => MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR3,
      ADDRAWRADDR(2) => MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR2,
      ADDRAWRADDR(1) => MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR1,
      ADDRAWRADDR(0) => MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR0,
      DIPBDIP(1) => MIPSProcInst_registers_Mram_register_file1_DIPBDIP1,
      DIPBDIP(0) => MIPSProcInst_registers_Mram_register_file1_DIPBDIP0,
      DIBDI(15) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(15),
      DIBDI(14) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(14),
      DIBDI(13) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(13),
      DIBDI(12) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(12),
      DIBDI(11) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(11),
      DIBDI(10) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(10),
      DIBDI(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(9),
      DIBDI(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(8),
      DIBDI(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(7),
      DIBDI(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(6),
      DIBDI(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(5),
      DIBDI(4) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(4),
      DIBDI(3) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(3),
      DIBDI(2) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(2),
      DIBDI(1) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(1),
      DIBDI(0) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(0),
      DIADI(15) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(15),
      DIADI(14) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(14),
      DIADI(13) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(13),
      DIADI(12) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(12),
      DIADI(11) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(11),
      DIADI(10) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(10),
      DIADI(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(9),
      DIADI(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(8),
      DIADI(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(7),
      DIADI(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(6),
      DIADI(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(5),
      DIADI(4) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(4),
      DIADI(3) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(3),
      DIADI(2) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(2),
      DIADI(1) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(1),
      DIADI(0) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(0),
      ADDRBRDADDR(12) => GND,
      ADDRBRDADDR(11) => GND,
      ADDRBRDADDR(10) => GND,
      ADDRBRDADDR(9) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(9),
      ADDRBRDADDR(8) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(8),
      ADDRBRDADDR(7) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(7),
      ADDRBRDADDR(6) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(6),
      ADDRBRDADDR(5) => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(5),
      ADDRBRDADDR(4) => MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR4,
      ADDRBRDADDR(3) => MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR3,
      ADDRBRDADDR(2) => MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR2,
      ADDRBRDADDR(1) => MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR1,
      ADDRBRDADDR(0) => MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR0,
      DIPADIP(1) => MIPSProcInst_registers_Mram_register_file1_DIPADIP1,
      DIPADIP(0) => MIPSProcInst_registers_Mram_register_file1_DIPADIP0,
      DOADO(15) => procDMemWriteData(15),
      DOADO(14) => procDMemWriteData(14),
      DOADO(13) => procDMemWriteData(13),
      DOADO(12) => procDMemWriteData(12),
      DOADO(11) => procDMemWriteData(11),
      DOADO(10) => procDMemWriteData(10),
      DOADO(9) => procDMemWriteData(9),
      DOADO(8) => procDMemWriteData(8),
      DOADO(7) => procDMemWriteData(7),
      DOADO(6) => procDMemWriteData(6),
      DOADO(5) => procDMemWriteData(5),
      DOADO(4) => procDMemWriteData(4),
      DOADO(3) => procDMemWriteData(3),
      DOADO(2) => procDMemWriteData(2),
      DOADO(1) => procDMemWriteData(1),
      DOADO(0) => procDMemWriteData(0),
      DOPADOP(1) => MIPSProcInst_registers_Mram_register_file1_DOPADOP1,
      DOPADOP(0) => MIPSProcInst_registers_Mram_register_file1_DOPADOP0,
      DOPBDOP(1) => MIPSProcInst_registers_Mram_register_file1_DOPBDOP1,
      DOPBDOP(0) => MIPSProcInst_registers_Mram_register_file1_DOPBDOP0,
      DOBDO(15) => procDMemWriteData(31),
      DOBDO(14) => procDMemWriteData(30),
      DOBDO(13) => procDMemWriteData(29),
      DOBDO(12) => procDMemWriteData(28),
      DOBDO(11) => procDMemWriteData(27),
      DOBDO(10) => procDMemWriteData(26),
      DOBDO(9) => procDMemWriteData(25),
      DOBDO(8) => procDMemWriteData(24),
      DOBDO(7) => procDMemWriteData(23),
      DOBDO(6) => procDMemWriteData(22),
      DOBDO(5) => procDMemWriteData(21),
      DOBDO(4) => procDMemWriteData(20),
      DOBDO(3) => procDMemWriteData(19),
      DOBDO(2) => procDMemWriteData(18),
      DOBDO(1) => procDMemWriteData(17),
      DOBDO(0) => procDMemWriteData(16)
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_3_CLK,
      I => HostCommInst_Result(3),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => X"33333333CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(3),
      ADR4 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q_499
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_2_CLK,
      I => HostCommInst_Result(2),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y39"
    )
    port map (
      CI => '0',
      CYINIT => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      CO(3) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_Q_6379,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_1_Q,
      DI(0) => HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt_521,
      O(3) => HostCommInst_Result(3),
      O(2) => HostCommInst_Result(2),
      O(1) => HostCommInst_Result(1),
      O(0) => HostCommInst_Result(0),
      S(3) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q_499,
      S(2) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q_510,
      S(1) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q_515,
      S(0) => HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt_pack_7
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(2),
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q_510
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_1_CLK,
      I => HostCommInst_Result(1),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(1),
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q_515
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_0_CLK,
      I => HostCommInst_Result(0),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt_pack_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_counter(0),
      ADR4 => '1',
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt_pack_7
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X24Y39",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_counter(0),
      ADR4 => '1',
      O => HostCommInst_UARTHandlerInst_ut_bg_counter_0_rt_521
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_7_CLK,
      I => HostCommInst_Result(7),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => X"0000FEFA5555AAAA"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(9),
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_counter(8),
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_counter(6),
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(7),
      ADR3 => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_6388,
      ADR0 => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q_527
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_6_CLK,
      I => HostCommInst_Result(6),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y40"
    )
    port map (
      CI => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_Q_6379,
      CYINIT => '0',
      CO(3) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_Q_6384,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_0_Q,
      O(3) => HostCommInst_Result(7),
      O(2) => HostCommInst_Result(6),
      O(1) => HostCommInst_Result(5),
      O(0) => HostCommInst_Result(4),
      S(3) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q_527,
      S(2) => HostCommInst_UARTHandlerInst_ut_bg_counter_6_rt_543,
      S(1) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q,
      S(0) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_bg_counter_6_rt_543
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_5_CLK,
      I => HostCommInst_Result(5),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_4_CLK,
      I => HostCommInst_Result(4),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(4),
      ADR4 => '1',
      ADR3 => '1',
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_11 : X_FF
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_11_CLK,
      I => HostCommInst_Result(11),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => X"0F0F0F0FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(11),
      ADR4 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q_556
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_10 : X_FF
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_10_CLK,
      I => HostCommInst_Result(10),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y41"
    )
    port map (
      CI => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_Q_6384,
      CYINIT => '0',
      CO(3) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_Q_6391,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_0_Q,
      O(3) => HostCommInst_Result(11),
      O(2) => HostCommInst_Result(10),
      O(1) => HostCommInst_Result(9),
      O(0) => HostCommInst_Result(8),
      S(3) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q_556,
      S(2) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q_568,
      S(1) => HostCommInst_UARTHandlerInst_ut_bg_counter_9_rt_573,
      S(0) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q_577
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(10),
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q_568
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_9 : X_FF
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_9_CLK,
      I => HostCommInst_Result(9),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(9),
      ADR3 => '1',
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_bg_counter_9_rt_573
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_8 : X_FF
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_8_CLK,
      I => HostCommInst_Result(8),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y41",
      INIT => X"03FC03EC03FC03CC"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_counter(9),
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(7),
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(6),
      ADR3 => HostCommInst_UARTHandlerInst_ut_bg_counter(8),
      ADR0 => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_6388,
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q_577
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_15 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_15_CLK,
      I => HostCommInst_Result(15),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"0F0F0F0FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(15),
      ADR4 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q_586
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_14 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_14_CLK,
      I => HostCommInst_Result(14),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y42"
    )
    port map (
      CI => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_Q_6391,
      CYINIT => '0',
      CO(3) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_2_Q,
      DI(1) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_1_Q,
      DI(0) => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_0_Q,
      O(3) => HostCommInst_Result(15),
      O(2) => HostCommInst_Result(14),
      O(1) => HostCommInst_Result(13),
      O(0) => HostCommInst_Result(12),
      S(3) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q_586,
      S(2) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q_597,
      S(1) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q_602,
      S(0) => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q_607
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(14),
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q_597
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_13 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_13_CLK,
      I => HostCommInst_Result(13),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(13),
      ADR3 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q_602
    );
  HostCommInst_UARTHandlerInst_ut_bg_counter_12 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_12_CLK,
      I => HostCommInst_Result(12),
      O => HostCommInst_UARTHandlerInst_ut_bg_counter(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(12),
      ADR3 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q_607
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(3),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_3_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(2),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_2_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(1),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_1_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_0_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y22",
      INIT => X"4B4B5A0FB4B4A5F0"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR3 => procDMemWriteData(3),
      ADR4 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(3),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(3)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y22"
    )
    port map (
      CI => '0',
      CYINIT => MIPSProcInst_alu_control_out(0),
      CO(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_Q_6409,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_1_Q,
      DI(0) => MIPSProcInst_alu_a_mux_out_0_rt_639,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(3),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(2),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(1),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(0),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(3),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(2),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(1),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(0)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y22",
      INIT => X"E1E11E1EA5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR0 => MIPSProcInst_alu_op(0),
      ADR1 => N42,
      ADR5 => MIPSProcInst_N193,
      ADR4 => MIPSProcInst_alu_a_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(2)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y22",
      INIT => X"ECEC13131313ECEC"
    )
    port map (
      ADR3 => '1',
      ADR1 => MIPSProcInst_alu_op(0),
      ADR0 => N42,
      ADR2 => MIPSProcInst_N193,
      ADR4 => MIPSProcInst_alu_a_mux_out(1),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(1)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y22",
      INIT => X"EC1313ECEC1313EC"
    )
    port map (
      ADR1 => MIPSProcInst_alu_op(0),
      ADR0 => N42,
      ADR2 => MIPSProcInst_N193,
      ADR4 => MIPSProcInst_alu_a_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(0)
    );
  MIPSProcInst_alu_a_mux_out_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X32Y22",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_a_mux_out(0),
      ADR3 => '1',
      O => MIPSProcInst_alu_a_mux_out_0_rt_639
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(7),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_7_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(6),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_6_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(5),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_5_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(4),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_4_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y23",
      INIT => X"636663339C999CCC"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(7),
      ADR4 => procDMemWriteData(7),
      ADR3 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(7),
      ADR5 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(7)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y23"
    )
    port map (
      CI => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_Q_6409,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_Q_6424,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_0_Q,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(7),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(6),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(5),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(4),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(7),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(6),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(5),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(4)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y23",
      INIT => X"3399CC6633C3CC3C"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(6),
      ADR2 => procDMemWriteData(6),
      ADR5 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(6),
      ADR4 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(6)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y23",
      INIT => X"54ABAB5404FBFB04"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR1 => procDMemWriteData(5),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR4 => MIPSProcInst_alu_a_mux_out(5),
      ADR3 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(5)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y23",
      INIT => X"F20DC23D0DF23DC2"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR0 => procDMemWriteData(4),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR1 => MIPSProcInst_alu_src_b(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(4),
      ADR3 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(4)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(11),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_11_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(10),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_10_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(9),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_9_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(8),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_8_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y24",
      INIT => X"3333C939CCCC36C6"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(11),
      ADR0 => procDMemWriteData(11),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(11),
      ADR1 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(11)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y24"
    )
    port map (
      CI => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_Q_6424,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_Q_6437,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_0_Q,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(11),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(10),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(9),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(8),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(11),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(10),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(9),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(8)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y24",
      INIT => X"00E2FF1DFF1D00E2"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(10),
      ADR0 => procDMemWriteData(10),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(10),
      ADR4 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(10)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y24",
      INIT => X"45BABA4540BFBF40"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(9),
      ADR5 => procDMemWriteData(9),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR4 => MIPSProcInst_alu_a_mux_out(9),
      ADR3 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(9)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y24",
      INIT => X"0FA50FC3F05AF03C"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(8),
      ADR1 => procDMemWriteData(8),
      ADR4 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_alu_a_mux_out(8),
      ADR5 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(8)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(15),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_15_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(14),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_14_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(13),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_13_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(12),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_12_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y25",
      INIT => X"F0F00F0F0F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(15),
      ADR5 => MIPSProcInst_alu_a_mux_out(15),
      ADR4 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(15)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y25"
    )
    port map (
      CI => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_Q_6437,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_Q_6449,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_3_Q,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_1_Q,
      DI(0) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_0_Q,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(15),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(14),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(13),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(12),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(15),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(14),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(13),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(12)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y25",
      INIT => X"3333CCCC99C3663C"
    )
    port map (
      ADR4 => MIPSProcInst_alu_a_mux_out(14),
      ADR5 => MIPSProcInst_alu_src_b(0),
      ADR3 => MIPSProcInst_alu_src_b(1),
      ADR2 => procDMemWriteData(14),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(14),
      ADR1 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(14)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y25",
      INIT => X"0BF4F40B08F7F708"
    )
    port map (
      ADR4 => MIPSProcInst_alu_a_mux_out(13),
      ADR2 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR5 => procDMemWriteData(13),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(13),
      ADR3 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(13)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y25",
      INIT => X"55A95565AA56AA9A"
    )
    port map (
      ADR5 => MIPSProcInst_alu_a_mux_out(12),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR2 => procDMemWriteData(12),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(12),
      ADR0 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(12)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(19),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_19_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(18),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_18_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(17),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_17_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(16),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_16_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y26",
      INIT => X"F0F00F0F0F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(19),
      ADR5 => MIPSProcInst_alu_a_mux_out(19),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(19)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y26"
    )
    port map (
      CI => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_Q_6449,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_Q_6462,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_3_Q,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_1_Q,
      DI(0) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_0_Q,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(19),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(18),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(17),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(16),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(19),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(18),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(17),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(16)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y26",
      INIT => X"F0F00F0F0F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => MIPSProcInst_alu_b_mux_out(18),
      ADR4 => MIPSProcInst_alu_a_mux_out(18),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(18)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y26",
      INIT => X"CCCC33333333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(17),
      ADR4 => MIPSProcInst_alu_a_mux_out(17),
      ADR5 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(17)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y26",
      INIT => X"F00FF00F0FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(16),
      ADR5 => MIPSProcInst_alu_a_mux_out(16),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(16)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(23),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_23_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(22),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_22_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(21),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_21_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(20),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_20_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y27",
      INIT => X"C33CC33CC33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(23),
      ADR3 => MIPSProcInst_alu_a_mux_out(23),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(23)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y27"
    )
    port map (
      CI => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_Q_6462,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_Q_6475,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_3_Q,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_1_Q,
      DI(0) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_0_Q,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(23),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(22),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(21),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(20),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(23),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(22),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(21),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(20)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y27",
      INIT => X"A5A5A5A55A5A5A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => MIPSProcInst_alu_b_mux_out(22),
      ADR0 => MIPSProcInst_alu_a_mux_out(22),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(22)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y27",
      INIT => X"AA55AA5555AA55AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(21),
      ADR3 => MIPSProcInst_alu_a_mux_out(21),
      ADR5 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(21)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y27",
      INIT => X"C33CC33CC33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(20),
      ADR3 => MIPSProcInst_alu_a_mux_out(20),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(20)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(27),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_27_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(26),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_26_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(25),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_25_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(24),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_24_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y28",
      INIT => X"C3C3C3C33C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => MIPSProcInst_alu_a_mux_out(27),
      ADR1 => MIPSProcInst_alu_b_mux_out(27),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(27)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y28"
    )
    port map (
      CI => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_Q_6475,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_Q_6488,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_3_Q,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_1_Q,
      DI(0) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_0_Q,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(27),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(26),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(25),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(24),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(27),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(26),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(25),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(24)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y28",
      INIT => X"F0F00F0F0F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => MIPSProcInst_alu_a_mux_out(26),
      ADR5 => MIPSProcInst_alu_b_mux_out(26),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(26)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y28",
      INIT => X"CCCC33333333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_a_mux_out(25),
      ADR1 => MIPSProcInst_alu_b_mux_out(25),
      ADR5 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(25)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y28",
      INIT => X"9999999966666666"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(24),
      ADR5 => MIPSProcInst_alu_a_mux_out(24),
      ADR1 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(24)
    );
  MIPSProcInst_alu_Mmux_alu_result1_split_31_MIPSProcInst_alu_Mmux_alu_result1_split_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(31),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_31_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_split_31_MIPSProcInst_alu_Mmux_alu_result1_split_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(30),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_30_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_split_31_MIPSProcInst_alu_Mmux_alu_result1_split_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(29),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_29_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_split_31_MIPSProcInst_alu_Mmux_alu_result1_split_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result1_split(28),
      O => MIPSProcInst_alu_Mmux_alu_result1_split_28_0
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y29",
      INIT => X"F00FF00F0FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(31),
      ADR3 => MIPSProcInst_alu_a_mux_out(31),
      ADR5 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(31)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y29"
    )
    port map (
      CI => MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_Q_6488,
      CYINIT => '0',
      CO(3) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_2_Q,
      DI(1) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_1_Q,
      DI(0) => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_0_Q,
      O(3) => MIPSProcInst_alu_Mmux_alu_result1_split(31),
      O(2) => MIPSProcInst_alu_Mmux_alu_result1_split(30),
      O(1) => MIPSProcInst_alu_Mmux_alu_result1_split(29),
      O(0) => MIPSProcInst_alu_Mmux_alu_result1_split(28),
      S(3) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(31),
      S(2) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(30),
      S(1) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(29),
      S(0) => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(28)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y29",
      INIT => X"CCCC33333333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(30),
      ADR5 => MIPSProcInst_alu_a_mux_out(30),
      ADR1 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(30)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y29",
      INIT => X"A55AA55AA55AA55A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(29),
      ADR3 => MIPSProcInst_alu_a_mux_out(29),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(29)
    );
  MIPSProcInst_alu_Mmux_alu_result1_rs_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y29",
      INIT => X"F00F0FF0F00F0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => MIPSProcInst_alu_a_mux_out(28),
      ADR2 => MIPSProcInst_alu_b_mux_out(28),
      ADR3 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result1_rs_lut(28)
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(6),
      ADR3 => MIPSProcInst_alu_a_mux_out(6),
      ADR4 => MIPSProcInst_alu_b_mux_out(7),
      ADR2 => MIPSProcInst_alu_a_mux_out(7),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_3_Q_859
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"3000F3F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(6),
      ADR3 => MIPSProcInst_alu_a_mux_out(6),
      ADR4 => MIPSProcInst_alu_b_mux_out(7),
      ADR2 => MIPSProcInst_alu_a_mux_out(7),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi3_860
    );
  ProtoComp40_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X30Y23"
    )
    port map (
      O => ProtoComp40_CYINITVCC_1
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y23"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp40_CYINITVCC_1,
      CO(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_Q_6505,
      CO(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi3_860,
      DI(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi2_868,
      DI(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi1_874,
      DI(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi_880,
      O(3) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_O_0_UNCONNECTED,
      S(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_3_Q_859,
      S(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_2_Q_867,
      S(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_1_Q_873,
      S(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_0_Q_879
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_a_mux_out(4),
      ADR2 => MIPSProcInst_alu_b_mux_out(5),
      ADR4 => MIPSProcInst_alu_a_mux_out(5),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_2_Q_867
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"3F0F0300"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_a_mux_out(4),
      ADR2 => MIPSProcInst_alu_b_mux_out(5),
      ADR4 => MIPSProcInst_alu_a_mux_out(5),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi2_868
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_a_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_a_mux_out(3),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_1_Q_873
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"77551100"
    )
    port map (
      ADR2 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_a_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_a_mux_out(3),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi1_874
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(1),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_0_Q_879
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => X"0088AAEE"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(1),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi_880
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"8421842184218421"
    )
    port map (
      ADR4 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(14),
      ADR1 => MIPSProcInst_alu_a_mux_out(14),
      ADR0 => MIPSProcInst_alu_b_mux_out(15),
      ADR2 => MIPSProcInst_alu_a_mux_out(15),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_7_Q_889
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi7 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"50D450D4"
    )
    port map (
      ADR4 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(14),
      ADR1 => MIPSProcInst_alu_a_mux_out(14),
      ADR0 => MIPSProcInst_alu_b_mux_out(15),
      ADR2 => MIPSProcInst_alu_a_mux_out(15),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi7_890
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y24"
    )
    port map (
      CI => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_3_Q_6505,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_Q_6514,
      CO(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_CO_0_UNCONNECTED,
      DI(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi7_890,
      DI(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi6_898,
      DI(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi5_904,
      DI(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi4_910,
      O(3) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_O_0_UNCONNECTED,
      S(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_7_Q_889,
      S(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_6_Q_897,
      S(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_5_Q_903,
      S(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_4_Q_909
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(12),
      ADR0 => MIPSProcInst_alu_a_mux_out(12),
      ADR1 => MIPSProcInst_alu_b_mux_out(13),
      ADR3 => MIPSProcInst_alu_a_mux_out(13),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_6_Q_897
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"3300BB22"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(12),
      ADR0 => MIPSProcInst_alu_a_mux_out(12),
      ADR1 => MIPSProcInst_alu_b_mux_out(13),
      ADR3 => MIPSProcInst_alu_a_mux_out(13),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi6_898
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"9009900990099009"
    )
    port map (
      ADR4 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(10),
      ADR1 => MIPSProcInst_alu_a_mux_out(10),
      ADR2 => MIPSProcInst_alu_b_mux_out(11),
      ADR3 => MIPSProcInst_alu_a_mux_out(11),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_5_Q_903
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"4F044F04"
    )
    port map (
      ADR4 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(10),
      ADR1 => MIPSProcInst_alu_a_mux_out(10),
      ADR2 => MIPSProcInst_alu_b_mux_out(11),
      ADR3 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi5_904
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(8),
      ADR2 => MIPSProcInst_alu_a_mux_out(8),
      ADR0 => MIPSProcInst_alu_b_mux_out(9),
      ADR3 => MIPSProcInst_alu_a_mux_out(9),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_4_Q_909
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y24",
      INIT => X"5500F550"
    )
    port map (
      ADR1 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(8),
      ADR2 => MIPSProcInst_alu_a_mux_out(8),
      ADR0 => MIPSProcInst_alu_b_mux_out(9),
      ADR3 => MIPSProcInst_alu_a_mux_out(9),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi4_910
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(22),
      ADR1 => MIPSProcInst_alu_a_mux_out(22),
      ADR2 => MIPSProcInst_alu_b_mux_out(23),
      ADR4 => MIPSProcInst_alu_a_mux_out(23),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_11_Q_919
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi11 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"0FCF000C"
    )
    port map (
      ADR0 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(22),
      ADR1 => MIPSProcInst_alu_a_mux_out(22),
      ADR2 => MIPSProcInst_alu_b_mux_out(23),
      ADR4 => MIPSProcInst_alu_a_mux_out(23),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi11_920
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y25"
    )
    port map (
      CI => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_7_Q_6514,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_Q_6516,
      CO(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_CO_0_UNCONNECTED,
      DI(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi11_920,
      DI(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi10_928,
      DI(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi9_934,
      DI(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi8_940,
      O(3) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_3_UNCONNECTED,
      O(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_2_UNCONNECTED,
      O(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_1_UNCONNECTED,
      O(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_O_0_UNCONNECTED,
      S(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_11_Q_919,
      S(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_10_Q_927,
      S(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_9_Q_933,
      S(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_8_Q_939
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(20),
      ADR2 => MIPSProcInst_alu_a_mux_out(20),
      ADR3 => MIPSProcInst_alu_b_mux_out(21),
      ADR4 => MIPSProcInst_alu_a_mux_out(21),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_10_Q_927
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi10 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"30FF0030"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(20),
      ADR2 => MIPSProcInst_alu_a_mux_out(20),
      ADR3 => MIPSProcInst_alu_b_mux_out(21),
      ADR4 => MIPSProcInst_alu_a_mux_out(21),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi10_928
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"8484212184842121"
    )
    port map (
      ADR3 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(18),
      ADR0 => MIPSProcInst_alu_a_mux_out(18),
      ADR1 => MIPSProcInst_alu_b_mux_out(19),
      ADR4 => MIPSProcInst_alu_a_mux_out(19),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_9_Q_933
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi9 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"3B3B0202"
    )
    port map (
      ADR3 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(18),
      ADR0 => MIPSProcInst_alu_a_mux_out(18),
      ADR1 => MIPSProcInst_alu_b_mux_out(19),
      ADR4 => MIPSProcInst_alu_a_mux_out(19),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi9_934
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(16),
      ADR0 => MIPSProcInst_alu_a_mux_out(16),
      ADR1 => MIPSProcInst_alu_b_mux_out(17),
      ADR3 => MIPSProcInst_alu_a_mux_out(17),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_8_Q_939
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi8 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y25",
      INIT => X"3300BB22"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(16),
      ADR0 => MIPSProcInst_alu_a_mux_out(16),
      ADR1 => MIPSProcInst_alu_b_mux_out(17),
      ADR3 => MIPSProcInst_alu_a_mux_out(17),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi8_940
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_Q_956,
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_0
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(30),
      ADR1 => MIPSProcInst_alu_a_mux_out(30),
      ADR3 => MIPSProcInst_alu_a_mux_out(31),
      ADR4 => MIPSProcInst_alu_b_mux_out(31),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_15_Q_949
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi15 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"0CFF000C"
    )
    port map (
      ADR0 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(30),
      ADR1 => MIPSProcInst_alu_a_mux_out(30),
      ADR3 => MIPSProcInst_alu_a_mux_out(31),
      ADR4 => MIPSProcInst_alu_b_mux_out(31),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi15_950
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y26"
    )
    port map (
      CI => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_11_Q_6516,
      CYINIT => '0',
      CO(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_Q_956,
      CO(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_CO_0_UNCONNECTED,
      DI(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi15_950,
      DI(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi14_958,
      DI(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi13_964,
      DI(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi12_970,
      O(3) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_3_UNCONNECTED,
      O(2) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_2_UNCONNECTED,
      O(1) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_1_UNCONNECTED,
      O(0) => NLW_MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_O_0_UNCONNECTED,
      S(3) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_15_Q_949,
      S(2) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_14_Q_957,
      S(1) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_13_Q_963,
      S(0) => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_12_Q_969
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(28),
      ADR3 => MIPSProcInst_alu_a_mux_out(28),
      ADR2 => MIPSProcInst_alu_b_mux_out(29),
      ADR1 => MIPSProcInst_alu_a_mux_out(29),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_14_Q_957
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi14 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"0C0CCF0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(28),
      ADR3 => MIPSProcInst_alu_a_mux_out(28),
      ADR2 => MIPSProcInst_alu_b_mux_out(29),
      ADR1 => MIPSProcInst_alu_a_mux_out(29),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi14_958
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(26),
      ADR4 => MIPSProcInst_alu_a_mux_out(26),
      ADR0 => MIPSProcInst_alu_b_mux_out(27),
      ADR1 => MIPSProcInst_alu_a_mux_out(27),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_13_Q_963
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi13 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"44DD4444"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(26),
      ADR4 => MIPSProcInst_alu_a_mux_out(26),
      ADR0 => MIPSProcInst_alu_b_mux_out(27),
      ADR1 => MIPSProcInst_alu_a_mux_out(27),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi13_964
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"9090090990900909"
    )
    port map (
      ADR3 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(24),
      ADR0 => MIPSProcInst_alu_a_mux_out(24),
      ADR2 => MIPSProcInst_alu_b_mux_out(25),
      ADR4 => MIPSProcInst_alu_a_mux_out(25),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lut_12_Q_969
    );
  MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi12 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => X"2F2F0202"
    )
    port map (
      ADR3 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(24),
      ADR0 => MIPSProcInst_alu_a_mux_out(24),
      ADR2 => MIPSProcInst_alu_b_mux_out(25),
      ADR4 => MIPSProcInst_alu_a_mux_out(25),
      O => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_lutdi12_970
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_3_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_3_0
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_2_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_2_0
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_1_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_1_0
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_0_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_0_0
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(3),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_3_rt_979
    );
  leds_0_OBUF_1_12_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_12_D5LUT_O_UNCONNECTED
    );
  ProtoComp43_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X20Y27"
    )
    port map (
      O => ProtoComp43_CYINITGND_0
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y27"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp43_CYINITGND_0,
      CO(3) => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_Q_6521,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_3_Q,
      O(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_2_Q,
      O(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_1_Q,
      O(0) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_0_Q,
      S(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_3_rt_979,
      S(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_2_rt_988,
      S(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_1_rt_991,
      S(0) => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_lut_0_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(2),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_2_rt_988
    );
  leds_0_OBUF_1_13_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_13_C5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_1_rt_991
    );
  leds_0_OBUF_1_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_14_B5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_lut_0_Q
    );
  leds_1_OBUF_1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_1_OBUF_1_2_A5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_11_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_11_0
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_10_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_10_0
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_9_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_9_0
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_8_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_8_0
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(11),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_11_rt_1001
    );
  leds_0_OBUF_1_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_4_D5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y29"
    )
    port map (
      CI => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_Q_6526,
      CYINIT => '0',
      CO(3) => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_Q_6532,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_11_Q,
      O(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_10_Q,
      O(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_9_Q,
      O(0) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_8_Q,
      S(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_11_rt_1001,
      S(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_10_rt_1010,
      S(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_9_rt_1013,
      S(0) => HostCommInst_UARTHandlerInst_up_iIntAddress_8_rt_1016
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(10),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_10_rt_1010
    );
  leds_0_OBUF_1_5_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_5_C5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(9),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_9_rt_1013
    );
  leds_0_OBUF_1_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_6_B5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(8),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_8_rt_1016
    );
  leds_0_OBUF_1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_7_A5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_0
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_14_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_14_0
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_13_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_13_0
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_12_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_12_0
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_rt_1023
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y30"
    )
    port map (
      CI => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_11_Q_6532,
      CYINIT => '0',
      CO(3) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_Q,
      O(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_14_Q,
      O(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_13_Q,
      O(0) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_12_Q,
      S(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_rt_1023,
      S(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_14_rt_1030,
      S(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_13_rt_1033,
      S(0) => HostCommInst_UARTHandlerInst_up_iIntAddress_12_rt_1036
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_14_rt_1030
    );
  leds_0_OBUF_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_C5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(13),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_13_rt_1033
    );
  leds_0_OBUF_1_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_2_B5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(12),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_12_rt_1036
    );
  leds_0_OBUF_1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_3_A5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_3_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount3,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"10000000DFFFFFFF"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_binByteCount(3),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(3)
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_2_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount2,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y35"
    )
    port map (
      CI => '0',
      CYINIT => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      CO(3) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy(3),
      CO(2) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount3,
      O(2) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount2,
      O(1) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount1,
      O(0) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount,
      S(3) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(3),
      S(2) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(2),
      S(1) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(1),
      S(0) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_0_rt_1079
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"4555755555555555"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR0 => HostCommInst_UARTHandlerInst_up_binByteCount(2),
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(2)
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_1_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount1,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"51555D5555555555"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR0 => HostCommInst_UARTHandlerInst_up_binByteCount(1),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(1)
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_0_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(0),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_0_rt_1079
    );
  leds_1_OBUF_1_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_1_OBUF_1_9_A5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_7 : X_FF
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_7_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount7,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"00004000FFFF7FFF"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_binByteCount(7),
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(7)
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_6_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount6,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y36"
    )
    port map (
      CI => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_cy(3),
      CYINIT => '0',
      CO(3) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_DI_3_UNCONNECTED,
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount7,
      O(2) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount6,
      O(1) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount5,
      O(0) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount4,
      S(3) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(7),
      S(2) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(6),
      S(1) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(5),
      S(0) => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(4)
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"555555551555D555"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR0 => HostCommInst_UARTHandlerInst_up_binByteCount(6),
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(6)
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_5_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount5,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"0020FF7F0000FFFF"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_binByteCount(5),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(5)
    );
  HostCommInst_UARTHandlerInst_up_binByteCount_4 : X_FF
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0372_inv_6546,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_4_CLK,
      I => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount4,
      O => HostCommInst_UARTHandlerInst_up_binByteCount(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"10000000BFFFFFFF"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_binByteCount(4),
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(4)
    );
  UART_Rx_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 202 ps
    )
    port map (
      O => UART_Rx_IBUF_1127,
      I => UART_Rx
    );
  ProtoComp48_IMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 202 ps
    )
    port map (
      I => UART_Rx_IBUF_1127,
      O => UART_Rx_IBUF_0
    );
  UART_Tx_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => NlwBufferSignal_UART_Tx_OBUF_I,
      O => UART_Tx
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 202 ps
    )
    port map (
      O => reset_IBUF_1132,
      I => reset
    );
  ProtoComp48_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 202 ps
    )
    port map (
      I => reset_IBUF_1132,
      O => reset_IBUF_0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_1135,
      I => clk
    );
  ProtoComp48_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1135,
      O => clk_BUFGP_IBUFG_0
    );
  leds_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => '0',
      O => leds(0)
    );
  leds_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => '1',
      O => leds(1)
    );
  leds_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => '0',
      O => leds(2)
    );
  leds_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => '1',
      O => leds(3)
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  N12_N12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result634_1147,
      O => MIPSProcInst_alu_Mmux_alu_result634_0
    );
  MIPSProcInst_alu_Mmux_alu_result633 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y23"
    )
    port map (
      IA => N151,
      IB => N152,
      O => MIPSProcInst_alu_Mmux_alu_result634_1147,
      SEL => MIPSProcInst_alu_b_mux_out(4)
    );
  MIPSProcInst_alu_Mmux_alu_result633_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y23",
      INIT => X"C5C5C5C5FF0FF000"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_Sh119,
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_Sh115,
      ADR4 => MIPSProcInst_alu_Sh107,
      ADR0 => N12,
      O => N151
    );
  MIPSProcInst_alu_Mmux_alu_result633_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y23",
      INIT => X"00220022002200E2"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_a_mux_out(31),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_Sh123,
      O => N152
    );
  MIPSProcInst_alu_Sh1391_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y23",
      INIT => X"0A110ABB5F115FBB"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(18),
      ADR1 => MIPSProcInst_alu_a_mux_out(15),
      ADR4 => MIPSProcInst_alu_a_mux_out(16),
      ADR5 => MIPSProcInst_alu_a_mux_out(17),
      O => N12
    );
  MIPSProcInst_alu_Sh1391 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y23",
      INIT => X"FF00FFFF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => N12,
      ADR5 => MIPSProcInst_alu_Sh119,
      O => MIPSProcInst_alu_N55
    );
  MIPSProcInst_alu_Mmux_alu_result673 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y24",
      INIT => X"5500FFFF55004444"
    )
    port map (
      ADR2 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR5 => MIPSProcInst_alu_Mmux_alu_result671_6926,
      ADR1 => MIPSProcInst_alu_N55,
      ADR3 => MIPSProcInst_alu_N120,
      O => MIPSProcInst_alu_Mmux_alu_result672_6655
    );
  MIPSProcInst_alu_Mmux_alu_result672 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y24",
      INIT => X"0000000000300000"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(31),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      O => MIPSProcInst_alu_Mmux_alu_result671_6926
    );
  MIPSProcInst_pc_pc_out_15 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_15_CLK,
      I => MIPSProcInst_pc_pc_out_15_rstpot_1188,
      O => MIPSProcInst_pc_pc_out(15),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"CCFFCCFFCC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(15),
      ADR1 => MIPSProcInst_pc_mux_out(15),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_15_rstpot_1188
    );
  MIPSProcInst_pc_pc_out_14 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_14_CLK,
      I => MIPSProcInst_pc_pc_out_14_rstpot_1194,
      O => MIPSProcInst_pc_pc_out(14),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"AFAFA0A0AFAFA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(14),
      ADR0 => MIPSProcInst_pc_mux_out(14),
      ADR2 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_14_rstpot_1194
    );
  MIPSProcInst_pc_pc_out_13 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_13_CLK,
      I => MIPSProcInst_pc_pc_out_13_rstpot_1199,
      O => MIPSProcInst_pc_pc_out(13),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"AAAAFF00AAAAFF00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(13),
      ADR0 => MIPSProcInst_pc_mux_out(13),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_13_rstpot_1199
    );
  MIPSProcInst_pc_pc_out_12 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_12_CLK,
      I => MIPSProcInst_pc_pc_out_12_rstpot_1204,
      O => MIPSProcInst_pc_pc_out(12),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(12),
      ADR4 => MIPSProcInst_pc_mux_out(12),
      ADR5 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_12_rstpot_1204
    );
  HostCommInst_UARTHandlerInst_up_addrAutoInc : X_FF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrAutoInc_CLK,
      I => HostCommInst_UARTHandlerInst_up_rxData_1_INV_108_o,
      O => HostCommInst_UARTHandlerInst_up_addrAutoInc_6708,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_rxData_1_INV_108_o1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      O => HostCommInst_UARTHandlerInst_up_rxData_1_INV_108_o
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_79_o_HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_79_o_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_pack_9,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_79_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"0004000400040004"
    )
    port map (
      ADR4 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_79_o
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In2 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"FFFF0400"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In1_6927,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_CLK,
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_pack_9,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"3B00FB00FF00FF00"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_binLastByte,
      ADR0 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In1_6927
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_116_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"2000000020000000"
    )
    port map (
      ADR5 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_116_o
    );
  HostCommInst_UARTHandlerInst_up_iReadReq_HostCommInst_UARTHandlerInst_up_iReadReq_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o_pack_4,
      O => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o
    );
  HostCommInst_UARTHandlerInst_up_iReadReq_HostCommInst_UARTHandlerInst_up_iReadReq_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_n0335_inv_pack_2,
      O => HostCommInst_UARTHandlerInst_up_n0335_inv
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In23 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"FF50FFDCFF00FF00"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_binLastByte,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21_0,
      O => HostCommInst_UARTHandlerInst_up_mainSm_N3
    );
  HostCommInst_UARTHandlerInst_up_binLastByte_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"0000000000000002"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_binByteCount(1),
      ADR5 => HostCommInst_UARTHandlerInst_up_binByteCount(2),
      ADR1 => HostCommInst_UARTHandlerInst_up_binByteCount(3),
      ADR2 => HostCommInst_UARTHandlerInst_up_binByteCount(4),
      ADR3 => N32,
      ADR0 => HostCommInst_UARTHandlerInst_up_binByteCount(0),
      O => HostCommInst_UARTHandlerInst_up_binLastByte
    );
  HostCommInst_UARTHandlerInst_up_n0323_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"FFFF4000FFFF4000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_binLastByte,
      ADR2 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR1 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR4 => HostCommInst_UARTHandlerInst_up_binReadOp_PWR_37_o_MUX_540_o,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_n0323_inv
    );
  HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"00400040"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_binLastByte,
      ADR2 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR1 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR4 => '1',
      O => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o_pack_4
    );
  HostCommInst_UARTHandlerInst_up_iReadReq : X_FF
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0335_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iReadReq_CLK,
      I => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_561_o,
      O => HostCommInst_UARTHandlerInst_up_iReadReq_6062,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iReadReq_PWR_37_o_MUX_561_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"FEFAFEFAFEFAFEFA"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_readOp_0,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o,
      ADR4 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_116_o,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_561_o
    );
  HostCommInst_UARTHandlerInst_up_n0335_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"FFFFFEFA"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_readOp_0,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_iReadReq_6062,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_116_o,
      O => HostCommInst_UARTHandlerInst_up_n0335_inv_pack_2
    );
  MIPSProcInst_pc_mux_Mmux_data_out91 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y24",
      INIT => X"0A0A0A0ACFC0CFC0"
    )
    port map (
      ADR4 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(17),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(17),
      ADR5 => MIPSProcInst_pc_source(0),
      ADR2 => MIPSProcInst_pc_source(1),
      ADR3 => MIPSProcInst_alu_result_out(17),
      O => MIPSProcInst_pc_mux_out(17)
    );
  HostCommInst_UARTHandlerInst_up_iIntRead : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0342_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntRead_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntRead_IN,
      O => HostCommInst_UARTHandlerInst_up_iIntRead_6747,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_n0342_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"0000055500000555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_116_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_readOp_0,
      O => HostCommInst_UARTHandlerInst_up_n0342_inv
    );
  HostCommInst_UARTHandlerInst_up_writeOp_HostCommInst_UARTHandlerInst_up_writeOp_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_readOp_1292,
      O => HostCommInst_UARTHandlerInst_up_readOp_0
    );
  HostCommInst_UARTHandlerInst_up_writeOp : X_FF
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_79_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_writeOp_CLK,
      I => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_158_o,
      O => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_158_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => X"AA000000AA000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR4 => HostCommInst_UARTHandlerInst_up_N57_0,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_158_o
    );
  HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_157_o2 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => X"00550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR4 => HostCommInst_UARTHandlerInst_up_N57_0,
      O => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_157_o
    );
  HostCommInst_UARTHandlerInst_up_readOp : X_FF
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_79_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readOp_CLK,
      I => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_157_o,
      O => HostCommInst_UARTHandlerInst_up_readOp_1292,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_binWriteOp : X_FF
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0326_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binWriteOp_CLK,
      I => HostCommInst_UARTHandlerInst_up_binWriteOp_PWR_37_o_MUX_542_o,
      O => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_binWriteOp_PWR_37_o_MUX_542_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => X"0200000000000000"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      O => HostCommInst_UARTHandlerInst_up_binWriteOp_PWR_37_o_MUX_542_o
    );
  HostCommInst_UARTHandlerInst_up_n0326_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => X"FFFFFFFF88000000"
    )
    port map (
      ADR2 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_up_binWriteOp_PWR_37_o_MUX_542_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_binLastByte,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      O => HostCommInst_UARTHandlerInst_up_n0326_inv
    );
  HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"00000080FF7FFFFF"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_binByteCount(0),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      O => HostCommInst_UARTHandlerInst_up_Mcount_binByteCount_lut(0)
    );
  HostCommInst_UARTHandlerInst_up_binLastByte_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"FFFFFFF0FFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_binByteCount(7),
      ADR3 => HostCommInst_UARTHandlerInst_up_binByteCount(6),
      ADR2 => HostCommInst_UARTHandlerInst_up_binByteCount(5),
      O => N32
    );
  MIPSProcInst_alu_Mmux_alu_result6282_MIPSProcInst_alu_Mmux_alu_result6282_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_N49_pack_3,
      O => MIPSProcInst_alu_N49
    );
  MIPSProcInst_alu_Sh12911 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y21"
    )
    port map (
      IA => N165,
      IB => N166,
      O => MIPSProcInst_alu_N49_pack_3,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Sh12911_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"F0CCF0CCFFAA00AA"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(6),
      ADR2 => MIPSProcInst_alu_a_mux_out(8),
      ADR4 => MIPSProcInst_alu_a_mux_out(7),
      ADR0 => MIPSProcInst_alu_a_mux_out(5),
      O => N165
    );
  MIPSProcInst_alu_Sh12911_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"FCFC3030EE22EE22"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(14),
      ADR4 => MIPSProcInst_alu_a_mux_out(16),
      ADR2 => MIPSProcInst_alu_a_mux_out(15),
      ADR0 => MIPSProcInst_alu_a_mux_out(13),
      O => N166
    );
  MIPSProcInst_alu_Mmux_alu_result6283 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"DDDCCCDC888CCC8C"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR2 => procDMemWriteData(2),
      ADR3 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_N49,
      ADR5 => MIPSProcInst_alu_N113,
      O => MIPSProcInst_alu_Mmux_alu_result6282_6922
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out271 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"FFFBFFE900520040"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => procDMemWriteData(4),
      O => MIPSProcInst_alu_b_mux_out(4)
    );
  MIPSProcInst_alu_Mmux_alu_result6272 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"0C0C0000C808C808"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_Sh104,
      ADR3 => MIPSProcInst_alu_Sh112,
      ADR4 => MIPSProcInst_alu_Sh120,
      O => MIPSProcInst_alu_Mmux_alu_result6271_6918
    );
  MIPSProcInst_alu_Sh1121 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"DDDD8888FA50FA50"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(19),
      ADR4 => MIPSProcInst_alu_a_mux_out(18),
      ADR2 => MIPSProcInst_alu_a_mux_out(16),
      ADR3 => MIPSProcInst_alu_a_mux_out(17),
      O => MIPSProcInst_alu_Sh112
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out91 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"CCEFCCECEFEFECEC"
    )
    port map (
      ADR4 => MIPSProcInst_pc_pc_out(17),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR0 => MIPSProcInst_read_data_1_out(17),
      ADR2 => MIPSProcInst_alu_src_a(0),
      ADR1 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(17)
    );
  MIPSProcInst_alu_Sh1231 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FFAC0FACF0AC00AC"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(27),
      ADR0 => MIPSProcInst_alu_a_mux_out(28),
      ADR5 => MIPSProcInst_alu_a_mux_out(29),
      ADR4 => MIPSProcInst_alu_a_mux_out(30),
      O => MIPSProcInst_alu_Sh123
    );
  MIPSProcInst_alu_Sh14311 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FF44FF50BB00AF00"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR2 => procDMemWriteData(3),
      ADR4 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR3 => MIPSProcInst_alu_Sh115,
      ADR5 => MIPSProcInst_alu_Sh123,
      O => MIPSProcInst_alu_N120
    );
  MIPSProcInst_alu_Sh1151 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"E4E4E4E4FF55AA00"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(21),
      ADR2 => MIPSProcInst_alu_a_mux_out(22),
      ADR1 => MIPSProcInst_alu_a_mux_out(20),
      ADR4 => MIPSProcInst_alu_a_mux_out(19),
      O => MIPSProcInst_alu_Sh115
    );
  MIPSProcInst_alu_Mmux_alu_result6303 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FDFD5D5DA8A80808"
    )
    port map (
      ADR3 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_Sh107,
      ADR4 => MIPSProcInst_alu_Sh115,
      ADR5 => MIPSProcInst_alu_N51_0,
      O => MIPSProcInst_alu_Mmux_alu_result6302_6898
    );
  MIPSProcInst_alu_Sh1071 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"F0CCF0CCFFAA00AA"
    )
    port map (
      ADR1 => MIPSProcInst_alu_a_mux_out(13),
      ADR2 => MIPSProcInst_alu_a_mux_out(14),
      ADR4 => MIPSProcInst_alu_a_mux_out(12),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh107
    );
  MIPSProcInst_pc_mux_Mmux_data_out151 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"4F454F454A404A40"
    )
    port map (
      ADR4 => '1',
      ADR3 => MIPSProcInst_instruction_register_instruction_out(22),
      ADR1 => MIPSProcInst_alu_out_value_out(22),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out(22),
      O => MIPSProcInst_pc_mux_out(22)
    );
  MIPSProcInst_alu_Mmux_alu_result693 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"FE3ECE0EF232C202"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Sh13,
      ADR0 => MIPSProcInst_alu_Sh17,
      ADR4 => MIPSProcInst_alu_Sh9,
      ADR3 => MIPSProcInst_alu_Sh5,
      O => MIPSProcInst_alu_Mmux_alu_result692_6877
    );
  MIPSProcInst_alu_Mmux_alu_result61121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"10001C0000000000"
    )
    port map (
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => N117,
      ADR3 => MIPSProcInst_alu_control_out(1),
      O => N70
    );
  MIPSProcInst_pc_pc_out_23 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_23_CLK,
      I => MIPSProcInst_pc_pc_out_23_rstpot_1434,
      O => MIPSProcInst_pc_pc_out(23),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(23),
      ADR4 => MIPSProcInst_pc_mux_out(23),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_23_rstpot_1434
    );
  MIPSProcInst_pc_pc_out_22 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_22_CLK,
      I => MIPSProcInst_pc_pc_out_22_rstpot_1440,
      O => MIPSProcInst_pc_pc_out(22),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"F0FFF000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(22),
      ADR2 => MIPSProcInst_pc_mux_out(22),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_22_rstpot_1440
    );
  MIPSProcInst_pc_pc_out_21 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_21_CLK,
      I => MIPSProcInst_pc_pc_out_21_rstpot_1445,
      O => MIPSProcInst_pc_pc_out(21),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"FF00F0F0FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => MIPSProcInst_pc_pc_out(21),
      ADR3 => MIPSProcInst_pc_mux_out(21),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_21_rstpot_1445
    );
  MIPSProcInst_pc_pc_out_20 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_20_CLK,
      I => MIPSProcInst_pc_pc_out_20_rstpot_1450,
      O => MIPSProcInst_pc_pc_out(20),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(20),
      ADR4 => MIPSProcInst_pc_mux_out(20),
      ADR5 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_20_rstpot_1450
    );
  HostCommInst_UARTHandlerInst_up_readDone_HostCommInst_UARTHandlerInst_up_readDone_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_7_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_7_0
    );
  HostCommInst_UARTHandlerInst_up_readDone_HostCommInst_UARTHandlerInst_up_readDone_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_6_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_6_0
    );
  HostCommInst_UARTHandlerInst_up_readDone_HostCommInst_UARTHandlerInst_up_readDone_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_5_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_5_0
    );
  HostCommInst_UARTHandlerInst_up_readDone_HostCommInst_UARTHandlerInst_up_readDone_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_4_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_4_0
    );
  HostCommInst_UARTHandlerInst_up_readDone : X_FF
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDone_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDone_IN,
      O => HostCommInst_UARTHandlerInst_up_readDone_6561,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(7),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_7_rt_1457
    );
  leds_0_OBUF_1_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_8_D5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y28"
    )
    port map (
      CI => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_3_Q_6521,
      CYINIT => '0',
      CO(3) => HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_Q_6526,
      CO(2) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_HostCommInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_181_o_add_85_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_7_Q,
      O(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_6_Q,
      O(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_5_Q,
      O(0) => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_4_Q,
      S(3) => HostCommInst_UARTHandlerInst_up_iIntAddress_7_rt_1457,
      S(2) => HostCommInst_UARTHandlerInst_up_iIntAddress_6_rt_1467,
      S(1) => HostCommInst_UARTHandlerInst_up_iIntAddress_5_rt_1470,
      S(0) => HostCommInst_UARTHandlerInst_up_iIntAddress_4_rt_1473
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(6),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_6_rt_1467
    );
  leds_0_OBUF_1_9_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_9_C5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(5),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_5_rt_1470
    );
  leds_0_OBUF_1_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_10_B5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(4),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_4_rt_1473
    );
  leds_0_OBUF_1_11_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_leds_0_OBUF_1_11_A5LUT_O_UNCONNECTED
    );
  HostCommInst_UARTHandlerInst_up_addrParam_15 : X_FF
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_15_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_15_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"4444444450555000"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(15),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR1 => HostCommInst_UARTHandlerInst_up_addrParam(11),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_15_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_14 : X_FF
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_14_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_14_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"00000000CACFCAC0"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(14),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR1 => HostCommInst_UARTHandlerInst_up_addrParam(10),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_14_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_13 : X_FF
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_13_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_13_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"0000AFA30000ACA0"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_addrParam(13),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(9),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_13_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_12_HostCommInst_UARTHandlerInst_up_addrParam_12_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  HostCommInst_UARTHandlerInst_up_addrParam_12 : X_FF
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_12_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_12_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"0A0A0F030A0A0C00"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_addrParam(12),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(8),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_12_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_11_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_11_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"0B0B0B08080B0808"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(11),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(7),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_11_Q
    );
  HostCommInst_UARTHandlerInst_up_mainSm_mainSm_3_PWR_37_o_equal_65_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"0000004400000044"
    )
    port map (
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT14_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"FF0FFFFF"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => '1',
      ADR0 => '1',
      O => N24
    );
  HostCommInst_UARTHandlerInst_up_addrParam_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_10_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_10_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"3210331132102200"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_addrParam(10),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR3 => HostCommInst_UARTHandlerInst_up_addrParam(6),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_10_Q
    );
  HostCommInst_UARTHandlerInst_up_binReadOp_HostCommInst_UARTHandlerInst_up_binReadOp_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21_0
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In22_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y34"
    )
    port map (
      IA => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In221_1542,
      IB => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In22,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21,
      SEL => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In222 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"5000000050000000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In221_1542
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In221 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"202F000020200000"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR3 => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In22
    );
  HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"0000000000001800"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_N63,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      O => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o
    );
  HostCommInst_UARTHandlerInst_up_binReadOp : X_FF
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0323_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binReadOp_CLK,
      I => HostCommInst_UARTHandlerInst_up_binReadOp_PWR_37_o_MUX_540_o,
      O => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_binReadOp_PWR_37_o_MUX_540_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"0020000000000000"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      O => HostCommInst_UARTHandlerInst_up_binReadOp_PWR_37_o_MUX_540_o
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In5 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y35"
    )
    port map (
      IA => N133,
      IB => N134,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In,
      SEL => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In5_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"FFFFA00000000000"
    )
    port map (
      ADR1 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1_6930,
      O => N133
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_CLK,
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In5_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"FFFFFFFF2F2FFF2F"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR4 => HostCommInst_UARTHandlerInst_up_binLastByte,
      ADR0 => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_6931,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      O => N134
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"30F0303030F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR4 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR5 => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_6931
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"0000000055405504"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_N57_0,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR3 => HostCommInst_UARTHandlerInst_up_rxData_7_GND_181_o_equal_1_o,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1_6930
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_3_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_N57,
      O => HostCommInst_UARTHandlerInst_up_N57_0
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_155_o21 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"0101010101010101"
    )
    port map (
      ADR4 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_N63
    );
  HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_157_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00080000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      O => HostCommInst_UARTHandlerInst_up_N57
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_rxData_7_GND_181_o_equal_1_o_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"0000000000000010"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR2 => HostCommInst_UARTHandlerInst_up_N63,
      O => HostCommInst_UARTHandlerInst_up_rxData_7_GND_181_o_equal_1_o
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_pack_6,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(3)
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_pack_4,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(2)
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_pack_2,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(1)
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(0),
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0_0
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(4),
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_rt_1645
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_rt_1645,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_pack_6,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(3),
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_rt_1629
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_rt_1629,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_pack_4,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(2),
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_rt_1634
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_rt_1634,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_pack_2,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(1),
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_rt_1639
    );
  HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_rt_1639,
      O => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_3_CLK,
      I => MIPSProcInst_pc_pc_out_3_rstpot_1654,
      O => MIPSProcInst_pc_pc_out(3),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"CCFFCCFFCC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(3),
      ADR1 => MIPSProcInst_pc_mux_out(3),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_3_rstpot_1654
    );
  MIPSProcInst_pc_pc_out_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_2_CLK,
      I => MIPSProcInst_pc_pc_out_2_rstpot_1660,
      O => MIPSProcInst_pc_pc_out(2),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(2),
      ADR2 => MIPSProcInst_pc_mux_out(2),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_2_rstpot_1660
    );
  MIPSProcInst_pc_pc_out_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_1_CLK,
      I => MIPSProcInst_pc_pc_out_1_rstpot_1665,
      O => MIPSProcInst_pc_pc_out(1),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"AAAAFF00AAAAFF00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(1),
      ADR0 => MIPSProcInst_pc_mux_out(1),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_1_rstpot_1665
    );
  MIPSProcInst_pc_pc_out_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_0_CLK,
      I => MIPSProcInst_pc_pc_out_0_rstpot_1670,
      O => MIPSProcInst_pc_pc_out(0),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"AAFFAAFFAA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(0),
      ADR0 => MIPSProcInst_pc_mux_out(0),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_0_rstpot_1670
    );
  MIPSProcInst_alu_Sh14711_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"FFCCFFCCFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      O => N72
    );
  MIPSProcInst_alu_Sh1511 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"00AA00CC00AAF0CC"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_a_mux_out(31),
      ADR5 => N72,
      ADR1 => MIPSProcInst_alu_Sh119,
      ADR0 => MIPSProcInst_alu_Sh123,
      O => MIPSProcInst_alu_Sh151
    );
  MIPSProcInst_alu_Sh14711 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"0F0F00000FAF00A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_a_mux_out(31),
      ADR4 => MIPSProcInst_alu_Sh119,
      O => MIPSProcInst_alu_N59
    );
  MIPSProcInst_alu_Sh1191 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"F5F5DD88A0A0DD88"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(25),
      ADR2 => MIPSProcInst_alu_a_mux_out(26),
      ADR3 => MIPSProcInst_alu_a_mux_out(23),
      ADR1 => MIPSProcInst_alu_a_mux_out(24),
      O => MIPSProcInst_alu_Sh119
    );
  MIPSProcInst_write_data_mux_Mmux_data_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y24",
      INIT => X"FFCFFFFF00C00000"
    )
    port map (
      ADR0 => '1',
      ADR5 => MIPSProcInst_alu_out_value_out(13),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(13),
      O => MIPSProcInst_write_data_mux_out(13)
    );
  MIPSProcInst_alu_Sh451 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => X"AFAFA0A0FC0CFC0C"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_Sh1,
      ADR1 => MIPSProcInst_alu_Sh13,
      ADR4 => MIPSProcInst_alu_Sh9,
      ADR3 => MIPSProcInst_alu_Sh5,
      O => MIPSProcInst_alu_Sh45
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_7_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_7_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT141 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => X"CCCFCCCFCCC0CCC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_addrParam(7),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_7_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_7_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_6 : X_FF
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_6_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_6_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT131 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => X"AAAAB8B8AAAAB8B8"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(6),
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_6_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_6_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_5_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_5_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => X"FF00FF00FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_addrParam(5),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_5_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_5_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_4 : X_FF
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_4_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_4_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y28",
      INIT => X"AAAAAAAAAAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(4),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_4_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_4_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_11_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_11_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"AAAAAFA0AAAAAFA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(11),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_11_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_11_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_10_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_10_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"FFFFFFF0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_up_addrParam(10),
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_10_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_10_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_9_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_9_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"FF00FF00FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_addrParam(9),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_9_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_9_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_8_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_8_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT151 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"FFFF0000FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(8),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_N59,
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_8_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_8_Q
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => X"1000000000000000"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o
    );
  HostCommInst_UARTHandlerInst_up_addrParam_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_9_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_9_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => X"3333000032103210"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR2 => HostCommInst_UARTHandlerInst_up_addrParam(9),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(5),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_9_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_8_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_8_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT151 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => X"00000000EEFC2230"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_PWR_37_o_equal_65_o,
      ADR2 => HostCommInst_UARTHandlerInst_up_addrParam(8),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(4),
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_8_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_7_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_7_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT14 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => X"FF000000FFA3A3A3"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(3),
      ADR3 => HostCommInst_UARTHandlerInst_up_addrParam(7),
      ADR1 => N24_0,
      ADR4 => HostCommInst_UARTHandlerInst_up_N17,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_7_Q
    );
  HostCommInst_UARTHandlerInst_up_sendStatFlag_HostCommInst_UARTHandlerInst_up_sendStatFlag_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N30,
      O => N30_0
    );
  HostCommInst_UARTHandlerInst_up_sendStatFlag : X_FF
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sendStatFlag_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sendStatFlag_IN,
      O => HostCommInst_UARTHandlerInst_up_sendStatFlag_6758,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => X"F0FFFFFFF0FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR5 => '1',
      O => N26
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT11_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => X"F5F5FFFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      O => N30
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT171 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"0000008020200000"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR2 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      O => HostCommInst_UARTHandlerInst_up_N70
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"00AA008AAAAAAAAA"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1_6933
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"5100110050000000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_rxData_7_GND_181_o_equal_1_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2_6934
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_CLK,
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"FFFFFCFCFFFFFCFC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_N3,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1_6933,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2_6934,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In
    );
  HostCommInst_UARTHandlerInst_ut_ut_count16_3_HostCommInst_UARTHandlerInst_ut_ut_count16_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_count16_2_pack_11,
      O => HostCommInst_UARTHandlerInst_ut_ut_count16(2)
    );
  HostCommInst_UARTHandlerInst_ut_ut_count16_3_HostCommInst_UARTHandlerInst_ut_ut_count16_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_n0054_inv_pack_9,
      O => HostCommInst_UARTHandlerInst_ut_ut_n0054_inv
    );
  HostCommInst_UARTHandlerInst_ut_ut_count16_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_3_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count163,
      O => HostCommInst_UARTHandlerInst_ut_ut_count16(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => X"4C008000CC000000"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_count16(3),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_count16(1),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ut_count16(2),
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count163
    );
  HostCommInst_UARTHandlerInst_ut_ut_count16_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_1_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count161,
      O => HostCommInst_UARTHandlerInst_ut_ut_count16(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => X"5A0000005A000000"
    )
    port map (
      ADR1 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_count16(1),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count161
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => X"6C000000"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_count16(2),
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_count16(1),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count162
    );
  HostCommInst_UARTHandlerInst_ut_ut_count16_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_2_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count162,
      O => HostCommInst_UARTHandlerInst_ut_ut_count16_2_pack_11,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_count16_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_0_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count16,
      O => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_count16
    );
  HostCommInst_UARTHandlerInst_ut_ut_n0054_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => X"FFFF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      O => HostCommInst_UARTHandlerInst_ut_ut_n0054_inv_pack_9
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_6 : X_FF
    generic map(
      LOC => "SLICE_X21Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxData_4 : X_FF
    generic map(
      LOC => "SLICE_X21Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  MIPSProcInst_alu_out_value_out_3_MIPSProcInst_alu_out_value_out_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_result_out(3),
      O => MIPSProcInst_alu_result_out_3_0
    );
  MIPSProcInst_alu_Mmux_alu_result6266 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y21"
    )
    port map (
      IA => N175,
      IB => N176,
      O => MIPSProcInst_alu_result_out(3),
      SEL => MIPSProcInst_alu_b_mux_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6266_F : X_LUT6
    generic map(
      LOC => "SLICE_X22Y21",
      INIT => X"FFFFCC00FFFFFAAA"
    )
    port map (
      ADR3 => MIPSProcInst_alu_N5,
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6264_0,
      ADR1 => MIPSProcInst_alu_N120,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result626,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6263,
      O => N175
    );
  MIPSProcInst_alu_out_value_out_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_3_CLK,
      I => MIPSProcInst_alu_result_out(3),
      O => MIPSProcInst_alu_out_value_out(3),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6266_G : X_LUT6
    generic map(
      LOC => "SLICE_X22Y21",
      INIT => X"FAFAAAAAFAAAFAAA"
    )
    port map (
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_N5,
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_N51_0,
      ADR4 => MIPSProcInst_alu_N59,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result626,
      O => N176
    );
  MIPSProcInst_alu_Mmux_alu_result6264 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y21",
      INIT => X"0004000000000000"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_Sh3,
      ADR3 => MIPSProcInst_alu_n0031,
      O => MIPSProcInst_alu_Mmux_alu_result6263
    );
  MIPSProcInst_alu_Mmux_alu_result6261 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y21",
      INIT => X"5550454045400500"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR5 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(3),
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_3_0,
      O => MIPSProcInst_alu_Mmux_alu_result626
    );
  N111_N111_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N111,
      O => N111_0
    );
  MIPSProcInst_alu_Mmux_alu_result6222_SW0_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y22"
    )
    port map (
      IA => N125,
      IB => N126,
      O => N111,
      SEL => procDMemWriteData(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6222_SW0_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"FFFFFFFFDFFFFFFF"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR5 => MIPSProcInst_alu_src_b(0),
      ADR3 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_control_out(0),
      O => N125
    );
  MIPSProcInst_alu_Mmux_alu_result6222_SW0_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"FFDFFFFFFFDFFFDF"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR5 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_control_out(0),
      O => N126
    );
  MIPSProcInst_alu_Mmux_alu_result61110 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => X"BFBC8F8CB3B08380"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Sh15,
      ADR3 => MIPSProcInst_alu_Sh19,
      ADR0 => MIPSProcInst_alu_Sh7,
      ADR4 => MIPSProcInst_alu_Sh11,
      O => MIPSProcInst_alu_Mmux_alu_result6113_6858
    );
  MIPSProcInst_alu_Sh152 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => X"E4FFE455E4AAE400"
    )
    port map (
      ADR4 => MIPSProcInst_alu_a_mux_out(13),
      ADR2 => MIPSProcInst_alu_a_mux_out(12),
      ADR1 => MIPSProcInst_alu_a_mux_out(14),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(15),
      O => MIPSProcInst_alu_Sh15
    );
  MIPSProcInst_pc_mux_out_19_MIPSProcInst_pc_mux_out_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_write_enable1_1950,
      O => MIPSProcInst_pc_write_enable1_0
    );
  MIPSProcInst_pc_mux_Mmux_data_out111 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y24",
      INIT => X"7531642075316420"
    )
    port map (
      ADR5 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(19),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(19),
      ADR1 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR4 => MIPSProcInst_alu_result_out(19),
      O => MIPSProcInst_pc_mux_out(19)
    );
  MIPSProcInst_pc_mux_Mmux_data_out101 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y24",
      INIT => X"00CC00CCFFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_out_value_out(18),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(18),
      ADR5 => MIPSProcInst_pc_source(0),
      ADR3 => MIPSProcInst_pc_source(1),
      ADR2 => MIPSProcInst_alu_result_out(18),
      O => MIPSProcInst_pc_mux_out(18)
    );
  MIPSProcInst_control_unit_state_n0055_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y24",
      INIT => X"0011000000110000"
    )
    port map (
      ADR2 => '1',
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => '1',
      O => MIPSProcInst_pc_source(1)
    );
  MIPSProcInst_pc_write_enable1 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y24",
      INIT => X"00110022"
    )
    port map (
      ADR2 => '1',
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      O => MIPSProcInst_pc_write_enable1_1950
    );
  MIPSProcInst_pc_mux_Mmux_data_out191 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y24",
      INIT => X"00CCAAF000CCAAF0"
    )
    port map (
      ADR5 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(26),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(25),
      ADR3 => MIPSProcInst_pc_source(0),
      ADR4 => MIPSProcInst_pc_source(1),
      ADR2 => MIPSProcInst_alu_result_out_26_0,
      O => MIPSProcInst_pc_mux_out(26)
    );
  MIPSProcInst_alu_Mmux_alu_result6118 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y25",
      INIT => X"0000EE880000F0F0"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR5 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(19),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(19),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result1_split_19_0,
      O => MIPSProcInst_alu_Mmux_alu_result6111_6860
    );
  MIPSProcInst_alu_Mmux_alu_result6119 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y25",
      INIT => X"0000000004000000"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_Sh3,
      O => MIPSProcInst_alu_Mmux_alu_result6112_6859
    );
  MIPSProcInst_pc_mux_Mmux_data_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => X"33F333C000F300C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(12),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(12),
      ADR1 => MIPSProcInst_pc_source(0),
      ADR3 => MIPSProcInst_pc_source(1),
      ADR4 => MIPSProcInst_alu_result_out(12),
      O => MIPSProcInst_pc_mux_out(12)
    );
  MIPSProcInst_pc_mux_Mmux_data_out141 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => X"3F0F3C0C33033000"
    )
    port map (
      ADR0 => '1',
      ADR3 => MIPSProcInst_instruction_register_instruction_out(21),
      ADR5 => MIPSProcInst_alu_out_value_out(21),
      ADR1 => MIPSProcInst_pc_source(0),
      ADR2 => MIPSProcInst_pc_source(1),
      ADR4 => MIPSProcInst_alu_result_out(21),
      O => MIPSProcInst_pc_mux_out(21)
    );
  MIPSProcInst_pc_mux_Mmux_data_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => X"22FF223322CC2200"
    )
    port map (
      ADR2 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(13),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(13),
      ADR3 => MIPSProcInst_pc_source(0),
      ADR1 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out(13),
      O => MIPSProcInst_pc_mux_out(13)
    );
  MIPSProcInst_alu_Sh141 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y27",
      INIT => X"FC30BBBBFC308888"
    )
    port map (
      ADR2 => MIPSProcInst_alu_a_mux_out(13),
      ADR5 => MIPSProcInst_alu_a_mux_out(14),
      ADR0 => MIPSProcInst_alu_a_mux_out(12),
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh14
    );
  MIPSProcInst_alu_Sh131 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y27",
      INIT => X"AACCFFF0AACC00F0"
    )
    port map (
      ADR2 => MIPSProcInst_alu_a_mux_out(13),
      ADR5 => MIPSProcInst_alu_a_mux_out(12),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(10),
      ADR1 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh13
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y27",
      INIT => X"00F000F0CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(12),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(12),
      ADR2 => MIPSProcInst_read_data_1_out(12),
      ADR3 => MIPSProcInst_alu_src_a(1),
      ADR5 => MIPSProcInst_alu_src_a(0),
      O => MIPSProcInst_alu_a_mux_out(12)
    );
  MIPSProcInst_alu_Mmux_alu_result641 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y27",
      INIT => X"00000000FCC0AAAA"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(12),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR2 => MIPSProcInst_alu_a_mux_out(12),
      ADR0 => MIPSProcInst_alu_Mmux_alu_result1_split_12_0,
      O => MIPSProcInst_alu_Mmux_alu_result64
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_3_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_3_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => X"FFFF0000FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(3),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_N59,
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_3_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_3_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_2_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_2_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => X"FF00FA0AFF00FA0A"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_addrParam(2),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_2_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_2_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_1_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_1_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => X"CCCCCCCCCACACACA"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_addrParam(1),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR2 => HostCommInst_UARTHandlerInst_up_N59,
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_1_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_1_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_0_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_0_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT18 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => X"F0F0F0F0F0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_addrParam(0),
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_0_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_0_Q
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_108_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y29",
      INIT => X"0000002000000000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_N59
    );
  HostCommInst_UARTHandlerInst_up_iWriteReq : X_FF
    generic map(
      LOC => "SLICE_X22Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0347_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iWriteReq_CLK,
      I => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      O => HostCommInst_UARTHandlerInst_up_iWriteReq_6033,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y29",
      INIT => X"EAAAC000AAAA0000"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR0 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      O => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o
    );
  HostCommInst_UARTHandlerInst_up_dataParam_2_HostCommInst_UARTHandlerInst_up_dataParam_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_dataNibble(2),
      O => HostCommInst_UARTHandlerInst_up_dataNibble_2_0
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y32"
    )
    port map (
      IA => HostCommInst_UARTHandlerInst_up_dataNibble_2_2_2068,
      IB => HostCommInst_UARTHandlerInst_up_dataNibble_2_1_2079,
      O => HostCommInst_UARTHandlerInst_up_dataNibble(2),
      SEL => HostCommInst_UARTHandlerInst_ut_ur_rxData(6)
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_2_2 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => X"FFFFFFFFFFFF8FFF"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      O => HostCommInst_UARTHandlerInst_up_dataNibble_2_2_2068
    );
  HostCommInst_UARTHandlerInst_up_dataParam_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_2_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataNibble(2),
      O => HostCommInst_UARTHandlerInst_up_dataParam(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => X"FFFFFFFFFFFEFFFD"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      O => HostCommInst_UARTHandlerInst_up_dataNibble_2_1_2079
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => X"F0A0FCECFAF0FEFC"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      O => HostCommInst_UARTHandlerInst_up_dataNibble(4)
    );
  HostCommInst_UARTHandlerInst_up_dataParam_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_0_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataNibble(0),
      O => HostCommInst_UARTHandlerInst_up_dataParam(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_4_2 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => X"FFFFFAFBFFFFF0FF"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR4 => HostCommInst_UARTHandlerInst_up_dataNibble(4),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      O => HostCommInst_UARTHandlerInst_up_dataNibble(0)
    );
  HostCommInst_UARTHandlerInst_up_addrParam_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_6_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_6_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT13 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"DDCDCCCD55050005"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(2),
      ADR5 => HostCommInst_UARTHandlerInst_up_addrParam(6),
      ADR2 => N26,
      ADR1 => HostCommInst_UARTHandlerInst_up_N17,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_6_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_5 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_5_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_5_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"AAEA00C0AAEF00CF"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_addrParam(1),
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(5),
      ADR5 => N28,
      ADR4 => HostCommInst_UARTHandlerInst_up_N17,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_5_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_4 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_4_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_4_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"A0A0ECECA0A0A0FF"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_addrParam(0),
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(4),
      ADR3 => N30_0,
      ADR2 => HostCommInst_UARTHandlerInst_up_N17,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_4_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_3_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_3_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"FFECFFA0ECECA0A0"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_N17,
      ADR4 => HostCommInst_UARTHandlerInst_up_dataNibble_3_0,
      ADR1 => HostCommInst_UARTHandlerInst_up_N70,
      ADR5 => HostCommInst_UARTHandlerInst_up_addrParam(3),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR0 => HostCommInst_UARTHandlerInst_up_N135,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_3_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_2_HostCommInst_UARTHandlerInst_up_addrParam_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_N17_pack_10,
      O => HostCommInst_UARTHandlerInst_up_N17
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"FF5FFF5FFF5FFF5F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR5 => '1',
      O => N28
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT1121 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"00003303"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_99_o,
      ADR0 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      O => HostCommInst_UARTHandlerInst_up_N17_pack_10
    );
  HostCommInst_UARTHandlerInst_up_addrParam_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_2_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_2_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"FFF8F8F8FF888888"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_N17,
      ADR0 => HostCommInst_UARTHandlerInst_up_dataNibble_2_0,
      ADR1 => HostCommInst_UARTHandlerInst_up_N70,
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(2),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR2 => HostCommInst_UARTHandlerInst_up_N135,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_2_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_1_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_1_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"FEFAFCF0EEAACC00"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_N17,
      ADR5 => HostCommInst_UARTHandlerInst_up_dataNibble_1_0,
      ADR2 => HostCommInst_UARTHandlerInst_up_N70,
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR1 => HostCommInst_UARTHandlerInst_up_N135,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_1_Q
    );
  HostCommInst_UARTHandlerInst_up_addrParam_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_0_CLK,
      I => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_0_Q,
      O => HostCommInst_UARTHandlerInst_up_addrParam(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT19 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"FFECECECFFA0A0A0"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_N17,
      ADR0 => HostCommInst_UARTHandlerInst_up_dataNibble(0),
      ADR2 => HostCommInst_UARTHandlerInst_up_N70,
      ADR3 => HostCommInst_UARTHandlerInst_up_addrParam(0),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR5 => HostCommInst_UARTHandlerInst_up_N135,
      O => HostCommInst_UARTHandlerInst_up_addrParam_15_GND_181_o_mux_68_OUT_0_Q
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o_HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_pack_7,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_6939
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"0080008000800080"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o
    );
  HostCommInst_UARTHandlerInst_up_n0372_inv : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"FFFFFFFFFF080808"
    )
    port map (
      ADR4 => N18,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR1 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR0 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      O => HostCommInst_UARTHandlerInst_up_n0372_inv_6546
    );
  HostCommInst_UARTHandlerInst_up_n0372_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"8080808080808080"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR2 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR5 => '1',
      O => N18
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"5555D5D5"
    )
    port map (
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR2 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_pack_7
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"F4F5F4F7F0F5F0FF"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_155_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_6939,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In3
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => X"0000800000000000"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_count16(3),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      O => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_69_o
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxBusy : X_FF
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_n0057_inv_6941,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxBusy_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_PWR_31_o_MUX_528_o,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxBusy_PWR_31_o_MUX_528_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => X"0000008000000000"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_count16(3),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      O => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_PWR_31_o_MUX_528_o
    );
  HostCommInst_UARTHandlerInst_ut_ur_n0057_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => X"FF3FFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_count16(3),
      O => N36
    );
  HostCommInst_UARTHandlerInst_ut_ur_n0057_inv : X_LUT6
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => X"000000FF000004FF"
    )
    port map (
      ADR4 => N36,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(3),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(0),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(2),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      O => HostCommInst_UARTHandlerInst_ut_ur_n0057_inv_6941
    );
  MIPSProcInst_pc_mux_Mmux_data_out261 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => X"0FAF00AF0FA000A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(3),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR3 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out_3_0,
      O => MIPSProcInst_pc_mux_out(3)
    );
  MIPSProcInst_pc_mux_Mmux_data_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => X"50FF50AA50555000"
    )
    port map (
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(16),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(16),
      ADR3 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR4 => MIPSProcInst_alu_result_out(16),
      O => MIPSProcInst_pc_mux_out(16)
    );
  MIPSProcInst_alu_Mmux_alu_result61112 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y23",
      INIT => X"FDA85D08A8A80808"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR5 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_N59,
      ADR1 => MIPSProcInst_alu_N120,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6113_6858,
      O => MIPSProcInst_alu_Mmux_alu_result6114_6944
    );
  MIPSProcInst_alu_out_value_out_19 : X_FF
    generic map(
      LOC => "SLICE_X23Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_19_CLK,
      I => MIPSProcInst_alu_result_out(19),
      O => MIPSProcInst_alu_out_value_out(19),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result61113 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y23",
      INIT => X"FFFF080AFFFF0808"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_n0031,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6112_6859,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6111_6860,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6114_6944,
      O => MIPSProcInst_alu_result_out(19)
    );
  MIPSProcInst_alu_Mmux_alu_result6105_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y23",
      INIT => X"FF553F33FF553F3F"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6101,
      ADR0 => MIPSProcInst_alu_Sh146,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6102_6810,
      O => N56
    );
  MIPSProcInst_alu_out_value_out_18 : X_FF
    generic map(
      LOC => "SLICE_X23Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_18_CLK,
      I => MIPSProcInst_alu_result_out(18),
      O => MIPSProcInst_alu_out_value_out(18),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6105 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y23",
      INIT => X"000F550F000F550F"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_n0031,
      ADR2 => N55,
      ADR4 => N56,
      O => MIPSProcInst_alu_result_out(18)
    );
  MIPSProcInst_pc_pc_out_19 : X_FF
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_19_CLK,
      I => MIPSProcInst_pc_pc_out_19_rstpot_2269,
      O => MIPSProcInst_pc_pc_out(19),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(19),
      ADR3 => MIPSProcInst_pc_mux_out(19),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_19_rstpot_2269
    );
  MIPSProcInst_pc_pc_out_18 : X_FF
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_18_CLK,
      I => MIPSProcInst_pc_pc_out_18_rstpot_2275,
      O => MIPSProcInst_pc_pc_out(18),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(18),
      ADR2 => MIPSProcInst_pc_mux_out(18),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_18_rstpot_2275
    );
  MIPSProcInst_pc_pc_out_17 : X_FF
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_17_CLK,
      I => MIPSProcInst_pc_pc_out_17_rstpot_2280,
      O => MIPSProcInst_pc_pc_out(17),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => X"FFFFFF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(17),
      ADR5 => MIPSProcInst_pc_mux_out(17),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_17_rstpot_2280
    );
  MIPSProcInst_pc_pc_out_16 : X_FF
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_16_CLK,
      I => MIPSProcInst_pc_pc_out_16_rstpot_2285,
      O => MIPSProcInst_pc_pc_out(16),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y24",
      INIT => X"FFFFFF0000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(16),
      ADR5 => MIPSProcInst_pc_mux_out(16),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_16_rstpot_2285
    );
  MIPSProcInst_write_data_mux_Mmux_data_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y25",
      INIT => X"BAAABAAA8AAA8AAA"
    )
    port map (
      ADR4 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(12),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => procDMemReadData(12),
      O => MIPSProcInst_write_data_mux_out(12)
    );
  MIPSProcInst_write_register_mux_Mmux_data_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y25",
      INIT => X"AAAAAEAAAAAAA2AA"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(16),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_instruction_register_instruction_out(11),
      O => MIPSProcInst_write_register_mux_out(0)
    );
  MIPSProcInst_control_unit_state_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => X"FFFFFFFFF5FF7FFD"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(28),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(31),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(29),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(26),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(27),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(30),
      O => MIPSProcInst_control_unit_state_FSM_FFd3_In2_6096
    );
  MIPSProcInst_write_register_mux_Mmux_data_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => X"CCCECCCCCCC4CCCC"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(17),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_instruction_register_instruction_out(12),
      O => MIPSProcInst_write_register_mux_out(1)
    );
  MIPSProcInst_pc_mux_Mmux_data_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => X"4F454A404F454A40"
    )
    port map (
      ADR5 => '1',
      ADR1 => MIPSProcInst_alu_out_value_out(14),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(14),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR4 => MIPSProcInst_alu_result_out(14),
      O => MIPSProcInst_pc_mux_out(14)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out33 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"FFFF0000FE311020"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(11),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR4 => procDMemWriteData(11),
      O => MIPSProcInst_alu_b_mux_out(11)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"FFAAFEEF00000440"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(12),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR5 => procDMemWriteData(12),
      O => MIPSProcInst_alu_b_mux_out(12)
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"4040404000400000"
    )
    port map (
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR2 => HostCommInst_procEnableSignal_6027,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_In1_6767,
      ADR3 => MIPSProcInst_instruction_register_instruction_out(30),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_In2_6945
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_4_CLK,
      I => MIPSProcInst_control_unit_state_FSM_FFd2_In,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"FFFF0C0CFFFF0C8C"
    )
    port map (
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR2 => HostCommInst_procEnableSignal_6027,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_In3_6771,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_In2_6945,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_In
    );
  HostCommInst_UARTHandlerInst_up_iIntWrite_HostCommInst_UARTHandlerInst_up_iIntWrite_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcIMemWriteEnable,
      O => hcIMemWriteEnable_0
    );
  HostCommInst_dmem_wr_en1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"0000300000003000"
    )
    port map (
      ADR0 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntWrite_6026,
      ADR1 => HostCommInst_procEnableSignal_6027,
      ADR5 => '1',
      O => hcDMemWriteEnable
    );
  HostCommInst_imem_wr_en1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"30000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntWrite_6026,
      ADR1 => HostCommInst_procEnableSignal_6027,
      O => hcIMemWriteEnable
    );
  HostCommInst_UARTHandlerInst_up_n0411_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"FFFFFFFFFFC8FFC0"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_addrAutoInc_6708,
      ADR2 => HostCommInst_UARTHandlerInst_up_iReadReq_PWR_37_o_MUX_559_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntWrite_6026,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      O => HostCommInst_UARTHandlerInst_up_n0411_inv
    );
  HostCommInst_UARTHandlerInst_up_iIntWrite : X_FF
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0351_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntWrite_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntWrite_IN,
      O => HostCommInst_UARTHandlerInst_up_iIntWrite_6026,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_n0351_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"070F77FF0F0FFFFF"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR2 => HostCommInst_UARTHandlerInst_up_N59,
      ADR3 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      O => HostCommInst_UARTHandlerInst_up_n0351_inv
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_108_o_HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_108_o_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(2),
      O => HostCommInst_UARTHandlerInst_up_intWrData_2_0
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_108_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_108_o
    );
  HostCommInst_UARTHandlerInst_up_mux211 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => X"EE22AAAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR3 => HostCommInst_UARTHandlerInst_up_dataParam(2),
      ADR1 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_2_Q
    );
  HostCommInst_UARTHandlerInst_up_intWrData_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_2_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_2_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_n0347_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => X"FFFFFF80FFFFFF00"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_108_o,
      ADR5 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR3 => HostCommInst_UARTHandlerInst_up_iWriteReq_6033,
      O => HostCommInst_UARTHandlerInst_up_n0347_inv
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_15 : X_FF
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_15_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_15_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"AAAFAAA0AAAFAAA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(15),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_15_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_15_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_14 : X_FF
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_14_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_14_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"FFFF0033FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_addrParam(14),
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_14_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_14_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_13 : X_FF
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_13_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_13_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"AAAAAAFFAAAAAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_addrParam(13),
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_13_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_13_Q
    );
  HostCommInst_UARTHandlerInst_up_iIntAddress_12 : X_FF
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0411_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_12_CLK,
      I => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_12_Q,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"FF00FC30FF00FC30"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_addrParam(12),
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_101_o,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress_15_GND_181_o_add_85_OUT_12_0,
      O => HostCommInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_12_Q
    );
  HostCommInst_UARTHandlerInst_up_n0406_inv212 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y34",
      INIT => X"CECC00000A000000"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_sendStatFlag_6758,
      ADR3 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR0 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_binWriteOp_6030,
      O => HostCommInst_UARTHandlerInst_up_n0406_inv211_6798
    );
  HostCommInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_181_o_mux_68_OUT181 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y34",
      INIT => X"00BF00FF00000000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      O => HostCommInst_UARTHandlerInst_up_N135
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y38",
      INIT => X"BFBFFFFFFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(0),
      O => N38
    );
  HostCommInst_UARTHandlerInst_ut_ur_newRxData : X_FF
    generic map(
      LOC => "SLICE_X23Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_newRxData_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812,
      O => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o : X_LUT6
    generic map(
      LOC => "SLICE_X23Y38",
      INIT => X"0000000010000000"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(2),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(3),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_count16(3),
      ADR5 => N38,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      O => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_74_o_6812
    );
  HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_bitCount_2_pack_7,
      O => HostCommInst_UARTHandlerInst_ut_ur_bitCount(2)
    );
  HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_bitCount_0_pack_5,
      O => HostCommInst_UARTHandlerInst_ut_ur_bitCount(0)
    );
  HostCommInst_UARTHandlerInst_ut_ur_n0061_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => X"2000FFFF0000FFFF"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_count16(3),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      ADR3 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      O => HostCommInst_UARTHandlerInst_ut_ur_n0061_inv
    );
  HostCommInst_UARTHandlerInst_ut_ur_bitCount_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount3,
      O => HostCommInst_UARTHandlerInst_ut_ur_bitCount(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => X"78F0000078F00000"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(1),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(3),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(2),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount3
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => X"66CC0000"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(1),
      ADR2 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(2),
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount2
    );
  HostCommInst_UARTHandlerInst_ut_ur_bitCount_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_2_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount2,
      O => HostCommInst_UARTHandlerInst_ut_ur_bitCount_2_pack_7,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_bitCount_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_1_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount1,
      O => HostCommInst_UARTHandlerInst_ut_ur_bitCount(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => X"3300CC003300CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(0),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount1
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => X"33003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR2 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_bitCount(0),
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount
    );
  HostCommInst_UARTHandlerInst_ut_ur_bitCount_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y39",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_0_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_bitCount,
      O => HostCommInst_UARTHandlerInst_ut_ur_bitCount_0_pack_5,
      RST => reset_IBUF_0,
      SET => GND
    );
  MIPSProcInst_pc_mux_out_9_MIPSProcInst_pc_mux_out_9_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_N51,
      O => MIPSProcInst_alu_N51_0
    );
  MIPSProcInst_alu_Sh13113 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y21"
    )
    port map (
      IA => N145,
      IB => N146,
      O => MIPSProcInst_alu_N51,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Sh13113_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y21",
      INIT => X"FFF000F0AACCAACC"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_a_mux_out(9),
      ADR4 => MIPSProcInst_alu_a_mux_out(10),
      ADR2 => MIPSProcInst_alu_a_mux_out(8),
      ADR1 => MIPSProcInst_alu_a_mux_out(7),
      O => N145
    );
  MIPSProcInst_alu_Sh13113_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y21",
      INIT => X"CFC0FAFACFC00A0A"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(17),
      ADR1 => MIPSProcInst_alu_a_mux_out(18),
      ADR3 => MIPSProcInst_alu_a_mux_out(16),
      ADR0 => MIPSProcInst_alu_a_mux_out(15),
      O => N146
    );
  MIPSProcInst_pc_mux_Mmux_data_out321 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y21",
      INIT => X"2222FFCC22223300"
    )
    port map (
      ADR2 => '1',
      ADR5 => MIPSProcInst_alu_out_value_out(9),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(9),
      ADR1 => MIPSProcInst_pc_source(0),
      ADR4 => MIPSProcInst_pc_source(1),
      ADR3 => MIPSProcInst_alu_result_out(9),
      O => MIPSProcInst_pc_mux_out(9)
    );
  MIPSProcInst_pc_pc_out_29 : X_FF
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_29_CLK,
      I => MIPSProcInst_pc_pc_out_29_rstpot_2506,
      O => MIPSProcInst_pc_pc_out(29),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => X"7755FDFD22002020"
    )
    port map (
      ADR3 => MIPSProcInst_alu_out_value_out(29),
      ADR4 => MIPSProcInst_pc_source(0),
      ADR1 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_pc_pc_out(29),
      ADR2 => MIPSProcInst_alu_result_out(29),
      ADR0 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_29_rstpot_2506
    );
  MIPSProcInst_pc_pc_out_28 : X_FF
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_28_CLK,
      I => MIPSProcInst_pc_pc_out_28_rstpot_2515,
      O => MIPSProcInst_pc_pc_out(28),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => X"22AAF3AA22AAC0AA"
    )
    port map (
      ADR2 => MIPSProcInst_alu_out_value_out(28),
      ADR1 => MIPSProcInst_pc_source(0),
      ADR4 => MIPSProcInst_pc_source(1),
      ADR0 => MIPSProcInst_pc_pc_out(28),
      ADR5 => MIPSProcInst_alu_result_out(28),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_28_rstpot_2515
    );
  MIPSProcInst_pc_write_enable9 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      ADR5 => MIPSProcInst_pc_write_enable1_0,
      ADR2 => MIPSProcInst_pc_write_enable7_6674,
      ADR1 => MIPSProcInst_pc_write_enable8_6648,
      ADR4 => MIPSProcInst_pc_write_enable2_6664,
      ADR0 => MIPSProcInst_pc_write_enable6_6757,
      ADR3 => N51,
      O => MIPSProcInst_pc_write_enable
    );
  MIPSProcInst_pc_pc_out_27 : X_FF
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_27_CLK,
      I => MIPSProcInst_pc_pc_out_27_rstpot_2530,
      O => MIPSProcInst_pc_pc_out(27),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => X"AAAAFFFFAAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(27),
      ADR0 => MIPSProcInst_pc_mux_out(27),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_27_rstpot_2530
    );
  MIPSProcInst_write_data_mux_out_8_MIPSProcInst_write_data_mux_out_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_N50,
      O => MIPSProcInst_alu_N50_0
    );
  MIPSProcInst_alu_Sh13011 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y23"
    )
    port map (
      IA => N163,
      IB => N164,
      O => MIPSProcInst_alu_N50,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Sh13011_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y23",
      INIT => X"F3EEF322C0EEC022"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(7),
      ADR2 => MIPSProcInst_alu_a_mux_out(9),
      ADR5 => MIPSProcInst_alu_a_mux_out(8),
      ADR0 => MIPSProcInst_alu_a_mux_out(6),
      O => N163
    );
  MIPSProcInst_alu_Sh13011_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y23",
      INIT => X"F3BBC0BBF388C088"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(15),
      ADR2 => MIPSProcInst_alu_a_mux_out(17),
      ADR4 => MIPSProcInst_alu_a_mux_out(16),
      ADR5 => MIPSProcInst_alu_a_mux_out(14),
      O => N164
    );
  MIPSProcInst_write_data_mux_Mmux_data_out311 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y23",
      INIT => X"AFA0AAAAAAAAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(8),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => procDMemReadData(8),
      O => MIPSProcInst_write_data_mux_out(8)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out111 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y23",
      INIT => X"E4E4F0F0F0F0F0F0"
    )
    port map (
      ADR3 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(19),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(19),
      O => MIPSProcInst_write_data_mux_out(19)
    );
  MIPSProcInst_pc_mux_Mmux_data_out181 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y24",
      INIT => X"0CFF0C0F0CF00C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => MIPSProcInst_alu_out_value_out(25),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(25),
      ADR3 => MIPSProcInst_pc_source(0),
      ADR2 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out(25),
      O => MIPSProcInst_pc_mux_out(25)
    );
  MIPSProcInst_pc_pc_out_26 : X_FF
    generic map(
      LOC => "SLICE_X24Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_26_CLK,
      I => MIPSProcInst_pc_pc_out_26_rstpot_2571,
      O => MIPSProcInst_pc_pc_out(26),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y24",
      INIT => X"FFFFFF0000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(26),
      ADR5 => MIPSProcInst_pc_mux_out(26),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_26_rstpot_2571
    );
  MIPSProcInst_pc_pc_out_25 : X_FF
    generic map(
      LOC => "SLICE_X24Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_25_CLK,
      I => MIPSProcInst_pc_pc_out_25_rstpot_2576,
      O => MIPSProcInst_pc_pc_out(25),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y24",
      INIT => X"CCCCAAAACCCCAAAA"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => MIPSProcInst_pc_pc_out(25),
      ADR1 => MIPSProcInst_pc_mux_out(25),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_25_rstpot_2576
    );
  MIPSProcInst_pc_pc_out_24 : X_FF
    generic map(
      LOC => "SLICE_X24Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_24_CLK,
      I => MIPSProcInst_pc_pc_out_24_rstpot_2581,
      O => MIPSProcInst_pc_pc_out(24),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y24",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_pc_pc_out(24),
      ADR4 => MIPSProcInst_pc_mux_out(24),
      ADR5 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_24_rstpot_2581
    );
  MIPSProcInst_control_unit_state_FSM_FFd3_2_MIPSProcInst_control_unit_state_FSM_FFd3_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd3_In3_pack_4,
      O => MIPSProcInst_control_unit_state_FSM_FFd3_In3_6951
    );
  MIPSProcInst_control_unit_pc_write_cond1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y25",
      INIT => X"8080808080808080"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => '1',
      O => MIPSProcInst_pc_source(0)
    );
  MIPSProcInst_control_unit_state_FSM_FFd3_In3 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y25",
      INIT => X"54445000"
    )
    port map (
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_In2_6096,
      ADR3 => HostCommInst_procEnableSignal_6027,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      O => MIPSProcInst_control_unit_state_FSM_FFd3_In3_pack_4
    );
  MIPSProcInst_pc_mux_Mmux_data_out33 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y25",
      INIT => X"0C0C0C0CAFA0AFA0"
    )
    port map (
      ADR4 => '1',
      ADR2 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_pc_source(0),
      ADR3 => MIPSProcInst_alu_result_out_11_0,
      ADR1 => MIPSProcInst_alu_out_value_out(11),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(11),
      O => MIPSProcInst_pc_mux_out(11)
    );
  MIPSProcInst_control_unit_state_FSM_FFd3_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_2_CLK,
      I => MIPSProcInst_control_unit_state_FSM_FFd3_In,
      O => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd3_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y25",
      INIT => X"0000EEEEFF00FFEE"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_In1_6088,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_In3_6951,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => HostCommInst_procEnableSignal_6027,
      O => MIPSProcInst_control_unit_state_FSM_FFd3_In
    );
  MIPSProcInst_control_unit_state_FSM_FFd3_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_1_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_1_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd3_1_6847,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6166 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y25",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_control_out(1),
      O => MIPSProcInst_alu_Mmux_alu_result6146
    );
  MIPSProcInst_write_register_mux_out_3_MIPSProcInst_write_register_mux_out_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd4_In1_2628,
      O => MIPSProcInst_control_unit_state_FSM_FFd4_In1_0
    );
  MIPSProcInst_write_register_mux_Mmux_data_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y26",
      INIT => X"AAAAAAAAAACAAAAA"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(19),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_instruction_register_instruction_out(14),
      O => MIPSProcInst_write_register_mux_out(3)
    );
  MIPSProcInst_write_register_mux_Mmux_data_out31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y26",
      INIT => X"CDCCC8CCCCCCCCCC"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(18),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_instruction_register_instruction_out(13),
      O => MIPSProcInst_write_register_mux_out(2)
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y26",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_instruction_register_instruction_out(26),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(29),
      ADR5 => '1',
      O => MIPSProcInst_control_unit_state_FSM_FFd1_In3_6099
    );
  MIPSProcInst_control_unit_state_FSM_FFd4_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y26",
      INIT => X"80000000"
    )
    port map (
      ADR0 => MIPSProcInst_control_unit_N24,
      ADR2 => MIPSProcInst_instruction_register_instruction_out(31),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => MIPSProcInst_instruction_register_instruction_out(26),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(29),
      O => MIPSProcInst_control_unit_state_FSM_FFd4_In1_2628
    );
  HostCommInst_Mmux_regReadData1_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y27"
    )
    port map (
      IA => HostCommInst_Mmux_regReadData11_2637,
      IB => HostCommInst_Mmux_regReadData1,
      O => HostCommInst_Mmux_regReadData1_f7_2636,
      SEL => HostCommInst_UARTHandlerInst_up_iIntAddress(15)
    );
  HostCommInst_Mmux_regReadData12 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"0000444000000040"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      ADR1 => HostCommInst_N3,
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR5 => HostCommInst_procResetSignal_6587,
      ADR2 => HostCommInst_procEnableSignal_6027,
      O => HostCommInst_Mmux_regReadData11_2637
    );
  HostCommInst_UARTHandlerInst_up_readDataS_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_0_CLK,
      I => HostCommInst_Mmux_regReadData1_f7_2636,
      O => HostCommInst_UARTHandlerInst_up_readDataS(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"AAFFAAFFAA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR5 => hcDMemReadData(0),
      ADR0 => hcIMemReadData(0),
      O => HostCommInst_Mmux_regReadData1
    );
  HostCommInst_UARTHandlerInst_up_readDataS_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_1_CLK,
      I => HostCommInst_regReadData(1),
      O => HostCommInst_UARTHandlerInst_up_readDataS(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData21 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"B800B800B8FFB8FF"
    )
    port map (
      ADR4 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR2 => hcDMemReadData(1),
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR0 => hcIMemReadData(1),
      ADR5 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_mmx_out,
      O => HostCommInst_regReadData(1)
    );
  HostCommInst_GND_147_o_regAddress_15_equal_3_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"BFFFFFFFAFFFFFFF"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR3 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11_6560,
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      ADR2 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_1,
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      O => HostCommInst_GND_147_o_regAddress_15_equal_3_o_mmx_out
    );
  HostCommInst_Mmux_regReadData6 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y28"
    )
    port map (
      IA => N137,
      IB => N138,
      O => HostCommInst_regReadData(5),
      SEL => HostCommInst_UARTHandlerInst_up_iIntAddress(15)
    );
  HostCommInst_Mmux_regReadData6_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"0808000000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR5 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_1,
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      ADR0 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11_6560,
      O => N137
    );
  HostCommInst_UARTHandlerInst_up_readDataS_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_5_CLK,
      I => HostCommInst_regReadData(5),
      O => HostCommInst_UARTHandlerInst_up_readDataS(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData6_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"CCCCCCCCFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR4 => hcDMemReadData(5),
      ADR1 => hcIMemReadData(5),
      O => N138
    );
  HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_12 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(5),
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress(4),
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(6),
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(7),
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(8),
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(9),
      O => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11_6560
    );
  HostCommInst_UARTHandlerInst_up_readDataS_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_7_CLK,
      I => HostCommInst_regReadData(7),
      O => HostCommInst_UARTHandlerInst_up_readDataS(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData81 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"E2C0CCCCE2C00000"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR2 => hcIMemReadData(7),
      ADR0 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11_6560,
      ADR3 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_1,
      ADR5 => hcDMemReadData(7),
      O => HostCommInst_regReadData(7)
    );
  HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(11),
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(10),
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress(12),
      ADR4 => HostCommInst_UARTHandlerInst_up_iIntAddress(13),
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(2),
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(3),
      O => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_1
    );
  HostCommInst_UARTHandlerInst_up_readDataS_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_6_CLK,
      I => HostCommInst_regReadData(6),
      O => HostCommInst_UARTHandlerInst_up_readDataS(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData71 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"F0AAF0AACC000000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR5 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR2 => hcIMemReadData(6),
      ADR1 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11_6560,
      ADR4 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_1,
      ADR0 => hcDMemReadData(6),
      O => HostCommInst_regReadData(6)
    );
  HostCommInst_UARTHandlerInst_up_txData_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_5_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_5_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"00000000AEA0A2A0"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR0 => HostCommInst_UARTHandlerInst_up_txChar(4),
      ADR3 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR1 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR4 => HostCommInst_UARTHandlerInst_up_readDataS(5),
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_5_Q
    );
  HostCommInst_UARTHandlerInst_up_txData_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_4_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_4_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"0F000F000D080F0F"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR5 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR0 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR1 => HostCommInst_UARTHandlerInst_up_readDataS(4),
      ADR4 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR3 => HostCommInst_UARTHandlerInst_up_txChar(4),
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_4_Q
    );
  HostCommInst_UARTHandlerInst_up_txChar_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"51515D5D51FF5DFF"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_readDataS(7),
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR4 => HostCommInst_UARTHandlerInst_up_readDataS(3),
      ADR5 => HostCommInst_UARTHandlerInst_up_txNibble(2),
      ADR3 => HostCommInst_UARTHandlerInst_up_txNibble(1),
      O => HostCommInst_UARTHandlerInst_up_txChar(4)
    );
  HostCommInst_UARTHandlerInst_up_txData_7_HostCommInst_UARTHandlerInst_up_txData_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3,
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3_0
    );
  HostCommInst_UARTHandlerInst_up_txData_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_7_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_7_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"0020000000200000"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_readDataS(7),
      ADR2 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR0 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_7_Q
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"DCDCDCDC"
    )
    port map (
      ADR4 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR3 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"F0C00000F0C0F0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_txNibble(1),
      ADR1 => HostCommInst_UARTHandlerInst_up_txNibble(2),
      ADR2 => HostCommInst_UARTHandlerInst_up_txNibble(3),
      ADR4 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR5 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT7
    );
  HostCommInst_UARTHandlerInst_up_txData_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_6_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_6_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT72 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"0F0F000B0F0F0003"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR5 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR0 => HostCommInst_UARTHandlerInst_up_readDataS(6),
      ADR1 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR4 => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT7,
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_6_Q
    );
  HostCommInst_UARTHandlerInst_up_readDoneS_HostCommInst_UARTHandlerInst_up_readDoneS_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_pack_10,
      O => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txNibble_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"CCCCF0CCCCCCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_readDataS(6),
      ADR4 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR2 => HostCommInst_UARTHandlerInst_up_readDataS(2),
      O => HostCommInst_UARTHandlerInst_up_txNibble(2)
    );
  HostCommInst_UARTHandlerInst_up_readDoneS : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDoneS_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDoneS_IN,
      O => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txNibble_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"FFBB4400FFBB4400"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_readDataS(5),
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR3 => HostCommInst_UARTHandlerInst_up_readDataS(1),
      O => HostCommInst_UARTHandlerInst_up_txNibble(1)
    );
  HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_2782,
      O => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_In : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"F0FC050CF0FCF0FC"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010,
      ADR1 => N22_0,
      O => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_2782
    );
  HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_In,
      O => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"FF008F80FF008F80"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_In
    );
  HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"AAAACAEA"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      O => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_In
    );
  HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_In,
      O => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_pack_10,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_6_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7_pack_1,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(7)
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_6_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_6_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"AAAAFF00AAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR3 => HostCommInst_UARTHandlerInst_up_txData(5),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(7),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_6_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT81 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"CCCCF0F0"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_txData(6),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_0,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR3 => '1',
      ADR0 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_7_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_7_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7_pack_1,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_n0406_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"00000000FF32FF00"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010,
      ADR4 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR3 => HostCommInst_UARTHandlerInst_up_N46,
      O => HostCommInst_UARTHandlerInst_up_n0406_inv
    );
  HostCommInst_UARTHandlerInst_up_n0406_inv213 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"0000555500004040"
    )
    port map (
      ADR3 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR4 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR2 => HostCommInst_UARTHandlerInst_up_binLastByte,
      ADR1 => HostCommInst_UARTHandlerInst_up_n0406_inv211_6798,
      ADR5 => HostCommInst_UARTHandlerInst_up_n0406_inv21,
      O => HostCommInst_UARTHandlerInst_up_N46
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_f7_pack_11,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_f7_6955
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y35"
    )
    port map (
      IA => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In41_2827,
      IB => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_f7_pack_11,
      SEL => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_155_o
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In42 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => X"0A5F0A4E0A5F0A5F"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR3 => HostCommInst_UARTHandlerInst_up_rxData_7_GND_181_o_equal_1_o,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR5 => HostCommInst_UARTHandlerInst_up_N57_0,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR2 => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_152_o,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In41_2827
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => X"0004000000000000"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR3 => HostCommInst_UARTHandlerInst_up_rxData_7_GND_181_o_equal_1_o,
      ADR1 => HostCommInst_UARTHandlerInst_up_N57_0,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4
    );
  HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_155_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => X"0000048000000000"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_N63,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      O => HostCommInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_155_o
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_CLK,
      I => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In5 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => X"FFF0F0F0FFF8F8F8"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In3,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_f7_6955,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_N3,
      O => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In
    );
  HostCommInst_UARTHandlerInst_ut_ur_count16_3_HostCommInst_UARTHandlerInst_ut_ur_count16_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_count16_1_pack_10,
      O => HostCommInst_UARTHandlerInst_ut_ur_count16(1)
    );
  HostCommInst_UARTHandlerInst_ut_ur_count16_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_3_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count163,
      O => HostCommInst_UARTHandlerInst_ut_ur_count16(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"2A3F80C0AAFF0000"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_count16(3),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_inSync(1),
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count163
    );
  HostCommInst_UARTHandlerInst_ut_ur_count16_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_2_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count162,
      O => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"7800787878007878"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_count16(2),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_inSync(1),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count162
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_1_11 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"66006666"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_count16(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_inSync(1),
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count161
    );
  HostCommInst_UARTHandlerInst_ut_ur_count16_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_1_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count161,
      O => HostCommInst_UARTHandlerInst_ut_ur_count16_1_pack_10,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_count16_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_0_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count16,
      O => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"00000000DDDDDDDD"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_count16(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_inSync(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxBusy_6124,
      O => HostCommInst_UARTHandlerInst_ut_ur_Mcount_count16
    );
  MIPSProcInst_alu_Sh14111 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y22",
      INIT => X"CCCCF0CCCCCCE4E4"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR0 => procDMemWriteData(3),
      ADR5 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_Sh113,
      ADR2 => MIPSProcInst_alu_Sh121,
      O => MIPSProcInst_alu_N118
    );
  MIPSProcInst_alu_Sh1051 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y22",
      INIT => X"EFE54F45EAE04A40"
    )
    port map (
      ADR4 => MIPSProcInst_alu_a_mux_out(12),
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(9),
      ADR3 => MIPSProcInst_alu_a_mux_out(10),
      ADR1 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh105
    );
  MIPSProcInst_alu_Sh1131 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y22",
      INIT => X"DF8FD585DA8AD080"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(20),
      ADR4 => MIPSProcInst_alu_a_mux_out(19),
      ADR3 => MIPSProcInst_alu_a_mux_out(18),
      ADR5 => MIPSProcInst_alu_a_mux_out(17),
      O => MIPSProcInst_alu_Sh113
    );
  MIPSProcInst_alu_Sh13311 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y22",
      INIT => X"CCCCCCCCEFEC404C"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR3 => procDMemWriteData(3),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR5 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_Sh105,
      ADR4 => MIPSProcInst_alu_Sh113,
      O => MIPSProcInst_alu_N113
    );
  MIPSProcInst_alu_Sh31 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y23",
      INIT => X"F0FFAACCF000AACC"
    )
    port map (
      ADR2 => MIPSProcInst_alu_a_mux_out(0),
      ADR0 => MIPSProcInst_alu_a_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(2),
      ADR1 => MIPSProcInst_alu_a_mux_out(3),
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      O => MIPSProcInst_alu_Sh3
    );
  MIPSProcInst_alu_Mmux_alu_result6163 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y23",
      INIT => X"00CCC0880000C088"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_Sh19,
      ADR2 => MIPSProcInst_alu_Sh11,
      ADR5 => MIPSProcInst_alu_Sh3,
      O => MIPSProcInst_alu_Mmux_alu_result6163_6886
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out261 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y23",
      INIT => X"00AAAAAAF0CCCCCC"
    )
    port map (
      ADR1 => MIPSProcInst_pc_pc_out(3),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR0 => MIPSProcInst_read_data_1_out(3),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR5 => MIPSProcInst_alu_src_a(0),
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(3)
    );
  MIPSProcInst_alu_Mmux_alu_result6233 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y23",
      INIT => X"AAAAFF00CCCCF0F0"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_a_mux_out(2),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(4),
      ADR0 => MIPSProcInst_alu_a_mux_out(5),
      ADR3 => MIPSProcInst_alu_a_mux_out(3),
      O => MIPSProcInst_alu_Mmux_alu_result6232_6831
    );
  MIPSProcInst_alu_Mmux_alu_result652 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y24",
      INIT => X"05050000CFC0CFC0"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_Sh125,
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_N53,
      ADR1 => MIPSProcInst_alu_N118,
      O => MIPSProcInst_alu_Mmux_alu_result651_6959
    );
  MIPSProcInst_alu_out_value_out_13 : X_FF
    generic map(
      LOC => "SLICE_X25Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_13_CLK,
      I => MIPSProcInst_alu_result_out(13),
      O => MIPSProcInst_alu_out_value_out(13),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result653 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y24",
      INIT => X"FCFEFCFCCCEECCCC"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_Sh45,
      ADR0 => MIPSProcInst_alu_N3,
      ADR2 => MIPSProcInst_alu_N5,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result65,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result651_6959,
      O => MIPSProcInst_alu_result_out(13)
    );
  MIPSProcInst_alu_Mmux_alu_result642 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y24",
      INIT => X"3300330073734040"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_Sh124,
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_N52,
      ADR3 => MIPSProcInst_alu_N117,
      O => MIPSProcInst_alu_Mmux_alu_result641_6958
    );
  MIPSProcInst_alu_out_value_out_12 : X_FF
    generic map(
      LOC => "SLICE_X25Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_12_CLK,
      I => MIPSProcInst_alu_result_out(12),
      O => MIPSProcInst_alu_out_value_out(12),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result643 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y24",
      INIT => X"FFFFFFFFCECC0A00"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_N3,
      ADR0 => MIPSProcInst_alu_Sh44,
      ADR1 => MIPSProcInst_alu_N5,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result64,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result641_6958,
      O => MIPSProcInst_alu_result_out(12)
    );
  MIPSProcInst_pc_mux_Mmux_data_out131 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y25",
      INIT => X"5F0F55055A0A5000"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(20),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(20),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out(20),
      O => MIPSProcInst_pc_mux_out(20)
    );
  MIPSProcInst_pc_mux_Mmux_data_out201 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y25",
      INIT => X"33003300F3F3C0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(27),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(25),
      ADR1 => MIPSProcInst_pc_source(0),
      ADR5 => MIPSProcInst_pc_source(1),
      ADR4 => MIPSProcInst_alu_result_out_27_0,
      O => MIPSProcInst_pc_mux_out(27)
    );
  MIPSProcInst_instruction_register_instruction_out_23 : X_FF
    generic map(
      LOC => "SLICE_X25Y26",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_23_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_23_IN,
      O => MIPSProcInst_instruction_register_instruction_out(23),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_22 : X_FF
    generic map(
      LOC => "SLICE_X25Y26",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_22_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_22_IN,
      O => MIPSProcInst_instruction_register_instruction_out(22),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_21 : X_FF
    generic map(
      LOC => "SLICE_X25Y26",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_21_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_21_IN,
      O => MIPSProcInst_instruction_register_instruction_out(21),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd4_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y26",
      INIT => X"0000400100000000"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(28),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_instruction_register_instruction_out(29),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(26),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(27),
      O => MIPSProcInst_control_unit_state_FSM_FFd4_In2_6791
    );
  MIPSProcInst_instruction_register_instruction_out_20 : X_FF
    generic map(
      LOC => "SLICE_X25Y26",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_20_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_20_IN,
      O => MIPSProcInst_instruction_register_instruction_out(20),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y26",
      INIT => X"000008010000C001"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(31),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(28),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(29),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(26),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(27),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_In1_6767
    );
  HostCommInst_procEnableSignal_HostCommInst_procEnableSignal_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_regWriteEnable_GND_147_o_AND_173_o_pack_3,
      O => HostCommInst_regWriteEnable_GND_147_o_AND_173_o
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_In311 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y27",
      INIT => X"0000000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => MIPSProcInst_instruction_register_instruction_out(27),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(30),
      ADR2 => HostCommInst_procEnableSignal_6027,
      ADR5 => MIPSProcInst_instruction_register_instruction_out(28),
      O => MIPSProcInst_control_unit_N24
    );
  MIPSProcInst_control_unit_state_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y27",
      INIT => X"0000400000000000"
    )
    port map (
      ADR5 => MIPSProcInst_control_unit_N24,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR1 => MIPSProcInst_instruction_register_instruction_out(31),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_instruction_register_instruction_out(26),
      O => MIPSProcInst_control_unit_state_FSM_FFd3_In1_6088
    );
  HostCommInst_regWriteEnable_GND_147_o_AND_174_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y27",
      INIT => X"0008000000080000"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntWrite_6026,
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      ADR4 => HostCommInst_N3,
      ADR5 => '1',
      O => HostCommInst_regWriteEnable_GND_147_o_AND_174_o
    );
  HostCommInst_regWriteEnable_GND_147_o_AND_173_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y27",
      INIT => X"00020000"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntWrite_6026,
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      ADR4 => HostCommInst_N3,
      O => HostCommInst_regWriteEnable_GND_147_o_AND_173_o_pack_3
    );
  HostCommInst_procEnableSignal : X_FF
    generic map(
      LOC => "SLICE_X25Y27",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_regWriteEnable_GND_147_o_AND_173_o,
      CLK => NlwBufferSignal_HostCommInst_procEnableSignal_CLK,
      I => NlwBufferSignal_HostCommInst_procEnableSignal_IN,
      O => HostCommInst_procEnableSignal_6027,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_13 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y27",
      INIT => X"00C000C000C000C0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_11_6560,
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR1 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_15_1,
      O => HostCommInst_N3
    );
  HostCommInst_UARTHandlerInst_up_intWrData_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_7_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_7_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mux711 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => X"FFF000F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR5 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR4 => HostCommInst_UARTHandlerInst_up_dataParam(7),
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_7_Q
    );
  HostCommInst_UARTHandlerInst_up_intWrData_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_6_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_6_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mux611 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => X"FCFC3030F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR1 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR5 => HostCommInst_UARTHandlerInst_up_N59,
      ADR4 => HostCommInst_UARTHandlerInst_up_dataParam(6),
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_6_Q
    );
  HostCommInst_UARTHandlerInst_up_intWrData_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_5_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_5_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mux511 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => X"FAFAAAAA0A0AAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR2 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR5 => HostCommInst_UARTHandlerInst_up_dataParam(5),
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_5_Q
    );
  HostCommInst_UARTHandlerInst_up_txData_1_HostCommInst_UARTHandlerInst_up_txData_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_n0366_inv,
      O => HostCommInst_UARTHandlerInst_up_n0366_inv_0
    );
  HostCommInst_UARTHandlerInst_up_txData_1_HostCommInst_UARTHandlerInst_up_txData_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_pack_7,
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_6961
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txNibble_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"F0F0B8B8F0F0B8B8"
    )
    port map (
      ADR3 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_readDataS(7),
      ADR4 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR0 => HostCommInst_UARTHandlerInst_up_readDataS(3),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_txNibble(3)
    );
  HostCommInst_UARTHandlerInst_up_n0366_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"33FF00FF"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010,
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR0 => '1',
      O => HostCommInst_UARTHandlerInst_up_n0366_inv
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"FF550088FF550088"
    )
    port map (
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_txNibble(1),
      ADR0 => HostCommInst_UARTHandlerInst_up_txNibble(3),
      ADR3 => HostCommInst_UARTHandlerInst_up_txNibble(0),
      ADR1 => HostCommInst_UARTHandlerInst_up_txNibble(2),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT2
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT12 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"50A07080"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT1,
      ADR4 => HostCommInst_UARTHandlerInst_up_txNibble(1),
      ADR0 => HostCommInst_UARTHandlerInst_up_txNibble(3),
      ADR3 => HostCommInst_UARTHandlerInst_up_txNibble(0),
      ADR1 => HostCommInst_UARTHandlerInst_up_txNibble(2),
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_pack_7
    );
  HostCommInst_UARTHandlerInst_up_txData_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_1_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_1_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"CCCCFD20CCCCFF33"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR0 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR2 => HostCommInst_UARTHandlerInst_up_readDataS(1),
      ADR5 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR3 => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT2,
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_1_Q
    );
  HostCommInst_UARTHandlerInst_up_txData_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_0_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_0_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT13 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"CFCECECECECECECE"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR3 => HostCommInst_UARTHandlerInst_up_readDataS(0),
      ADR4 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR5 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_6961,
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_0_Q
    );
  HostCommInst_UARTHandlerInst_up_n0369_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"0888000000000000"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_6021,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_n0369_inv
    );
  HostCommInst_UARTHandlerInst_up_dataParam_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_7_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_7_Q,
      O => HostCommInst_UARTHandlerInst_up_dataParam(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_181_o_mux_60_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"CC4CCCCCCCCCCCCC"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_dataParam(3),
      ADR0 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_7_Q
    );
  HostCommInst_UARTHandlerInst_up_dataParam_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_6_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_6_Q,
      O => HostCommInst_UARTHandlerInst_up_dataParam(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_181_o_mux_60_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"DFFFFFFF00000000"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_up_dataParam(2),
      ADR2 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_6_Q
    );
  HostCommInst_UARTHandlerInst_up_dataParam_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_5_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_5_Q,
      O => HostCommInst_UARTHandlerInst_up_dataParam(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_181_o_mux_60_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"AA2AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_dataParam(1),
      ADR2 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR3 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_5_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5_pack_7,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(5)
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3_pack_5,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(3)
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(8),
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_0
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_30_o_MUX_516_o,
      O => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_30_o_MUX_516_o_0
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_4_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"CCCCAAAACCCCAAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR0 => HostCommInst_UARTHandlerInst_up_txData(3),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(5),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_4_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT61 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"F0F0FF00"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_txData(4),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(6),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR0 => '1',
      ADR1 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_5_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_5_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5_pack_7,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_2 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_2_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_2_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => HostCommInst_UARTHandlerInst_up_txData(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(3),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_2_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"AAAAFF00"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_txData(2),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(4),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR1 => '1',
      ADR2 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_3_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_3_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3_pack_5,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_1_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_1_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR1 => HostCommInst_UARTHandlerInst_up_txData(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(2),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_1_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT91 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_up_txData(7),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => '1',
      ADR1 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_8_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_8_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_dataBuf_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_0_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_0_Q,
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"8888888888888888"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(1),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_0_Q
    );
  HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_30_o_MUX_516_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"33003300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_newTxData_6056,
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR4 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_30_o_MUX_516_o
    );
  HostCommInst_UARTHandlerInst_up_newTxData_HostCommInst_UARTHandlerInst_up_newTxData_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o_pack_1,
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o
    );
  HostCommInst_UARTHandlerInst_up_newTxData_HostCommInst_UARTHandlerInst_up_newTxData_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  HostCommInst_UARTHandlerInst_up_newTxData : X_FF
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0366_inv_0,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_newTxData_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_newTxData_Mux_107_o,
      O => HostCommInst_UARTHandlerInst_up_newTxData_6056,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_newTxData_Mux_107_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"FFFF004CFFFF0008"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR5 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR2 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_6010,
      ADR4 => HostCommInst_UARTHandlerInst_up_N46,
      O => HostCommInst_UARTHandlerInst_up_txSm_2_newTxData_Mux_107_o
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"1000000010000000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_97_o
    );
  HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"22000000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR0 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      ADR1 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR2 => '1',
      O => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o_pack_1
    );
  HostCommInst_UARTHandlerInst_up_n0406_inv211 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"AAAAAAFAAAAAAAFA"
    )
    port map (
      ADR1 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_136_o,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR0 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_n0406_inv21
    );
  HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"22222222"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      O => N22
    );
  HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_bitCount_2_pack_13,
      O => HostCommInst_UARTHandlerInst_ut_ut_bitCount(2)
    );
  HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_bitCount_0_pack_10,
      O => HostCommInst_UARTHandlerInst_ut_ut_bitCount(0)
    );
  HostCommInst_UARTHandlerInst_ut_ut_n0052_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => X"D555555555555555"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_count16(3),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ut_count16(2),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_count16(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      O => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv
    );
  HostCommInst_UARTHandlerInst_ut_ut_bitCount_3 : X_FF
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount3,
      O => HostCommInst_UARTHandlerInst_ut_ut_bitCount(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => X"7F0080007F008000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_N4,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(1),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(3),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(2),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount3
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => X"6C006C00"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_N4,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(0),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(1),
      ADR4 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(2),
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount2
    );
  HostCommInst_UARTHandlerInst_ut_ut_bitCount_2 : X_FF
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_2_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount2,
      O => HostCommInst_UARTHandlerInst_ut_ut_bitCount_2_pack_13,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_n0050_inv11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_count16(3),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_count16(2),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_count16(1),
      O => HostCommInst_UARTHandlerInst_ut_ut_N4
    );
  HostCommInst_UARTHandlerInst_ut_ut_bitCount_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_1_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount1,
      O => HostCommInst_UARTHandlerInst_ut_ut_bitCount(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => X"6666000066660000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_N4,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(1),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(0),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount1
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => X"33330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_N4,
      ADR3 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(0),
      O => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount
    );
  HostCommInst_UARTHandlerInst_ut_ut_bitCount_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_0_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_Mcount_bitCount,
      O => HostCommInst_UARTHandlerInst_ut_ut_bitCount_0_pack_10,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o22 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y39",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(4),
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_counter(5),
      ADR0 => HostCommInst_UARTHandlerInst_ut_bg_counter(2),
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(3),
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_counter(0),
      ADR3 => HostCommInst_UARTHandlerInst_ut_bg_counter(1),
      O => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_6388
    );
  HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y39",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_counter(14),
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_counter(15),
      ADR0 => HostCommInst_UARTHandlerInst_ut_bg_counter(12),
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_counter(13),
      ADR3 => HostCommInst_UARTHandlerInst_ut_bg_counter(10),
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(11),
      O => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2
    );
  HostCommInst_UARTHandlerInst_ut_bg_ce16 : X_FF
    generic map(
      LOC => "SLICE_X25Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_ce16_CLK,
      I => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv,
      O => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o23 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y39",
      INIT => X"FFFFFF00FFFFF800"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_bg_counter(9),
      ADR2 => HostCommInst_UARTHandlerInst_ut_bg_counter(7),
      ADR5 => HostCommInst_UARTHandlerInst_ut_bg_counter(8),
      ADR0 => HostCommInst_UARTHandlerInst_ut_bg_counter(6),
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_6388,
      ADR4 => HostCommInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      O => HostCommInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_153_o_mux_3_OUT_rs_B_4_inv
    );
  MIPSProcInst_alu_out_value_out_1_MIPSProcInst_alu_out_value_out_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_result_out(1),
      O => MIPSProcInst_alu_result_out_1_0
    );
  MIPSProcInst_alu_Mmux_alu_result6126 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y20"
    )
    port map (
      IA => N177,
      IB => N178,
      O => MIPSProcInst_alu_result_out(1),
      SEL => MIPSProcInst_alu_b_mux_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6126_F : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FCFFCCEEFCEECCEE"
    )
    port map (
      ADR4 => MIPSProcInst_alu_N5,
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6125_0,
      ADR2 => MIPSProcInst_alu_N118,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6121_6969,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6124_6970,
      O => N177
    );
  MIPSProcInst_alu_out_value_out_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_1_CLK,
      I => MIPSProcInst_alu_result_out(1),
      O => MIPSProcInst_alu_out_value_out(1),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6126_G : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FCCCEECCFCCCEECC"
    )
    port map (
      ADR5 => '1',
      ADR3 => MIPSProcInst_alu_N5,
      ADR4 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_N49,
      ADR2 => MIPSProcInst_alu_N57_0,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6121_6969,
      O => N178
    );
  MIPSProcInst_alu_Mmux_alu_result6124 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"0000000002000000"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_Sh1,
      ADR2 => MIPSProcInst_alu_n0031,
      O => MIPSProcInst_alu_Mmux_alu_result6124_6970
    );
  MIPSProcInst_alu_Mmux_alu_result6121 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"0000EEF0000088F0"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(1),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result1_split_1_0,
      O => MIPSProcInst_alu_Mmux_alu_result6121_6969
    );
  MIPSProcInst_pc_pc_out_11 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_11_CLK,
      I => MIPSProcInst_pc_pc_out_11_rstpot_3284,
      O => MIPSProcInst_pc_pc_out(11),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(11),
      ADR4 => MIPSProcInst_pc_mux_out(11),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_11_rstpot_3284
    );
  MIPSProcInst_pc_pc_out_10 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_10_CLK,
      I => MIPSProcInst_pc_pc_out_10_rstpot_3290,
      O => MIPSProcInst_pc_pc_out(10),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"CCFFCC00CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(10),
      ADR1 => MIPSProcInst_pc_mux_out(10),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_10_rstpot_3290
    );
  MIPSProcInst_pc_pc_out_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_9_CLK,
      I => MIPSProcInst_pc_pc_out_9_rstpot_3295,
      O => MIPSProcInst_pc_pc_out(9),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"F0F0FFFFF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(9),
      ADR2 => MIPSProcInst_pc_mux_out(9),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_9_rstpot_3295
    );
  MIPSProcInst_pc_pc_out_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_8_CLK,
      I => MIPSProcInst_pc_pc_out_8_rstpot_3300,
      O => MIPSProcInst_pc_pc_out(8),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"FFFF0F0FF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(8),
      ADR4 => MIPSProcInst_pc_mux_out(8),
      ADR2 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_8_rstpot_3300
    );
  MIPSProcInst_alu_Mmux_alu_result6182 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"0000000008080A00"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_Sh125,
      ADR3 => MIPSProcInst_alu_Sh121,
      O => MIPSProcInst_alu_Mmux_alu_result6181_6660
    );
  MIPSProcInst_alu_Mmux_alu_result6321 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"0000FAD80000D850"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(9),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(9),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result1_split_9_0,
      O => MIPSProcInst_alu_Mmux_alu_result632
    );
  MIPSProcInst_alu_Sh461 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"FFCC3300B8B8B8B8"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_Sh14,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6233_6618,
      ADR3 => MIPSProcInst_alu_Sh10,
      ADR0 => MIPSProcInst_alu_Sh6,
      O => MIPSProcInst_alu_Sh46
    );
  MIPSProcInst_write_data_mux_Mmux_data_out101 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"AAAAEA2AAAAAEA2A"
    )
    port map (
      ADR5 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(18),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => procDMemReadData(18),
      O => MIPSProcInst_write_data_mux_out(18)
    );
  MIPSProcInst_alu_out_value_out_11_MIPSProcInst_alu_out_value_out_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_result_out(11),
      O => MIPSProcInst_alu_result_out_11_0
    );
  MIPSProcInst_alu_Mmux_alu_result634 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y25"
    )
    port map (
      IA => N143,
      IB => N144,
      O => MIPSProcInst_alu_result_out(11),
      SEL => MIPSProcInst_alu_control_out(1)
    );
  MIPSProcInst_alu_Mmux_alu_result634_F : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"330033003300B380"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_11_0,
      ADR4 => MIPSProcInst_alu_n0031,
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR0 => MIPSProcInst_alu_Sh43,
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      O => N143
    );
  MIPSProcInst_alu_out_value_out_11 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_11_CLK,
      I => MIPSProcInst_alu_result_out(11),
      O => MIPSProcInst_alu_out_value_out(11),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result634_G : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"3030FFAA3030AA00"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(11),
      ADR3 => MIPSProcInst_alu_a_mux_out(11),
      ADR0 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_n0031,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result634_0,
      O => N144
    );
  MIPSProcInst_alu_Sh431 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"3B3B38380B0B0808"
    )
    port map (
      ADR3 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_Sh11,
      ADR0 => MIPSProcInst_alu_Sh3,
      ADR5 => MIPSProcInst_alu_Sh7,
      O => MIPSProcInst_alu_Sh43
    );
  MIPSProcInst_write_data_mux_Mmux_data_out33 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"EEFFFFFF22000000"
    )
    port map (
      ADR2 => '1',
      ADR5 => MIPSProcInst_alu_out_value_out(11),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(11),
      O => MIPSProcInst_write_data_mux_out(11)
    );
  MIPSProcInst_alu_out_value_out_15 : X_FF
    generic map(
      LOC => "SLICE_X26Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_15_CLK,
      I => MIPSProcInst_alu_result_out(15),
      O => MIPSProcInst_alu_out_value_out(15),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result674 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y26",
      INIT => X"FFFFAA00FFFFEAC0"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_Sh47,
      ADR1 => MIPSProcInst_alu_N3,
      ADR0 => MIPSProcInst_alu_N5,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result67,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result672_6655,
      O => MIPSProcInst_alu_result_out(15)
    );
  MIPSProcInst_pc_write_enable8 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y26",
      INIT => X"0000000000FF0045"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => N87,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result617,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6173_0,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6171_6651,
      ADR5 => MIPSProcInst_alu_result_out(15),
      O => MIPSProcInst_pc_write_enable8_6648
    );
  MIPSProcInst_alu_Mmux_alu_result662 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y26",
      INIT => X"00CC0AFF00CC0A00"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_Sh126,
      ADR5 => MIPSProcInst_alu_N54,
      ADR1 => MIPSProcInst_alu_N119,
      O => MIPSProcInst_alu_Mmux_alu_result661_6971
    );
  MIPSProcInst_alu_out_value_out_14 : X_FF
    generic map(
      LOC => "SLICE_X26Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_14_CLK,
      I => MIPSProcInst_alu_result_out(14),
      O => MIPSProcInst_alu_out_value_out(14),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result663 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y26",
      INIT => X"EFEECFCCEEEECCCC"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR5 => MIPSProcInst_alu_Sh46,
      ADR3 => MIPSProcInst_alu_N3,
      ADR0 => MIPSProcInst_alu_N5,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result66,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result661_6971,
      O => MIPSProcInst_alu_result_out(14)
    );
  MIPSProcInst_write_data_mux_out_14_MIPSProcInst_write_data_mux_out_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_ir_write,
      O => MIPSProcInst_ir_write_0
    );
  MIPSProcInst_write_data_mux_Mmux_data_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y27",
      INIT => X"FFFF4040BFBF0000"
    )
    port map (
      ADR3 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(14),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => procDMemReadData(14),
      O => MIPSProcInst_write_data_mux_out(14)
    );
  MIPSProcInst_control_unit_state_n0055_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y27",
      INIT => X"F0FC0000F0FC0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => '1',
      O => MIPSProcInst_reg_write
    );
  MIPSProcInst_control_unit_state_n0055_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y27",
      INIT => X"00000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      O => MIPSProcInst_ir_write
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txNibble_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => X"CCCCCCCCEEEE4444"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => HostCommInst_UARTHandlerInst_up_readDataS(4),
      ADR5 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR4 => HostCommInst_UARTHandlerInst_up_readDataS(0),
      O => HostCommInst_UARTHandlerInst_up_txNibble(0)
    );
  HostCommInst_UARTHandlerInst_up_readDataS_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_4_CLK,
      I => HostCommInst_regReadData(4),
      O => HostCommInst_UARTHandlerInst_up_readDataS(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData51 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => X"B8CC88CCB8008800"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR0 => hcIMemReadData(4),
      ADR4 => HostCommInst_N3,
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR5 => hcDMemReadData(4),
      O => HostCommInst_regReadData(4)
    );
  HostCommInst_UARTHandlerInst_up_readDataS_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_3_CLK,
      I => HostCommInst_regReadData(3),
      O => HostCommInst_UARTHandlerInst_up_readDataS(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData41 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => X"A280A280F7D5F7D5"
    )
    port map (
      ADR4 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR3 => hcDMemReadData(3),
      ADR1 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR2 => hcIMemReadData(3),
      ADR5 => HostCommInst_GND_147_o_regAddress_15_equal_3_o_mmx_out,
      O => HostCommInst_regReadData(3)
    );
  HostCommInst_UARTHandlerInst_up_readDataS_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_readDone_6561,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_2_CLK,
      I => HostCommInst_regReadData(2),
      O => HostCommInst_UARTHandlerInst_up_readDataS(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_Mmux_regReadData31 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => X"CAF0C0F0CA00C000"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_iIntAddress(14),
      ADR2 => HostCommInst_UARTHandlerInst_up_iIntAddress(15),
      ADR1 => hcIMemReadData(2),
      ADR4 => HostCommInst_N3,
      ADR0 => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      ADR5 => hcDMemReadData(2),
      O => HostCommInst_regReadData(2)
    );
  HostCommInst_UARTHandlerInst_up_intWrData_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_4_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_4_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mux411 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"FFF000F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR5 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR4 => HostCommInst_UARTHandlerInst_up_dataParam(4),
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_4_Q
    );
  HostCommInst_UARTHandlerInst_up_intWrData_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_3_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_3_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mux311 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"FFFF33FFCC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR1 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR3 => HostCommInst_UARTHandlerInst_up_N59,
      ADR4 => HostCommInst_UARTHandlerInst_up_dataParam(3),
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_3_Q
    );
  HostCommInst_UARTHandlerInst_up_intWrData_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_1_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_1_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mux1111 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"FA0AAAAAFA0AAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR2 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR3 => HostCommInst_UARTHandlerInst_up_dataParam(1),
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_1_Q
    );
  HostCommInst_UARTHandlerInst_up_intWrData_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_iWriteReq_PWR_37_o_MUX_555_o,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_0_CLK,
      I => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_0_Q,
      O => HostCommInst_UARTHandlerInst_up_intWrData(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_mux161 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"AAFFFFFFAA000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR3 => HostCommInst_UARTHandlerInst_up_writeOp_6038,
      ADR4 => HostCommInst_UARTHandlerInst_up_N59,
      ADR0 => HostCommInst_UARTHandlerInst_up_dataParam(0),
      O => HostCommInst_UARTHandlerInst_up_intWrData_7_dataParam_7_mux_79_OUT_0_Q
    );
  HostCommInst_UARTHandlerInst_up_txData_3_HostCommInst_UARTHandlerInst_up_txData_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4_pack_12,
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => X"00AA00EE00AA00EE"
    )
    port map (
      ADR2 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR4 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT1
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => X"FF51FF11"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_readDataS(3),
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR1 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR4 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR0 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4_pack_12
    );
  HostCommInst_UARTHandlerInst_up_txData_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_3_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_3_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT42 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => X"FFFF0000FFFF3010"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_up_txNibble(3),
      ADR5 => HostCommInst_UARTHandlerInst_up_txNibble(2),
      ADR1 => HostCommInst_UARTHandlerInst_up_txNibble(1),
      ADR3 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR0 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR4 => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4,
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_3_Q
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT32 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => X"00000000AAA20000"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_up_txNibble(2),
      ADR4 => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3_0,
      ADR5 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR3 => HostCommInst_UARTHandlerInst_up_txNibble(0),
      ADR1 => HostCommInst_UARTHandlerInst_up_txNibble(3),
      ADR2 => HostCommInst_UARTHandlerInst_up_txNibble(1),
      O => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT31_6972
    );
  HostCommInst_UARTHandlerInst_up_txData_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0406_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_2_CLK,
      I => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_2_Q,
      O => HostCommInst_UARTHandlerInst_up_txData(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT33 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => X"FFFF3333FFFF2000"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_6013,
      ADR2 => HostCommInst_UARTHandlerInst_up_readDataS(2),
      ADR3 => HostCommInst_UARTHandlerInst_up_readDoneS_6079,
      ADR0 => HostCommInst_UARTHandlerInst_up_binReadOp_6066,
      ADR5 => HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_6012,
      ADR4 => HostCommInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT31_6972,
      O => HostCommInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_2_Q
    );
  HostCommInst_UARTHandlerInst_up_dataParam_1_HostCommInst_UARTHandlerInst_up_dataParam_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_dataNibble(1),
      O => HostCommInst_UARTHandlerInst_up_dataNibble_1_0
    );
  HostCommInst_UARTHandlerInst_up_dataParam_1_HostCommInst_UARTHandlerInst_up_dataParam_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_dataNibble(3),
      O => HostCommInst_UARTHandlerInst_up_dataNibble_3_0
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_3_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y32"
    )
    port map (
      IA => HostCommInst_UARTHandlerInst_up_dataNibble_3_21_3499,
      IB => HostCommInst_UARTHandlerInst_up_dataNibble_3_2,
      O => HostCommInst_UARTHandlerInst_up_dataNibble(1),
      SEL => HostCommInst_UARTHandlerInst_ut_ur_rxData(6)
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_3_22 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"FFEFFFEEEFEBEFEA"
    )
    port map (
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR0 => HostCommInst_UARTHandlerInst_up_N52,
      O => HostCommInst_UARTHandlerInst_up_dataNibble_3_21_3499
    );
  HostCommInst_UARTHandlerInst_up_dataParam_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_1_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataNibble(1),
      O => HostCommInst_UARTHandlerInst_up_dataParam(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_3_21 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"FFFFFFFFFEFFFFFB"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR5 => HostCommInst_UARTHandlerInst_up_N52,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      O => HostCommInst_UARTHandlerInst_up_dataNibble_3_2
    );
  HostCommInst_UARTHandlerInst_up_dataParam_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_3_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataNibble(3),
      O => HostCommInst_UARTHandlerInst_up_dataParam(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_4_21 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"F0F3F0FFF0F3F0FF"
    )
    port map (
      ADR0 => '1',
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR5 => '1',
      O => HostCommInst_UARTHandlerInst_up_N52
    );
  HostCommInst_UARTHandlerInst_up_dataNibble_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"FFFBFFFF"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(4),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      O => HostCommInst_UARTHandlerInst_up_dataNibble(3)
    );
  HostCommInst_UARTHandlerInst_up_dataParam_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_up_n0369_inv,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_4_CLK,
      I => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_4_Q,
      O => HostCommInst_UARTHandlerInst_up_dataParam(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_181_o_mux_60_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"FF00FF007F00FF00"
    )
    port map (
      ADR3 => HostCommInst_UARTHandlerInst_up_dataParam(0),
      ADR1 => HostCommInst_UARTHandlerInst_up_dataInHexRange_0,
      ADR2 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_6032,
      ADR4 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_6020,
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_newRxData_6031,
      ADR5 => HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_6054,
      O => HostCommInst_UARTHandlerInst_up_dataParam_7_GND_181_o_mux_60_OUT_4_Q
    );
  HostCommInst_UARTHandlerInst_up_sTxBusy_HostCommInst_UARTHandlerInst_up_sTxBusy_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_dataInHexRange,
      O => HostCommInst_UARTHandlerInst_up_dataInHexRange_0
    );
  HostCommInst_UARTHandlerInst_up_dataInHexRange3 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y34"
    )
    port map (
      IA => N135,
      IB => N136,
      O => HostCommInst_UARTHandlerInst_up_dataInHexRange,
      SEL => HostCommInst_UARTHandlerInst_ut_ur_rxData(4)
    );
  HostCommInst_UARTHandlerInst_up_dataInHexRange3_F : X_LUT6
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => X"0000000000004CC8"
    )
    port map (
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      O => N135
    );
  HostCommInst_UARTHandlerInst_up_dataInHexRange3_G : X_LUT6
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => X"0000000000001F00"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_ut_ur_rxData(7),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ur_rxData(5),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ur_rxData(6),
      ADR1 => HostCommInst_UARTHandlerInst_ut_ur_rxData(2),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ur_rxData(1),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ur_rxData(3),
      O => N136
    );
  HostCommInst_UARTHandlerInst_up_sTxBusy : X_FF
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sTxBusy_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sTxBusy_IN,
      O => HostCommInst_UARTHandlerInst_up_sTxBusy_6067,
      SET => reset_IBUF_0,
      RST => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_iTxBusy : X_FF
    generic map(
      LOC => "SLICE_X26Y35",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_UARTHandlerInst_ut_ut_n0050_inv_6806,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_IN,
      O => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      RST => reset_IBUF_0,
      SET => GND
    );
  MIPSProcInst_pc_mux_Mmux_data_out210 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"55550000F5A0F5A0"
    )
    port map (
      ADR1 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(10),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(10),
      ADR5 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR3 => MIPSProcInst_alu_result_out(10),
      O => MIPSProcInst_pc_mux_out(10)
    );
  MIPSProcInst_pc_mux_Mmux_data_out121 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"3300BBBB33008888"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(1),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR4 => MIPSProcInst_pc_source(0),
      ADR1 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out_1_0,
      O => MIPSProcInst_pc_mux_out(1)
    );
  MIPSProcInst_alu_Mmux_alu_result694 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => X"CCCCAAAAF000F000"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR5 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_N57_0,
      ADR0 => MIPSProcInst_alu_N118,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result692_6877,
      O => MIPSProcInst_alu_Mmux_alu_result693_6976
    );
  MIPSProcInst_alu_out_value_out_17 : X_FF
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_17_CLK,
      I => MIPSProcInst_alu_result_out(17),
      O => MIPSProcInst_alu_out_value_out(17),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result695 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => X"FF22FF02FF22FF00"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_n0031,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result691_6880,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result69,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result693_6976,
      O => MIPSProcInst_alu_result_out(17)
    );
  MIPSProcInst_alu_Mmux_alu_result685 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => X"FC30AAAAFC300000"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR5 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_N56,
      ADR2 => MIPSProcInst_alu_N117,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result683_6879,
      O => MIPSProcInst_alu_Mmux_alu_result684_6975
    );
  MIPSProcInst_alu_out_value_out_16 : X_FF
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_16_CLK,
      I => MIPSProcInst_alu_result_out(16),
      O => MIPSProcInst_alu_out_value_out(16),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result686 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => X"F0F0F0F0F8FCF8F8"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR5 => MIPSProcInst_alu_n0031,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result682_6875,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result68,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result684_6975,
      O => MIPSProcInst_alu_result_out(16)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out261 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => X"AACCAAAAAAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(3),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(3),
      O => MIPSProcInst_write_data_mux_out(3)
    );
  MIPSProcInst_alu_Mmux_alu_result6102 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => X"000000000000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6233_6618,
      O => MIPSProcInst_alu_Mmux_alu_result6101
    );
  MIPSProcInst_pc_write_enable2 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y24",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => MIPSProcInst_alu_result_out_1_0,
      ADR0 => MIPSProcInst_alu_result_out_3_0,
      ADR1 => MIPSProcInst_alu_result_out(19),
      ADR4 => MIPSProcInst_alu_result_out(17),
      ADR5 => MIPSProcInst_alu_result_out(18),
      ADR3 => MIPSProcInst_alu_result_out(25),
      O => MIPSProcInst_pc_write_enable2_6664
    );
  MIPSProcInst_alu_out_value_out_25 : X_FF
    generic map(
      LOC => "SLICE_X27Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_25_CLK,
      I => MIPSProcInst_alu_result_out(25),
      O => MIPSProcInst_alu_out_value_out(25),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6185 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y24",
      INIT => X"BBBBAAAABBAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_n0031,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6181_6660,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result618,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6183,
      O => MIPSProcInst_alu_result_out(25)
    );
  MIPSProcInst_pc_mux_Mmux_data_out171 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y24",
      INIT => X"0F00AFAF0F00A0A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_instruction_register_instruction_out(24),
      ADR0 => MIPSProcInst_alu_out_value_out(24),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR4 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out(24),
      O => MIPSProcInst_pc_mux_out(24)
    );
  MIPSProcInst_alu_out_value_out_24 : X_FF
    generic map(
      LOC => "SLICE_X27Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_24_CLK,
      I => MIPSProcInst_alu_result_out(24),
      O => MIPSProcInst_alu_out_value_out(24),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6175 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y24",
      INIT => X"FFFF2202FFFF2200"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_n0031,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6173_0,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result617,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6171_6651,
      O => MIPSProcInst_alu_result_out(24)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out181 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y25",
      INIT => X"FF00FF00DD88FF00"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(25),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(25),
      O => MIPSProcInst_write_data_mux_out(25)
    );
  HostCommInst_procResetSignal : X_FF
    generic map(
      LOC => "SLICE_X27Y25",
      INIT => '0'
    )
    port map (
      CE => HostCommInst_regWriteEnable_GND_147_o_AND_174_o,
      CLK => NlwBufferSignal_HostCommInst_procResetSignal_CLK,
      I => NlwBufferSignal_HostCommInst_procResetSignal_IN,
      O => HostCommInst_procResetSignal_6587,
      RST => reset_IBUF_0,
      SET => GND
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out1021 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y25",
      INIT => X"00000C0000000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_1_6847,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd1_1_6848,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_1_6849,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      ADR1 => MIPSProcInst_instruction_register_instruction_out(15),
      O => MIPSProcInst_N86
    );
  MIPSProcInst_control_unit_state_FSM_FFd4_MIPSProcInst_control_unit_state_FSM_FFd4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd1_In_pack_10,
      O => MIPSProcInst_control_unit_state_FSM_FFd1_In
    );
  MIPSProcInst_control_unit_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out101 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"FFCC0000FFF90060"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR4 => procDMemWriteData(18),
      O => MIPSProcInst_alu_b_mux_out(18)
    );
  MIPSProcInst_control_unit_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_n0055_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"0005550000055500"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      O => MIPSProcInst_alu_src_b(1)
    );
  MIPSProcInst_control_unit_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_n0064_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"A0A00000A0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => '1',
      O => procDMemWriteEnable
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_In5 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"CECCCECC"
    )
    port map (
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_In4_6978,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_In2_6765,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => '1',
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      O => MIPSProcInst_control_unit_state_FSM_FFd1_In_pack_10
    );
  MIPSProcInst_control_unit_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"FFFFBAAABAAABAAA"
    )
    port map (
      ADR4 => HostCommInst_procEnableSignal_6027,
      ADR2 => MIPSProcInst_control_unit_N24,
      ADR1 => MIPSProcInst_instruction_register_instruction_out(31),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_In3_6099,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      O => MIPSProcInst_control_unit_state_FSM_FFd1_In4_6978
    );
  MIPSProcInst_instruction_register_instruction_out_27 : X_FF
    generic map(
      LOC => "SLICE_X27Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_27_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_27_IN,
      O => MIPSProcInst_instruction_register_instruction_out(27),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_26 : X_FF
    generic map(
      LOC => "SLICE_X27Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_26_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_26_IN,
      O => MIPSProcInst_instruction_register_instruction_out(26),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_25 : X_FF
    generic map(
      LOC => "SLICE_X27Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_25_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_25_IN,
      O => MIPSProcInst_instruction_register_instruction_out(25),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y27",
      INIT => X"FFFFFFFFFFDFFFFF"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(30),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(28),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(31),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(27),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(26),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_In3_6771
    );
  MIPSProcInst_instruction_register_instruction_out_24 : X_FF
    generic map(
      LOC => "SLICE_X27Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_24_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_24_IN,
      O => MIPSProcInst_instruction_register_instruction_out(24),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_pc_mux_Mmux_data_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y27",
      INIT => X"0C0C0C0CFFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(15),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR5 => MIPSProcInst_pc_source(1),
      ADR3 => MIPSProcInst_alu_result_out(15),
      O => MIPSProcInst_pc_mux_out(15)
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y28",
      INIT => X"30303A3A30303830"
    )
    port map (
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => HostCommInst_procEnableSignal_6027,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => N129,
      O => MIPSProcInst_control_unit_state_FSM_FFd1_In2_6765
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_In2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y28",
      INIT => X"0000400000000000"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(26),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(30),
      ADR5 => HostCommInst_procEnableSignal_6027,
      ADR2 => MIPSProcInst_instruction_register_instruction_out(27),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(28),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(31),
      O => N129
    );
  MIPSProcInst_instruction_register_instruction_out_15 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_15_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_15_IN,
      O => MIPSProcInst_instruction_register_instruction_out(15),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_14 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_14_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_14_IN,
      O => MIPSProcInst_instruction_register_instruction_out(14),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_13 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_13_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_13_IN,
      O => MIPSProcInst_instruction_register_instruction_out(13),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_12 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_12_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_12_IN,
      O => MIPSProcInst_instruction_register_instruction_out(12),
      RST => GND,
      SET => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_n0050_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y35",
      INIT => X"FFFFF7FFFFFFFFFF"
    )
    port map (
      ADR5 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(0),
      ADR1 => HostCommInst_UARTHandlerInst_ut_bg_ce16_6135,
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_count16(3),
      ADR4 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(1),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(2),
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_count16(2),
      O => N34
    );
  HostCommInst_UARTHandlerInst_ut_ut_n0050_inv : X_LUT6
    generic map(
      LOC => "SLICE_X27Y35",
      INIT => X"4444E44444444444"
    )
    port map (
      ADR0 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR1 => HostCommInst_UARTHandlerInst_up_newTxData_6056,
      ADR5 => HostCommInst_UARTHandlerInst_ut_ut_count16(1),
      ADR3 => HostCommInst_UARTHandlerInst_ut_ut_count16(0),
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_bitCount(3),
      ADR4 => N34,
      O => HostCommInst_UARTHandlerInst_ut_ut_n0050_inv_6806
    );
  MIPSProcInst_alu_Mmux_alu_result682 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y18",
      INIT => X"0000100000000000"
    )
    port map (
      ADR3 => MIPSProcInst_alu_a_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      O => MIPSProcInst_alu_Mmux_alu_result681_6981
    );
  MIPSProcInst_alu_Mmux_alu_result683 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y18",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_Mmux_alu_result681_6981,
      O => MIPSProcInst_alu_Mmux_alu_result682_6875
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out231 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y18",
      INIT => X"CCCCCC50CCD8CC44"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR1 => procDMemWriteData(2),
      O => MIPSProcInst_alu_b_mux_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6231 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y18",
      INIT => X"00000000FDD5A880"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR2 => MIPSProcInst_alu_a_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => MIPSProcInst_alu_Mmux_alu_result1_split_2_0,
      O => MIPSProcInst_alu_Mmux_alu_result623_6906
    );
  N10_N10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result6173,
      O => MIPSProcInst_alu_Mmux_alu_result6173_0
    );
  MIPSProcInst_alu_Mmux_alu_result6174 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y19"
    )
    port map (
      IA => N153,
      IB => N154,
      O => MIPSProcInst_alu_Mmux_alu_result6173,
      SEL => MIPSProcInst_alu_b_mux_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6174_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y19",
      INIT => X"3030DC100000DC10"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Sh16,
      ADR0 => N10,
      ADR3 => MIPSProcInst_alu_Sh120,
      O => N153
    );
  MIPSProcInst_alu_Mmux_alu_result6174_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y19",
      INIT => X"00F0AACC00F00000"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_Sh12_6607,
      ADR1 => MIPSProcInst_alu_Sh20,
      ADR2 => MIPSProcInst_alu_Sh124,
      O => N154
    );
  MIPSProcInst_alu_Sh561_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y19",
      INIT => X"00FF0F0F55553333"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(24),
      ADR0 => MIPSProcInst_alu_a_mux_out(23),
      ADR3 => MIPSProcInst_alu_a_mux_out(21),
      ADR2 => MIPSProcInst_alu_a_mux_out(22),
      O => N10
    );
  MIPSProcInst_alu_Sh561 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y19",
      INIT => X"FF00FF000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_Sh16,
      ADR4 => N10,
      O => MIPSProcInst_alu_N129
    );
  MIPSProcInst_alu_Mmux_alu_result6264_MIPSProcInst_alu_Mmux_alu_result6264_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result6264_3809,
      O => MIPSProcInst_alu_Mmux_alu_result6264_0
    );
  MIPSProcInst_alu_Mmux_alu_result6265 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y20"
    )
    port map (
      IA => N155,
      IB => N156,
      O => MIPSProcInst_alu_Mmux_alu_result6264_3809,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Mmux_alu_result6265_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y20",
      INIT => X"BBBBF3C08888F3C0"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(4),
      ADR0 => MIPSProcInst_alu_a_mux_out(6),
      ADR5 => MIPSProcInst_alu_a_mux_out(5),
      ADR3 => MIPSProcInst_alu_a_mux_out(3),
      O => N155
    );
  MIPSProcInst_alu_Mmux_alu_result6265_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y20",
      INIT => X"D8D8FF55D8D8AA00"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(12),
      ADR1 => MIPSProcInst_alu_a_mux_out(14),
      ADR2 => MIPSProcInst_alu_a_mux_out(13),
      ADR5 => MIPSProcInst_alu_a_mux_out(11),
      O => N156
    );
  MIPSProcInst_alu_out_value_out_8_MIPSProcInst_alu_out_value_out_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_result_out(8),
      O => MIPSProcInst_alu_result_out_8_0
    );
  MIPSProcInst_alu_Mmux_alu_result6315 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y21"
    )
    port map (
      IA => N141,
      IB => N142,
      O => MIPSProcInst_alu_result_out(8),
      SEL => MIPSProcInst_alu_control_out(1)
    );
  MIPSProcInst_alu_Mmux_alu_result6315_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y21",
      INIT => X"0A0A3A0A0A0A0A0A"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_Mmux_alu_result1_split_8_0,
      ADR1 => MIPSProcInst_alu_n0031,
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_Sh40,
      ADR4 => MIPSProcInst_alu_b_mux_out(4),
      O => N141
    );
  MIPSProcInst_alu_out_value_out_8 : X_FF
    generic map(
      LOC => "SLICE_X28Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_8_CLK,
      I => MIPSProcInst_alu_result_out(8),
      O => MIPSProcInst_alu_out_value_out(8),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6315_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y21",
      INIT => X"5454FE544040EA40"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(8),
      ADR5 => MIPSProcInst_alu_a_mux_out(8),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_n0031,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6313_6984,
      O => N142
    );
  MIPSProcInst_alu_Mmux_alu_result6314 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y21",
      INIT => X"AEAAEEEAAEAAAEAA"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Sh124,
      ADR3 => MIPSProcInst_alu_N52,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6312,
      O => MIPSProcInst_alu_Mmux_alu_result6313_6984
    );
  MIPSProcInst_alu_Mmux_alu_result6313 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y21",
      INIT => X"1132003211100010"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_Sh104,
      ADR4 => MIPSProcInst_alu_Sh112,
      ADR5 => MIPSProcInst_alu_Sh120,
      O => MIPSProcInst_alu_Mmux_alu_result6312
    );
  MIPSProcInst_alu_Sh1201 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y22",
      INIT => X"AACCAACCFFF000F0"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(26),
      ADR0 => MIPSProcInst_alu_a_mux_out(27),
      ADR1 => MIPSProcInst_alu_a_mux_out(25),
      ADR2 => MIPSProcInst_alu_a_mux_out(24),
      O => MIPSProcInst_alu_Sh120
    );
  MIPSProcInst_alu_Sh14011 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y22",
      INIT => X"FF00FFCAFF003500"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR0 => procDMemWriteData(3),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR3 => MIPSProcInst_alu_Sh112,
      ADR5 => MIPSProcInst_alu_Sh120,
      O => MIPSProcInst_alu_N117
    );
  MIPSProcInst_alu_Sh581_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y22",
      INIT => X"0C0C44773F3F4477"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(26),
      ADR0 => MIPSProcInst_alu_a_mux_out(25),
      ADR2 => MIPSProcInst_alu_a_mux_out(23),
      ADR5 => MIPSProcInst_alu_a_mux_out(24),
      O => N6
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out171 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y22",
      INIT => X"FFFFFFFF00E2E2E2"
    )
    port map (
      ADR0 => MIPSProcInst_pc_pc_out(24),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR2 => MIPSProcInst_read_data_1_out(24),
      ADR1 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(24)
    );
  MIPSProcInst_alu_Mmux_alu_result6136_MIPSProcInst_alu_Mmux_alu_result6136_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result6193,
      O => MIPSProcInst_alu_Mmux_alu_result6193_0
    );
  MIPSProcInst_alu_Mmux_alu_result6194 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y23"
    )
    port map (
      IA => N159,
      IB => N160,
      O => MIPSProcInst_alu_Mmux_alu_result6193,
      SEL => MIPSProcInst_alu_b_mux_out(4)
    );
  MIPSProcInst_alu_Mmux_alu_result6194_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y23",
      INIT => X"C808CC0CC000C404"
    )
    port map (
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => N6,
      ADR5 => MIPSProcInst_alu_Sh18,
      ADR3 => MIPSProcInst_alu_N31,
      O => N159
    );
  MIPSProcInst_alu_Mmux_alu_result6194_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y23",
      INIT => X"40CC408840444000"
    )
    port map (
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR5 => MIPSProcInst_alu_Sh6,
      ADR4 => MIPSProcInst_alu_Sh10,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6233_6618,
      O => N160
    );
  MIPSProcInst_alu_Mmux_alu_result6136 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y23",
      INIT => X"FA005000CC00CC00"
    )
    port map (
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_Sh16,
      ADR4 => MIPSProcInst_alu_Sh8,
      ADR1 => MIPSProcInst_alu_N29_0,
      O => MIPSProcInst_alu_Mmux_alu_result6136_6899
    );
  MIPSProcInst_alu_Mmux_alu_result6162 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y23",
      INIT => X"AAAAAAAAAAEAAABA"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR0 => MIPSProcInst_alu_op(0),
      ADR2 => MIPSProcInst_N193,
      O => MIPSProcInst_alu_Mmux_alu_result6135
    );
  MIPSProcInst_alu_Mmux_alu_result62_MIPSProcInst_alu_Mmux_alu_result62_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_N29,
      O => MIPSProcInst_alu_N29_0
    );
  MIPSProcInst_alu_Sh5211 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y24"
    )
    port map (
      IA => N169,
      IB => N170,
      O => MIPSProcInst_alu_N29,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Sh5211_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y24",
      INIT => X"F3C0F3C0EEEE2222"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(19),
      ADR2 => MIPSProcInst_alu_a_mux_out(17),
      ADR3 => MIPSProcInst_alu_a_mux_out(18),
      ADR0 => MIPSProcInst_alu_a_mux_out(20),
      O => N169
    );
  MIPSProcInst_alu_Sh5211_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y24",
      INIT => X"F3F3BB88C0C0BB88"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(11),
      ADR2 => MIPSProcInst_alu_a_mux_out(9),
      ADR0 => MIPSProcInst_alu_a_mux_out(10),
      ADR3 => MIPSProcInst_alu_a_mux_out(12),
      O => N170
    );
  MIPSProcInst_alu_Mmux_alu_result621 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y24",
      INIT => X"0000FCAA0000C0AA"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_b_mux_out(10),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(10),
      ADR0 => MIPSProcInst_alu_Mmux_alu_result1_split_10_0,
      O => MIPSProcInst_alu_Mmux_alu_result62
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y24",
      INIT => X"2FFF2CCC23332000"
    )
    port map (
      ADR4 => MIPSProcInst_pc_pc_out(10),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(10),
      ADR5 => MIPSProcInst_read_data_1_out(10),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR1 => MIPSProcInst_alu_src_a(0),
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(10)
    );
  MIPSProcInst_alu_out_value_out_27_MIPSProcInst_alu_out_value_out_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_result_out(27),
      O => MIPSProcInst_alu_result_out_27_0
    );
  MIPSProcInst_alu_Mmux_alu_result6205 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y25"
    )
    port map (
      IA => N173,
      IB => N174,
      O => MIPSProcInst_alu_result_out(27),
      SEL => MIPSProcInst_alu_control_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6205_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => X"EE88EE88FFFF0000"
    )
    port map (
      ADR2 => '1',
      ADR5 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(27),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(27),
      ADR4 => MIPSProcInst_alu_Mmux_alu_result1_split_27_0,
      O => N173
    );
  MIPSProcInst_alu_out_value_out_27 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_27_CLK,
      I => MIPSProcInst_alu_result_out(27),
      O => MIPSProcInst_alu_out_value_out(27),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6205_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => X"0000FF020000FF00"
    )
    port map (
      ADR4 => MIPSProcInst_alu_n0031,
      ADR5 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_N136,
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6203,
      O => N174
    );
  MIPSProcInst_alu_Mmux_alu_result6204 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => X"C0C0C0C0F050A000"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR4 => MIPSProcInst_alu_N132_0,
      ADR3 => MIPSProcInst_alu_N32,
      ADR1 => MIPSProcInst_alu_Sh43,
      O => MIPSProcInst_alu_Mmux_alu_result6203
    );
  MIPSProcInst_alu_Sh15511 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => X"0022F0F00022F0F0"
    )
    port map (
      ADR5 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_a_mux_out(31),
      ADR2 => MIPSProcInst_alu_Sh123,
      O => MIPSProcInst_alu_N136
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out311 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y26",
      INIT => X"FFFF0000F0ED0048"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(8),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => procDMemWriteData(8),
      O => MIPSProcInst_alu_b_mux_out(8)
    );
  MIPSProcInst_pc_mux_Mmux_data_out161 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y26",
      INIT => X"5F5A0F0A55500500"
    )
    port map (
      ADR1 => '1',
      ADR4 => MIPSProcInst_instruction_register_instruction_out(23),
      ADR5 => MIPSProcInst_alu_out_value_out(23),
      ADR0 => MIPSProcInst_pc_source(0),
      ADR2 => MIPSProcInst_pc_source(1),
      ADR3 => MIPSProcInst_alu_result_out(23),
      O => MIPSProcInst_pc_mux_out(23)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y26",
      INIT => X"FFFF0000DDFF8800"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(15),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(15),
      O => MIPSProcInst_write_data_mux_out(15)
    );
  MIPSProcInst_alu_Sh1211 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y27",
      INIT => X"EF2FEC2CE323E020"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(25),
      ADR0 => MIPSProcInst_alu_a_mux_out(27),
      ADR3 => MIPSProcInst_alu_a_mux_out(28),
      ADR5 => MIPSProcInst_alu_a_mux_out(26),
      O => MIPSProcInst_alu_Sh121
    );
  MIPSProcInst_alu_Sh15311 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y27",
      INIT => X"FFFFFF4700B80000"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR2 => procDMemWriteData(2),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_Sh125,
      ADR5 => MIPSProcInst_alu_Sh121,
      O => MIPSProcInst_alu_N139
    );
  MIPSProcInst_alu_Mmux_alu_result6181 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y27",
      INIT => X"0000FDA80000D580"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_b_mux_out(25),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(25),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_25_0,
      O => MIPSProcInst_alu_Mmux_alu_result618
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out181 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y27",
      INIT => X"FF54FFFCFF10FF30"
    )
    port map (
      ADR2 => MIPSProcInst_pc_pc_out(25),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR5 => MIPSProcInst_read_data_1_out(25),
      ADR1 => MIPSProcInst_alu_src_a(0),
      ADR3 => MIPSProcInst_N86,
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(25)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out301 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => X"FFF0FEFD00000408"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(7),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR5 => procDMemWriteData(7),
      O => MIPSProcInst_alu_b_mux_out(7)
    );
  MIPSProcInst_control_unit_state_FSM_FFd4_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => X"FFAAFFAA00FF30FF"
    )
    port map (
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_In2_6791,
      ADR4 => MIPSProcInst_instruction_register_instruction_out(30),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(31),
      O => MIPSProcInst_control_unit_state_FSM_FFd4_In3_6987
    );
  MIPSProcInst_control_unit_state_FSM_FFd4_2 : X_FF
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_2_CLK,
      I => MIPSProcInst_control_unit_state_FSM_FFd4_In,
      O => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd4_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => X"FFFFFFAAFFA8FFAA"
    )
    port map (
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => HostCommInst_procEnableSignal_6027,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_In1_0,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_In3_6987,
      O => MIPSProcInst_control_unit_state_FSM_FFd4_In
    );
  MIPSProcInst_control_unit_state_FSM_FFd4_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_1_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_1_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd4_1_6849,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_n0055_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => X"0033000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_1_6848,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_1_6849,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      O => MIPSProcInst_alu_src_a(1)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out191 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y29",
      INIT => X"FC0CFF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(26),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(26),
      O => MIPSProcInst_write_data_mux_out(26)
    );
  MIPSProcInst_alu_Mmux_alu_result691 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y29",
      INIT => X"0000FBC80000B380"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(17),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(17),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_17_0,
      O => MIPSProcInst_alu_Mmux_alu_result69
    );
  MIPSProcInst_alu_Sh401_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y20",
      INIT => X"FFFFAAFFFFFF2727"
    )
    port map (
      ADR5 => MIPSProcInst_alu_src_a(1),
      ADR0 => MIPSProcInst_alu_src_a(0),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR2 => MIPSProcInst_pc_pc_out(0),
      ADR1 => MIPSProcInst_read_data_1_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      O => N58
    );
  MIPSProcInst_alu_Mmux_alu_result6172 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y20",
      INIT => X"0000A0A000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_Sh40,
      O => MIPSProcInst_alu_Mmux_alu_result6171_6651
    );
  MIPSProcInst_alu_Sh401 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y20",
      INIT => X"0F0F0C5C00000C5C"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => N58,
      ADR1 => MIPSProcInst_alu_Sh8,
      ADR5 => MIPSProcInst_alu_Sh4,
      O => MIPSProcInst_alu_Sh40
    );
  MIPSProcInst_alu_Mmux_alu_result623 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => X"50505050FFCC3300"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_N114,
      ADR2 => MIPSProcInst_alu_N138,
      ADR4 => MIPSProcInst_alu_N54,
      O => MIPSProcInst_alu_Mmux_alu_result6215_6990
    );
  MIPSProcInst_alu_out_value_out_10 : X_FF
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_10_CLK,
      I => MIPSProcInst_alu_result_out(10),
      O => MIPSProcInst_alu_out_value_out(10),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result624 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => X"FFFF0E00FFFF0A00"
    )
    port map (
      ADR3 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_n0031,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result62,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6210,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6215_6990,
      O => MIPSProcInst_alu_result_out(10)
    );
  MIPSProcInst_alu_Mmux_alu_result6323 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => X"31FD20EC31312020"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_N53,
      ADR4 => MIPSProcInst_alu_N113,
      ADR5 => MIPSProcInst_alu_N139,
      O => MIPSProcInst_alu_Mmux_alu_result6322_6989
    );
  MIPSProcInst_alu_out_value_out_9 : X_FF
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_9_CLK,
      I => MIPSProcInst_alu_result_out(9),
      O => MIPSProcInst_alu_out_value_out(9),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6324 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => X"FF22FF22FF20FF00"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_n0031,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result632,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6321_6914,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6322_6989,
      O => MIPSProcInst_alu_result_out(9)
    );
  MIPSProcInst_alu_Mmux_alu_result6111 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y22",
      INIT => X"FFFFFFFF02020232"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR0 => MIPSProcInst_alu_Mmux_alu_result1_split_0_0,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result61,
      ADR4 => MIPSProcInst_alu_Mcompar_operand_b_in_31_operand_a_in_31_LessThan_5_o_cy_15_0,
      O => MIPSProcInst_alu_Mmux_alu_result611
    );
  MIPSProcInst_alu_Mmux_alu_result6110 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y22",
      INIT => X"00000000AA888800"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_a_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      O => MIPSProcInst_alu_Mmux_alu_result61
    );
  MIPSProcInst_alu_Sh1491 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y23",
      INIT => X"00AAF0CC00AAF0CC"
    )
    port map (
      ADR5 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_Sh117,
      ADR0 => MIPSProcInst_alu_Sh125,
      ADR2 => MIPSProcInst_alu_Sh121,
      O => MIPSProcInst_alu_Sh149
    );
  MIPSProcInst_alu_Sh1091 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y23",
      INIT => X"FF0FF000ACACACAC"
    )
    port map (
      ADR1 => MIPSProcInst_alu_a_mux_out(13),
      ADR4 => MIPSProcInst_alu_a_mux_out(14),
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(15),
      ADR3 => MIPSProcInst_alu_a_mux_out(16),
      O => MIPSProcInst_alu_Sh109
    );
  MIPSProcInst_alu_Sh1171 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y23",
      INIT => X"FDB9ECA875316420"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(21),
      ADR2 => MIPSProcInst_alu_a_mux_out(23),
      ADR5 => MIPSProcInst_alu_a_mux_out(24),
      ADR3 => MIPSProcInst_alu_a_mux_out(22),
      O => MIPSProcInst_alu_Sh117
    );
  MIPSProcInst_alu_Sh13711 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y23",
      INIT => X"CCEFCC40CCECCC4C"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR5 => procDMemWriteData(3),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_Sh109,
      ADR4 => MIPSProcInst_alu_Sh117,
      O => MIPSProcInst_alu_N53
    );
  MIPSProcInst_alu_Mmux_alu_result6165 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => X"88A888A888AA88A8"
    )
    port map (
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => MIPSProcInst_alu_N32,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6164_6888,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6163_6886,
      O => MIPSProcInst_alu_Mmux_alu_result6165_6995
    );
  MIPSProcInst_alu_out_value_out_23 : X_FF
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_23_CLK,
      I => MIPSProcInst_alu_result_out(23),
      O => MIPSProcInst_alu_out_value_out(23),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6167 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => X"F0FCF0FCF0F8F0F0"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6146,
      ADR3 => MIPSProcInst_alu_n0031,
      ADR4 => MIPSProcInst_alu_Sh151,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6161_6911,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6165_6995,
      O => MIPSProcInst_alu_result_out(23)
    );
  MIPSProcInst_alu_Mmux_alu_result6154 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => X"FF00FF00FF74FF30"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_Sh6,
      ADR2 => MIPSProcInst_alu_N31,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6153_6844,
      O => MIPSProcInst_alu_Mmux_alu_result6154_6994
    );
  MIPSProcInst_alu_out_value_out_22 : X_FF
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_22_CLK,
      I => MIPSProcInst_alu_result_out(22),
      O => MIPSProcInst_alu_out_value_out(22),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6156 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => X"DCDCDCDCDCCCCCCC"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR0 => MIPSProcInst_alu_n0031,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6152_6901,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6151_6827,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6154_6994,
      O => MIPSProcInst_alu_result_out(22)
    );
  MIPSProcInst_alu_Sh191 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y25",
      INIT => X"FF00AAAACCCCF0F0"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(19),
      ADR1 => MIPSProcInst_alu_a_mux_out(18),
      ADR0 => MIPSProcInst_alu_a_mux_out(17),
      ADR3 => MIPSProcInst_alu_a_mux_out(16),
      O => MIPSProcInst_alu_Sh19
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y25",
      INIT => X"FFFFFFFF00ACACAC"
    )
    port map (
      ADR1 => MIPSProcInst_pc_pc_out(16),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR0 => MIPSProcInst_read_data_1_out(16),
      ADR2 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(16)
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out101 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y25",
      INIT => X"F0FEFEFEF0F4F4F4"
    )
    port map (
      ADR1 => MIPSProcInst_pc_pc_out(18),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR5 => MIPSProcInst_read_data_1_out(18),
      ADR0 => MIPSProcInst_alu_src_a(0),
      ADR2 => MIPSProcInst_N86,
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(18)
    );
  MIPSProcInst_alu_Mmux_alu_result6105_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y25",
      INIT => X"04374C7F04374C7F"
    )
    port map (
      ADR5 => '1',
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_control_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(18),
      ADR4 => MIPSProcInst_alu_a_mux_out(18),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_18_0,
      O => N55
    );
  MIPSProcInst_alu_Sh14211 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y26",
      INIT => X"D8D8D8D8D8D8D8D8"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_Sh114,
      ADR1 => MIPSProcInst_alu_Sh122,
      O => MIPSProcInst_alu_N119
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out211 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y26",
      INIT => X"F5FFF1F3F4FCF0F0"
    )
    port map (
      ADR5 => MIPSProcInst_pc_pc_out(28),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => MIPSProcInst_read_data_1_out(28),
      ADR1 => MIPSProcInst_alu_src_a(0),
      ADR2 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(28)
    );
  MIPSProcInst_alu_Sh1221 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y26",
      INIT => X"FECE3E0EF2C23202"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(26),
      ADR3 => MIPSProcInst_alu_a_mux_out(28),
      ADR5 => MIPSProcInst_alu_a_mux_out(27),
      ADR4 => MIPSProcInst_alu_a_mux_out(29),
      O => MIPSProcInst_alu_Sh122
    );
  MIPSProcInst_alu_Sh15411 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y26",
      INIT => X"5F5D0A08555D0008"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(30),
      ADR5 => MIPSProcInst_alu_a_mux_out(31),
      ADR4 => MIPSProcInst_alu_Sh122,
      O => MIPSProcInst_alu_N138
    );
  MIPSProcInst_alu_Sh171 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y27",
      INIT => X"BBBBFC308888FC30"
    )
    port map (
      ADR0 => MIPSProcInst_alu_a_mux_out(14),
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(17),
      ADR3 => MIPSProcInst_alu_a_mux_out(15),
      ADR5 => MIPSProcInst_alu_a_mux_out(16),
      O => MIPSProcInst_alu_Sh17
    );
  MIPSProcInst_alu_Mmux_alu_result6143 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y27",
      INIT => X"4400C4C444008080"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_Sh1,
      ADR2 => MIPSProcInst_alu_Sh9,
      ADR5 => MIPSProcInst_alu_Sh17,
      O => MIPSProcInst_alu_Mmux_alu_result6143_6842
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y27",
      INIT => X"0000CCCCFF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => MIPSProcInst_pc_pc_out(14),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(14),
      ADR3 => MIPSProcInst_read_data_1_out(14),
      ADR5 => MIPSProcInst_alu_src_a(1),
      ADR4 => MIPSProcInst_alu_src_a(0),
      O => MIPSProcInst_alu_a_mux_out(14)
    );
  MIPSProcInst_alu_Mmux_alu_result661 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y27",
      INIT => X"0000EEE20000E222"
    )
    port map (
      ADR4 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR5 => MIPSProcInst_alu_b_mux_out(14),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_a_mux_out(14),
      ADR0 => MIPSProcInst_alu_Mmux_alu_result1_split_14_0,
      O => MIPSProcInst_alu_Mmux_alu_result66
    );
  MIPSProcInst_alu_Mmux_alu_result6256 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y28",
      INIT => X"3331222031112000"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR2 => MIPSProcInst_alu_a_mux_out(31),
      ADR5 => MIPSProcInst_alu_b_mux_out(31),
      ADR4 => MIPSProcInst_alu_Mmux_alu_result1_split_31_0,
      O => MIPSProcInst_alu_Mmux_alu_result6255_6627
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out251 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y28",
      INIT => X"FF00FF00FE103120"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => procDMemWriteData(31),
      O => MIPSProcInst_alu_b_mux_out(31)
    );
  MIPSProcInst_alu_control_alu_control_out_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y29",
      INIT => X"FFFFFFFFFFF6FFFE"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(3),
      O => N117
    );
  MIPSProcInst_alu_control_alu_control_out_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X29Y29",
      INIT => X"00500F5000000000"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => N117,
      O => MIPSProcInst_alu_control_out(2)
    );
  HostCommInst_UARTHandlerInst_ut_ut_serOut : X_FF
    generic map(
      LOC => "SLICE_X29Y36",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_serOut_CLK,
      I => HostCommInst_UARTHandlerInst_ut_ut_PWR_30_o_dataBuf_0_MUX_526_o,
      O => HostCommInst_UARTHandlerInst_ut_ut_serOut_6554,
      SET => reset_IBUF_0,
      RST => GND
    );
  HostCommInst_UARTHandlerInst_ut_ut_Mmux_PWR_30_o_dataBuf_0_MUX_526_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y36",
      INIT => X"F0F0F0F0FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      ADR2 => HostCommInst_UARTHandlerInst_ut_ut_dataBuf(0),
      O => HostCommInst_UARTHandlerInst_ut_ut_PWR_30_o_dataBuf_0_MUX_526_o
    );
  HostCommInst_UARTHandlerInst_ut_ur_inSync_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y39",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_inSync(1),
      SET => reset_IBUF_0,
      RST => GND
    );
  HostCommInst_UARTHandlerInst_ut_ur_inSync_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y39",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_CLK,
      I => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_IN,
      O => HostCommInst_UARTHandlerInst_ut_ur_inSync(0),
      SET => reset_IBUF_0,
      RST => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6133 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y18",
      INIT => X"001100F0000000F0"
    )
    port map (
      ADR5 => MIPSProcInst_alu_a_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => N119,
      ADR2 => MIPSProcInst_alu_Sh4,
      O => MIPSProcInst_alu_Mmux_alu_result6133_6892
    );
  MIPSProcInst_alu_Sh4411_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y18",
      INIT => X"FFFFFFFFAFAFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      O => N119
    );
  MIPSProcInst_alu_Sh127 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y19",
      INIT => X"F3BBC0BBF388C088"
    )
    port map (
      ADR5 => MIPSProcInst_alu_a_mux_out(12),
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(10),
      ADR2 => MIPSProcInst_alu_a_mux_out(9),
      ADR0 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh12_6607
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out231 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y19",
      INIT => X"7F7778700F070800"
    )
    port map (
      ADR4 => MIPSProcInst_pc_pc_out(2),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR5 => MIPSProcInst_read_data_1_out(2),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR2 => MIPSProcInst_alu_src_a(0),
      ADR0 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(2)
    );
  MIPSProcInst_alu_Sh42 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y19",
      INIT => X"DDFA88FADD508850"
    )
    port map (
      ADR1 => MIPSProcInst_alu_a_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(2),
      ADR2 => MIPSProcInst_alu_a_mux_out(4),
      ADR4 => MIPSProcInst_alu_a_mux_out(3),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      O => MIPSProcInst_alu_Sh4
    );
  MIPSProcInst_alu_Mmux_alu_result684 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y19",
      INIT => X"FFE2CCE233E200E2"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_Sh16,
      ADR2 => MIPSProcInst_alu_Sh12_6607,
      ADR4 => MIPSProcInst_alu_Sh8,
      ADR5 => MIPSProcInst_alu_Sh4,
      O => MIPSProcInst_alu_Mmux_alu_result683_6879
    );
  MIPSProcInst_alu_Sh231 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => X"CCAACCAAFFF000F0"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(23),
      ADR4 => MIPSProcInst_alu_a_mux_out(21),
      ADR1 => MIPSProcInst_alu_a_mux_out(20),
      ADR0 => MIPSProcInst_alu_a_mux_out(22),
      O => MIPSProcInst_alu_Sh23
    );
  MIPSProcInst_alu_Sh5511 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => X"FFFFFF350000CA00"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR0 => procDMemWriteData(3),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_alu_Sh15,
      ADR5 => MIPSProcInst_alu_Sh23,
      O => MIPSProcInst_alu_N32
    );
  MIPSProcInst_alu_Sh571_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => X"010BA1AB515BF1FB"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(25),
      ADR3 => MIPSProcInst_alu_a_mux_out(24),
      ADR4 => MIPSProcInst_alu_a_mux_out(22),
      ADR5 => MIPSProcInst_alu_a_mux_out(23),
      O => N8
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out161 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => X"FFFFFFFF30F022AA"
    )
    port map (
      ADR0 => MIPSProcInst_pc_pc_out(23),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR2 => MIPSProcInst_read_data_1_out(23),
      ADR4 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(23)
    );
  MIPSProcInst_alu_out_value_out_31_MIPSProcInst_alu_out_value_out_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_result_out(31),
      O => MIPSProcInst_alu_result_out_31_0
    );
  MIPSProcInst_alu_Mmux_alu_result6258 : X_MUX2
    generic map(
      LOC => "SLICE_X30Y21"
    )
    port map (
      IA => N149,
      IB => N150,
      O => MIPSProcInst_alu_result_out(31),
      SEL => MIPSProcInst_alu_b_mux_out(4)
    );
  MIPSProcInst_alu_Mmux_alu_result6258_F : X_LUT6
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => X"FFF0FFF0FFF2FFF0"
    )
    port map (
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6254,
      ADR1 => MIPSProcInst_alu_n0031,
      ADR5 => N60_0,
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result625,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6255_6627,
      O => N149
    );
  MIPSProcInst_alu_out_value_out_31 : X_FF
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_31_CLK,
      I => MIPSProcInst_alu_result_out(31),
      O => MIPSProcInst_alu_out_value_out(31),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6258_G : X_LUT6
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => X"FF00FF20FF00FF00"
    )
    port map (
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6255_6627,
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_n0031,
      ADR5 => MIPSProcInst_alu_Sh47,
      O => N150
    );
  MIPSProcInst_alu_Sh471 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => X"E2FFE2CCE233E200"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_Sh15,
      ADR5 => MIPSProcInst_alu_Sh11,
      ADR2 => MIPSProcInst_alu_Sh3,
      ADR0 => MIPSProcInst_alu_Sh7,
      O => MIPSProcInst_alu_Sh47
    );
  MIPSProcInst_alu_Mmux_alu_result6251 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => X"000F000800000008"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_Sh23,
      ADR5 => MIPSProcInst_alu_N132_0,
      ADR2 => N108,
      ADR3 => MIPSProcInst_alu_n0031,
      O => MIPSProcInst_alu_Mmux_alu_result625
    );
  MIPSProcInst_pc_write_enable6 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => MIPSProcInst_alu_result_out(13),
      ADR0 => MIPSProcInst_alu_result_out(14),
      ADR1 => MIPSProcInst_alu_result_out_8_0,
      ADR3 => MIPSProcInst_alu_result_out_26_0,
      ADR2 => MIPSProcInst_alu_result_out(0),
      ADR4 => N53,
      O => MIPSProcInst_pc_write_enable6_6757
    );
  MIPSProcInst_pc_write_enable5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => X"FBFFFBFFFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR2 => MIPSProcInst_alu_result_out(12),
      ADR0 => MIPSProcInst_alu_result_out(4),
      O => N53
    );
  MIPSProcInst_alu_Mmux_alu_result6113 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => X"AFAFFCCCA0A0FCCC"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_Mmux_alu_result612,
      ADR5 => MIPSProcInst_alu_N48_0,
      ADR0 => MIPSProcInst_alu_N56,
      ADR3 => MIPSProcInst_alu_N117,
      O => MIPSProcInst_alu_Mmux_alu_result613
    );
  MIPSProcInst_alu_out_value_out_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_0_CLK,
      I => MIPSProcInst_alu_result_out(0),
      O => MIPSProcInst_alu_out_value_out(0),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6117 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => X"FFFFFAF8FAF8FAF8"
    )
    port map (
      ADR0 => MIPSProcInst_alu_Mmux_alu_result614,
      ADR5 => MIPSProcInst_alu_N5,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result611,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result615,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result616,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result613,
      O => MIPSProcInst_alu_result_out(0)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => X"A8A8A8A8ABA8BA8A"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(10),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR0 => procDMemWriteData(10),
      O => MIPSProcInst_alu_b_mux_out(10)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out321 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => X"FFFFF2E300000220"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(9),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR5 => procDMemWriteData(9),
      O => MIPSProcInst_alu_b_mux_out(9)
    );
  MIPSProcInst_alu_out5 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(10),
      ADR3 => MIPSProcInst_alu_b_mux_out(9),
      ADR2 => MIPSProcInst_alu_b_mux_out(12),
      ADR5 => MIPSProcInst_alu_b_mux_out(11),
      ADR0 => MIPSProcInst_alu_b_mux_out(14),
      ADR4 => MIPSProcInst_alu_b_mux_out(13),
      O => MIPSProcInst_alu_out4
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => X"FFFF0000AAED0048"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(13),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => procDMemWriteData(13),
      O => MIPSProcInst_alu_b_mux_out(13)
    );
  MIPSProcInst_alu_out_value_out_26_MIPSProcInst_alu_out_value_out_26_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_result_out(26),
      O => MIPSProcInst_alu_result_out_26_0
    );
  MIPSProcInst_alu_Mmux_alu_result6195 : X_MUX2
    generic map(
      LOC => "SLICE_X30Y28"
    )
    port map (
      IA => N171,
      IB => N172,
      O => MIPSProcInst_alu_result_out(26),
      SEL => MIPSProcInst_alu_control_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6195_F : X_LUT6
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => X"EFE08F80EFE08F80"
    )
    port map (
      ADR5 => '1',
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(26),
      ADR0 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(26),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_26_0,
      O => N171
    );
  MIPSProcInst_alu_out_value_out_26 : X_FF
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_26_CLK,
      I => MIPSProcInst_alu_result_out(26),
      O => MIPSProcInst_alu_out_value_out(26),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6195_G : X_LUT6
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => X"3333333300001000"
    )
    port map (
      ADR1 => MIPSProcInst_alu_n0031,
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_N138,
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6193_0,
      O => N172
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out191 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => X"FFFFFFFF3F2A1500"
    )
    port map (
      ADR3 => MIPSProcInst_pc_pc_out(26),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => MIPSProcInst_read_data_1_out(26),
      ADR0 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR2 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(26)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out191 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => X"FFFE0004FF0D0008"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR4 => procDMemWriteData(26),
      O => MIPSProcInst_alu_b_mux_out(26)
    );
  MIPSProcInst_alu_out6_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y29",
      INIT => X"FFFFFF3FFFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(28),
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_control_out(0),
      O => N123
    );
  MIPSProcInst_alu_Mmux_alu_result61101 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y29",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => N40,
      ADR4 => MIPSProcInst_alu_out1_6764,
      ADR2 => MIPSProcInst_alu_out,
      ADR3 => MIPSProcInst_alu_out4,
      ADR1 => MIPSProcInst_alu_b_mux_out(29),
      ADR5 => N123,
      O => MIPSProcInst_alu_N3
    );
  MIPSProcInst_alu_Mmux_alu_result6211 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y29",
      INIT => X"3232321032101010"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR5 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_a_mux_out(28),
      ADR3 => MIPSProcInst_alu_b_mux_out(28),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result1_split_28_0,
      O => MIPSProcInst_alu_Mmux_alu_result621_6670
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out211 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y29",
      INIT => X"FF01CF02FE00CD00"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => procDMemWriteData(28),
      O => MIPSProcInst_alu_b_mux_out(28)
    );
  MIPSProcInst_pc_mux_Mmux_data_out311 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y19",
      INIT => X"0C0CFF0F0C0CF000"
    )
    port map (
      ADR0 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(8),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(8),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR4 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out_8_0,
      O => MIPSProcInst_pc_mux_out(8)
    );
  MIPSProcInst_alu_Mmux_alu_result6255 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y19",
      INIT => X"0000333300003333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      O => MIPSProcInst_alu_Mmux_alu_result6254
    );
  MIPSProcInst_alu_Mmux_alu_result6274 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y20",
      INIT => X"0000307400003030"
    )
    port map (
      ADR5 => MIPSProcInst_alu_a_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => N85,
      ADR2 => MIPSProcInst_alu_Sh4,
      O => MIPSProcInst_alu_Mmux_alu_result6273_6919
    );
  MIPSProcInst_alu_Mmux_alu_result6302_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y20",
      INIT => X"02020300DFDFCFFF"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR3 => procDMemWriteData(2),
      ADR1 => MIPSProcInst_alu_src_b(0),
      ADR4 => MIPSProcInst_alu_src_b(1),
      ADR2 => MIPSProcInst_alu_Sh3,
      ADR5 => MIPSProcInst_alu_Sh7,
      O => N64
    );
  MIPSProcInst_write_data_mux_Mmux_data_out151 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y20",
      INIT => X"F0CCF0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(22),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(22),
      O => MIPSProcInst_write_data_mux_out(22)
    );
  MIPSProcInst_alu_Sh1041 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y21",
      INIT => X"FDB97531ECA86420"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(8),
      ADR3 => MIPSProcInst_alu_a_mux_out(10),
      ADR2 => MIPSProcInst_alu_a_mux_out(9),
      ADR4 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh104
    );
  MIPSProcInst_alu_Mmux_alu_result6112 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y21",
      INIT => X"5555000000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_b_mux_out(4),
      ADR5 => MIPSProcInst_alu_Sh104,
      O => MIPSProcInst_alu_Mmux_alu_result612
    );
  MIPSProcInst_alu_Sh101 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y21",
      INIT => X"FD75EC64B931A820"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(8),
      ADR3 => MIPSProcInst_alu_a_mux_out(7),
      ADR4 => MIPSProcInst_alu_a_mux_out(10),
      ADR5 => MIPSProcInst_alu_a_mux_out(9),
      O => MIPSProcInst_alu_Sh10
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out321 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y21",
      INIT => X"3F00BFBF3F008080"
    )
    port map (
      ADR5 => MIPSProcInst_pc_pc_out(9),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(9),
      ADR3 => MIPSProcInst_read_data_1_out(9),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR4 => MIPSProcInst_alu_src_a(0),
      ADR1 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(9)
    );
  MIPSProcInst_pc_mux_Mmux_data_out18 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y22",
      INIT => X"3300E2E23300E2E2"
    )
    port map (
      ADR5 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(0),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR4 => MIPSProcInst_pc_source(0),
      ADR1 => MIPSProcInst_pc_source(1),
      ADR0 => MIPSProcInst_alu_result_out(0),
      O => MIPSProcInst_pc_mux_out(0)
    );
  MIPSProcInst_alu_Mmux_alu_result6301 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y22",
      INIT => X"00000000EEE2E222"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_b_mux_out(7),
      ADR4 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_a_mux_out(7),
      ADR0 => MIPSProcInst_alu_Mmux_alu_result1_split_7_0,
      O => MIPSProcInst_alu_Mmux_alu_result630
    );
  MIPSProcInst_alu_Mmux_alu_result622 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y23",
      INIT => X"000055E4000000E4"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => N76,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6233_6618,
      ADR1 => MIPSProcInst_alu_Sh10,
      ADR5 => MIPSProcInst_alu_Sh6,
      O => MIPSProcInst_alu_Mmux_alu_result6210
    );
  MIPSProcInst_control_unit_state_n0055_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y23",
      INIT => X"80A080A080A080A0"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_1_6847,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_1_6848,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_1_6849,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      O => MIPSProcInst_alu_op(0)
    );
  MIPSProcInst_alu_control_alu_control_out_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y23",
      INIT => X"FF10FF00FF80FF10"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR3 => MIPSProcInst_alu_op(0),
      ADR2 => MIPSProcInst_N193,
      O => MIPSProcInst_alu_control_out(0)
    );
  MIPSProcInst_alu_Mmux_alu_result6322_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y23",
      INIT => X"FDFCFFFFF9F8FFFF"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR3 => procDMemWriteData(4),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_control_out(0),
      O => N76
    );
  MIPSProcInst_alu_Sh12 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y24",
      INIT => X"0000CCCC0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_a_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      O => MIPSProcInst_alu_Sh1
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_3 : X_FF
    generic map(
      LOC => "SLICE_X31Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_3_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_3_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result692 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y24",
      INIT => X"0000040000000000"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_Sh1,
      O => MIPSProcInst_alu_Mmux_alu_result691_6880
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_2 : X_FF
    generic map(
      LOC => "SLICE_X31Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_2_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_2_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y24",
      INIT => X"00CC00CCF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR0 => MIPSProcInst_pc_pc_out(0),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR2 => MIPSProcInst_read_data_1_out(0),
      ADR5 => MIPSProcInst_alu_src_a(1),
      ADR3 => MIPSProcInst_alu_src_a(0),
      O => MIPSProcInst_alu_a_mux_out(0)
    );
  MIPSProcInst_control_unit_state_FSM_FFd2_1 : X_FF
    generic map(
      LOC => "SLICE_X31Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_1_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_1_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_n0055_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y24",
      INIT => X"FFFF000000550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd3_1_6847,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_1_6848,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_1_6849,
      O => MIPSProcInst_alu_src_a(0)
    );
  MIPSProcInst_instruction_register_instruction_out_11 : X_FF
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_11_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_11_IN,
      O => MIPSProcInst_instruction_register_instruction_out(11),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out311 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => X"30F0BBFF30F08800"
    )
    port map (
      ADR5 => MIPSProcInst_pc_pc_out(8),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(8),
      ADR2 => MIPSProcInst_read_data_1_out(8),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => MIPSProcInst_alu_src_a(0),
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(8)
    );
  MIPSProcInst_instruction_register_instruction_out_10 : X_FF
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_10_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_10_IN,
      O => MIPSProcInst_instruction_register_instruction_out(10),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out110 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => X"F0F0F0F0B1F6B190"
    )
    port map (
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      ADR4 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR2 => procDMemWriteData(0),
      O => MIPSProcInst_alu_b_mux_out(0)
    );
  MIPSProcInst_instruction_register_instruction_out_9 : X_FF
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_9_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_9_IN,
      O => MIPSProcInst_instruction_register_instruction_out(9),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Sh111 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => X"DDF5DDA088F588A0"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(8),
      ADR2 => MIPSProcInst_alu_a_mux_out(9),
      ADR5 => MIPSProcInst_alu_a_mux_out(10),
      ADR4 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh11
    );
  MIPSProcInst_instruction_register_instruction_out_8 : X_FF
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_8_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_8_IN,
      O => MIPSProcInst_instruction_register_instruction_out(8),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out33 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y25",
      INIT => X"5E54FCFC0E040C0C"
    )
    port map (
      ADR1 => MIPSProcInst_pc_pc_out(11),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(11),
      ADR5 => MIPSProcInst_read_data_1_out(11),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR2 => MIPSProcInst_alu_src_a(0),
      ADR0 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(11)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out281 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y26",
      INIT => X"FFFF0000F5E11400"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR4 => procDMemWriteData(5),
      O => MIPSProcInst_alu_b_mux_out(5)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y26",
      INIT => X"CCCCCCCCCC00CAAC"
    )
    port map (
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR0 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => procDMemWriteData(15),
      O => MIPSProcInst_alu_b_mux_out(15)
    );
  MIPSProcInst_alu_out6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y26",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(5),
      ADR4 => MIPSProcInst_alu_b_mux_out(6),
      ADR1 => MIPSProcInst_alu_b_mux_out(7),
      ADR3 => MIPSProcInst_alu_b_mux_out(8),
      ADR2 => MIPSProcInst_alu_b_mux_out(15),
      ADR5 => MIPSProcInst_alu_b_mux_out(27),
      O => N40
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out201 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y26",
      INIT => X"FFFEFF3100100020"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR5 => procDMemWriteData(27),
      O => MIPSProcInst_alu_b_mux_out(27)
    );
  MIPSProcInst_alu_Mmux_alu_result6145 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => X"CCCC00C0CCCC00C8"
    )
    port map (
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_N30,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6144_6887,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6143_6842,
      O => MIPSProcInst_alu_Mmux_alu_result6145_7003
    );
  MIPSProcInst_alu_out_value_out_21 : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_21_CLK,
      I => MIPSProcInst_alu_result_out(21),
      O => MIPSProcInst_alu_out_value_out(21),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6147 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => X"FFFF00F0FFFF0080"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6146,
      ADR3 => MIPSProcInst_alu_n0031,
      ADR0 => MIPSProcInst_alu_Sh149,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6141_6893,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6145_7003,
      O => MIPSProcInst_alu_result_out(21)
    );
  MIPSProcInst_alu_Mmux_alu_result6134 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => X"30A000A030A000A0"
    )
    port map (
      ADR5 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_Sh120,
      ADR0 => MIPSProcInst_alu_N56,
      O => MIPSProcInst_alu_Mmux_alu_result6134_7002
    );
  MIPSProcInst_alu_out_value_out_20 : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_20_CLK,
      I => MIPSProcInst_alu_result_out(20),
      O => MIPSProcInst_alu_out_value_out(20),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6137 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => X"FFCFFFCECCCCCCCC"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6133_6892,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6136_6899,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6131_6823,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6132_6891,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6134_7002,
      O => MIPSProcInst_alu_result_out(20)
    );
  MIPSProcInst_alu_Mmux_alu_result6244 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y28",
      INIT => X"0100230000000000"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_control_out(2),
      ADR5 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_n0031,
      ADR2 => N101,
      ADR4 => N102,
      O => MIPSProcInst_alu_Mmux_alu_result6243_6863
    );
  MIPSProcInst_alu_Mmux_alu_result6244_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y28",
      INIT => X"FF0FFF22FF0FFF77"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_a_mux_out(29),
      ADR1 => MIPSProcInst_alu_a_mux_out(27),
      ADR3 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_Sh22,
      O => N102
    );
  MIPSProcInst_alu_out6 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y28",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(28),
      ADR0 => MIPSProcInst_alu_b_mux_out(29),
      ADR1 => MIPSProcInst_alu_out4,
      ADR2 => N40,
      ADR5 => MIPSProcInst_alu_out,
      ADR4 => MIPSProcInst_alu_out1_6764,
      O => MIPSProcInst_alu_n0031
    );
  MIPSProcInst_alu_Mmux_alu_result6115 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y28",
      INIT => X"0000880000000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR5 => MIPSProcInst_alu_N33,
      ADR4 => MIPSProcInst_alu_n0031,
      O => MIPSProcInst_alu_Mmux_alu_result615
    );
  MIPSProcInst_alu_Mmux_alu_result6141 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y29",
      INIT => X"0F0B0C080B030800"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR5 => MIPSProcInst_alu_b_mux_out(21),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR0 => MIPSProcInst_alu_a_mux_out(21),
      ADR4 => MIPSProcInst_alu_Mmux_alu_result1_split_21_0,
      O => MIPSProcInst_alu_Mmux_alu_result6141_6893
    );
  MIPSProcInst_alu_Mmux_alu_result6221 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y29",
      INIT => X"5550444450004444"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_a_mux_out(29),
      ADR5 => MIPSProcInst_alu_b_mux_out(29),
      ADR1 => MIPSProcInst_alu_Mmux_alu_result1_split_29_0,
      O => MIPSProcInst_alu_Mmux_alu_result622_6896
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out221 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y29",
      INIT => X"AAAA8B8EAAAA8882"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemWriteData(29),
      O => MIPSProcInst_alu_b_mux_out(29)
    );
  MIPSProcInst_alu_out6_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y30",
      INIT => X"BBFFBBFFBBFFBBFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => MIPSProcInst_alu_b_mux_out(28),
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_control_out(1),
      O => N121
    );
  MIPSProcInst_alu_Mmux_alu_result6116 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y30",
      INIT => X"0000F0C8000000C8"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(2),
      ADR0 => MIPSProcInst_alu_N3,
      ADR2 => MIPSProcInst_alu_N5,
      O => MIPSProcInst_alu_Mmux_alu_result616
    );
  MIPSProcInst_alu_Mmux_alu_result61121 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y30",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => N40,
      ADR4 => MIPSProcInst_alu_out1_6764,
      ADR5 => MIPSProcInst_alu_out,
      ADR0 => MIPSProcInst_alu_out4,
      ADR3 => MIPSProcInst_alu_b_mux_out(29),
      ADR1 => N121,
      O => MIPSProcInst_alu_N5
    );
  N60_N60_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N60,
      O => N60_0
    );
  MIPSProcInst_alu_Mmux_alu_result6254_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y18"
    )
    port map (
      IA => N139,
      IB => N140,
      O => N60,
      SEL => MIPSProcInst_alu_b_mux_out(0)
    );
  MIPSProcInst_alu_Mmux_alu_result6254_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y18",
      INIT => X"FF0FFF0F555FFF5F"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(29),
      ADR2 => MIPSProcInst_alu_a_mux_out(31),
      ADR0 => MIPSProcInst_alu_control_out(0),
      O => N139
    );
  MIPSProcInst_alu_Mmux_alu_result6254_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y18",
      INIT => X"CCFFCFFFFCFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(28),
      ADR4 => MIPSProcInst_alu_a_mux_out(30),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_control_out(1),
      O => N140
    );
  MIPSProcInst_alu_Mmux_alu_result6214_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y19",
      INIT => X"FFFFFFFF550F5533"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_a_mux_out(27),
      ADR2 => MIPSProcInst_alu_a_mux_out(25),
      ADR5 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_Sh20,
      O => N81
    );
  MIPSProcInst_alu_Mmux_alu_result6214 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y19",
      INIT => X"000004000000C400"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_n0031,
      ADR0 => N80,
      ADR5 => N81,
      O => MIPSProcInst_alu_Mmux_alu_result6213
    );
  MIPSProcInst_alu_Sh201 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y19",
      INIT => X"EEF5EEA044F544A0"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(20),
      ADR2 => MIPSProcInst_alu_a_mux_out(19),
      ADR1 => MIPSProcInst_alu_a_mux_out(18),
      ADR5 => MIPSProcInst_alu_a_mux_out(17),
      O => MIPSProcInst_alu_Sh20
    );
  MIPSProcInst_alu_Mmux_alu_result6214_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y19",
      INIT => X"AAAAFFFFABEFABEF"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_a_mux_out(28),
      ADR3 => MIPSProcInst_alu_a_mux_out(26),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_Sh20,
      O => N80
    );
  MIPSProcInst_alu_Sh181 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y20",
      INIT => X"EEEEF3C02222F3C0"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(18),
      ADR0 => MIPSProcInst_alu_a_mux_out(16),
      ADR5 => MIPSProcInst_alu_a_mux_out(15),
      ADR2 => MIPSProcInst_alu_a_mux_out(17),
      O => MIPSProcInst_alu_Sh18
    );
  MIPSProcInst_alu_Mmux_alu_result6153 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y20",
      INIT => X"7030501060204000"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6233_6618,
      ADR4 => MIPSProcInst_alu_Sh10,
      ADR5 => MIPSProcInst_alu_Sh18,
      O => MIPSProcInst_alu_Mmux_alu_result6153_6844
    );
  MIPSProcInst_alu_Sh21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y20",
      INIT => X"44444444FFAA5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => MIPSProcInst_alu_a_mux_out(0),
      ADR4 => MIPSProcInst_alu_a_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      O => MIPSProcInst_alu_Mmux_alu_result6233_6618
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y20",
      INIT => X"F0F0C0C0F0F0F690"
    )
    port map (
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      ADR3 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR2 => procDMemWriteData(1),
      O => MIPSProcInst_alu_b_mux_out(1)
    );
  MIPSProcInst_alu_a_mux_out_27_MIPSProcInst_alu_a_mux_out_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_N132,
      O => MIPSProcInst_alu_N132_0
    );
  MIPSProcInst_alu_Sh591 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y21"
    )
    port map (
      IA => N147,
      IB => N148,
      O => MIPSProcInst_alu_N132,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Sh591_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y21",
      INIT => X"F3F3C0C0EE22EE22"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(26),
      ADR2 => MIPSProcInst_alu_a_mux_out(24),
      ADR4 => MIPSProcInst_alu_a_mux_out(25),
      ADR0 => MIPSProcInst_alu_a_mux_out(27),
      O => N147
    );
  MIPSProcInst_alu_Sh591_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y21",
      INIT => X"FA50FA50DDDD8888"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(18),
      ADR3 => MIPSProcInst_alu_a_mux_out(16),
      ADR2 => MIPSProcInst_alu_a_mux_out(17),
      ADR4 => MIPSProcInst_alu_a_mux_out(19),
      O => N148
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out201 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y21",
      INIT => X"FFFFFFFF0EEE0222"
    )
    port map (
      ADR0 => MIPSProcInst_pc_pc_out(27),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => MIPSProcInst_read_data_1_out(27),
      ADR1 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR2 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(27)
    );
  MIPSProcInst_alu_Mmux_alu_result6103 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y21",
      INIT => X"FCFC3030EE22EE22"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_Sh14,
      ADR0 => MIPSProcInst_alu_Sh18,
      ADR3 => MIPSProcInst_alu_Sh10,
      ADR4 => MIPSProcInst_alu_Sh6,
      O => MIPSProcInst_alu_Mmux_alu_result6102_6810
    );
  MIPSProcInst_instruction_register_instruction_out_31 : X_FF
    generic map(
      LOC => "SLICE_X32Y31",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_31_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_31_IN,
      O => MIPSProcInst_instruction_register_instruction_out(31),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_30 : X_FF
    generic map(
      LOC => "SLICE_X32Y31",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_30_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_30_IN,
      O => MIPSProcInst_instruction_register_instruction_out(30),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_29 : X_FF
    generic map(
      LOC => "SLICE_X32Y31",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_29_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_29_IN,
      O => MIPSProcInst_instruction_register_instruction_out(29),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_28 : X_FF
    generic map(
      LOC => "SLICE_X32Y31",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_28_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_28_IN,
      O => MIPSProcInst_instruction_register_instruction_out(28),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6242_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y19",
      INIT => X"FF33FF33FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR3 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      O => N108
    );
  MIPSProcInst_alu_Sh4411_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y19",
      INIT => X"FFFFAAFFFFFFAAFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_a_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      O => N83
    );
  MIPSProcInst_alu_Sh441 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y19",
      INIT => X"0C0CFCFCFA0AFA0A"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => N83,
      ADR0 => MIPSProcInst_alu_Sh12_6607,
      ADR3 => MIPSProcInst_alu_Sh8,
      ADR1 => MIPSProcInst_alu_Sh4,
      O => MIPSProcInst_alu_Sh44
    );
  MIPSProcInst_alu_Mmux_alu_result6212 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y19",
      INIT => X"0032000200300000"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR1 => MIPSProcInst_alu_n0031,
      ADR3 => N108,
      ADR5 => MIPSProcInst_alu_N129,
      ADR4 => MIPSProcInst_alu_Sh44,
      O => MIPSProcInst_alu_Mmux_alu_result6211_6672
    );
  MIPSProcInst_pc_mux_Mmux_data_out231 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y20",
      INIT => X"00FF0000AACCAACC"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_pc_source(0),
      ADR1 => MIPSProcInst_alu_result_out(2),
      ADR4 => MIPSProcInst_alu_out_value_out(2),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(2),
      O => MIPSProcInst_pc_mux_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6235 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y20",
      INIT => X"0000303000002200"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR1 => N62,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6232_6831,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6233_6618,
      ADR4 => MIPSProcInst_alu_n0031,
      O => MIPSProcInst_alu_Mmux_alu_result6234
    );
  MIPSProcInst_alu_out_value_out_2 : X_FF
    generic map(
      LOC => "SLICE_X33Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_2_CLK,
      I => MIPSProcInst_alu_result_out(2),
      O => MIPSProcInst_alu_out_value_out(2),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6236 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y20",
      INIT => X"FCFFCCFFFCEECCEE"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_Sh146,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result623_6906,
      ADR4 => MIPSProcInst_alu_N5,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6234,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6231_7009,
      O => MIPSProcInst_alu_result_out(2)
    );
  MIPSProcInst_alu_Mmux_alu_result6232 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y20",
      INIT => X"00C000A000C00000"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Sh106,
      ADR1 => MIPSProcInst_alu_N50_0,
      ADR2 => N70,
      ADR3 => MIPSProcInst_alu_n0031,
      O => MIPSProcInst_alu_Mmux_alu_result6231_7009
    );
  MIPSProcInst_pc_write_enable3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y21",
      INIT => X"0000000000000001"
    )
    port map (
      ADR4 => MIPSProcInst_alu_result_out(22),
      ADR1 => MIPSProcInst_alu_result_out(9),
      ADR5 => MIPSProcInst_alu_result_out(10),
      ADR3 => MIPSProcInst_alu_result_out(23),
      ADR0 => MIPSProcInst_alu_result_out(21),
      ADR2 => MIPSProcInst_alu_result_out(16),
      O => MIPSProcInst_pc_write_enable3_7012
    );
  MIPSProcInst_pc_write_enable4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y21",
      INIT => X"0000000100000000"
    )
    port map (
      ADR4 => MIPSProcInst_alu_result_out_31_0,
      ADR0 => MIPSProcInst_alu_result_out(30),
      ADR3 => MIPSProcInst_alu_result_out(29),
      ADR2 => MIPSProcInst_alu_result_out(2),
      ADR1 => MIPSProcInst_alu_result_out_11_0,
      ADR5 => MIPSProcInst_pc_write_enable3_7012,
      O => N51
    );
  MIPSProcInst_alu_out_value_out_30 : X_FF
    generic map(
      LOC => "SLICE_X33Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_30_CLK,
      I => MIPSProcInst_alu_result_out(30),
      O => MIPSProcInst_alu_out_value_out(30),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6246 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y21",
      INIT => X"FFFFFFFFFFFFF800"
    )
    port map (
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6123_0,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6244_6912,
      ADR1 => MIPSProcInst_alu_N5,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result624_6913,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6243_6863,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6241_7011,
      O => MIPSProcInst_alu_result_out(30)
    );
  MIPSProcInst_alu_Mmux_alu_result6242 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y21",
      INIT => X"0000300000003505"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => N96,
      ADR1 => N108,
      ADR4 => MIPSProcInst_alu_n0031,
      ADR5 => N107,
      ADR3 => MIPSProcInst_alu_Sh46,
      O => MIPSProcInst_alu_Mmux_alu_result6241_7011
    );
  MIPSProcInst_alu_out_value_out_29 : X_FF
    generic map(
      LOC => "SLICE_X33Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_29_CLK,
      I => MIPSProcInst_alu_result_out(29),
      O => MIPSProcInst_alu_out_value_out(29),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6226 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y22",
      INIT => X"FFFFFAF8FFFFFAF0"
    )
    port map (
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6123_0,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6224_6895,
      ADR1 => MIPSProcInst_alu_N5,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result622_6896,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6223,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6221_7013,
      O => MIPSProcInst_alu_result_out(29)
    );
  MIPSProcInst_alu_Mmux_alu_result6222 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y22",
      INIT => X"0044000F00440000"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => N108,
      ADR2 => N111_0,
      ADR3 => MIPSProcInst_alu_n0031,
      ADR5 => MIPSProcInst_alu_N130,
      ADR1 => MIPSProcInst_alu_Sh45,
      O => MIPSProcInst_alu_Mmux_alu_result6221_7013
    );
  MIPSProcInst_pc_write_enable7 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y22",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => MIPSProcInst_alu_result_out(6),
      ADR2 => MIPSProcInst_alu_result_out(7),
      ADR4 => MIPSProcInst_alu_result_out(20),
      ADR5 => MIPSProcInst_alu_result_out(5),
      ADR3 => MIPSProcInst_alu_result_out(28),
      ADR0 => MIPSProcInst_alu_result_out_27_0,
      O => MIPSProcInst_pc_write_enable7_6674
    );
  MIPSProcInst_alu_out_value_out_28 : X_FF
    generic map(
      LOC => "SLICE_X33Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_28_CLK,
      I => MIPSProcInst_alu_result_out(28),
      O => MIPSProcInst_alu_out_value_out(28),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6216 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y22",
      INIT => X"FFFFFFFFEEEEEAAA"
    )
    port map (
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6123_0,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6214_6669,
      ADR3 => MIPSProcInst_alu_N5,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result621_6670,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6213,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6211_6672,
      O => MIPSProcInst_alu_result_out(28)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out251 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y23",
      INIT => X"FA0AFF00FF00FF00"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(31),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(31),
      O => MIPSProcInst_write_data_mux_out(31)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out211 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y23",
      INIT => X"CCCCCCCCE4E4CCCC"
    )
    port map (
      ADR3 => '1',
      ADR1 => MIPSProcInst_alu_out_value_out(28),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR2 => procDMemReadData(28),
      O => MIPSProcInst_write_data_mux_out(28)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out201 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y24",
      INIT => X"FFFF0000CFFFC000"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(27),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(27),
      O => MIPSProcInst_write_data_mux_out(27)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out210 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y24",
      INIT => X"FF0AFF00F500FF00"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(10),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => procDMemReadData(10),
      O => MIPSProcInst_write_data_mux_out(10)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out171 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y24",
      INIT => X"FA0AFF00FF00FF00"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(24),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(24),
      O => MIPSProcInst_write_data_mux_out(24)
    );
  MIPSProcInst_alu_Sh221 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y25",
      INIT => X"FAFAFC0C0A0AFC0C"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(22),
      ADR3 => MIPSProcInst_alu_a_mux_out(20),
      ADR0 => MIPSProcInst_alu_a_mux_out(21),
      ADR5 => MIPSProcInst_alu_a_mux_out(19),
      O => MIPSProcInst_alu_Sh22
    );
  MIPSProcInst_alu_Sh5411 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y25",
      INIT => X"FF0BFF08F400F700"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR4 => procDMemWriteData(3),
      ADR2 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR5 => MIPSProcInst_alu_Sh14,
      ADR3 => MIPSProcInst_alu_Sh22,
      O => MIPSProcInst_alu_N31
    );
  MIPSProcInst_alu_Mmux_alu_result6151 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y25",
      INIT => X"5440555554400000"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_b_mux_out(22),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR2 => MIPSProcInst_alu_a_mux_out(22),
      ADR5 => MIPSProcInst_alu_Mmux_alu_result1_split_22_0,
      O => MIPSProcInst_alu_Mmux_alu_result6151_6827
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out151 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y25",
      INIT => X"FFFFFFFF0CCC0AAA"
    )
    port map (
      ADR0 => MIPSProcInst_pc_pc_out(22),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR1 => MIPSProcInst_read_data_1_out(22),
      ADR4 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR2 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(22)
    );
  MIPSProcInst_alu_Sh1161 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y26",
      INIT => X"CFC0AFAFCFC0A0A0"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(20),
      ADR0 => MIPSProcInst_alu_a_mux_out(22),
      ADR1 => MIPSProcInst_alu_a_mux_out(23),
      ADR3 => MIPSProcInst_alu_a_mux_out(21),
      O => MIPSProcInst_alu_Sh116
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out141 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y26",
      INIT => X"F3FFF0F0F2FAF2FA"
    )
    port map (
      ADR0 => MIPSProcInst_pc_pc_out(21),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR4 => MIPSProcInst_read_data_1_out(21),
      ADR5 => MIPSProcInst_alu_src_a(0),
      ADR2 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(21)
    );
  MIPSProcInst_alu_Mmux_alu_result6131 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y26",
      INIT => X"3232330020203300"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(20),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(20),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_20_0,
      O => MIPSProcInst_alu_Mmux_alu_result6131_6823
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out131 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y26",
      INIT => X"FFFFFFFF45CF40C0"
    )
    port map (
      ADR4 => MIPSProcInst_pc_pc_out(20),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR1 => MIPSProcInst_read_data_1_out(20),
      ADR2 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(20)
    );
  MIPSProcInst_instruction_register_instruction_out_19 : X_FF
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_19_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_19_IN,
      O => MIPSProcInst_instruction_register_instruction_out(19),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Sh161 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => X"CFAFC0AFCFA0C0A0"
    )
    port map (
      ADR1 => MIPSProcInst_alu_a_mux_out(13),
      ADR0 => MIPSProcInst_alu_a_mux_out(14),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(16),
      ADR4 => MIPSProcInst_alu_a_mux_out(15),
      O => MIPSProcInst_alu_Sh16
    );
  MIPSProcInst_instruction_register_instruction_out_18 : X_FF
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_18_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_18_IN,
      O => MIPSProcInst_instruction_register_instruction_out(18),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => X"F2FAF3FFF2FAF0F0"
    )
    port map (
      ADR5 => MIPSProcInst_pc_pc_out(15),
      ADR0 => MIPSProcInst_read_data_1_out(15),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR4 => MIPSProcInst_alu_src_a(0),
      ADR2 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(15)
    );
  MIPSProcInst_instruction_register_instruction_out_17 : X_FF
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_17_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_17_IN,
      O => MIPSProcInst_instruction_register_instruction_out(17),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => X"30303030FF33CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(13),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(13),
      ADR3 => MIPSProcInst_read_data_1_out(13),
      ADR5 => MIPSProcInst_alu_src_a(1),
      ADR1 => MIPSProcInst_alu_src_a(0),
      O => MIPSProcInst_alu_a_mux_out(13)
    );
  MIPSProcInst_instruction_register_instruction_out_16 : X_FF
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_16_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_16_IN,
      O => MIPSProcInst_instruction_register_instruction_out(16),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result651 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y27",
      INIT => X"00FC00B800B80030"
    )
    port map (
      ADR3 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(13),
      ADR5 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_a_mux_out(13),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result1_split_13_0,
      O => MIPSProcInst_alu_Mmux_alu_result65
    );
  MIPSProcInst_instruction_register_instruction_out_7 : X_FF
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_7_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_7_IN,
      O => MIPSProcInst_instruction_register_instruction_out(7),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out151 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => X"FFAA0000FFF90060"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR4 => procDMemWriteData(22),
      O => MIPSProcInst_alu_b_mux_out(22)
    );
  MIPSProcInst_instruction_register_instruction_out_6 : X_FF
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_6_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_6_IN,
      O => MIPSProcInst_instruction_register_instruction_out(6),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out141 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => X"FBFAFBF901000200"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR5 => procDMemWriteData(21),
      O => MIPSProcInst_alu_b_mux_out(21)
    );
  MIPSProcInst_instruction_register_instruction_out_5 : X_FF
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_5_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_5_IN,
      O => MIPSProcInst_instruction_register_instruction_out(5),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_out1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(22),
      ADR3 => MIPSProcInst_alu_b_mux_out(21),
      ADR4 => MIPSProcInst_alu_b_mux_out(24),
      ADR0 => MIPSProcInst_alu_b_mux_out(23),
      ADR2 => MIPSProcInst_alu_b_mux_out(26),
      ADR5 => MIPSProcInst_alu_b_mux_out(25),
      O => MIPSProcInst_alu_out
    );
  MIPSProcInst_instruction_register_instruction_out_4 : X_FF
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_4_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_4_IN,
      O => MIPSProcInst_instruction_register_instruction_out(4),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out181 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => X"FFFE0010BABB1000"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => procDMemWriteData(25),
      O => MIPSProcInst_alu_b_mux_out(25)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out91 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y29",
      INIT => X"F0F0D1D4F0F0C090"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR2 => procDMemWriteData(17),
      O => MIPSProcInst_alu_b_mux_out(17)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y29",
      INIT => X"F0F0D1D4F0F0C090"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR2 => procDMemWriteData(16),
      O => MIPSProcInst_alu_b_mux_out(16)
    );
  MIPSProcInst_alu_out2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y29",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(16),
      ADR0 => MIPSProcInst_alu_b_mux_out(30),
      ADR4 => MIPSProcInst_alu_b_mux_out(18),
      ADR1 => MIPSProcInst_alu_b_mux_out(17),
      ADR5 => MIPSProcInst_alu_b_mux_out(20),
      ADR2 => MIPSProcInst_alu_b_mux_out(19),
      O => MIPSProcInst_alu_out1_6764
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y29",
      INIT => X"CC88CC88CCD8CCE4"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR1 => procDMemWriteData(19),
      O => MIPSProcInst_alu_b_mux_out(19)
    );
  N85_N85_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_N48,
      O => MIPSProcInst_alu_N48_0
    );
  MIPSProcInst_alu_Sh12811 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y19"
    )
    port map (
      IA => N161,
      IB => N162,
      O => MIPSProcInst_alu_N48,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Sh12811_F : X_LUT6
    generic map(
      LOC => "SLICE_X34Y19",
      INIT => X"F3EEF322C0EEC022"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(5),
      ADR2 => MIPSProcInst_alu_a_mux_out(7),
      ADR4 => MIPSProcInst_alu_a_mux_out(6),
      ADR0 => MIPSProcInst_alu_a_mux_out(4),
      O => N161
    );
  MIPSProcInst_alu_Sh12811_G : X_LUT6
    generic map(
      LOC => "SLICE_X34Y19",
      INIT => X"B8B8B8B8FFCC3300"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(13),
      ADR0 => MIPSProcInst_alu_a_mux_out(15),
      ADR4 => MIPSProcInst_alu_a_mux_out(14),
      ADR3 => MIPSProcInst_alu_a_mux_out(12),
      O => N162
    );
  MIPSProcInst_alu_Sh4411_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y19",
      INIT => X"FFFFFFFFFFFFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      O => N85
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out261 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y19",
      INIT => X"FFCC0000FEFD1020"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR4 => procDMemWriteData(3),
      O => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Mmux_alu_result6282_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y20",
      INIT => X"00FF001D00FFE2FF"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR0 => procDMemWriteData(2),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR5 => MIPSProcInst_alu_Sh1,
      ADR3 => MIPSProcInst_alu_Sh5,
      O => N68
    );
  MIPSProcInst_alu_Mmux_alu_result6242_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y20",
      INIT => X"FFFFFFFFFFFF37BF"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR2 => procDMemWriteData(2),
      ADR0 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR5 => MIPSProcInst_alu_control_out(1),
      O => N96
    );
  MIPSProcInst_write_data_mux_Mmux_data_out321 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y21",
      INIT => X"CCCCCCCCACCCACCC"
    )
    port map (
      ADR4 => '1',
      ADR1 => MIPSProcInst_alu_out_value_out(9),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(9),
      O => MIPSProcInst_write_data_mux_out(9)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out110 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y21",
      INIT => X"ACACAAAAAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(0),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(0),
      O => MIPSProcInst_write_data_mux_out(0)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out231 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y21",
      INIT => X"FBFB0808FFFF0000"
    )
    port map (
      ADR3 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(2),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(2),
      O => MIPSProcInst_write_data_mux_out(2)
    );
  MIPSProcInst_alu_out_value_out_7 : X_FF
    generic map(
      LOC => "SLICE_X34Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_7_CLK,
      I => MIPSProcInst_alu_result_out(7),
      O => MIPSProcInst_alu_out_value_out(7),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6304 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y22",
      INIT => X"EEFFEEFAAAFFAAAA"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_Sh151,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6302_6898,
      ADR5 => MIPSProcInst_alu_N5,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result630,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6301_7015,
      O => MIPSProcInst_alu_result_out(7)
    );
  MIPSProcInst_alu_Mmux_alu_result6302 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y22",
      INIT => X"0000000000001000"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_n0031,
      ADR5 => N64,
      O => MIPSProcInst_alu_Mmux_alu_result6301_7015
    );
  MIPSProcInst_alu_out_value_out_6 : X_FF
    generic map(
      LOC => "SLICE_X34Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_6_CLK,
      I => MIPSProcInst_alu_result_out(6),
      O => MIPSProcInst_alu_out_value_out(6),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6294 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y22",
      INIT => X"FFFFB3B3FFFFA280"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_Sh150,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result629,
      ADR0 => MIPSProcInst_alu_N5,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6292_6924,
      ADR5 => MIPSProcInst_alu_Mmux_alu_result6291_7014,
      O => MIPSProcInst_alu_result_out(6)
    );
  MIPSProcInst_alu_Mmux_alu_result6292 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y22",
      INIT => X"0000000000000040"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_n0031,
      ADR5 => N66,
      O => MIPSProcInst_alu_Mmux_alu_result6291_7014
    );
  MIPSProcInst_alu_Mmux_alu_result6245 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y23",
      INIT => X"000000000F0C000C"
    )
    port map (
      ADR0 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_a_mux_out(30),
      ADR4 => MIPSProcInst_alu_a_mux_out(31),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      O => MIPSProcInst_alu_Mmux_alu_result6244_6912
    );
  MIPSProcInst_alu_Mmux_alu_result6322 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y23",
      INIT => X"000000F00000AACC"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => N76,
      ADR0 => MIPSProcInst_alu_Sh1,
      ADR1 => MIPSProcInst_alu_Sh9,
      ADR2 => MIPSProcInst_alu_Sh5,
      O => MIPSProcInst_alu_Mmux_alu_result6321_6914
    );
  MIPSProcInst_alu_Sh91 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y24",
      INIT => X"CFCFAFA0C0C0AFA0"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(7),
      ADR1 => MIPSProcInst_alu_a_mux_out(6),
      ADR5 => MIPSProcInst_alu_a_mux_out(8),
      ADR3 => MIPSProcInst_alu_a_mux_out(9),
      O => MIPSProcInst_alu_Sh9
    );
  MIPSProcInst_alu_Sh571 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y24",
      INIT => X"2F3F2F0F0D0C0D0F"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR4 => procDMemWriteData(3),
      ADR3 => MIPSProcInst_alu_src_b(1),
      ADR1 => MIPSProcInst_alu_src_b(0),
      ADR2 => N8,
      ADR5 => MIPSProcInst_alu_Sh17,
      O => MIPSProcInst_alu_N130
    );
  MIPSProcInst_alu_Mmux_alu_result6184 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y24",
      INIT => X"CCC40C04C8C00800"
    )
    port map (
      ADR1 => MIPSProcInst_alu_Mmux_alu_result6135,
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR0 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_N30,
      ADR5 => MIPSProcInst_alu_N130,
      ADR4 => MIPSProcInst_alu_Sh41,
      O => MIPSProcInst_alu_Mmux_alu_result6183
    );
  MIPSProcInst_alu_Sh411 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y24",
      INIT => X"5500FAFA55005050"
    )
    port map (
      ADR1 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Sh1,
      ADR2 => MIPSProcInst_alu_Sh9,
      ADR3 => MIPSProcInst_alu_Sh5,
      O => MIPSProcInst_alu_Sh41
    );
  MIPSProcInst_alu_Mmux_alu_result6224_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y25",
      INIT => X"DDDDCCFCDDDDCFFF"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_a_mux_out(29),
      ADR3 => MIPSProcInst_alu_a_mux_out(27),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_Sh21_6826,
      O => N104
    );
  MIPSProcInst_alu_Mmux_alu_result6224_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y25",
      INIT => X"F3F0F3FFF3F5F3F5"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => MIPSProcInst_alu_a_mux_out(28),
      ADR4 => MIPSProcInst_alu_a_mux_out(26),
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_Sh21_6826,
      O => N105
    );
  MIPSProcInst_alu_Mmux_alu_result6224 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y25",
      INIT => X"000000400000C040"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_n0031,
      ADR0 => N104,
      ADR5 => N105,
      O => MIPSProcInst_alu_Mmux_alu_result6223
    );
  MIPSProcInst_alu_Sh1461 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y26",
      INIT => X"CCFFAAF0CC00AAF0"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_Sh126,
      ADR2 => MIPSProcInst_alu_Sh114,
      ADR0 => MIPSProcInst_alu_Sh118,
      ADR5 => MIPSProcInst_alu_Sh122,
      O => MIPSProcInst_alu_Sh146
    );
  MIPSProcInst_alu_Sh1101 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y26",
      INIT => X"FC0CAFAFFC0CA0A0"
    )
    port map (
      ADR5 => MIPSProcInst_alu_a_mux_out(14),
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(16),
      ADR3 => MIPSProcInst_alu_a_mux_out(17),
      ADR1 => MIPSProcInst_alu_a_mux_out(15),
      O => MIPSProcInst_alu_Sh110
    );
  MIPSProcInst_alu_Sh1181 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y26",
      INIT => X"FA50FA50EEEE4444"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(25),
      ADR1 => MIPSProcInst_alu_a_mux_out(22),
      ADR2 => MIPSProcInst_alu_a_mux_out(24),
      ADR4 => MIPSProcInst_alu_a_mux_out(23),
      O => MIPSProcInst_alu_Sh118
    );
  MIPSProcInst_alu_Sh13811 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y26",
      INIT => X"B8AAB8B8B8AAAAAA"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR5 => procDMemWriteData(3),
      ADR1 => MIPSProcInst_alu_src_b(0),
      ADR4 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_Sh110,
      ADR2 => MIPSProcInst_alu_Sh118,
      O => MIPSProcInst_alu_N54
    );
  MIPSProcInst_alu_Sh81 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y27",
      INIT => X"FA0AFA0ACFCFC0C0"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(8),
      ADR1 => MIPSProcInst_alu_a_mux_out(6),
      ADR3 => MIPSProcInst_alu_a_mux_out(5),
      ADR0 => MIPSProcInst_alu_a_mux_out(7),
      O => MIPSProcInst_alu_Sh8
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out301 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y27",
      INIT => X"3E32FAFA0E020A0A"
    )
    port map (
      ADR0 => MIPSProcInst_pc_pc_out(7),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(7),
      ADR5 => MIPSProcInst_read_data_1_out(7),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR2 => MIPSProcInst_alu_src_a(0),
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(7)
    );
  MIPSProcInst_alu_Sh61 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y27",
      INIT => X"EEEE4444FA50FA50"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(6),
      ADR1 => MIPSProcInst_alu_a_mux_out(4),
      ADR4 => MIPSProcInst_alu_a_mux_out(3),
      ADR3 => MIPSProcInst_alu_a_mux_out(5),
      O => MIPSProcInst_alu_Sh6
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out281 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y27",
      INIT => X"00AAAAAACCF0F0F0"
    )
    port map (
      ADR2 => MIPSProcInst_pc_pc_out(5),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR0 => MIPSProcInst_read_data_1_out(5),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR5 => MIPSProcInst_alu_src_a(0),
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(5)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out291 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y28",
      INIT => X"FCFEFCFB00020008"
    )
    port map (
      ADR0 => MIPSProcInst_instruction_register_instruction_out(6),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR5 => procDMemWriteData(6),
      O => MIPSProcInst_alu_b_mux_out(6)
    );
  MIPSProcInst_alu_Mmux_alu_result6241 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y29",
      INIT => X"5440555554400000"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR2 => MIPSProcInst_alu_a_mux_out(30),
      ADR3 => MIPSProcInst_alu_b_mux_out(30),
      ADR5 => MIPSProcInst_alu_Mmux_alu_result1_split_30_0,
      O => MIPSProcInst_alu_Mmux_alu_result624_6913
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out241 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y29",
      INIT => X"FFDC0010FEDD1000"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR4 => procDMemWriteData(30),
      O => MIPSProcInst_alu_b_mux_out(30)
    );
  MIPSProcInst_alu_Mmux_alu_result6235_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y20",
      INIT => X"FFFFFFFF5555FD75"
    )
    port map (
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR2 => procDMemWriteData(2),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      O => N62
    );
  MIPSProcInst_write_data_mux_Mmux_data_out121 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y21",
      INIT => X"FFFF0000AFFFA000"
    )
    port map (
      ADR1 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(1),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(1),
      O => MIPSProcInst_write_data_mux_out(1)
    );
  MIPSProcInst_alu_Mmux_alu_result6242_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y21",
      INIT => X"0FFFFFFF0FFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_control_out(0),
      ADR5 => N6,
      ADR2 => MIPSProcInst_alu_Sh18,
      O => N107
    );
  MIPSProcInst_write_data_mux_Mmux_data_out301 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y21",
      INIT => X"FFF50A00FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(7),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => procDMemReadData(7),
      O => MIPSProcInst_write_data_mux_out(7)
    );
  MIPSProcInst_alu_control_alu_control_out_3_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y22",
      INIT => X"05050000A0A00505"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(2),
      O => N42
    );
  MIPSProcInst_write_data_mux_Mmux_data_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y22",
      INIT => X"AAF0AAAAAAAAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(16),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR2 => procDMemReadData(16),
      O => MIPSProcInst_write_data_mux_out(16)
    );
  MIPSProcInst_alu_out_value_out_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_5_CLK,
      I => MIPSProcInst_alu_result_out(5),
      O => MIPSProcInst_alu_out_value_out(5),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6284 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y23",
      INIT => X"ECECECECFFFFFCCC"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(4),
      ADR2 => MIPSProcInst_alu_N5,
      ADR1 => MIPSProcInst_alu_Mmux_alu_result628,
      ADR0 => MIPSProcInst_alu_Sh149,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6282_6922,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6281_7021,
      O => MIPSProcInst_alu_result_out(5)
    );
  MIPSProcInst_alu_Mmux_alu_result6282 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y23",
      INIT => X"0000000000000040"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR5 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR4 => MIPSProcInst_alu_n0031,
      ADR0 => N68,
      O => MIPSProcInst_alu_Mmux_alu_result6281_7021
    );
  MIPSProcInst_alu_Mmux_alu_result6273 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y23",
      INIT => X"A0A0A0A0F0E0A0E0"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(4),
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_N48_0,
      ADR4 => MIPSProcInst_alu_N56,
      ADR0 => MIPSProcInst_alu_Mmux_alu_result6271_6918,
      O => MIPSProcInst_alu_Mmux_alu_result6272_7020
    );
  MIPSProcInst_alu_out_value_out_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_alu_out_value_out_4_CLK,
      I => MIPSProcInst_alu_result_out(4),
      O => MIPSProcInst_alu_out_value_out(4),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6275 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y23",
      INIT => X"F5F5F5F0F0F0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_n0031,
      ADR2 => MIPSProcInst_alu_Mmux_alu_result627,
      ADR3 => MIPSProcInst_alu_Mmux_alu_result6273_6919,
      ADR4 => MIPSProcInst_alu_Mmux_alu_result6272_7020,
      O => MIPSProcInst_alu_result_out(4)
    );
  MIPSProcInst_alu_Mmux_alu_result6215 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y24",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => MIPSProcInst_alu_b_mux_out(3),
      ADR3 => MIPSProcInst_alu_Sh124,
      O => MIPSProcInst_alu_Mmux_alu_result6214_6669
    );
  MIPSProcInst_alu_Sh1241 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y24",
      INIT => X"EFEAE5E04F4A4540"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(0),
      ADR0 => MIPSProcInst_alu_b_mux_out(1),
      ADR3 => MIPSProcInst_alu_a_mux_out(28),
      ADR1 => MIPSProcInst_alu_a_mux_out(29),
      ADR4 => MIPSProcInst_alu_a_mux_out(30),
      ADR5 => MIPSProcInst_alu_a_mux_out(31),
      O => MIPSProcInst_alu_Sh124
    );
  MIPSProcInst_alu_Sh14411 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y24",
      INIT => X"F3F2C0D0F1F0E0F0"
    )
    port map (
      ADR5 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR3 => procDMemWriteData(3),
      ADR0 => MIPSProcInst_alu_src_b(1),
      ADR1 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_alu_Sh116,
      ADR4 => MIPSProcInst_alu_Sh124,
      O => MIPSProcInst_alu_N56
    );
  MIPSProcInst_alu_Sh1501 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y25",
      INIT => X"55E400E455E400E4"
    )
    port map (
      ADR5 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(2),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR2 => MIPSProcInst_alu_Sh126,
      ADR1 => MIPSProcInst_alu_Sh118,
      ADR4 => MIPSProcInst_alu_Sh122,
      O => MIPSProcInst_alu_Sh150
    );
  MIPSProcInst_alu_Sh1501_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y25",
      INIT => X"CCCCE2E2FFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR0 => procDMemWriteData(4),
      ADR5 => MIPSProcInst_alu_control_out(1),
      O => N74
    );
  MIPSProcInst_alu_Mmux_alu_result6152 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y25",
      INIT => X"0500050054540404"
    )
    port map (
      ADR5 => MIPSProcInst_alu_b_mux_out(2),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR0 => N74,
      ADR4 => MIPSProcInst_alu_Sh126,
      ADR1 => MIPSProcInst_alu_Sh118,
      ADR3 => MIPSProcInst_alu_Sh122,
      O => MIPSProcInst_alu_Mmux_alu_result6152_6901
    );
  MIPSProcInst_alu_Sh1261 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y25",
      INIT => X"00000000FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(30),
      ADR3 => MIPSProcInst_alu_a_mux_out(31),
      O => MIPSProcInst_alu_Sh126
    );
  MIPSProcInst_alu_Sh13611 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y26",
      INIT => X"FFFF3210CDEF0000"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR2 => procDMemWriteData(3),
      ADR0 => MIPSProcInst_alu_src_b(1),
      ADR1 => MIPSProcInst_alu_src_b(0),
      ADR4 => MIPSProcInst_alu_Sh108,
      ADR5 => MIPSProcInst_alu_Sh116,
      O => MIPSProcInst_alu_N52
    );
  MIPSProcInst_alu_Sh1081 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y26",
      INIT => X"BBBB8888FC30FC30"
    )
    port map (
      ADR4 => MIPSProcInst_alu_a_mux_out(13),
      ADR2 => MIPSProcInst_alu_a_mux_out(12),
      ADR3 => MIPSProcInst_alu_a_mux_out(14),
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(15),
      O => MIPSProcInst_alu_Sh108
    );
  MIPSProcInst_alu_Mmux_alu_result6161 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y26",
      INIT => X"5440555554400000"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR3 => MIPSProcInst_alu_b_mux_out(23),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR1 => MIPSProcInst_alu_a_mux_out(23),
      ADR5 => MIPSProcInst_alu_Mmux_alu_result1_split_23_0,
      O => MIPSProcInst_alu_Mmux_alu_result6161_6911
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out161 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y26",
      INIT => X"EF01EE00EF04EB00"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR3 => procDMemWriteData(23),
      O => MIPSProcInst_alu_b_mux_out(23)
    );
  MIPSProcInst_alu_Mmux_alu_result6175_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y27",
      INIT => X"FFEFFFE5FFFFFFFF"
    )
    port map (
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR4 => N117,
      ADR3 => MIPSProcInst_alu_n0031,
      O => N87
    );
  MIPSProcInst_write_register_mux_Mmux_data_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y27",
      INIT => X"CCCCDCCCCCCC8CCC"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(20),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_instruction_register_instruction_out(15),
      O => MIPSProcInst_write_register_mux_out(4)
    );
  MIPSProcInst_pc_mux_Mmux_data_out301 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y27",
      INIT => X"22222222FCFC3030"
    )
    port map (
      ADR3 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(7),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(7),
      ADR1 => MIPSProcInst_pc_source(0),
      ADR5 => MIPSProcInst_pc_source(1),
      ADR2 => MIPSProcInst_alu_result_out(7),
      O => MIPSProcInst_pc_mux_out(7)
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y27",
      INIT => X"AAAAAA00AAAAACCA"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(14),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_3_6814,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => procDMemWriteData(14),
      O => MIPSProcInst_alu_b_mux_out(14)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out141 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y28",
      INIT => X"FF22FF00DD00FF00"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(21),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => procDMemReadData(21),
      O => MIPSProcInst_write_data_mux_out(21)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out131 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y28",
      INIT => X"ACACAAAAAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(20),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(20),
      O => MIPSProcInst_write_data_mux_out(20)
    );
  MIPSProcInst_alu_Mmux_alu_result681 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y29",
      INIT => X"00000000FDD5A880"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_b_mux_out(16),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_a_mux_out(16),
      ADR4 => MIPSProcInst_alu_Mmux_alu_result1_split_16_0,
      O => MIPSProcInst_alu_Mmux_alu_result68
    );
  MIPSProcInst_alu_Mmux_alu_result6132 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y29",
      INIT => X"0000000804000408"
    )
    port map (
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR5 => N117,
      ADR2 => MIPSProcInst_alu_n0031,
      O => MIPSProcInst_alu_Mmux_alu_result6132_6891
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out131 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y29",
      INIT => X"FF00FF00DC10D940"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR3 => procDMemWriteData(20),
      O => MIPSProcInst_alu_b_mux_out(20)
    );
  MIPSProcInst_alu_N57_MIPSProcInst_alu_N57_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_N57,
      O => MIPSProcInst_alu_N57_0
    );
  MIPSProcInst_alu_Sh14511 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y19"
    )
    port map (
      IA => N167,
      IB => N168,
      O => MIPSProcInst_alu_N57,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Sh14511_F : X_LUT6
    generic map(
      LOC => "SLICE_X36Y19",
      INIT => X"AFAFFC0CA0A0FC0C"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(22),
      ADR0 => MIPSProcInst_alu_a_mux_out(24),
      ADR3 => MIPSProcInst_alu_a_mux_out(23),
      ADR1 => MIPSProcInst_alu_a_mux_out(21),
      O => N167
    );
  MIPSProcInst_alu_Sh14511_G : X_LUT6
    generic map(
      LOC => "SLICE_X36Y19",
      INIT => X"0A0AFF0F0A0AF000"
    )
    port map (
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(29),
      ADR0 => MIPSProcInst_alu_a_mux_out(30),
      ADR3 => MIPSProcInst_alu_a_mux_out(31),
      O => N168
    );
  MIPSProcInst_alu_Mmux_alu_result6293 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y20",
      INIT => X"FFFFCEDF31200000"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR3 => procDMemWriteData(2),
      ADR0 => MIPSProcInst_alu_src_b(1),
      ADR1 => MIPSProcInst_alu_src_b(0),
      ADR5 => MIPSProcInst_alu_N50_0,
      ADR4 => MIPSProcInst_alu_N114,
      O => MIPSProcInst_alu_Mmux_alu_result6292_6924
    );
  MIPSProcInst_alu_Sh1061 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y20",
      INIT => X"AACCAACCFFF000F0"
    )
    port map (
      ADR0 => MIPSProcInst_alu_a_mux_out(13),
      ADR4 => MIPSProcInst_alu_a_mux_out(12),
      ADR5 => MIPSProcInst_alu_b_mux_out(0),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(10),
      ADR1 => MIPSProcInst_alu_a_mux_out(11),
      O => MIPSProcInst_alu_Sh106
    );
  MIPSProcInst_alu_Sh1141 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y20",
      INIT => X"F5F5EE44A0A0EE44"
    )
    port map (
      ADR0 => MIPSProcInst_alu_b_mux_out(0),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(20),
      ADR2 => MIPSProcInst_alu_a_mux_out(21),
      ADR3 => MIPSProcInst_alu_a_mux_out(19),
      ADR1 => MIPSProcInst_alu_a_mux_out(18),
      O => MIPSProcInst_alu_Sh114
    );
  MIPSProcInst_alu_Sh13411 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y20",
      INIT => X"AAFBAA08AAEAAA2A"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR5 => procDMemWriteData(3),
      ADR1 => MIPSProcInst_alu_src_b(1),
      ADR3 => MIPSProcInst_alu_src_b(0),
      ADR0 => MIPSProcInst_alu_Sh106,
      ADR4 => MIPSProcInst_alu_Sh114,
      O => MIPSProcInst_alu_N114
    );
  MIPSProcInst_pc_pc_out_31 : X_FF
    generic map(
      LOC => "SLICE_X36Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_31_CLK,
      I => MIPSProcInst_pc_pc_out_31_rstpot_5684,
      O => MIPSProcInst_pc_pc_out(31),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X36Y21",
      INIT => X"50DDF0F05088F0F0"
    )
    port map (
      ADR1 => MIPSProcInst_alu_out_value_out(31),
      ADR0 => MIPSProcInst_pc_source(0),
      ADR3 => MIPSProcInst_pc_source(1),
      ADR2 => MIPSProcInst_pc_pc_out(31),
      ADR5 => MIPSProcInst_alu_result_out_31_0,
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_31_rstpot_5684
    );
  MIPSProcInst_pc_pc_out_30 : X_FF
    generic map(
      LOC => "SLICE_X36Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_30_CLK,
      I => MIPSProcInst_pc_pc_out_30_rstpot_5692,
      O => MIPSProcInst_pc_pc_out(30),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X36Y21",
      INIT => X"5E0EFFFF54040000"
    )
    port map (
      ADR3 => MIPSProcInst_alu_out_value_out(30),
      ADR2 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_pc_pc_out(30),
      ADR1 => MIPSProcInst_alu_result_out(30),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_30_rstpot_5692
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out241 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y22",
      INIT => X"F0F0FAFCFAFCFAFC"
    )
    port map (
      ADR1 => MIPSProcInst_pc_pc_out(30),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR0 => MIPSProcInst_read_data_1_out(30),
      ADR3 => MIPSProcInst_alu_src_a(0),
      ADR2 => MIPSProcInst_N86,
      ADR5 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(30)
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out221 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y22",
      INIT => X"F0FEFEFEF0F4F4F4"
    )
    port map (
      ADR1 => MIPSProcInst_pc_pc_out(29),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR5 => MIPSProcInst_read_data_1_out(29),
      ADR0 => MIPSProcInst_alu_src_a(0),
      ADR2 => MIPSProcInst_N86,
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(29)
    );
  MIPSProcInst_alu_Sh1251 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y22",
      INIT => X"0AFF0AF00A0F0A00"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(29),
      ADR0 => MIPSProcInst_alu_a_mux_out(30),
      ADR5 => MIPSProcInst_alu_a_mux_out(31),
      O => MIPSProcInst_alu_Sh125
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out251 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y22",
      INIT => X"FFFFFFFF54FC1030"
    )
    port map (
      ADR2 => MIPSProcInst_pc_pc_out(31),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR4 => MIPSProcInst_read_data_1_out(31),
      ADR1 => MIPSProcInst_alu_src_a(0),
      ADR5 => MIPSProcInst_N86,
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(31)
    );
  MIPSProcInst_alu_Mmux_alu_result6244_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y23",
      INIT => X"FF10FFBAFF15FFBF"
    )
    port map (
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(3),
      ADR1 => MIPSProcInst_alu_a_mux_out(28),
      ADR5 => MIPSProcInst_alu_a_mux_out(30),
      ADR3 => MIPSProcInst_alu_control_out(1),
      ADR4 => MIPSProcInst_alu_Sh22,
      O => N101
    );
  MIPSProcInst_write_data_mux_Mmux_data_out281 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y23",
      INIT => X"CACACCCCCCCCCCCC"
    )
    port map (
      ADR3 => '1',
      ADR1 => MIPSProcInst_alu_out_value_out(5),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(5),
      O => MIPSProcInst_write_data_mux_out(5)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out271 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y23",
      INIT => X"AACCAAAAAAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => MIPSProcInst_alu_out_value_out(4),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(4),
      O => MIPSProcInst_write_data_mux_out(4)
    );
  MIPSProcInst_alu_Sh51 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y24",
      INIT => X"FFCCE2E23300E2E2"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(2),
      ADR4 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(5),
      ADR3 => MIPSProcInst_alu_a_mux_out(3),
      ADR2 => MIPSProcInst_alu_a_mux_out(4),
      O => MIPSProcInst_alu_Sh5
    );
  MIPSProcInst_alu_Mmux_alu_result6144 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y24",
      INIT => X"0A0A0E0400000000"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR1 => procDMemWriteData(4),
      ADR0 => MIPSProcInst_alu_src_b(1),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => MIPSProcInst_alu_Sh5,
      O => MIPSProcInst_alu_Mmux_alu_result6144_6887
    );
  MIPSProcInst_alu_Mmux_alu_result6271 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y24",
      INIT => X"5454550040405500"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR1 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(4),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_4_0,
      O => MIPSProcInst_alu_Mmux_alu_result627
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out271 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y24",
      INIT => X"00AAAAAACCF0F0F0"
    )
    port map (
      ADR2 => MIPSProcInst_pc_pc_out(4),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR0 => MIPSProcInst_read_data_1_out(4),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR5 => MIPSProcInst_alu_src_a(0),
      ADR3 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(4)
    );
  MIPSProcInst_alu_Sh211 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y25",
      INIT => X"BFB38F83BCB08C80"
    )
    port map (
      ADR1 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR5 => MIPSProcInst_alu_a_mux_out(21),
      ADR3 => MIPSProcInst_alu_a_mux_out(20),
      ADR4 => MIPSProcInst_alu_a_mux_out(19),
      ADR0 => MIPSProcInst_alu_a_mux_out(18),
      O => MIPSProcInst_alu_Sh21_6826
    );
  MIPSProcInst_alu_Sh5311 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y25",
      INIT => X"FF45FF40BA00BF00"
    )
    port map (
      ADR1 => MIPSProcInst_instruction_register_instruction_out(3),
      ADR4 => procDMemWriteData(3),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR5 => MIPSProcInst_alu_Sh13,
      ADR3 => MIPSProcInst_alu_Sh21_6826,
      O => MIPSProcInst_alu_N30
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_2 : X_FF
    generic map(
      LOC => "SLICE_X36Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_2_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_2_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd1_2_6884,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_In211 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y25",
      INIT => X"0000000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd3_1_6847,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd1_1_6848,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd4_1_6849,
      O => MIPSProcInst_alu_src_b(0)
    );
  MIPSProcInst_control_unit_state_FSM_FFd1_1 : X_FF
    generic map(
      LOC => "SLICE_X36Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_1_CLK,
      I => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_1_IN,
      O => MIPSProcInst_control_unit_state_FSM_FFd1_1_6848,
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out111 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y25",
      INIT => X"FF44FFCCFF50FFF0"
    )
    port map (
      ADR2 => MIPSProcInst_pc_pc_out(19),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR1 => MIPSProcInst_read_data_1_out(19),
      ADR5 => MIPSProcInst_alu_src_a(0),
      ADR3 => MIPSProcInst_N86,
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(19)
    );
  MIPSProcInst_pc_mux_Mmux_data_out271 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y26",
      INIT => X"7755331166442200"
    )
    port map (
      ADR2 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(4),
      ADR4 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR0 => MIPSProcInst_pc_source(0),
      ADR1 => MIPSProcInst_pc_source(1),
      ADR5 => MIPSProcInst_alu_result_out(4),
      O => MIPSProcInst_pc_mux_out(4)
    );
  MIPSProcInst_alu_Mmux_alu_result671 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y26",
      INIT => X"00000000FCB8B830"
    )
    port map (
      ADR5 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(15),
      ADR4 => MIPSProcInst_alu_control_out(0),
      ADR3 => MIPSProcInst_alu_a_mux_out(15),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result1_split_15_0,
      O => MIPSProcInst_alu_Mmux_alu_result67
    );
  MIPSProcInst_alu_a_mux_out_1_MIPSProcInst_alu_a_mux_out_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result6125_5817,
      O => MIPSProcInst_alu_Mmux_alu_result6125_0
    );
  MIPSProcInst_alu_Mmux_alu_result6125 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y27"
    )
    port map (
      IA => N157,
      IB => N158,
      O => MIPSProcInst_alu_Mmux_alu_result6125_5817,
      SEL => MIPSProcInst_alu_b_mux_out(3)
    );
  MIPSProcInst_alu_Mmux_alu_result6125_F : X_LUT6
    generic map(
      LOC => "SLICE_X36Y27",
      INIT => X"F0CCF0CCFFAA00AA"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR5 => MIPSProcInst_alu_b_mux_out(1),
      ADR4 => MIPSProcInst_alu_a_mux_out(2),
      ADR2 => MIPSProcInst_alu_a_mux_out(4),
      ADR1 => MIPSProcInst_alu_a_mux_out(3),
      ADR0 => MIPSProcInst_alu_a_mux_out(1),
      O => N157
    );
  MIPSProcInst_alu_Mmux_alu_result6125_G : X_LUT6
    generic map(
      LOC => "SLICE_X36Y27",
      INIT => X"FCBB30BBFC883088"
    )
    port map (
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(10),
      ADR4 => MIPSProcInst_alu_a_mux_out(12),
      ADR0 => MIPSProcInst_alu_a_mux_out(11),
      ADR5 => MIPSProcInst_alu_a_mux_out(9),
      O => N158
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out121 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y27",
      INIT => X"33E2E2E200E2E2E2"
    )
    port map (
      ADR0 => MIPSProcInst_pc_pc_out(1),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR2 => MIPSProcInst_read_data_1_out(1),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR1 => MIPSProcInst_alu_src_a(0),
      ADR4 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(1)
    );
  MIPSProcInst_alu_Sh9611 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y27",
      INIT => X"F0FFF000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => MIPSProcInst_alu_a_mux_out(1),
      ADR2 => MIPSProcInst_alu_a_mux_out(3),
      ADR3 => MIPSProcInst_alu_b_mux_out(1),
      O => MIPSProcInst_alu_N33
    );
  MIPSProcInst_pc_pc_out_7 : X_FF
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_7_CLK,
      I => MIPSProcInst_pc_pc_out_7_rstpot_5846,
      O => MIPSProcInst_pc_pc_out(7),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => X"CCFFCCFFCC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => MIPSProcInst_pc_pc_out(7),
      ADR1 => MIPSProcInst_pc_mux_out(7),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_7_rstpot_5846
    );
  MIPSProcInst_pc_pc_out_6 : X_FF
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_6_CLK,
      I => MIPSProcInst_pc_pc_out_6_rstpot_5852,
      O => MIPSProcInst_pc_pc_out(6),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => X"CCFFCC00CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(6),
      ADR1 => MIPSProcInst_pc_mux_out(6),
      ADR3 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_6_rstpot_5852
    );
  MIPSProcInst_pc_pc_out_5 : X_FF
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_5_CLK,
      I => MIPSProcInst_pc_pc_out_5_rstpot_5857,
      O => MIPSProcInst_pc_pc_out(5),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => MIPSProcInst_pc_pc_out(5),
      ADR0 => MIPSProcInst_pc_mux_out(5),
      ADR4 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_5_rstpot_5857
    );
  MIPSProcInst_pc_pc_out_4 : X_FF
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MIPSProcInst_pc_pc_out_4_CLK,
      I => MIPSProcInst_pc_pc_out_4_rstpot_5862,
      O => MIPSProcInst_pc_pc_out(4),
      RST => HostCommInst_procResetSignal_6587,
      SET => GND
    );
  MIPSProcInst_pc_pc_out_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X36Y28",
      INIT => X"FF00FF00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MIPSProcInst_pc_pc_out(4),
      ADR3 => MIPSProcInst_pc_mux_out(4),
      ADR5 => MIPSProcInst_pc_write_enable,
      O => MIPSProcInst_pc_pc_out_4_rstpot_5862
    );
  MIPSProcInst_alu_Mmux_alu_result6292_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y21",
      INIT => X"33330F2733331B33"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR5 => procDMemWriteData(2),
      ADR4 => MIPSProcInst_alu_src_b(0),
      ADR0 => MIPSProcInst_alu_src_b(1),
      ADR2 => MIPSProcInst_alu_Mmux_alu_result6233_6618,
      ADR1 => MIPSProcInst_alu_Sh6,
      O => N66
    );
  MIPSProcInst_write_data_mux_Mmux_data_out291 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y21",
      INIT => X"F0F0F0F0FA50F0F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(6),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR3 => procDMemReadData(6),
      O => MIPSProcInst_write_data_mux_out(6)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out91 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y22",
      INIT => X"F0F0F0F0AAF0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(17),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(17),
      O => MIPSProcInst_write_data_mux_out(17)
    );
  MIPSProcInst_alu_Mmux_alu_result6225 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y22",
      INIT => X"0233023002030200"
    )
    port map (
      ADR4 => MIPSProcInst_alu_a_mux_out(29),
      ADR0 => MIPSProcInst_alu_a_mux_out(30),
      ADR5 => MIPSProcInst_alu_a_mux_out(31),
      ADR3 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      O => MIPSProcInst_alu_Mmux_alu_result6224_6895
    );
  MIPSProcInst_pc_mux_Mmux_data_out281 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y23",
      INIT => X"5555F5A00000F5A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(5),
      ADR5 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR0 => MIPSProcInst_pc_source(0),
      ADR4 => MIPSProcInst_pc_source(1),
      ADR3 => MIPSProcInst_alu_result_out(5),
      O => MIPSProcInst_pc_mux_out(5)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out241 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y23",
      INIT => X"FFDD0088FFFF0000"
    )
    port map (
      ADR2 => '1',
      ADR4 => MIPSProcInst_alu_out_value_out(30),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR1 => procDMemReadData(30),
      O => MIPSProcInst_write_data_mux_out(30)
    );
  MIPSProcInst_write_data_mux_Mmux_data_out221 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y23",
      INIT => X"FF0AF500FF00FF00"
    )
    port map (
      ADR1 => '1',
      ADR3 => MIPSProcInst_alu_out_value_out(29),
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR4 => procDMemReadData(29),
      O => MIPSProcInst_write_data_mux_out(29)
    );
  MIPSProcInst_alu_control_n0082_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y24",
      INIT => X"000000000C100000"
    )
    port map (
      ADR2 => MIPSProcInst_instruction_register_instruction_out(1),
      ADR0 => MIPSProcInst_instruction_register_instruction_out(0),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(5),
      ADR1 => MIPSProcInst_instruction_register_instruction_out(2),
      ADR5 => MIPSProcInst_alu_op(0),
      ADR4 => MIPSProcInst_N193,
      O => MIPSProcInst_alu_control_out(1)
    );
  MIPSProcInst_alu_control_n0082_1_21 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y24",
      INIT => X"0001000002020000"
    )
    port map (
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_1_6848,
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_1_6849,
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_1_6850,
      ADR1 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd3_2_6882,
      ADR2 => MIPSProcInst_instruction_register_instruction_out(3),
      O => MIPSProcInst_N193
    );
  MIPSProcInst_alu_Sh71 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y25",
      INIT => X"CFCFFA0AC0C0FA0A"
    )
    port map (
      ADR4 => MIPSProcInst_alu_b_mux_out(0),
      ADR2 => MIPSProcInst_alu_b_mux_out(1),
      ADR0 => MIPSProcInst_alu_a_mux_out(7),
      ADR3 => MIPSProcInst_alu_a_mux_out(5),
      ADR1 => MIPSProcInst_alu_a_mux_out(4),
      ADR5 => MIPSProcInst_alu_a_mux_out(6),
      O => MIPSProcInst_alu_Sh7
    );
  MIPSProcInst_alu_Mmux_alu_result6164 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y25",
      INIT => X"3121000030200000"
    )
    port map (
      ADR3 => MIPSProcInst_instruction_register_instruction_out(4),
      ADR5 => procDMemWriteData(4),
      ADR2 => MIPSProcInst_alu_src_b(1),
      ADR0 => MIPSProcInst_alu_src_b(0),
      ADR1 => MIPSProcInst_alu_b_mux_out(3),
      ADR4 => MIPSProcInst_alu_Sh7,
      O => MIPSProcInst_alu_Mmux_alu_result6164_6888
    );
  MIPSProcInst_alu_Mmux_alu_result6291 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y25",
      INIT => X"3232330020203300"
    )
    port map (
      ADR1 => MIPSProcInst_alu_control_out(2),
      ADR4 => MIPSProcInst_alu_control_out(1),
      ADR0 => MIPSProcInst_alu_b_mux_out(6),
      ADR2 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(6),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_6_0,
      O => MIPSProcInst_alu_Mmux_alu_result629
    );
  MIPSProcInst_alu_a_mux_Mmux_data_out291 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y25",
      INIT => X"5050F0F0EE44CCCC"
    )
    port map (
      ADR1 => MIPSProcInst_pc_pc_out(6),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(6),
      ADR2 => MIPSProcInst_read_data_1_out(6),
      ADR4 => MIPSProcInst_control_unit_state_FSM_FFd2_2_6570,
      ADR5 => MIPSProcInst_alu_src_a(0),
      ADR0 => MIPSProcInst_alu_src_b(0),
      O => MIPSProcInst_alu_a_mux_out(6)
    );
  MIPSProcInst_alu_Mmux_alu_result6281 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y26",
      INIT => X"5544514051401100"
    )
    port map (
      ADR0 => MIPSProcInst_alu_control_out(2),
      ADR1 => MIPSProcInst_alu_control_out(1),
      ADR2 => MIPSProcInst_alu_b_mux_out(5),
      ADR4 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(5),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_5_0,
      O => MIPSProcInst_alu_Mmux_alu_result628
    );
  MIPSProcInst_write_data_mux_Mmux_data_out161 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y26",
      INIT => X"CCCCCCCCACCCACCC"
    )
    port map (
      ADR4 => '1',
      ADR1 => MIPSProcInst_alu_out_value_out(23),
      ADR5 => MIPSProcInst_control_unit_state_FSM_FFd4_6097,
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_6098,
      ADR0 => procDMemReadData(23),
      O => MIPSProcInst_write_data_mux_out(23)
    );
  MIPSProcInst_pc_mux_out_6_MIPSProcInst_pc_mux_out_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_Mmux_alu_result6123,
      O => MIPSProcInst_alu_Mmux_alu_result6123_0
    );
  MIPSProcInst_pc_mux_Mmux_data_out291 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y27",
      INIT => X"50505050EE44EE44"
    )
    port map (
      ADR4 => '1',
      ADR2 => MIPSProcInst_alu_out_value_out(6),
      ADR3 => MIPSProcInst_instruction_register_instruction_out(6),
      ADR5 => MIPSProcInst_pc_source(0),
      ADR0 => MIPSProcInst_pc_source(1),
      ADR1 => MIPSProcInst_alu_result_out(6),
      O => MIPSProcInst_pc_mux_out(6)
    );
  MIPSProcInst_alu_Mmux_alu_result6114 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y27",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => MIPSProcInst_alu_b_mux_out(3),
      ADR5 => '1',
      O => MIPSProcInst_alu_Mmux_alu_result614
    );
  MIPSProcInst_alu_Mmux_alu_result6243 : X_LUT5
    generic map(
      LOC => "SLICE_X37Y27",
      INIT => X"00000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => MIPSProcInst_alu_b_mux_out(4),
      ADR4 => MIPSProcInst_alu_b_mux_out(2),
      ADR3 => '1',
      O => MIPSProcInst_alu_Mmux_alu_result6123
    );
  MIPSProcInst_instruction_register_instruction_out_3 : X_FF
    generic map(
      LOC => "SLICE_X37Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_3_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_3_IN,
      O => MIPSProcInst_instruction_register_instruction_out(3),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_2 : X_FF
    generic map(
      LOC => "SLICE_X37Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_2_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_2_IN,
      O => MIPSProcInst_instruction_register_instruction_out(2),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_1 : X_FF
    generic map(
      LOC => "SLICE_X37Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_1_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_1_IN,
      O => MIPSProcInst_instruction_register_instruction_out(1),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_instruction_register_instruction_out_0 : X_FF
    generic map(
      LOC => "SLICE_X37Y28",
      INIT => '0'
    )
    port map (
      CE => MIPSProcInst_ir_write_0,
      CLK => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_0_CLK,
      I => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_0_IN,
      O => MIPSProcInst_instruction_register_instruction_out(0),
      RST => GND,
      SET => GND
    );
  MIPSProcInst_alu_Mmux_alu_result6171 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y29",
      INIT => X"0F0A0D080D080500"
    )
    port map (
      ADR2 => MIPSProcInst_alu_control_out(2),
      ADR0 => MIPSProcInst_alu_control_out(1),
      ADR1 => MIPSProcInst_alu_b_mux_out(24),
      ADR4 => MIPSProcInst_alu_control_out(0),
      ADR5 => MIPSProcInst_alu_a_mux_out(24),
      ADR3 => MIPSProcInst_alu_Mmux_alu_result1_split_24_0,
      O => MIPSProcInst_alu_Mmux_alu_result617
    );
  MIPSProcInst_alu_b_mux_Mmux_data_out171 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y29",
      INIT => X"FFBBFEAB01100000"
    )
    port map (
      ADR4 => MIPSProcInst_instruction_register_instruction_out(15),
      ADR3 => MIPSProcInst_control_unit_state_FSM_FFd3_6089,
      ADR0 => MIPSProcInst_control_unit_state_FSM_FFd1_6087,
      ADR1 => MIPSProcInst_control_unit_state_FSM_FFd4_2_6885,
      ADR2 => MIPSProcInst_control_unit_state_FSM_FFd2_4_6821,
      ADR5 => procDMemWriteData(24),
      O => MIPSProcInst_alu_b_mux_out(24)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(4),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(3),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(2),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(1),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(0),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRAWRADDR(5)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_15_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(31),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(15)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_14_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(30),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(14)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_13_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(29),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(13)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(28),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(12)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(27),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(11)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(26),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(10)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(25),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(24),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(23),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(22),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(21),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(5)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(20),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(4)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(19),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(3)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(18),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(2)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(17),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(1)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIBDI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(16),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIBDI(0)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_15_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(15),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(15)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_14_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(14),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(14)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_13_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(13),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(13)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(12),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(12)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(11),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(11)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(10),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(10)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(9),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(8),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(7),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(6),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(5),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(5)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(4),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(4)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(3),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(3)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(2),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(2)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(1),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(1)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_DIADI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(0),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_DIADI(0)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(25),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(24),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(23),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(22),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(21),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file_ADDRBRDADDR(5)
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(5),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(6),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(7),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(0),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(1),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(2),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(3),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_pc_pc_out(4),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(8),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(9),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(2),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(3),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(4),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(5),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(6),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(7),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(0),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(1),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData_2_0,
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(3),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(4),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(5),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(6),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(7),
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcIMemWriteEnable_0,
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcIMemWriteEnable_0,
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcIMemWriteEnable_0,
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q
    );
  NlwBufferBlock_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcIMemWriteEnable_0,
      O => NlwBufferSignal_InstrMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(5),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_10_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(6),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_11_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(7),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_12_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(0),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_5_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(1),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_6_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(2),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_7_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(3),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_8_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_out_value_out(4),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRA_9_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(8),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_11_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(9),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_12_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(1),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_4_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(0),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_3_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(2),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_5_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(3),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_6_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(4),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_7_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(5),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_8_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(6),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_9_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntAddress(7),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_ADDRB_10_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKA
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_CLKB
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(0),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_0_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(1),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_1_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(10),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_10_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(11),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_11_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(12),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_12_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_13_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(13),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_13_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_14_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(14),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_14_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_15_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(15),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_15_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_16_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(16),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_16_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_17_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(17),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_17_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_18_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(18),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_18_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_19_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(19),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_19_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(2),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_2_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_20_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(20),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_20_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_21_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(21),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_21_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_22_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(22),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_22_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_23_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(23),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_23_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_24_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(24),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_24_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_25_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(25),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_25_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_26_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(26),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_26_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_27_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(27),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_27_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_28_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(28),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_28_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_29_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(29),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_29_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(3),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_3_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_30_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(30),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_30_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_31_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(31),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_31_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(4),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_4_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(5),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_5_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(6),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_6_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(7),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_7_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(8),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_8_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteData(9),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIA_9_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(0),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_0_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(1),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_1_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData_2_0,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_2_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(3),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_3_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(4),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_4_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(5),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_5_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(6),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_6_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(7),
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_DIB_7_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_0_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_1_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_2_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEA_3_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_0_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_1_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_2_Q
    );
  NlwBufferBlock_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => hcDMemWriteEnable,
      O => NlwBufferSignal_DataMem_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_TRUE_DP_PRIM18_ram_WEB_3_Q
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(4),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(3),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(2),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(1),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_register_mux_out(0),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRAWRADDR(5)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_15_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(31),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(15)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_14_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(30),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(14)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_13_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(29),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(13)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(28),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(12)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(27),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(11)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(26),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(10)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(25),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(24),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(23),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(22),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(21),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(5)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(20),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(4)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(19),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(3)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(18),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(2)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(17),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(1)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIBDI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(16),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIBDI(0)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_15_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(15),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(15)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_14_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(14),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(14)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_13_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(13),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(13)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_12_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(12),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(12)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_11_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(11),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(11)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_10_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(10),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(10)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(9),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(8),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(7),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(6),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(5),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(5)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_4_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(4),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(4)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(3),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(3)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(2),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(2)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(1),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(1)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_DIADI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_write_data_mux_out(0),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_DIADI(0)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(20),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(9)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(19),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(8)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(18),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(7)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(17),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(6)
    );
  NlwBufferBlock_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_instruction_register_instruction_out(16),
      O => NlwBufferSignal_MIPSProcInst_registers_Mram_register_file1_ADDRBRDADDR(5)
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(1),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_1_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(2),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_2_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(3),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_DI_3_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(4),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_0_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(5),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_1_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(6),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_2_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(7),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_DI_3_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_11_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_10_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(8),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_0_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(9),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_1_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(10),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_2_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(11),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_DI_3_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_9_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_8_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_15_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_14_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(12),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_0_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(13),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_1_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_bg_counter(14),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_DI_2_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_13_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_counter_12_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(1),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(2),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_2_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(3),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_3_DI_3_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(4),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_0_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(5),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(6),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_2_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(7),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_7_DI_3_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(8),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_0_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(9),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(10),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_2_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(11),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_11_DI_3_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(12),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_0_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(13),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(14),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_2_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(15),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_15_DI_3_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(16),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_0_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(17),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(18),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_2_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(19),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_19_DI_3_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(20),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_0_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(21),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(22),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_2_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(23),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_23_DI_3_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(24),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_0_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(25),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(26),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_2_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(27),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_cy_27_DI_3_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(28),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_0_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(29),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_1_Q
    );
  NlwBufferBlock_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_alu_a_mux_out(30),
      O => NlwBufferSignal_MIPSProcInst_alu_Mmux_alu_result1_rs_xor_31_DI_2_Q
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binByteCount_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binByteCount_4_CLK
    );
  NlwBufferBlock_UART_Tx_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_serOut_6554,
      O => NlwBufferSignal_UART_Tx_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_15_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_14_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_13_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_12_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrAutoInc_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrAutoInc_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iReadReq_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iReadReq_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntRead_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntRead_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntRead_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iReadReq_6062,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntRead_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_writeOp_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_writeOp_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readOp_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readOp_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binWriteOp_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binWriteOp_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_23_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_22_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_21_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_20_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDone_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDone_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDone_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iIntRead_6747,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDone_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_15_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_14_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_13_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_12_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_11_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_10_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_binReadOp_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_binReadOp_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(3),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_3_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(2),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_2_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(1),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_1_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0_0,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_0_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_inSync(1),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_7_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(7),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_6_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(6),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_5_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(5),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_4_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_dataBuf_0_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_3_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_2_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_1_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_11_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_10_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_9_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_8_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_9_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_8_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_sendStatFlag_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sendStatFlag_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_sendStatFlag_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_rxData(0),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sendStatFlag_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_count16_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_count16_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_count16_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_count16_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_count16_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(7),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_7_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(6),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_6_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(5),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_5_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_dataBuf(4),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxData_4_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iWriteReq_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iWriteReq_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_addrParam_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_addrParam_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_rxBusy_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_rxBusy_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_19_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_18_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_19_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_18_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_17_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_16_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntWrite_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntWrite_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntWrite_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_iWriteReq_6033,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntWrite_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_15_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_14_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_13_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_iIntAddress_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_iIntAddress_12_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_newRxData_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_newRxData_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_bitCount_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_bitCount_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_bitCount_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_bitCount_0_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_29_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_28_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_27_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_26_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_25_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_24_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd3_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_2_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_1_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd3_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd3_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_1_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDoneS_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDoneS_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDoneS_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_readDone_6561,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDoneS_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txSm_FSM_FFd1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_mainSm_FSM_FFd4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_count16_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_count16_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_count16_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_count16_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_count16_0_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_13_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_12_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_23_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_23_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(23),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_23_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_22_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_22_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(22),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_22_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_21_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_21_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(21),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_21_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_20_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_20_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(20),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_20_IN
    );
  NlwBufferBlock_HostCommInst_procEnableSignal_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_procEnableSignal_CLK
    );
  NlwBufferBlock_HostCommInst_procEnableSignal_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(0),
      O => NlwBufferSignal_HostCommInst_procEnableSignal_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_7_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_6_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_5_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_8_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_dataBuf_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_newTxData_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_newTxData_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_bitCount_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_bitCount_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_bitCount_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_bitCount_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_bg_ce16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_bg_ce16_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_1_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_11_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_10_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_9_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_8_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_11_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_15_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_14_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_readDataS_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_readDataS_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_intWrData_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_intWrData_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_txData_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_txData_2_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_3_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_dataParam_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_dataParam_4_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_sTxBusy_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sTxBusy_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_up_sTxBusy_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_6057,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_up_sTxBusy_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_30_o_MUX_516_o_0,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_iTxBusy_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_17_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_16_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_25_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_24_CLK
    );
  NlwBufferBlock_HostCommInst_procResetSignal_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_procResetSignal_CLK
    );
  NlwBufferBlock_HostCommInst_procResetSignal_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_up_intWrData(0),
      O => NlwBufferSignal_HostCommInst_procResetSignal_IN
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd4_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_IN
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd3_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd3_IN
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd1_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_IN
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd2_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_27_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_27_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(27),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_27_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_26_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_26_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(26),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_26_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_25_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_25_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(25),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_25_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_24_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_24_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(24),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_24_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_15_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(15),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_15_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_14_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(14),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_14_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_13_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(13),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_13_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_12_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(12),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_12_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_8_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_27_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd4_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_2_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_1_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd4_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd4_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd4_1_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_10_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_9_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_23_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_22_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ut_serOut_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ut_serOut_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => HostCommInst_UARTHandlerInst_ut_ur_inSync(0),
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_1_IN
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_CLK
    );
  NlwBufferBlock_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => UART_Rx_IBUF_0,
      O => NlwBufferSignal_HostCommInst_UARTHandlerInst_ut_ur_inSync_0_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_31_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_0_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_26_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_3_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd2_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_3_IN
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_2_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd2_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_2_IN
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_1_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd2_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd2_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd2_1_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_11_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(11),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_11_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_10_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(10),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_10_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_9_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(9),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_9_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_8_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(8),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_8_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_21_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_20_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_31_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_31_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(31),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_31_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_30_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_30_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(30),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_30_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_29_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_29_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(29),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_29_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_28_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_28_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(28),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_28_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_2_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_30_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_29_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_28_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_19_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_19_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(19),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_19_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_18_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_18_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(18),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_18_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_17_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_17_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(17),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_17_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_16_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_16_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(16),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_16_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_7_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(7),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_7_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_6_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(6),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_6_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_5_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(5),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_5_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_4_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(4),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_4_IN
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_7_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_6_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_5_CLK
    );
  NlwBufferBlock_MIPSProcInst_alu_out_value_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_alu_out_value_out_4_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_31_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_30_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_2_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd1_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_2_IN
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_1_CLK
    );
  NlwBufferBlock_MIPSProcInst_control_unit_state_FSM_FFd1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIPSProcInst_control_unit_state_FSM_FFd1_In,
      O => NlwBufferSignal_MIPSProcInst_control_unit_state_FSM_FFd1_1_IN
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_7_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_6_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_5_CLK
    );
  NlwBufferBlock_MIPSProcInst_pc_pc_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_pc_pc_out_4_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_3_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(3),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_3_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_2_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(2),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_2_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_1_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(1),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_1_IN
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_0_CLK
    );
  NlwBufferBlock_MIPSProcInst_instruction_register_instruction_out_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => procIMemReadData(0),
      O => NlwBufferSignal_MIPSProcInst_instruction_register_instruction_out_0_IN
    );
  NlwBlock_MIPSSystem_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_MIPSSystem_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

