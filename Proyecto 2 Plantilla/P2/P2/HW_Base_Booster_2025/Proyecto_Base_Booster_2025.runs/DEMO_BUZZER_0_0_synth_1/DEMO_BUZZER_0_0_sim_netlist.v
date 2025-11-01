// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Oct 28 15:07:44 2025
// Host        : DESKTOP-MSDSPQ7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_BUZZER_0_0_sim_netlist.v
// Design      : DEMO_BUZZER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BUZZER
   (BUZZER_PWM,
    TONO,
    BTN_JY,
    clk);
  output BUZZER_PWM;
  input [19:0]TONO;
  input BTN_JY;
  input clk;

  wire BTN_JY;
  wire BUZZER_PWM;
  wire BUZZER_PWM0_carry__0_i_1_n_0;
  wire BUZZER_PWM0_carry__0_i_2_n_0;
  wire BUZZER_PWM0_carry__0_i_3_n_0;
  wire BUZZER_PWM0_carry__0_i_4_n_0;
  wire BUZZER_PWM0_carry__0_i_5_n_0;
  wire BUZZER_PWM0_carry__0_i_6_n_0;
  wire BUZZER_PWM0_carry__0_i_7_n_0;
  wire BUZZER_PWM0_carry__0_i_8_n_0;
  wire BUZZER_PWM0_carry__0_n_0;
  wire BUZZER_PWM0_carry__0_n_1;
  wire BUZZER_PWM0_carry__0_n_2;
  wire BUZZER_PWM0_carry__0_n_3;
  wire BUZZER_PWM0_carry__1_i_1_n_0;
  wire BUZZER_PWM0_carry__1_i_2_n_0;
  wire BUZZER_PWM0_carry__1_i_3_n_0;
  wire BUZZER_PWM0_carry__1_i_4_n_0;
  wire BUZZER_PWM0_carry__1_n_3;
  wire BUZZER_PWM0_carry_i_1_n_0;
  wire BUZZER_PWM0_carry_i_2_n_0;
  wire BUZZER_PWM0_carry_i_3_n_0;
  wire BUZZER_PWM0_carry_i_4_n_0;
  wire BUZZER_PWM0_carry_i_5_n_0;
  wire BUZZER_PWM0_carry_i_6_n_0;
  wire BUZZER_PWM0_carry_i_7_n_0;
  wire BUZZER_PWM0_carry_i_8_n_0;
  wire BUZZER_PWM0_carry_n_0;
  wire BUZZER_PWM0_carry_n_1;
  wire BUZZER_PWM0_carry_n_2;
  wire BUZZER_PWM0_carry_n_3;
  wire [19:0]TONO;
  wire clk;
  wire counter_PWM0_carry__0_i_1_n_0;
  wire counter_PWM0_carry__0_i_2_n_0;
  wire counter_PWM0_carry__0_i_3_n_0;
  wire counter_PWM0_carry__0_i_4_n_0;
  wire counter_PWM0_carry__0_i_5_n_0;
  wire counter_PWM0_carry__0_i_6_n_0;
  wire counter_PWM0_carry__0_i_7_n_0;
  wire counter_PWM0_carry__0_i_8_n_0;
  wire counter_PWM0_carry__0_n_0;
  wire counter_PWM0_carry__0_n_1;
  wire counter_PWM0_carry__0_n_2;
  wire counter_PWM0_carry__0_n_3;
  wire counter_PWM0_carry__1_i_1_n_0;
  wire counter_PWM0_carry__1_i_2_n_0;
  wire counter_PWM0_carry__1_i_3_n_0;
  wire counter_PWM0_carry__1_i_4_n_0;
  wire counter_PWM0_carry__1_n_2;
  wire counter_PWM0_carry__1_n_3;
  wire counter_PWM0_carry_i_1_n_0;
  wire counter_PWM0_carry_i_2_n_0;
  wire counter_PWM0_carry_i_3_n_0;
  wire counter_PWM0_carry_i_4_n_0;
  wire counter_PWM0_carry_i_5_n_0;
  wire counter_PWM0_carry_i_6_n_0;
  wire counter_PWM0_carry_i_7_n_0;
  wire counter_PWM0_carry_i_8_n_0;
  wire counter_PWM0_carry_n_0;
  wire counter_PWM0_carry_n_1;
  wire counter_PWM0_carry_n_2;
  wire counter_PWM0_carry_n_3;
  wire \counter_PWM[0]_i_1_n_0 ;
  wire \counter_PWM[0]_i_3_n_0 ;
  wire [19:0]counter_PWM_reg;
  wire \counter_PWM_reg[0]_i_2_n_0 ;
  wire \counter_PWM_reg[0]_i_2_n_1 ;
  wire \counter_PWM_reg[0]_i_2_n_2 ;
  wire \counter_PWM_reg[0]_i_2_n_3 ;
  wire \counter_PWM_reg[0]_i_2_n_4 ;
  wire \counter_PWM_reg[0]_i_2_n_5 ;
  wire \counter_PWM_reg[0]_i_2_n_6 ;
  wire \counter_PWM_reg[0]_i_2_n_7 ;
  wire \counter_PWM_reg[12]_i_1_n_0 ;
  wire \counter_PWM_reg[12]_i_1_n_1 ;
  wire \counter_PWM_reg[12]_i_1_n_2 ;
  wire \counter_PWM_reg[12]_i_1_n_3 ;
  wire \counter_PWM_reg[12]_i_1_n_4 ;
  wire \counter_PWM_reg[12]_i_1_n_5 ;
  wire \counter_PWM_reg[12]_i_1_n_6 ;
  wire \counter_PWM_reg[12]_i_1_n_7 ;
  wire \counter_PWM_reg[16]_i_1_n_1 ;
  wire \counter_PWM_reg[16]_i_1_n_2 ;
  wire \counter_PWM_reg[16]_i_1_n_3 ;
  wire \counter_PWM_reg[16]_i_1_n_4 ;
  wire \counter_PWM_reg[16]_i_1_n_5 ;
  wire \counter_PWM_reg[16]_i_1_n_6 ;
  wire \counter_PWM_reg[16]_i_1_n_7 ;
  wire \counter_PWM_reg[4]_i_1_n_0 ;
  wire \counter_PWM_reg[4]_i_1_n_1 ;
  wire \counter_PWM_reg[4]_i_1_n_2 ;
  wire \counter_PWM_reg[4]_i_1_n_3 ;
  wire \counter_PWM_reg[4]_i_1_n_4 ;
  wire \counter_PWM_reg[4]_i_1_n_5 ;
  wire \counter_PWM_reg[4]_i_1_n_6 ;
  wire \counter_PWM_reg[4]_i_1_n_7 ;
  wire \counter_PWM_reg[8]_i_1_n_0 ;
  wire \counter_PWM_reg[8]_i_1_n_1 ;
  wire \counter_PWM_reg[8]_i_1_n_2 ;
  wire \counter_PWM_reg[8]_i_1_n_3 ;
  wire \counter_PWM_reg[8]_i_1_n_4 ;
  wire \counter_PWM_reg[8]_i_1_n_5 ;
  wire \counter_PWM_reg[8]_i_1_n_6 ;
  wire \counter_PWM_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_BUZZER_PWM0_carry_O_UNCONNECTED;
  wire [3:0]NLW_BUZZER_PWM0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_BUZZER_PWM0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_BUZZER_PWM0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_counter_PWM0_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter_PWM0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_counter_PWM0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter_PWM0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_counter_PWM_reg[16]_i_1_CO_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BUZZER_PWM0_carry
       (.CI(1'b0),
        .CO({BUZZER_PWM0_carry_n_0,BUZZER_PWM0_carry_n_1,BUZZER_PWM0_carry_n_2,BUZZER_PWM0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({BUZZER_PWM0_carry_i_1_n_0,BUZZER_PWM0_carry_i_2_n_0,BUZZER_PWM0_carry_i_3_n_0,BUZZER_PWM0_carry_i_4_n_0}),
        .O(NLW_BUZZER_PWM0_carry_O_UNCONNECTED[3:0]),
        .S({BUZZER_PWM0_carry_i_5_n_0,BUZZER_PWM0_carry_i_6_n_0,BUZZER_PWM0_carry_i_7_n_0,BUZZER_PWM0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BUZZER_PWM0_carry__0
       (.CI(BUZZER_PWM0_carry_n_0),
        .CO({BUZZER_PWM0_carry__0_n_0,BUZZER_PWM0_carry__0_n_1,BUZZER_PWM0_carry__0_n_2,BUZZER_PWM0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({BUZZER_PWM0_carry__0_i_1_n_0,BUZZER_PWM0_carry__0_i_2_n_0,BUZZER_PWM0_carry__0_i_3_n_0,BUZZER_PWM0_carry__0_i_4_n_0}),
        .O(NLW_BUZZER_PWM0_carry__0_O_UNCONNECTED[3:0]),
        .S({BUZZER_PWM0_carry__0_i_5_n_0,BUZZER_PWM0_carry__0_i_6_n_0,BUZZER_PWM0_carry__0_i_7_n_0,BUZZER_PWM0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry__0_i_1
       (.I0(TONO[15]),
        .I1(counter_PWM_reg[14]),
        .I2(counter_PWM_reg[15]),
        .I3(TONO[16]),
        .O(BUZZER_PWM0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry__0_i_2
       (.I0(TONO[13]),
        .I1(counter_PWM_reg[12]),
        .I2(counter_PWM_reg[13]),
        .I3(TONO[14]),
        .O(BUZZER_PWM0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry__0_i_3
       (.I0(TONO[11]),
        .I1(counter_PWM_reg[10]),
        .I2(counter_PWM_reg[11]),
        .I3(TONO[12]),
        .O(BUZZER_PWM0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry__0_i_4
       (.I0(TONO[9]),
        .I1(counter_PWM_reg[8]),
        .I2(counter_PWM_reg[9]),
        .I3(TONO[10]),
        .O(BUZZER_PWM0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry__0_i_5
       (.I0(TONO[15]),
        .I1(counter_PWM_reg[14]),
        .I2(TONO[16]),
        .I3(counter_PWM_reg[15]),
        .O(BUZZER_PWM0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry__0_i_6
       (.I0(TONO[13]),
        .I1(counter_PWM_reg[12]),
        .I2(TONO[14]),
        .I3(counter_PWM_reg[13]),
        .O(BUZZER_PWM0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry__0_i_7
       (.I0(TONO[11]),
        .I1(counter_PWM_reg[10]),
        .I2(TONO[12]),
        .I3(counter_PWM_reg[11]),
        .O(BUZZER_PWM0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry__0_i_8
       (.I0(TONO[9]),
        .I1(counter_PWM_reg[8]),
        .I2(TONO[10]),
        .I3(counter_PWM_reg[9]),
        .O(BUZZER_PWM0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BUZZER_PWM0_carry__1
       (.CI(BUZZER_PWM0_carry__0_n_0),
        .CO({NLW_BUZZER_PWM0_carry__1_CO_UNCONNECTED[3:2],BUZZER_PWM,BUZZER_PWM0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,BUZZER_PWM0_carry__1_i_1_n_0,BUZZER_PWM0_carry__1_i_2_n_0}),
        .O(NLW_BUZZER_PWM0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,BUZZER_PWM0_carry__1_i_3_n_0,BUZZER_PWM0_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    BUZZER_PWM0_carry__1_i_1
       (.I0(counter_PWM_reg[18]),
        .I1(TONO[19]),
        .I2(counter_PWM_reg[19]),
        .O(BUZZER_PWM0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry__1_i_2
       (.I0(TONO[17]),
        .I1(counter_PWM_reg[16]),
        .I2(counter_PWM_reg[17]),
        .I3(TONO[18]),
        .O(BUZZER_PWM0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    BUZZER_PWM0_carry__1_i_3
       (.I0(TONO[19]),
        .I1(counter_PWM_reg[18]),
        .I2(counter_PWM_reg[19]),
        .O(BUZZER_PWM0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry__1_i_4
       (.I0(TONO[17]),
        .I1(counter_PWM_reg[16]),
        .I2(TONO[18]),
        .I3(counter_PWM_reg[17]),
        .O(BUZZER_PWM0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry_i_1
       (.I0(TONO[7]),
        .I1(counter_PWM_reg[6]),
        .I2(counter_PWM_reg[7]),
        .I3(TONO[8]),
        .O(BUZZER_PWM0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry_i_2
       (.I0(TONO[5]),
        .I1(counter_PWM_reg[4]),
        .I2(counter_PWM_reg[5]),
        .I3(TONO[6]),
        .O(BUZZER_PWM0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry_i_3
       (.I0(TONO[3]),
        .I1(counter_PWM_reg[2]),
        .I2(counter_PWM_reg[3]),
        .I3(TONO[4]),
        .O(BUZZER_PWM0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BUZZER_PWM0_carry_i_4
       (.I0(TONO[1]),
        .I1(counter_PWM_reg[0]),
        .I2(counter_PWM_reg[1]),
        .I3(TONO[2]),
        .O(BUZZER_PWM0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry_i_5
       (.I0(TONO[7]),
        .I1(counter_PWM_reg[6]),
        .I2(TONO[8]),
        .I3(counter_PWM_reg[7]),
        .O(BUZZER_PWM0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry_i_6
       (.I0(TONO[5]),
        .I1(counter_PWM_reg[4]),
        .I2(TONO[6]),
        .I3(counter_PWM_reg[5]),
        .O(BUZZER_PWM0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry_i_7
       (.I0(TONO[3]),
        .I1(counter_PWM_reg[2]),
        .I2(TONO[4]),
        .I3(counter_PWM_reg[3]),
        .O(BUZZER_PWM0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BUZZER_PWM0_carry_i_8
       (.I0(TONO[1]),
        .I1(counter_PWM_reg[0]),
        .I2(TONO[2]),
        .I3(counter_PWM_reg[1]),
        .O(BUZZER_PWM0_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter_PWM0_carry
       (.CI(1'b0),
        .CO({counter_PWM0_carry_n_0,counter_PWM0_carry_n_1,counter_PWM0_carry_n_2,counter_PWM0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({counter_PWM0_carry_i_1_n_0,counter_PWM0_carry_i_2_n_0,counter_PWM0_carry_i_3_n_0,counter_PWM0_carry_i_4_n_0}),
        .O(NLW_counter_PWM0_carry_O_UNCONNECTED[3:0]),
        .S({counter_PWM0_carry_i_5_n_0,counter_PWM0_carry_i_6_n_0,counter_PWM0_carry_i_7_n_0,counter_PWM0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter_PWM0_carry__0
       (.CI(counter_PWM0_carry_n_0),
        .CO({counter_PWM0_carry__0_n_0,counter_PWM0_carry__0_n_1,counter_PWM0_carry__0_n_2,counter_PWM0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter_PWM0_carry__0_i_1_n_0,counter_PWM0_carry__0_i_2_n_0,counter_PWM0_carry__0_i_3_n_0,counter_PWM0_carry__0_i_4_n_0}),
        .O(NLW_counter_PWM0_carry__0_O_UNCONNECTED[3:0]),
        .S({counter_PWM0_carry__0_i_5_n_0,counter_PWM0_carry__0_i_6_n_0,counter_PWM0_carry__0_i_7_n_0,counter_PWM0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry__0_i_1
       (.I0(counter_PWM_reg[14]),
        .I1(TONO[14]),
        .I2(TONO[15]),
        .I3(counter_PWM_reg[15]),
        .O(counter_PWM0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry__0_i_2
       (.I0(counter_PWM_reg[12]),
        .I1(TONO[12]),
        .I2(TONO[13]),
        .I3(counter_PWM_reg[13]),
        .O(counter_PWM0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry__0_i_3
       (.I0(counter_PWM_reg[10]),
        .I1(TONO[10]),
        .I2(TONO[11]),
        .I3(counter_PWM_reg[11]),
        .O(counter_PWM0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry__0_i_4
       (.I0(counter_PWM_reg[8]),
        .I1(TONO[8]),
        .I2(TONO[9]),
        .I3(counter_PWM_reg[9]),
        .O(counter_PWM0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry__0_i_5
       (.I0(counter_PWM_reg[14]),
        .I1(TONO[14]),
        .I2(counter_PWM_reg[15]),
        .I3(TONO[15]),
        .O(counter_PWM0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry__0_i_6
       (.I0(counter_PWM_reg[12]),
        .I1(TONO[12]),
        .I2(counter_PWM_reg[13]),
        .I3(TONO[13]),
        .O(counter_PWM0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry__0_i_7
       (.I0(counter_PWM_reg[10]),
        .I1(TONO[10]),
        .I2(counter_PWM_reg[11]),
        .I3(TONO[11]),
        .O(counter_PWM0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry__0_i_8
       (.I0(counter_PWM_reg[8]),
        .I1(TONO[8]),
        .I2(counter_PWM_reg[9]),
        .I3(TONO[9]),
        .O(counter_PWM0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter_PWM0_carry__1
       (.CI(counter_PWM0_carry__0_n_0),
        .CO({NLW_counter_PWM0_carry__1_CO_UNCONNECTED[3:2],counter_PWM0_carry__1_n_2,counter_PWM0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_PWM0_carry__1_i_1_n_0,counter_PWM0_carry__1_i_2_n_0}),
        .O(NLW_counter_PWM0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,counter_PWM0_carry__1_i_3_n_0,counter_PWM0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry__1_i_1
       (.I0(counter_PWM_reg[18]),
        .I1(TONO[18]),
        .I2(TONO[19]),
        .I3(counter_PWM_reg[19]),
        .O(counter_PWM0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry__1_i_2
       (.I0(counter_PWM_reg[16]),
        .I1(TONO[16]),
        .I2(TONO[17]),
        .I3(counter_PWM_reg[17]),
        .O(counter_PWM0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry__1_i_3
       (.I0(counter_PWM_reg[18]),
        .I1(TONO[18]),
        .I2(counter_PWM_reg[19]),
        .I3(TONO[19]),
        .O(counter_PWM0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry__1_i_4
       (.I0(counter_PWM_reg[16]),
        .I1(TONO[16]),
        .I2(counter_PWM_reg[17]),
        .I3(TONO[17]),
        .O(counter_PWM0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry_i_1
       (.I0(counter_PWM_reg[6]),
        .I1(TONO[6]),
        .I2(TONO[7]),
        .I3(counter_PWM_reg[7]),
        .O(counter_PWM0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry_i_2
       (.I0(counter_PWM_reg[4]),
        .I1(TONO[4]),
        .I2(TONO[5]),
        .I3(counter_PWM_reg[5]),
        .O(counter_PWM0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry_i_3
       (.I0(counter_PWM_reg[2]),
        .I1(TONO[2]),
        .I2(TONO[3]),
        .I3(counter_PWM_reg[3]),
        .O(counter_PWM0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    counter_PWM0_carry_i_4
       (.I0(counter_PWM_reg[0]),
        .I1(TONO[0]),
        .I2(TONO[1]),
        .I3(counter_PWM_reg[1]),
        .O(counter_PWM0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry_i_5
       (.I0(counter_PWM_reg[6]),
        .I1(TONO[6]),
        .I2(counter_PWM_reg[7]),
        .I3(TONO[7]),
        .O(counter_PWM0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry_i_6
       (.I0(counter_PWM_reg[4]),
        .I1(TONO[4]),
        .I2(counter_PWM_reg[5]),
        .I3(TONO[5]),
        .O(counter_PWM0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry_i_7
       (.I0(counter_PWM_reg[2]),
        .I1(TONO[2]),
        .I2(counter_PWM_reg[3]),
        .I3(TONO[3]),
        .O(counter_PWM0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_PWM0_carry_i_8
       (.I0(counter_PWM_reg[0]),
        .I1(TONO[0]),
        .I2(counter_PWM_reg[1]),
        .I3(TONO[1]),
        .O(counter_PWM0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter_PWM[0]_i_1 
       (.I0(counter_PWM0_carry__1_n_2),
        .I1(BTN_JY),
        .O(\counter_PWM[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_PWM[0]_i_3 
       (.I0(counter_PWM_reg[0]),
        .O(\counter_PWM[0]_i_3_n_0 ));
  FDRE \counter_PWM_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[0]_i_2_n_7 ),
        .Q(counter_PWM_reg[0]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_PWM_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_PWM_reg[0]_i_2_n_0 ,\counter_PWM_reg[0]_i_2_n_1 ,\counter_PWM_reg[0]_i_2_n_2 ,\counter_PWM_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_PWM_reg[0]_i_2_n_4 ,\counter_PWM_reg[0]_i_2_n_5 ,\counter_PWM_reg[0]_i_2_n_6 ,\counter_PWM_reg[0]_i_2_n_7 }),
        .S({counter_PWM_reg[3:1],\counter_PWM[0]_i_3_n_0 }));
  FDRE \counter_PWM_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[8]_i_1_n_5 ),
        .Q(counter_PWM_reg[10]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[8]_i_1_n_4 ),
        .Q(counter_PWM_reg[11]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[12]_i_1_n_7 ),
        .Q(counter_PWM_reg[12]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_PWM_reg[12]_i_1 
       (.CI(\counter_PWM_reg[8]_i_1_n_0 ),
        .CO({\counter_PWM_reg[12]_i_1_n_0 ,\counter_PWM_reg[12]_i_1_n_1 ,\counter_PWM_reg[12]_i_1_n_2 ,\counter_PWM_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_PWM_reg[12]_i_1_n_4 ,\counter_PWM_reg[12]_i_1_n_5 ,\counter_PWM_reg[12]_i_1_n_6 ,\counter_PWM_reg[12]_i_1_n_7 }),
        .S(counter_PWM_reg[15:12]));
  FDRE \counter_PWM_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[12]_i_1_n_6 ),
        .Q(counter_PWM_reg[13]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[12]_i_1_n_5 ),
        .Q(counter_PWM_reg[14]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[12]_i_1_n_4 ),
        .Q(counter_PWM_reg[15]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[16]_i_1_n_7 ),
        .Q(counter_PWM_reg[16]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_PWM_reg[16]_i_1 
       (.CI(\counter_PWM_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_PWM_reg[16]_i_1_CO_UNCONNECTED [3],\counter_PWM_reg[16]_i_1_n_1 ,\counter_PWM_reg[16]_i_1_n_2 ,\counter_PWM_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_PWM_reg[16]_i_1_n_4 ,\counter_PWM_reg[16]_i_1_n_5 ,\counter_PWM_reg[16]_i_1_n_6 ,\counter_PWM_reg[16]_i_1_n_7 }),
        .S(counter_PWM_reg[19:16]));
  FDRE \counter_PWM_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[16]_i_1_n_6 ),
        .Q(counter_PWM_reg[17]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[16]_i_1_n_5 ),
        .Q(counter_PWM_reg[18]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[16]_i_1_n_4 ),
        .Q(counter_PWM_reg[19]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[0]_i_2_n_6 ),
        .Q(counter_PWM_reg[1]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[0]_i_2_n_5 ),
        .Q(counter_PWM_reg[2]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[0]_i_2_n_4 ),
        .Q(counter_PWM_reg[3]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[4]_i_1_n_7 ),
        .Q(counter_PWM_reg[4]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_PWM_reg[4]_i_1 
       (.CI(\counter_PWM_reg[0]_i_2_n_0 ),
        .CO({\counter_PWM_reg[4]_i_1_n_0 ,\counter_PWM_reg[4]_i_1_n_1 ,\counter_PWM_reg[4]_i_1_n_2 ,\counter_PWM_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_PWM_reg[4]_i_1_n_4 ,\counter_PWM_reg[4]_i_1_n_5 ,\counter_PWM_reg[4]_i_1_n_6 ,\counter_PWM_reg[4]_i_1_n_7 }),
        .S(counter_PWM_reg[7:4]));
  FDRE \counter_PWM_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[4]_i_1_n_6 ),
        .Q(counter_PWM_reg[5]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[4]_i_1_n_5 ),
        .Q(counter_PWM_reg[6]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[4]_i_1_n_4 ),
        .Q(counter_PWM_reg[7]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  FDRE \counter_PWM_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[8]_i_1_n_7 ),
        .Q(counter_PWM_reg[8]),
        .R(\counter_PWM[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_PWM_reg[8]_i_1 
       (.CI(\counter_PWM_reg[4]_i_1_n_0 ),
        .CO({\counter_PWM_reg[8]_i_1_n_0 ,\counter_PWM_reg[8]_i_1_n_1 ,\counter_PWM_reg[8]_i_1_n_2 ,\counter_PWM_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_PWM_reg[8]_i_1_n_4 ,\counter_PWM_reg[8]_i_1_n_5 ,\counter_PWM_reg[8]_i_1_n_6 ,\counter_PWM_reg[8]_i_1_n_7 }),
        .S(counter_PWM_reg[11:8]));
  FDRE \counter_PWM_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_PWM_reg[8]_i_1_n_6 ),
        .Q(counter_PWM_reg[9]),
        .R(\counter_PWM[0]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "DEMO_BUZZER_0_0,BUZZER,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BUZZER,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    TONO,
    BTN_JY,
    BTN0,
    BTN1,
    LEDS,
    BUZZER_PWM);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0" *) input clk;
  input [19:0]TONO;
  input BTN_JY;
  input BTN0;
  input BTN1;
  output [3:0]LEDS;
  output BUZZER_PWM;

  wire BTN_JY;
  wire BUZZER_PWM;
  wire [19:0]TONO;
  wire clk;

  assign LEDS[3] = BTN_JY;
  assign LEDS[2] = BTN_JY;
  assign LEDS[1] = BTN_JY;
  assign LEDS[0] = BTN_JY;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BUZZER U0
       (.BTN_JY(BTN_JY),
        .BUZZER_PWM(BUZZER_PWM),
        .TONO(TONO),
        .clk(clk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
