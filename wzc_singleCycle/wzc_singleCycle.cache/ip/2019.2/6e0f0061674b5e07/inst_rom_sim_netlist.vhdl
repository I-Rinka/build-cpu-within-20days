-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Oct  3 19:31:13 2021
-- Host        : Y7000P-Octo-Rinka running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_rom_sim_netlist.vhdl
-- Design      : inst_rom
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 28 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom is
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_4_n_0\ : STD_LOGIC;
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[0]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000047B008"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_3_n_0\,
      I1 => \spo[0]_INST_0_i_4_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005210000002A082"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[0]_INST_0_i_3_n_0\
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B80CA0A589994C0"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(0),
      I5 => a(2),
      O => \spo[0]_INST_0_i_4_n_0\
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[10]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[10]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(10)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000001"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[10]_INST_0_i_1_n_0\
    );
\spo[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_3_n_0\,
      I1 => \spo[10]_INST_0_i_4_n_0\,
      O => \spo[10]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404000030008484"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(4),
      I3 => a(2),
      I4 => a(0),
      I5 => a(1),
      O => \spo[10]_INST_0_i_3_n_0\
    );
\spo[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D80820BA02040080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[10]_INST_0_i_4_n_0\
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[11]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[11]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(11)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000418041"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[11]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_3_n_0\,
      I1 => \spo[11]_INST_0_i_4_n_0\,
      O => \spo[11]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"034280800080A22E"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[11]_INST_0_i_3_n_0\
    );
\spo[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA7F57AA00020500"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(4),
      O => \spo[11]_INST_0_i_4_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[12]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[12]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(12)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000060A140E4"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_3_n_0\,
      I1 => \spo[12]_INST_0_i_4_n_0\,
      O => \spo[12]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"16482ADA40AC0209"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[12]_INST_0_i_3_n_0\
    );
\spo[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78940C80A5894E03"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(3),
      I4 => a(2),
      I5 => a(0),
      O => \spo[12]_INST_0_i_4_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[13]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[13]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(13)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000002152C4"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_3_n_0\,
      I1 => \spo[13]_INST_0_i_4_n_0\,
      O => \spo[13]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"150E498A801102C8"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(2),
      I5 => a(0),
      O => \spo[13]_INST_0_i_3_n_0\
    );
\spo[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01410B8AAC48801"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[13]_INST_0_i_4_n_0\
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[14]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[14]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(14)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010044100"
    )
        port map (
      I0 => a(1),
      I1 => a(4),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(5),
      O => \spo[14]_INST_0_i_1_n_0\
    );
\spo[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_3_n_0\,
      I1 => \spo[14]_INST_0_i_4_n_0\,
      O => \spo[14]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1025400020AA3022"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[14]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"702A121801409801"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[14]_INST_0_i_4_n_0\
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[15]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[15]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(15)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000003142D1"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(3),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[15]_INST_0_i_1_n_0\
    );
\spo[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[15]_INST_0_i_3_n_0\,
      I1 => \spo[15]_INST_0_i_4_n_0\,
      O => \spo[15]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0522000265A708E2"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(2),
      O => \spo[15]_INST_0_i_3_n_0\
    );
\spo[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30505238AA501A01"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[15]_INST_0_i_4_n_0\
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[16]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[16]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(16)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005E05575D"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[16]_INST_0_i_1_n_0\
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_3_n_0\,
      I1 => \spo[16]_INST_0_i_4_n_0\,
      O => \spo[16]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5FFF5FDBAE387DB"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[16]_INST_0_i_3_n_0\
    );
\spo[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B5C4406BC575CDE"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[16]_INST_0_i_4_n_0\
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[17]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[17]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(17)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000668A9BE4"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[17]_INST_0_i_1_n_0\
    );
\spo[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_3_n_0\,
      I1 => \spo[17]_INST_0_i_4_n_0\,
      O => \spo[17]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FE68FE72774ACE4"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(3),
      I4 => a(0),
      I5 => a(2),
      O => \spo[17]_INST_0_i_3_n_0\
    );
\spo[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81A46FEDD893A503"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[17]_INST_0_i_4_n_0\
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[18]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[18]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(18)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440408"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[18]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[18]_INST_0_i_3_n_0\,
      I1 => \spo[18]_INST_0_i_4_n_0\,
      O => \spo[18]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00030030082C8084"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[18]_INST_0_i_3_n_0\
    );
\spo[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E5580000000802"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[18]_INST_0_i_4_n_0\
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[1]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[1]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000068C281"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[1]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_3_n_0\,
      I1 => \spo[1]_INST_0_i_4_n_0\,
      O => \spo[1]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1480121000828888"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(4),
      O => \spo[1]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A0AC8000D0C2835"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(4),
      I4 => a(3),
      I5 => a(2),
      O => \spo[1]_INST_0_i_4_n_0\
    );
\spo[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[20]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[20]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(19)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000012E2228"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[20]_INST_0_i_1_n_0\
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_3_n_0\,
      I1 => \spo[20]_INST_0_i_4_n_0\,
      O => \spo[20]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1008080003BD380C"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(4),
      I4 => a(3),
      I5 => a(2),
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4001D1F862400222"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[20]_INST_0_i_4_n_0\
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[21]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[21]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(20)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002095D868"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(4),
      I3 => a(3),
      I4 => a(1),
      I5 => a(5),
      O => \spo[21]_INST_0_i_1_n_0\
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_3_n_0\,
      I1 => \spo[21]_INST_0_i_4_n_0\,
      O => \spo[21]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8789CA936D916AB6"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[21]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C2C051302531A03"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[21]_INST_0_i_4_n_0\
    );
\spo[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[22]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[22]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(21)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000495CAE62"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[22]_INST_0_i_1_n_0\
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_3_n_0\,
      I1 => \spo[22]_INST_0_i_4_n_0\,
      O => \spo[22]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"89EECB9B7B539135"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[22]_INST_0_i_3_n_0\
    );
\spo[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C95E20225C16B41"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(3),
      I4 => a(2),
      I5 => a(0),
      O => \spo[22]_INST_0_i_4_n_0\
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[23]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[23]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(22)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800480"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[23]_INST_0_i_1_n_0\
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_3_n_0\,
      I1 => \spo[23]_INST_0_i_4_n_0\,
      O => \spo[23]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008040080B030005"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[23]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0286040481000021"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[23]_INST_0_i_4_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[25]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[25]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(23)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000042A801"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[25]_INST_0_i_1_n_0\
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_3_n_0\,
      I1 => \spo[25]_INST_0_i_4_n_0\,
      O => \spo[25]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"107092000B04038D"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[25]_INST_0_i_3_n_0\
    );
\spo[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0488246E80431001"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(2),
      I4 => a(0),
      I5 => a(4),
      O => \spo[25]_INST_0_i_4_n_0\
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[26]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[26]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(24)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005F11375D"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[26]_INST_0_i_3_n_0\,
      I1 => \spo[26]_INST_0_i_4_n_0\,
      O => \spo[26]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFCFE4F16DFD6C72"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[26]_INST_0_i_3_n_0\
    );
\spo[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D79E06872F9D7CB8"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[26]_INST_0_i_4_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[27]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[27]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(25)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000017040B14"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_3_n_0\,
      I1 => \spo[27]_INST_0_i_4_n_0\,
      O => \spo[27]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E90E01FCA4512450"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[27]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87920B0C02856418"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[27]_INST_0_i_4_n_0\
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[28]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[28]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(26)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005E01155D"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_3_n_0\,
      I1 => \spo[28]_INST_0_i_4_n_0\,
      O => \spo[28]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FF858709A7FDA02"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(1),
      I3 => a(4),
      I4 => a(2),
      I5 => a(0),
      O => \spo[28]_INST_0_i_3_n_0\
    );
\spo[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"939E159E2E1DFC18"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[28]_INST_0_i_4_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[29]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[29]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(27)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005E51175D"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_3_n_0\,
      I1 => \spo[29]_INST_0_i_4_n_0\,
      O => \spo[29]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FE7E4F17CEF6C62"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[29]_INST_0_i_3_n_0\
    );
\spo[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D79E179F2F9DFCB8"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[29]_INST_0_i_4_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[2]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[2]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(2)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000060600284"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_3_n_0\,
      I1 => \spo[2]_INST_0_i_4_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"024038C8208C0085"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4068B028DD15A42"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(2),
      I5 => a(0),
      O => \spo[2]_INST_0_i_4_n_0\
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[31]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[31]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(28)
    );
\spo[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001080208"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[31]_INST_0_i_1_n_0\
    );
\spo[31]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_3_n_0\,
      I1 => \spo[31]_INST_0_i_4_n_0\,
      O => \spo[31]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A008008002154410"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(3),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[31]_INST_0_i_3_n_0\
    );
\spo[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000042100100"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[31]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[3]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[3]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(3)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000201008"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_3_n_0\,
      I1 => \spo[3]_INST_0_i_4_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1600000000000082"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0219099802482000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(2),
      I4 => a(0),
      I5 => a(4),
      O => \spo[3]_INST_0_i_4_n_0\
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[4]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[4]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(4)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008800000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => \spo[4]_INST_0_i_1_n_0\
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_3_n_0\,
      I1 => \spo[4]_INST_0_i_4_n_0\,
      O => \spo[4]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0408204028008000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(1),
      O => \spo[4]_INST_0_i_3_n_0\
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800600108E910400"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(3),
      I4 => a(2),
      I5 => a(0),
      O => \spo[4]_INST_0_i_4_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[5]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(5)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028D3AE41"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[5]_INST_0_i_1_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_3_n_0\,
      I1 => \spo[5]_INST_0_i_4_n_0\,
      O => \spo[5]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E26D01315B3A22A"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(0),
      I5 => a(2),
      O => \spo[5]_INST_0_i_3_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"286CE4B0B401A3E5"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(0),
      I5 => a(3),
      O => \spo[5]_INST_0_i_4_n_0\
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[6]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(6)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011008"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[6]_INST_0_i_1_n_0\
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_3_n_0\,
      I1 => \spo[6]_INST_0_i_4_n_0\,
      O => \spo[6]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000040000002"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_3_n_0\
    );
\spo[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C00801280A084480"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(4),
      O => \spo[6]_INST_0_i_4_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[7]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[7]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(7)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000041001"
    )
        port map (
      I0 => a(1),
      I1 => a(4),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(5),
      O => \spo[7]_INST_0_i_1_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_3_n_0\,
      I1 => \spo[7]_INST_0_i_4_n_0\,
      O => \spo[7]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000040000000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      I4 => a(0),
      I5 => a(1),
      O => \spo[7]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50152200009C98A0"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[7]_INST_0_i_4_n_0\
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[8]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[8]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(8)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000201001"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[8]_INST_0_i_1_n_0\
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_3_n_0\,
      I1 => \spo[8]_INST_0_i_4_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0402100000000280"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[8]_INST_0_i_3_n_0\
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400122A8021818A0"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[8]_INST_0_i_4_n_0\
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[9]_INST_0_i_1_n_0\,
      I2 => a(6),
      I3 => a(7),
      I4 => \spo[9]_INST_0_i_2_n_0\,
      I5 => a(9),
      O => spo(9)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028000020"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[9]_INST_0_i_1_n_0\
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_3_n_0\,
      I1 => \spo[9]_INST_0_i_4_n_0\,
      O => \spo[9]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0408204020088202"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(1),
      O => \spo[9]_INST_0_i_3_n_0\
    );
\spo[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"809205B01805A880"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[9]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 28 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
begin
\gen_rom.rom_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
     port map (
      a(9 downto 0) => a(9 downto 0),
      spo(28 downto 0) => spo(28 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1024;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "inst_rom.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(31) <= \^spo\(31);
  spo(30) <= \<const0>\;
  spo(29 downto 25) <= \^spo\(29 downto 25);
  spo(24) <= \^spo\(23);
  spo(23 downto 20) <= \^spo\(23 downto 20);
  spo(19) <= \^spo\(18);
  spo(18 downto 0) <= \^spo\(18 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth
     port map (
      a(9 downto 0) => a(9 downto 0),
      spo(28) => \^spo\(31),
      spo(27 downto 23) => \^spo\(29 downto 25),
      spo(22 downto 19) => \^spo\(23 downto 20),
      spo(18 downto 0) => \^spo\(18 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "inst_rom,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 10;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1024;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "inst_rom.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(9 downto 0) => B"0000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
