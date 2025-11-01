-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Oct 28 15:07:44 2025
-- Host        : DESKTOP-MSDSPQ7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/SEP_vitis/P2/Proyecto 2
--               Plantilla/P2/P2/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_CANDYMAN_FSM_0_0/DEMO_CANDYMAN_FSM_0_0_stub.vhdl}
-- Design      : DEMO_CANDYMAN_FSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMO_CANDYMAN_FSM_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    frecuencia_out : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end DEMO_CANDYMAN_FSM_0_0;

architecture stub of DEMO_CANDYMAN_FSM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,frecuencia_out[19:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CANDYMAN_FSM,Vivado 2020.1";
begin
end;
