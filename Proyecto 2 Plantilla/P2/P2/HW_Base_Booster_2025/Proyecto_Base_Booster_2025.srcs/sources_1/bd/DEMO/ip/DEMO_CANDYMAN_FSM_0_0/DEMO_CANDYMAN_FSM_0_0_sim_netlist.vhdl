-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Oct 28 15:07:44 2025
-- Host        : DESKTOP-MSDSPQ7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/SEP_vitis/P2/Proyecto 2
--               Plantilla/P2/P2/HW_Base_Booster_2025/Proyecto_Base_Booster_2025.srcs/sources_1/bd/DEMO/ip/DEMO_CANDYMAN_FSM_0_0/DEMO_CANDYMAN_FSM_0_0_sim_netlist.vhdl}
-- Design      : DEMO_CANDYMAN_FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_CANDYMAN_FSM_0_0_CANDYMAN_FSM is
  port (
    frecuencia_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DEMO_CANDYMAN_FSM_0_0_CANDYMAN_FSM : entity is "CANDYMAN_FSM";
end DEMO_CANDYMAN_FSM_0_0_CANDYMAN_FSM;

architecture STRUCTURE of DEMO_CANDYMAN_FSM_0_0_CANDYMAN_FSM is
  signal address : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \address[0]_i_1_n_0\ : STD_LOGIC;
  signal address_1 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal avanzar : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal duracion : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal duracion_0 : STD_LOGIC;
  signal frecuencia_out00 : STD_LOGIC;
  signal \frecuencia_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[18]_i_2_n_0\ : STD_LOGIC;
  signal \frecuencia_out[18]_i_3_n_0\ : STD_LOGIC;
  signal \frecuencia_out[18]_i_4_n_0\ : STD_LOGIC;
  signal \frecuencia_out[18]_i_5_n_0\ : STD_LOGIC;
  signal \frecuencia_out[18]_i_6_n_0\ : STD_LOGIC;
  signal \frecuencia_out[18]_i_7_n_0\ : STD_LOGIC;
  signal \frecuencia_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \frecuencia_out[9]_i_1_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tempo : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \tempo0_carry__0_n_0\ : STD_LOGIC;
  signal \tempo0_carry__0_n_1\ : STD_LOGIC;
  signal \tempo0_carry__0_n_2\ : STD_LOGIC;
  signal \tempo0_carry__0_n_3\ : STD_LOGIC;
  signal \tempo0_carry__1_n_0\ : STD_LOGIC;
  signal \tempo0_carry__1_n_1\ : STD_LOGIC;
  signal \tempo0_carry__1_n_2\ : STD_LOGIC;
  signal \tempo0_carry__1_n_3\ : STD_LOGIC;
  signal \tempo0_carry__2_n_0\ : STD_LOGIC;
  signal \tempo0_carry__2_n_1\ : STD_LOGIC;
  signal \tempo0_carry__2_n_2\ : STD_LOGIC;
  signal \tempo0_carry__2_n_3\ : STD_LOGIC;
  signal \tempo0_carry__3_n_0\ : STD_LOGIC;
  signal \tempo0_carry__3_n_1\ : STD_LOGIC;
  signal \tempo0_carry__3_n_2\ : STD_LOGIC;
  signal \tempo0_carry__3_n_3\ : STD_LOGIC;
  signal \tempo0_carry__4_n_3\ : STD_LOGIC;
  signal tempo0_carry_n_0 : STD_LOGIC;
  signal tempo0_carry_n_1 : STD_LOGIC;
  signal tempo0_carry_n_2 : STD_LOGIC;
  signal tempo0_carry_n_3 : STD_LOGIC;
  signal \tempo[22]_i_2_n_0\ : STD_LOGIC;
  signal \tempo[22]_i_3_n_0\ : STD_LOGIC;
  signal \tempo[22]_i_4_n_0\ : STD_LOGIC;
  signal \tempo[22]_i_5_n_0\ : STD_LOGIC;
  signal \tempo[22]_i_6_n_0\ : STD_LOGIC;
  signal \tempo[22]_i_7_n_0\ : STD_LOGIC;
  signal \tempo[22]_i_8_n_0\ : STD_LOGIC;
  signal tempo_2 : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_tempo0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tempo0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \address[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \address[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \address[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of avanzar_i_1 : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of tempo0_carry : label is 35;
  attribute ADDER_THRESHOLD of \tempo0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tempo0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tempo0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \tempo0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \tempo0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \tempo[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tempo[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tempo[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tempo[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tempo[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tempo[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tempo[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tempo[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tempo[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tempo[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tempo[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tempo[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tempo[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tempo[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tempo[22]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tempo[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tempo[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tempo[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tempo[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tempo[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tempo[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tempo[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tempo[9]_i_1\ : label is "soft_lutpair7";
begin
\address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address(0),
      O => \address[0]_i_1_n_0\
    );
\address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      O => address_1(1)
    );
\address[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A8FF0055AAFF00"
    )
        port map (
      I0 => address(0),
      I1 => address(4),
      I2 => address(3),
      I3 => address(2),
      I4 => address(1),
      I5 => address(5),
      O => address_1(2)
    );
\address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => address(0),
      I1 => address(3),
      I2 => address(2),
      I3 => address(1),
      O => address_1(3)
    );
\address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => address(0),
      I1 => address(4),
      I2 => address(3),
      I3 => address(2),
      I4 => address(1),
      O => address_1(4)
    );
\address[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => p_0_in
    );
\address[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFFFF80000000"
    )
        port map (
      I0 => address(0),
      I1 => address(4),
      I2 => address(3),
      I3 => address(2),
      I4 => address(1),
      I5 => address(5),
      O => address_1(5)
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \address[0]_i_1_n_0\,
      Q => address(0),
      R => p_0_in
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => address_1(1),
      Q => address(1),
      R => p_0_in
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => address_1(2),
      Q => address(2),
      R => p_0_in
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => address_1(3),
      Q => address(3),
      R => p_0_in
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => address_1(4),
      Q => address(4),
      R => p_0_in
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => address_1(5),
      Q => address(5),
      R => p_0_in
    );
avanzar_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      O => avanzar
    );
avanzar_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => avanzar,
      Q => duracion_0,
      R => p_0_in
    );
\duracion[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FFFE"
    )
        port map (
      I0 => duracion(2),
      I1 => duracion(3),
      I2 => duracion(4),
      I3 => duracion(1),
      I4 => duracion(0),
      I5 => g0_b0_n_0,
      O => p_1_in(0)
    );
\duracion[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFFE"
    )
        port map (
      I0 => duracion(2),
      I1 => duracion(3),
      I2 => duracion(4),
      I3 => g0_b1_n_0,
      I4 => duracion(1),
      I5 => duracion(0),
      O => p_1_in(1)
    );
\duracion[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF0000FE"
    )
        port map (
      I0 => duracion(4),
      I1 => duracion(3),
      I2 => g0_b2_n_0,
      I3 => duracion(2),
      I4 => duracion(0),
      I5 => duracion(1),
      O => p_1_in(2)
    );
\duracion[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F00E"
    )
        port map (
      I0 => duracion(4),
      I1 => g0_b3_n_0,
      I2 => duracion(3),
      I3 => duracion(1),
      I4 => duracion(0),
      I5 => duracion(2),
      O => p_1_in(3)
    );
\duracion[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FEFE0100"
    )
        port map (
      I0 => duracion(1),
      I1 => duracion(0),
      I2 => duracion(2),
      I3 => g0_b4_n_0,
      I4 => duracion(4),
      I5 => duracion(3),
      O => p_1_in(4)
    );
\duracion_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => duracion_0,
      D => p_1_in(0),
      Q => duracion(0),
      R => p_0_in
    );
\duracion_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => duracion_0,
      D => p_1_in(1),
      Q => duracion(1),
      R => p_0_in
    );
\duracion_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => duracion_0,
      D => p_1_in(2),
      Q => duracion(2),
      R => p_0_in
    );
\duracion_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => duracion_0,
      D => p_1_in(3),
      Q => duracion(3),
      R => p_0_in
    );
\duracion_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => duracion_0,
      D => p_1_in(4),
      Q => duracion(4),
      R => p_0_in
    );
\frecuencia_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000010011CFBFF18"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(3),
      I5 => address(5),
      O => \frecuencia_out[0]_i_1_n_0\
    );
\frecuencia_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000080000"
    )
        port map (
      I0 => address(2),
      I1 => address(1),
      I2 => address(5),
      I3 => address(3),
      I4 => address(0),
      I5 => address(4),
      O => frecuencia_out00
    );
\frecuencia_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0000E01300043"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(3),
      I3 => address(5),
      I4 => address(0),
      I5 => address(1),
      O => \frecuencia_out[12]_i_1_n_0\
    );
\frecuencia_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E704011020E7"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[13]_i_1_n_0\
    );
\frecuencia_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB9E010059FB"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[14]_i_1_n_0\
    );
\frecuencia_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB04011000FF"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[15]_i_1_n_0\
    );
\frecuencia_out[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E39E011059E7"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[16]_i_1_n_0\
    );
\frecuencia_out[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000012000400004"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(0),
      I3 => address(5),
      I4 => address(3),
      I5 => address(1),
      O => \frecuencia_out[17]_i_1_n_0\
    );
\frecuencia_out[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000FFFFFFFF"
    )
        port map (
      I0 => \frecuencia_out[18]_i_4_n_0\,
      I1 => \frecuencia_out[17]_i_1_n_0\,
      I2 => duracion_0,
      I3 => \frecuencia_out[18]_i_5_n_0\,
      I4 => \frecuencia_out[18]_i_6_n_0\,
      I5 => rst,
      O => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => duracion(3),
      I1 => duracion(4),
      I2 => duracion_0,
      I3 => duracion(2),
      I4 => duracion(0),
      I5 => duracion(1),
      O => \frecuencia_out[18]_i_2_n_0\
    );
\frecuencia_out[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF9E010079FB"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[18]_i_3_n_0\
    );
\frecuencia_out[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0461FEEFA600"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[18]_i_4_n_0\
    );
\frecuencia_out[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => duracion(3),
      I1 => duracion(4),
      I2 => \frecuencia_out[18]_i_7_n_0\,
      I3 => duracion(2),
      I4 => duracion(0),
      I5 => duracion(1),
      O => \frecuencia_out[18]_i_5_n_0\
    );
\frecuencia_out[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0061FEEF8600"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[18]_i_6_n_0\
    );
\frecuencia_out[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000041004102006"
    )
        port map (
      I0 => address(5),
      I1 => address(3),
      I2 => address(0),
      I3 => address(1),
      I4 => address(4),
      I5 => address(2),
      O => \frecuencia_out[18]_i_7_n_0\
    );
\frecuencia_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000200400004"
    )
        port map (
      I0 => address(2),
      I1 => address(1),
      I2 => address(0),
      I3 => address(5),
      I4 => address(3),
      I5 => address(4),
      O => \frecuencia_out[1]_i_1_n_0\
    );
\frecuencia_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E79E010079E3"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[2]_i_1_n_0\
    );
\frecuencia_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005900109A04"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(3),
      I4 => address(5),
      I5 => address(0),
      O => \frecuencia_out[3]_i_1_n_0\
    );
\frecuencia_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB04010000FB"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(1),
      I3 => address(0),
      I4 => address(5),
      I5 => address(3),
      O => \frecuencia_out[7]_i_1_n_0\
    );
\frecuencia_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000110010000800C"
    )
        port map (
      I0 => address(2),
      I1 => address(4),
      I2 => address(3),
      I3 => address(0),
      I4 => address(5),
      I5 => address(1),
      O => \frecuencia_out[9]_i_1_n_0\
    );
\frecuencia_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[0]_i_1_n_0\,
      Q => frecuencia_out(0),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => frecuencia_out00,
      Q => frecuencia_out(6),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[12]_i_1_n_0\,
      Q => frecuencia_out(7),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[13]_i_1_n_0\,
      Q => frecuencia_out(8),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[14]_i_1_n_0\,
      Q => frecuencia_out(9),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[15]_i_1_n_0\,
      Q => frecuencia_out(10),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[16]_i_1_n_0\,
      Q => frecuencia_out(11),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[17]_i_1_n_0\,
      Q => frecuencia_out(12),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[18]_i_3_n_0\,
      Q => frecuencia_out(13),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[1]_i_1_n_0\,
      Q => frecuencia_out(1),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[2]_i_1_n_0\,
      Q => frecuencia_out(2),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[3]_i_1_n_0\,
      Q => frecuencia_out(3),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[7]_i_1_n_0\,
      Q => frecuencia_out(4),
      R => \frecuencia_out[18]_i_1_n_0\
    );
\frecuencia_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frecuencia_out[18]_i_2_n_0\,
      D => \frecuencia_out[9]_i_1_n_0\,
      Q => frecuencia_out(5),
      R => \frecuencia_out[18]_i_1_n_0\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000068341A0D0"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      I5 => address(5),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001F8FC7E3F"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      I5 => address(5),
      O => g0_b1_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A8542A150"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      I5 => address(5),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000582C160B0"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      I5 => address(5),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C06030180"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      I5 => address(5),
      O => g0_b4_n_0
    );
tempo0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tempo0_carry_n_0,
      CO(2) => tempo0_carry_n_1,
      CO(1) => tempo0_carry_n_2,
      CO(0) => tempo0_carry_n_3,
      CYINIT => tempo(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => tempo(4 downto 1)
    );
\tempo0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tempo0_carry_n_0,
      CO(3) => \tempo0_carry__0_n_0\,
      CO(2) => \tempo0_carry__0_n_1\,
      CO(1) => \tempo0_carry__0_n_2\,
      CO(0) => \tempo0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => tempo(8 downto 5)
    );
\tempo0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tempo0_carry__0_n_0\,
      CO(3) => \tempo0_carry__1_n_0\,
      CO(2) => \tempo0_carry__1_n_1\,
      CO(1) => \tempo0_carry__1_n_2\,
      CO(0) => \tempo0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => tempo(12 downto 9)
    );
\tempo0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tempo0_carry__1_n_0\,
      CO(3) => \tempo0_carry__2_n_0\,
      CO(2) => \tempo0_carry__2_n_1\,
      CO(1) => \tempo0_carry__2_n_2\,
      CO(0) => \tempo0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => tempo(16 downto 13)
    );
\tempo0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tempo0_carry__2_n_0\,
      CO(3) => \tempo0_carry__3_n_0\,
      CO(2) => \tempo0_carry__3_n_1\,
      CO(1) => \tempo0_carry__3_n_2\,
      CO(0) => \tempo0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => tempo(20 downto 17)
    );
\tempo0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \tempo0_carry__3_n_0\,
      CO(3 downto 1) => \NLW_tempo0_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \tempo0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_tempo0_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(22 downto 21),
      S(3 downto 2) => B"00",
      S(1 downto 0) => tempo(22 downto 21)
    );
\tempo[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tempo(0),
      O => tempo_2(0)
    );
\tempo[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(10),
      O => tempo_2(10)
    );
\tempo[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(11),
      O => tempo_2(11)
    );
\tempo[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(12),
      O => tempo_2(12)
    );
\tempo[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(13),
      O => tempo_2(13)
    );
\tempo[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(14),
      O => tempo_2(14)
    );
\tempo[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(15),
      O => tempo_2(15)
    );
\tempo[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(16),
      O => tempo_2(16)
    );
\tempo[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(17),
      O => tempo_2(17)
    );
\tempo[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(18),
      O => tempo_2(18)
    );
\tempo[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(19),
      O => tempo_2(19)
    );
\tempo[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(1),
      O => tempo_2(1)
    );
\tempo[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(20),
      O => tempo_2(20)
    );
\tempo[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(21),
      O => tempo_2(21)
    );
\tempo[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(22),
      O => tempo_2(22)
    );
\tempo[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tempo[22]_i_3_n_0\,
      I1 => \tempo[22]_i_4_n_0\,
      I2 => \tempo[22]_i_5_n_0\,
      I3 => \tempo[22]_i_6_n_0\,
      I4 => \tempo[22]_i_7_n_0\,
      I5 => \tempo[22]_i_8_n_0\,
      O => \tempo[22]_i_2_n_0\
    );
\tempo[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => tempo(18),
      I1 => tempo(17),
      I2 => tempo(20),
      I3 => tempo(19),
      O => \tempo[22]_i_3_n_0\
    );
\tempo[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => tempo(22),
      I1 => tempo(21),
      I2 => tempo(0),
      O => \tempo[22]_i_4_n_0\
    );
\tempo[22]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => tempo(10),
      I1 => tempo(9),
      I2 => tempo(12),
      I3 => tempo(11),
      O => \tempo[22]_i_5_n_0\
    );
\tempo[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => tempo(14),
      I1 => tempo(13),
      I2 => tempo(16),
      I3 => tempo(15),
      O => \tempo[22]_i_6_n_0\
    );
\tempo[22]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tempo(6),
      I1 => tempo(5),
      I2 => tempo(8),
      I3 => tempo(7),
      O => \tempo[22]_i_7_n_0\
    );
\tempo[22]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => tempo(2),
      I1 => tempo(1),
      I2 => tempo(3),
      I3 => tempo(4),
      O => \tempo[22]_i_8_n_0\
    );
\tempo[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(2),
      O => tempo_2(2)
    );
\tempo[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(3),
      O => tempo_2(3)
    );
\tempo[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(4),
      O => tempo_2(4)
    );
\tempo[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(5),
      O => tempo_2(5)
    );
\tempo[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(6),
      O => tempo_2(6)
    );
\tempo[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(7),
      O => tempo_2(7)
    );
\tempo[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(8),
      O => tempo_2(8)
    );
\tempo[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tempo[22]_i_2_n_0\,
      I1 => data0(9),
      O => tempo_2(9)
    );
\tempo_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(0),
      Q => tempo(0),
      R => p_0_in
    );
\tempo_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(10),
      Q => tempo(10),
      R => p_0_in
    );
\tempo_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(11),
      Q => tempo(11),
      R => p_0_in
    );
\tempo_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(12),
      Q => tempo(12),
      R => p_0_in
    );
\tempo_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(13),
      Q => tempo(13),
      R => p_0_in
    );
\tempo_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(14),
      Q => tempo(14),
      R => p_0_in
    );
\tempo_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(15),
      Q => tempo(15),
      R => p_0_in
    );
\tempo_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(16),
      Q => tempo(16),
      R => p_0_in
    );
\tempo_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(17),
      Q => tempo(17),
      R => p_0_in
    );
\tempo_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(18),
      Q => tempo(18),
      R => p_0_in
    );
\tempo_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(19),
      Q => tempo(19),
      R => p_0_in
    );
\tempo_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(1),
      Q => tempo(1),
      R => p_0_in
    );
\tempo_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(20),
      Q => tempo(20),
      R => p_0_in
    );
\tempo_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(21),
      Q => tempo(21),
      R => p_0_in
    );
\tempo_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(22),
      Q => tempo(22),
      R => p_0_in
    );
\tempo_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(2),
      Q => tempo(2),
      R => p_0_in
    );
\tempo_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(3),
      Q => tempo(3),
      R => p_0_in
    );
\tempo_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(4),
      Q => tempo(4),
      R => p_0_in
    );
\tempo_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(5),
      Q => tempo(5),
      R => p_0_in
    );
\tempo_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(6),
      Q => tempo(6),
      R => p_0_in
    );
\tempo_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(7),
      Q => tempo(7),
      R => p_0_in
    );
\tempo_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(8),
      Q => tempo(8),
      R => p_0_in
    );
\tempo_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tempo_2(9),
      Q => tempo(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_CANDYMAN_FSM_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    frecuencia_out : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DEMO_CANDYMAN_FSM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DEMO_CANDYMAN_FSM_0_0 : entity is "DEMO_CANDYMAN_FSM_0_0,CANDYMAN_FSM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DEMO_CANDYMAN_FSM_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of DEMO_CANDYMAN_FSM_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of DEMO_CANDYMAN_FSM_0_0 : entity is "CANDYMAN_FSM,Vivado 2020.1";
end DEMO_CANDYMAN_FSM_0_0;

architecture STRUCTURE of DEMO_CANDYMAN_FSM_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^frecuencia_out\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  frecuencia_out(19) <= \<const0>\;
  frecuencia_out(18) <= \^frecuencia_out\(10);
  frecuencia_out(17) <= \^frecuencia_out\(17);
  frecuencia_out(16) <= \^frecuencia_out\(5);
  frecuencia_out(15 downto 14) <= \^frecuencia_out\(15 downto 14);
  frecuencia_out(13) <= \^frecuencia_out\(6);
  frecuencia_out(12) <= \^frecuencia_out\(12);
  frecuencia_out(11) <= \^frecuencia_out\(4);
  frecuencia_out(10 downto 9) <= \^frecuencia_out\(10 downto 9);
  frecuencia_out(8) <= \^frecuencia_out\(10);
  frecuencia_out(7 downto 0) <= \^frecuencia_out\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.DEMO_CANDYMAN_FSM_0_0_CANDYMAN_FSM
     port map (
      clk => clk,
      frecuencia_out(13) => \^frecuencia_out\(10),
      frecuencia_out(12) => \^frecuencia_out\(17),
      frecuencia_out(11) => \^frecuencia_out\(5),
      frecuencia_out(10 downto 9) => \^frecuencia_out\(15 downto 14),
      frecuencia_out(8) => \^frecuencia_out\(6),
      frecuencia_out(7) => \^frecuencia_out\(12),
      frecuencia_out(6) => \^frecuencia_out\(4),
      frecuencia_out(5) => \^frecuencia_out\(9),
      frecuencia_out(4) => \^frecuencia_out\(7),
      frecuencia_out(3 downto 0) => \^frecuencia_out\(3 downto 0),
      rst => rst
    );
end STRUCTURE;
