// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Oct 28 15:07:44 2025
// Host        : DESKTOP-MSDSPQ7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/SEP_vitis/P2/Proyecto 2
//               Plantilla/P2/P2/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_CANDYMAN_FSM_0_0/DEMO_CANDYMAN_FSM_0_0_stub.v}
// Design      : DEMO_CANDYMAN_FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CANDYMAN_FSM,Vivado 2020.1" *)
module DEMO_CANDYMAN_FSM_0_0(clk, rst, frecuencia_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,frecuencia_out[19:0]" */;
  input clk;
  input rst;
  output [19:0]frecuencia_out;
endmodule
