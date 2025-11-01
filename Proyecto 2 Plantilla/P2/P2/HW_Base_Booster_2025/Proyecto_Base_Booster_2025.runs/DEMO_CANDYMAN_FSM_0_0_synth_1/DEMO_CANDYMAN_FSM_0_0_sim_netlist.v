// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Oct 28 15:07:44 2025
// Host        : DESKTOP-MSDSPQ7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_CANDYMAN_FSM_0_0_sim_netlist.v
// Design      : DEMO_CANDYMAN_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CANDYMAN_FSM
   (frecuencia_out,
    clk,
    rst);
  output [13:0]frecuencia_out;
  input clk;
  input rst;

  wire [5:0]address;
  wire \address[0]_i_1_n_0 ;
  wire [5:1]address_1;
  wire avanzar;
  wire clk;
  wire [22:1]data0;
  wire [4:0]duracion;
  wire duracion_0;
  wire [13:0]frecuencia_out;
  wire frecuencia_out00;
  wire \frecuencia_out[0]_i_1_n_0 ;
  wire \frecuencia_out[12]_i_1_n_0 ;
  wire \frecuencia_out[13]_i_1_n_0 ;
  wire \frecuencia_out[14]_i_1_n_0 ;
  wire \frecuencia_out[15]_i_1_n_0 ;
  wire \frecuencia_out[16]_i_1_n_0 ;
  wire \frecuencia_out[17]_i_1_n_0 ;
  wire \frecuencia_out[18]_i_1_n_0 ;
  wire \frecuencia_out[18]_i_2_n_0 ;
  wire \frecuencia_out[18]_i_3_n_0 ;
  wire \frecuencia_out[18]_i_4_n_0 ;
  wire \frecuencia_out[18]_i_5_n_0 ;
  wire \frecuencia_out[18]_i_6_n_0 ;
  wire \frecuencia_out[18]_i_7_n_0 ;
  wire \frecuencia_out[1]_i_1_n_0 ;
  wire \frecuencia_out[2]_i_1_n_0 ;
  wire \frecuencia_out[3]_i_1_n_0 ;
  wire \frecuencia_out[7]_i_1_n_0 ;
  wire \frecuencia_out[9]_i_1_n_0 ;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire p_0_in;
  wire [4:0]p_1_in;
  wire rst;
  wire [22:0]tempo;
  wire tempo0_carry__0_n_0;
  wire tempo0_carry__0_n_1;
  wire tempo0_carry__0_n_2;
  wire tempo0_carry__0_n_3;
  wire tempo0_carry__1_n_0;
  wire tempo0_carry__1_n_1;
  wire tempo0_carry__1_n_2;
  wire tempo0_carry__1_n_3;
  wire tempo0_carry__2_n_0;
  wire tempo0_carry__2_n_1;
  wire tempo0_carry__2_n_2;
  wire tempo0_carry__2_n_3;
  wire tempo0_carry__3_n_0;
  wire tempo0_carry__3_n_1;
  wire tempo0_carry__3_n_2;
  wire tempo0_carry__3_n_3;
  wire tempo0_carry__4_n_3;
  wire tempo0_carry_n_0;
  wire tempo0_carry_n_1;
  wire tempo0_carry_n_2;
  wire tempo0_carry_n_3;
  wire \tempo[22]_i_2_n_0 ;
  wire \tempo[22]_i_3_n_0 ;
  wire \tempo[22]_i_4_n_0 ;
  wire \tempo[22]_i_5_n_0 ;
  wire \tempo[22]_i_6_n_0 ;
  wire \tempo[22]_i_7_n_0 ;
  wire \tempo[22]_i_8_n_0 ;
  wire [22:0]tempo_2;
  wire [3:1]NLW_tempo0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_tempo0_carry__4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \address[0]_i_1 
       (.I0(address[0]),
        .O(\address[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[1]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(address_1[1]));
  LUT6 #(
    .INIT(64'h55A8FF0055AAFF00)) 
    \address[2]_i_1 
       (.I0(address[0]),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[2]),
        .I4(address[1]),
        .I5(address[5]),
        .O(address_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \address[3]_i_1 
       (.I0(address[0]),
        .I1(address[3]),
        .I2(address[2]),
        .I3(address[1]),
        .O(address_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \address[4]_i_1 
       (.I0(address[0]),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[2]),
        .I4(address[1]),
        .O(address_1[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \address[5]_i_1 
       (.I0(rst),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \address[5]_i_2 
       (.I0(address[0]),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[2]),
        .I4(address[1]),
        .I5(address[5]),
        .O(address_1[5]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\address[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(address_1[1]),
        .Q(address[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(address_1[2]),
        .Q(address[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(address_1[3]),
        .Q(address[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(address_1[4]),
        .Q(address[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(address_1[5]),
        .Q(address[5]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    avanzar_i_1
       (.I0(\tempo[22]_i_2_n_0 ),
        .O(avanzar));
  FDRE #(
    .INIT(1'b0)) 
    avanzar_reg
       (.C(clk),
        .CE(1'b1),
        .D(avanzar),
        .Q(duracion_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    \duracion[0]_i_1 
       (.I0(duracion[2]),
        .I1(duracion[3]),
        .I2(duracion[4]),
        .I3(duracion[1]),
        .I4(duracion[0]),
        .I5(g0_b0_n_0),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \duracion[1]_i_1 
       (.I0(duracion[2]),
        .I1(duracion[3]),
        .I2(duracion[4]),
        .I3(g0_b1_n_0),
        .I4(duracion[1]),
        .I5(duracion[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFF00FF00FF0000FE)) 
    \duracion[2]_i_1 
       (.I0(duracion[4]),
        .I1(duracion[3]),
        .I2(g0_b2_n_0),
        .I3(duracion[2]),
        .I4(duracion[0]),
        .I5(duracion[1]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F00E)) 
    \duracion[3]_i_1 
       (.I0(duracion[4]),
        .I1(g0_b3_n_0),
        .I2(duracion[3]),
        .I3(duracion[1]),
        .I4(duracion[0]),
        .I5(duracion[2]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFF0000FEFE0100)) 
    \duracion[4]_i_1 
       (.I0(duracion[1]),
        .I1(duracion[0]),
        .I2(duracion[2]),
        .I3(g0_b4_n_0),
        .I4(duracion[4]),
        .I5(duracion[3]),
        .O(p_1_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \duracion_reg[0] 
       (.C(clk),
        .CE(duracion_0),
        .D(p_1_in[0]),
        .Q(duracion[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \duracion_reg[1] 
       (.C(clk),
        .CE(duracion_0),
        .D(p_1_in[1]),
        .Q(duracion[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \duracion_reg[2] 
       (.C(clk),
        .CE(duracion_0),
        .D(p_1_in[2]),
        .Q(duracion[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \duracion_reg[3] 
       (.C(clk),
        .CE(duracion_0),
        .D(p_1_in[3]),
        .Q(duracion[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \duracion_reg[4] 
       (.C(clk),
        .CE(duracion_0),
        .D(p_1_in[4]),
        .Q(duracion[4]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h000010011CFBFF18)) 
    \frecuencia_out[0]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[5]),
        .O(\frecuencia_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000080000)) 
    \frecuencia_out[11]_i_1 
       (.I0(address[2]),
        .I1(address[1]),
        .I2(address[5]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(frecuencia_out00));
  LUT6 #(
    .INIT(64'h00E0000E01300043)) 
    \frecuencia_out[12]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[5]),
        .I4(address[0]),
        .I5(address[1]),
        .O(\frecuencia_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E704011020E7)) 
    \frecuencia_out[13]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB9E010059FB)) 
    \frecuencia_out[14]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB04011000FF)) 
    \frecuencia_out[15]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E39E011059E7)) 
    \frecuencia_out[16]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000012000400004)) 
    \frecuencia_out[17]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[0]),
        .I3(address[5]),
        .I4(address[3]),
        .I5(address[1]),
        .O(\frecuencia_out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20000000FFFFFFFF)) 
    \frecuencia_out[18]_i_1 
       (.I0(\frecuencia_out[18]_i_4_n_0 ),
        .I1(\frecuencia_out[17]_i_1_n_0 ),
        .I2(duracion_0),
        .I3(\frecuencia_out[18]_i_5_n_0 ),
        .I4(\frecuencia_out[18]_i_6_n_0 ),
        .I5(rst),
        .O(\frecuencia_out[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \frecuencia_out[18]_i_2 
       (.I0(duracion[3]),
        .I1(duracion[4]),
        .I2(duracion_0),
        .I3(duracion[2]),
        .I4(duracion[0]),
        .I5(duracion[1]),
        .O(\frecuencia_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF9E010079FB)) 
    \frecuencia_out[18]_i_3 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0461FEEFA600)) 
    \frecuencia_out[18]_i_4 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \frecuencia_out[18]_i_5 
       (.I0(duracion[3]),
        .I1(duracion[4]),
        .I2(\frecuencia_out[18]_i_7_n_0 ),
        .I3(duracion[2]),
        .I4(duracion[0]),
        .I5(duracion[1]),
        .O(\frecuencia_out[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0061FEEF8600)) 
    \frecuencia_out[18]_i_6 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1000041004102006)) 
    \frecuencia_out[18]_i_7 
       (.I0(address[5]),
        .I1(address[3]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[4]),
        .I5(address[2]),
        .O(\frecuencia_out[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0020000200400004)) 
    \frecuencia_out[1]_i_1 
       (.I0(address[2]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[5]),
        .I4(address[3]),
        .I5(address[4]),
        .O(\frecuencia_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E79E010079E3)) 
    \frecuencia_out[2]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005900109A04)) 
    \frecuencia_out[3]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[5]),
        .I5(address[0]),
        .O(\frecuencia_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB04010000FB)) 
    \frecuencia_out[7]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[3]),
        .O(\frecuencia_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000110010000800C)) 
    \frecuencia_out[9]_i_1 
       (.I0(address[2]),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[0]),
        .I4(address[5]),
        .I5(address[1]),
        .O(\frecuencia_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[0] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[0]_i_1_n_0 ),
        .Q(frecuencia_out[0]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[11] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(frecuencia_out00),
        .Q(frecuencia_out[6]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[12] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[12]_i_1_n_0 ),
        .Q(frecuencia_out[7]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[13] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[13]_i_1_n_0 ),
        .Q(frecuencia_out[8]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[14] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[14]_i_1_n_0 ),
        .Q(frecuencia_out[9]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[15] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[15]_i_1_n_0 ),
        .Q(frecuencia_out[10]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[16] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[16]_i_1_n_0 ),
        .Q(frecuencia_out[11]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[17] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[17]_i_1_n_0 ),
        .Q(frecuencia_out[12]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[18] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[18]_i_3_n_0 ),
        .Q(frecuencia_out[13]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[1] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[1]_i_1_n_0 ),
        .Q(frecuencia_out[1]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[2] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[2]_i_1_n_0 ),
        .Q(frecuencia_out[2]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[3] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[3]_i_1_n_0 ),
        .Q(frecuencia_out[3]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[7] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[7]_i_1_n_0 ),
        .Q(frecuencia_out[4]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frecuencia_out_reg[9] 
       (.C(clk),
        .CE(\frecuencia_out[18]_i_2_n_0 ),
        .D(\frecuencia_out[9]_i_1_n_0 ),
        .Q(frecuencia_out[5]),
        .R(\frecuencia_out[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000068341A0D0)) 
    g0_b0
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[5]),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h00000001F8FC7E3F)) 
    g0_b1
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[5]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h0000000A8542A150)) 
    g0_b2
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[5]),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h0000000582C160B0)) 
    g0_b3
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[5]),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h0000000C06030180)) 
    g0_b4
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[5]),
        .O(g0_b4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tempo0_carry
       (.CI(1'b0),
        .CO({tempo0_carry_n_0,tempo0_carry_n_1,tempo0_carry_n_2,tempo0_carry_n_3}),
        .CYINIT(tempo[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(tempo[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tempo0_carry__0
       (.CI(tempo0_carry_n_0),
        .CO({tempo0_carry__0_n_0,tempo0_carry__0_n_1,tempo0_carry__0_n_2,tempo0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(tempo[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tempo0_carry__1
       (.CI(tempo0_carry__0_n_0),
        .CO({tempo0_carry__1_n_0,tempo0_carry__1_n_1,tempo0_carry__1_n_2,tempo0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(tempo[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tempo0_carry__2
       (.CI(tempo0_carry__1_n_0),
        .CO({tempo0_carry__2_n_0,tempo0_carry__2_n_1,tempo0_carry__2_n_2,tempo0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(tempo[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tempo0_carry__3
       (.CI(tempo0_carry__2_n_0),
        .CO({tempo0_carry__3_n_0,tempo0_carry__3_n_1,tempo0_carry__3_n_2,tempo0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(tempo[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tempo0_carry__4
       (.CI(tempo0_carry__3_n_0),
        .CO({NLW_tempo0_carry__4_CO_UNCONNECTED[3:1],tempo0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tempo0_carry__4_O_UNCONNECTED[3:2],data0[22:21]}),
        .S({1'b0,1'b0,tempo[22:21]}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tempo[0]_i_1 
       (.I0(tempo[0]),
        .O(tempo_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[10]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[10]),
        .O(tempo_2[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[11]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[11]),
        .O(tempo_2[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[12]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[12]),
        .O(tempo_2[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[13]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[13]),
        .O(tempo_2[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[14]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[14]),
        .O(tempo_2[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[15]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[15]),
        .O(tempo_2[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[16]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[16]),
        .O(tempo_2[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[17]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[17]),
        .O(tempo_2[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[18]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[18]),
        .O(tempo_2[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[19]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[19]),
        .O(tempo_2[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[1]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[1]),
        .O(tempo_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[20]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[20]),
        .O(tempo_2[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[21]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[21]),
        .O(tempo_2[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[22]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[22]),
        .O(tempo_2[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tempo[22]_i_2 
       (.I0(\tempo[22]_i_3_n_0 ),
        .I1(\tempo[22]_i_4_n_0 ),
        .I2(\tempo[22]_i_5_n_0 ),
        .I3(\tempo[22]_i_6_n_0 ),
        .I4(\tempo[22]_i_7_n_0 ),
        .I5(\tempo[22]_i_8_n_0 ),
        .O(\tempo[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tempo[22]_i_3 
       (.I0(tempo[18]),
        .I1(tempo[17]),
        .I2(tempo[20]),
        .I3(tempo[19]),
        .O(\tempo[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \tempo[22]_i_4 
       (.I0(tempo[22]),
        .I1(tempo[21]),
        .I2(tempo[0]),
        .O(\tempo[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tempo[22]_i_5 
       (.I0(tempo[10]),
        .I1(tempo[9]),
        .I2(tempo[12]),
        .I3(tempo[11]),
        .O(\tempo[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \tempo[22]_i_6 
       (.I0(tempo[14]),
        .I1(tempo[13]),
        .I2(tempo[16]),
        .I3(tempo[15]),
        .O(\tempo[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tempo[22]_i_7 
       (.I0(tempo[6]),
        .I1(tempo[5]),
        .I2(tempo[8]),
        .I3(tempo[7]),
        .O(\tempo[22]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \tempo[22]_i_8 
       (.I0(tempo[2]),
        .I1(tempo[1]),
        .I2(tempo[3]),
        .I3(tempo[4]),
        .O(\tempo[22]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[2]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[2]),
        .O(tempo_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[3]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[3]),
        .O(tempo_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[4]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[4]),
        .O(tempo_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[5]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[5]),
        .O(tempo_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[6]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[6]),
        .O(tempo_2[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[7]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[7]),
        .O(tempo_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[8]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[8]),
        .O(tempo_2[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempo[9]_i_1 
       (.I0(\tempo[22]_i_2_n_0 ),
        .I1(data0[9]),
        .O(tempo_2[9]));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[0]),
        .Q(tempo[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[10]),
        .Q(tempo[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[11]),
        .Q(tempo[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[12]),
        .Q(tempo[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[13]),
        .Q(tempo[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[14]),
        .Q(tempo[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[15]),
        .Q(tempo[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[16]),
        .Q(tempo[16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[17]),
        .Q(tempo[17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[18]),
        .Q(tempo[18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[19]),
        .Q(tempo[19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[1]),
        .Q(tempo[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[20]),
        .Q(tempo[20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[21]),
        .Q(tempo[21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[22]),
        .Q(tempo[22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[2]),
        .Q(tempo[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[3]),
        .Q(tempo[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[4]),
        .Q(tempo[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[5]),
        .Q(tempo[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[6]),
        .Q(tempo[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[7]),
        .Q(tempo[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[8]),
        .Q(tempo[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(tempo_2[9]),
        .Q(tempo[9]),
        .R(p_0_in));
endmodule

(* CHECK_LICENSE_TYPE = "DEMO_CANDYMAN_FSM_0_0,CANDYMAN_FSM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CANDYMAN_FSM,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    frecuencia_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [19:0]frecuencia_out;

  wire \<const0> ;
  wire clk;
  wire [17:0]\^frecuencia_out ;
  wire rst;

  assign frecuencia_out[19] = \<const0> ;
  assign frecuencia_out[18] = \^frecuencia_out [10];
  assign frecuencia_out[17] = \^frecuencia_out [17];
  assign frecuencia_out[16] = \^frecuencia_out [5];
  assign frecuencia_out[15:14] = \^frecuencia_out [15:14];
  assign frecuencia_out[13] = \^frecuencia_out [6];
  assign frecuencia_out[12] = \^frecuencia_out [12];
  assign frecuencia_out[11] = \^frecuencia_out [4];
  assign frecuencia_out[10:9] = \^frecuencia_out [10:9];
  assign frecuencia_out[8] = \^frecuencia_out [10];
  assign frecuencia_out[7:0] = \^frecuencia_out [7:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CANDYMAN_FSM U0
       (.clk(clk),
        .frecuencia_out({\^frecuencia_out [10],\^frecuencia_out [17],\^frecuencia_out [5],\^frecuencia_out [15:14],\^frecuencia_out [6],\^frecuencia_out [12],\^frecuencia_out [4],\^frecuencia_out [9],\^frecuencia_out [7],\^frecuencia_out [3:0]}),
        .rst(rst));
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
