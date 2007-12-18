-- Xilinx Vhdl netlist produced by netgen application (version G.26)
-- Command       : -intstyle ise -rpw 100 -tpw 0 -ar Structure -xon true -w -ofmt vhdl -sim pub.ngd pub_translate.vhd 
-- Input file    : pub.ngd
-- Output file   : pub_translate.vhd
-- Design name   : pub
-- # of Entities : 1
-- Xilinx        : C:/Xilinx
-- Device        : 2s100tq144-5

-- This vhdl netlist is a simulation model and uses simulation 
-- primitives which may not represent the true implementation of the 
-- device, however the netlist is functionally correct and should not 
-- be modified. This file cannot be synthesized and should only be used 
-- with supported simulation tools.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity pub is
  port (
    RESET : in STD_LOGIC := 'X'; 
    CSn : in STD_LOGIC := 'X'; 
    CRX : in STD_LOGIC := 'X'; 
    TSYNC : in STD_LOGIC := 'X'; 
    CLK16M : in STD_LOGIC := 'X'; 
    RDn : in STD_LOGIC := 'X'; 
    WRn : in STD_LOGIC := 'X'; 
    SENSEn : in STD_LOGIC := 'X'; 
    EIRQn : in STD_LOGIC := 'X'; 
    HSSC : in STD_LOGIC := 'X'; 
    FCC : inout STD_LOGIC; 
    FCD : inout STD_LOGIC; 
    FCEn : inout STD_LOGIC; 
    CTX : inout STD_LOGIC; 
    SYNC4 : inout STD_LOGIC; 
    CLK4M : inout STD_LOGIC; 
    CLK8M : inout STD_LOGIC; 
    SYNC2 : out STD_LOGIC; 
    Test : out STD_LOGIC; 
    INTn : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 5 downto 0 ); 
    PA : in STD_LOGIC_VECTOR ( 7 downto 5 ); 
    RPCM : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    TPCM : inout STD_LOGIC_VECTOR ( 3 downto 0 ); 
    KA : inout STD_LOGIC_VECTOR ( 5 downto 0 ); 
    D : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    PC : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    LED : out STD_LOGIC_VECTOR ( 3 downto 1 ) 
  );
end pub;

architecture Structure of pub is
  signal RESET_IBUF : STD_LOGIC; 
  signal CSn_IBUF : STD_LOGIC; 
  signal CRX_IBUF : STD_LOGIC; 
  signal TSYNC_IBUF : STD_LOGIC; 
  signal CLK16M_BUFGP : STD_LOGIC; 
  signal RDn_IBUF : STD_LOGIC; 
  signal WRn_IBUF : STD_LOGIC; 
  signal SENSEn_IBUF : STD_LOGIC; 
  signal EIRQn_IBUF : STD_LOGIC; 
  signal HSSC_IBUF : STD_LOGIC; 
  signal Test_OBUF : STD_LOGIC; 
  signal INTn_OBUF : STD_LOGIC; 
  signal Madd_n0067_inst_cy_15 : STD_LOGIC; 
  signal EIRQI2 : STD_LOGIC; 
  signal EIRQI : STD_LOGIC; 
  signal EIRQO : STD_LOGIC; 
  signal SENSEO : STD_LOGIC; 
  signal MFCC : STD_LOGIC; 
  signal MFCD : STD_LOGIC; 
  signal MFCE : STD_LOGIC; 
  signal MCPU : STD_LOGIC; 
  signal MCLK8M : STD_LOGIC; 
  signal Madd_n0067_inst_cy_10 : STD_LOGIC; 
  signal TPCM_2_IOBUF : STD_LOGIC; 
  signal MCTXE : STD_LOGIC; 
  signal MSYNC2 : STD_LOGIC; 
  signal MSYNC4 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_13 : STD_LOGIC; 
  signal LED_G : STD_LOGIC; 
  signal SYNC4I : STD_LOGIC; 
  signal LED_R : STD_LOGIC; 
  signal LED_Y : STD_LOGIC; 
  signal Q_n0023 : STD_LOGIC; 
  signal Q_n0024 : STD_LOGIC; 
  signal Q_n0026 : STD_LOGIC; 
  signal Q_n0029 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_12 : STD_LOGIC; 
  signal IEN_CTXE : STD_LOGIC; 
  signal Q_n0047 : STD_LOGIC; 
  signal Q_n0053 : STD_LOGIC; 
  signal Q_n0048 : STD_LOGIC; 
  signal Q_n0054 : STD_LOGIC; 
  signal Q_n0049 : STD_LOGIC; 
  signal Q_n0060 : STD_LOGIC; 
  signal Q_n0055 : STD_LOGIC; 
  signal Q_n0111 : STD_LOGIC; 
  signal Q_n0061 : STD_LOGIC; 
  signal Q_n0056 : STD_LOGIC; 
  signal Q_n0112 : STD_LOGIC; 
  signal Q_n0057 : STD_LOGIC; 
  signal N8070 : STD_LOGIC; 
  signal Q_n0058 : STD_LOGIC; 
  signal Q_n0109 : STD_LOGIC; 
  signal Q_n0059 : STD_LOGIC; 
  signal Q_n0115 : STD_LOGIC; 
  signal Q_n0121 : STD_LOGIC; 
  signal Q_n0071 : STD_LOGIC; 
  signal CTX_CNT_7_rt : STD_LOGIC; 
  signal PCM1MUX : STD_LOGIC; 
  signal Q_n0073 : STD_LOGIC; 
  signal Q_n0119 : STD_LOGIC; 
  signal Q_n0074 : STD_LOGIC; 
  signal N8077 : STD_LOGIC; 
  signal Q_n0075 : STD_LOGIC; 
  signal IEN_FC : STD_LOGIC; 
  signal Q_n0082 : STD_LOGIC; 
  signal N8118 : STD_LOGIC; 
  signal Q_n0085 : STD_LOGIC; 
  signal Q_n0135 : STD_LOGIC; 
  signal Q_n0140 : STD_LOGIC; 
  signal Q_n0086 : STD_LOGIC; 
  signal CTX_CNT_10_rt : STD_LOGIC; 
  signal Q_n0087 : STD_LOGIC; 
  signal N8152 : STD_LOGIC; 
  signal Q_n0088 : STD_LOGIC; 
  signal Q_n0138 : STD_LOGIC; 
  signal N7959 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_11 : STD_LOGIC; 
  signal Q_n0200 : STD_LOGIC; 
  signal N8140 : STD_LOGIC; 
  signal IEN_PCM1 : STD_LOGIC; 
  signal Q_n0201 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net22 : STD_LOGIC; 
  signal Q_n0202 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_9 : STD_LOGIC; 
  signal TS_CNT_inst_sum_17 : STD_LOGIC; 
  signal N7972 : STD_LOGIC; 
  signal N12158 : STD_LOGIC; 
  signal IEN_EIRQ : STD_LOGIC; 
  signal Q_n0204 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net23 : STD_LOGIC; 
  signal N8123 : STD_LOGIC; 
  signal Q_n0210 : STD_LOGIC; 
  signal TS_CNT_inst_cy_26 : STD_LOGIC; 
  signal Q_n0206 : STD_LOGIC; 
  signal N8059 : STD_LOGIC; 
  signal Madd_n0068_inst_lut2_4 : STD_LOGIC; 
  signal CTX_CNT_1_rt : STD_LOGIC; 
  signal Q_n0212 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_7 : STD_LOGIC; 
  signal Q_n0208 : STD_LOGIC; 
  signal Q_n0213 : STD_LOGIC; 
  signal N7951 : STD_LOGIC; 
  signal CTX_CNT_2_rt : STD_LOGIC; 
  signal N7752 : STD_LOGIC; 
  signal N7577 : STD_LOGIC; 
  signal N12138 : STD_LOGIC; 
  signal N7964 : STD_LOGIC; 
  signal CTX_CNT_3_rt : STD_LOGIC; 
  signal Madd_n0068_inst_cy_14 : STD_LOGIC; 
  signal MCPU_N846 : STD_LOGIC; 
  signal D_6_IOBUF : STD_LOGIC; 
  signal Q_n0177 : STD_LOGIC; 
  signal IEN_CRX : STD_LOGIC; 
  signal Q_n0228 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_16 : STD_LOGIC; 
  signal LED_G_N851 : STD_LOGIC; 
  signal IEN_CTX : STD_LOGIC; 
  signal CTX_CNT_4_rt : STD_LOGIC; 
  signal TS_CNT_inst_cy_21 : STD_LOGIC; 
  signal Q_n0198 : STD_LOGIC; 
  signal Q_n0199 : STD_LOGIC; 
  signal Q_n0304 : STD_LOGIC; 
  signal Q_n0305 : STD_LOGIC; 
  signal Q_n0306 : STD_LOGIC; 
  signal N12154 : STD_LOGIC; 
  signal TS_CNT_inst_cy_25 : STD_LOGIC; 
  signal Q_n0272 : STD_LOGIC; 
  signal CTX_CNT_9_rt : STD_LOGIC; 
  signal Q_n0274 : STD_LOGIC; 
  signal Q_n0275 : STD_LOGIC; 
  signal Q_n0280 : STD_LOGIC; 
  signal Q_n0276 : STD_LOGIC; 
  signal Q_n0277 : STD_LOGIC; 
  signal Q_n0282 : STD_LOGIC; 
  signal Q_n0278 : STD_LOGIC; 
  signal Q_n0283 : STD_LOGIC; 
  signal Q_n0279 : STD_LOGIC; 
  signal Q_n0284 : STD_LOGIC; 
  signal D_7_IOBUF : STD_LOGIC; 
  signal Q_n0285 : STD_LOGIC; 
  signal Q_n0286 : STD_LOGIC; 
  signal I72_N973 : STD_LOGIC; 
  signal FCEn_IOBUF : STD_LOGIC; 
  signal Madd_n0067_inst_cy_8 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_11 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_14 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_7 : STD_LOGIC; 
  signal Madd_n0067_inst_lut2_4 : STD_LOGIC; 
  signal D_0_IOBUF : STD_LOGIC; 
  signal D_1_IOBUF : STD_LOGIC; 
  signal D_2_IOBUF : STD_LOGIC; 
  signal D_3_IOBUF : STD_LOGIC; 
  signal D_5_IOBUF : STD_LOGIC; 
  signal D_4_IOBUF : STD_LOGIC; 
  signal N12156 : STD_LOGIC; 
  signal PC_3_OBUFT : STD_LOGIC; 
  signal MCLK4M : STD_LOGIC; 
  signal LED_3_OBUF : STD_LOGIC; 
  signal LED_2_OBUF : STD_LOGIC; 
  signal LED_1_OBUF : STD_LOGIC; 
  signal A_5_IBUF : STD_LOGIC; 
  signal A_4_IBUF : STD_LOGIC; 
  signal A_3_IBUF : STD_LOGIC; 
  signal A_2_IBUF : STD_LOGIC; 
  signal A_1_IBUF : STD_LOGIC; 
  signal A_0_IBUF : STD_LOGIC; 
  signal PA_7_IBUF : STD_LOGIC; 
  signal PA_6_IBUF : STD_LOGIC; 
  signal PA_5_IBUF : STD_LOGIC; 
  signal RPCM_3_IBUF : STD_LOGIC; 
  signal RPCM_2_IBUF : STD_LOGIC; 
  signal RPCM_1_IBUF : STD_LOGIC; 
  signal RPCM_0_IBUF : STD_LOGIC; 
  signal N12166 : STD_LOGIC; 
  signal N12148 : STD_LOGIC; 
  signal N12162 : STD_LOGIC; 
  signal N12150 : STD_LOGIC; 
  signal N12160 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_3 : STD_LOGIC; 
  signal N12164 : STD_LOGIC; 
  signal N12146 : STD_LOGIC; 
  signal MCTX_RP_0_N1154 : STD_LOGIC; 
  signal N12152 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_7 : STD_LOGIC; 
  signal TS_CNT_inst_sum_22 : STD_LOGIC; 
  signal Mcompar_n0111_inst_cy_0 : STD_LOGIC; 
  signal Mcompar_n0111_inst_lut4_0 : STD_LOGIC; 
  signal Mcompar_n0111_inst_lut4_2 : STD_LOGIC; 
  signal Mcompar_n0111_inst_cy_1 : STD_LOGIC; 
  signal Mcompar_n0111_inst_lut4_1 : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_cy_23 : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_4 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_sum_18 : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_cy_22 : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_sum_23 : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_sum_21 : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_8 : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_cy_18 : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_0 : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_cy_19 : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_sum_15 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_cy_4 : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_cy_5 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_1 : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_cy_3 : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal Madd_n0080_inst_cy_4 : STD_LOGIC; 
  signal Madd_n0080_inst_cy_5 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net21 : STD_LOGIC; 
  signal Madd_n0080_inst_cy_3 : STD_LOGIC; 
  signal Madd_n0080_inst_lut2_0 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net26 : STD_LOGIC; 
  signal TS_CNT_inst_sum_19 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net25 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net24 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_2 : STD_LOGIC; 
  signal TS_CNT_inst_sum_16 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_5 : STD_LOGIC; 
  signal TS_CNT_inst_cy_20 : STD_LOGIC; 
  signal TS_CNT_inst_cy_24 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_15 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_10 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_13 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_12 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_9 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_16 : STD_LOGIC; 
  signal TS_CNT_inst_sum_20 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_8 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_11 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_14 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_7 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_lut2_4 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_15 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_10 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_13 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_12 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_9 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_16 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_6 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_8 : STD_LOGIC; 
  signal N8135 : STD_LOGIC; 
  signal N7939 : STD_LOGIC; 
  signal N12407 : STD_LOGIC; 
  signal N8047 : STD_LOGIC; 
  signal N8087 : STD_LOGIC; 
  signal N8112 : STD_LOGIC; 
  signal N7982 : STD_LOGIC; 
  signal CTX_CNT_5_rt : STD_LOGIC; 
  signal N8106 : STD_LOGIC; 
  signal N7765 : STD_LOGIC; 
  signal N8130 : STD_LOGIC; 
  signal N8299 : STD_LOGIC; 
  signal CTX_CNT_8_rt : STD_LOGIC; 
  signal CHOICE614 : STD_LOGIC; 
  signal N12318 : STD_LOGIC; 
  signal CHOICE116 : STD_LOGIC; 
  signal N12144 : STD_LOGIC; 
  signal CHOICE627 : STD_LOGIC; 
  signal CHOICE486 : STD_LOGIC; 
  signal CHOICE439 : STD_LOGIC; 
  signal CHOICE449 : STD_LOGIC; 
  signal CHOICE617 : STD_LOGIC; 
  signal CHOICE59 : STD_LOGIC; 
  signal CTX_CNT_6_rt : STD_LOGIC; 
  signal CHOICE548 : STD_LOGIC; 
  signal CHOICE510 : STD_LOGIC; 
  signal MCTX_RP_3_rt : STD_LOGIC; 
  signal CHOICE370 : STD_LOGIC; 
  signal CHOICE371 : STD_LOGIC; 
  signal N12122 : STD_LOGIC; 
  signal CHOICE378 : STD_LOGIC; 
  signal PCM1WP_3_rt : STD_LOGIC; 
  signal N8338 : STD_LOGIC; 
  signal CTX_WP_3_rt : STD_LOGIC; 
  signal N12381 : STD_LOGIC; 
  signal CHOICE139 : STD_LOGIC; 
  signal CHOICE566 : STD_LOGIC; 
  signal CHOICE70 : STD_LOGIC; 
  signal CRX_WP_3_rt : STD_LOGIC; 
  signal CHOICE516 : STD_LOGIC; 
  signal N12330 : STD_LOGIC; 
  signal CHOICE128 : STD_LOGIC; 
  signal CHOICE605 : STD_LOGIC; 
  signal CHOICE522 : STD_LOGIC; 
  signal EIRQ_WP_3_rt : STD_LOGIC; 
  signal CHOICE613 : STD_LOGIC; 
  signal CHOICE537 : STD_LOGIC; 
  signal CHOICE489 : STD_LOGIC; 
  signal CHOICE203 : STD_LOGIC; 
  signal CHOICE424 : STD_LOGIC; 
  signal CHOICE483 : STD_LOGIC; 
  signal N10352 : STD_LOGIC; 
  signal FCE_WP_3_rt : STD_LOGIC; 
  signal N12142 : STD_LOGIC; 
  signal CHOICE597 : STD_LOGIC; 
  signal CHOICE434 : STD_LOGIC; 
  signal N8382 : STD_LOGIC; 
  signal N12415 : STD_LOGIC; 
  signal CHOICE591 : STD_LOGIC; 
  signal CHOICE520 : STD_LOGIC; 
  signal CHOICE209 : STD_LOGIC; 
  signal CHOICE446 : STD_LOGIC; 
  signal CHOICE93 : STD_LOGIC; 
  signal CHOICE584 : STD_LOGIC; 
  signal MCTX_WP_3_rt : STD_LOGIC; 
  signal CHOICE162 : STD_LOGIC; 
  signal FCE_RP_3_rt : STD_LOGIC; 
  signal CHOICE574 : STD_LOGIC; 
  signal CTX_RP_3_rt : STD_LOGIC; 
  signal N12421 : STD_LOGIC; 
  signal CRX_RP_3_rt : STD_LOGIC; 
  signal CHOICE536 : STD_LOGIC; 
  signal CHOICE368 : STD_LOGIC; 
  signal CHOICE393 : STD_LOGIC; 
  signal N12302 : STD_LOGIC; 
  signal CHOICE186 : STD_LOGIC; 
  signal CHOICE398 : STD_LOGIC; 
  signal CHOICE194 : STD_LOGIC; 
  signal CHOICE241 : STD_LOGIC; 
  signal CHOICE621 : STD_LOGIC; 
  signal CHOICE191 : STD_LOGIC; 
  signal CHOICE580 : STD_LOGIC; 
  signal N12393 : STD_LOGIC; 
  signal N12326 : STD_LOGIC; 
  signal CHOICE472 : STD_LOGIC; 
  signal N12118 : STD_LOGIC; 
  signal PCM1RP_3_rt : STD_LOGIC; 
  signal CHOICE206 : STD_LOGIC; 
  signal CHOICE231 : STD_LOGIC; 
  signal CHOICE82 : STD_LOGIC; 
  signal N12126 : STD_LOGIC; 
  signal CHOICE208 : STD_LOGIC; 
  signal N12314 : STD_LOGIC; 
  signal N12130 : STD_LOGIC; 
  signal N12132 : STD_LOGIC; 
  signal N12298 : STD_LOGIC; 
  signal N8456 : STD_LOGIC; 
  signal CHOICE525 : STD_LOGIC; 
  signal N12411 : STD_LOGIC; 
  signal N12120 : STD_LOGIC; 
  signal N9693 : STD_LOGIC; 
  signal CHOICE461 : STD_LOGIC; 
  signal N12140 : STD_LOGIC; 
  signal CHOICE514 : STD_LOGIC; 
  signal N12124 : STD_LOGIC; 
  signal N12334 : STD_LOGIC; 
  signal N12306 : STD_LOGIC; 
  signal CHOICE244 : STD_LOGIC; 
  signal N12136 : STD_LOGIC; 
  signal CHOICE357 : STD_LOGIC; 
  signal EIRQ_RP_3_rt : STD_LOGIC; 
  signal CHOICE479 : STD_LOGIC; 
  signal N12322 : STD_LOGIC; 
  signal MCTX_CNT_3_rt : STD_LOGIC; 
  signal N12128 : STD_LOGIC; 
  signal N12134 : STD_LOGIC; 
  signal N9893 : STD_LOGIC; 
  signal CHOICE410 : STD_LOGIC; 
  signal CHOICE559 : STD_LOGIC; 
  signal CHOICE213 : STD_LOGIC; 
  signal CHOICE192 : STD_LOGIC; 
  signal CHOICE406 : STD_LOGIC; 
  signal CHOICE151 : STD_LOGIC; 
  signal CHOICE174 : STD_LOGIC; 
  signal N12310 : STD_LOGIC; 
  signal CNT_10_rt : STD_LOGIC; 
  signal CHOICE444 : STD_LOGIC; 
  signal CHOICE373 : STD_LOGIC; 
  signal CHOICE375 : STD_LOGIC; 
  signal CHOICE105 : STD_LOGIC; 
  signal CRX_CNT_10_rt : STD_LOGIC; 
  signal N12435 : STD_LOGIC; 
  signal N9839 : STD_LOGIC; 
  signal N8526 : STD_LOGIC; 
  signal CHOICE247 : STD_LOGIC; 
  signal CHOICE604 : STD_LOGIC; 
  signal SYNC4I_rt : STD_LOGIC; 
  signal MCTX_RP_2_rt : STD_LOGIC; 
  signal MCTX_RP_1_rt : STD_LOGIC; 
  signal PCM1WP_2_rt : STD_LOGIC; 
  signal PCM1WP_1_rt : STD_LOGIC; 
  signal CTX_WP_2_rt : STD_LOGIC; 
  signal CTX_WP_1_rt : STD_LOGIC; 
  signal CRX_WP_2_rt : STD_LOGIC; 
  signal CRX_WP_1_rt : STD_LOGIC; 
  signal EIRQ_WP_2_rt : STD_LOGIC; 
  signal EIRQ_WP_1_rt : STD_LOGIC; 
  signal FCE_WP_2_rt : STD_LOGIC; 
  signal FCE_WP_1_rt : STD_LOGIC; 
  signal MCTX_WP_2_rt : STD_LOGIC; 
  signal MCTX_WP_1_rt : STD_LOGIC; 
  signal FCE_RP_2_rt : STD_LOGIC; 
  signal FCE_RP_1_rt : STD_LOGIC; 
  signal CTX_RP_2_rt : STD_LOGIC; 
  signal CTX_RP_1_rt : STD_LOGIC; 
  signal CRX_RP_2_rt : STD_LOGIC; 
  signal CRX_RP_1_rt : STD_LOGIC; 
  signal PCM1RP_2_rt : STD_LOGIC; 
  signal PCM1RP_1_rt : STD_LOGIC; 
  signal EIRQ_RP_2_rt : STD_LOGIC; 
  signal EIRQ_RP_1_rt : STD_LOGIC; 
  signal MCTX_CNT_2_rt : STD_LOGIC; 
  signal MCTX_CNT_1_rt : STD_LOGIC; 
  signal CNT_7_rt : STD_LOGIC; 
  signal CNT_1_rt : STD_LOGIC; 
  signal CNT_2_rt : STD_LOGIC; 
  signal CNT_3_rt : STD_LOGIC; 
  signal CNT_4_rt : STD_LOGIC; 
  signal CNT_9_rt : STD_LOGIC; 
  signal CNT_5_rt : STD_LOGIC; 
  signal CNT_8_rt : STD_LOGIC; 
  signal CNT_6_rt : STD_LOGIC; 
  signal CRX_CNT_7_rt : STD_LOGIC; 
  signal CRX_CNT_1_rt : STD_LOGIC; 
  signal CRX_CNT_2_rt : STD_LOGIC; 
  signal CRX_CNT_3_rt : STD_LOGIC; 
  signal CRX_CNT_4_rt : STD_LOGIC; 
  signal CRX_CNT_9_rt : STD_LOGIC; 
  signal CRX_CNT_5_rt : STD_LOGIC; 
  signal CRX_CNT_8_rt : STD_LOGIC; 
  signal CRX_CNT_6_rt : STD_LOGIC; 
  signal SYNC4I_1 : STD_LOGIC; 
  signal N12441 : STD_LOGIC; 
  signal N12443 : STD_LOGIC; 
  signal N12446 : STD_LOGIC; 
  signal N12448 : STD_LOGIC; 
  signal N12451 : STD_LOGIC; 
  signal N12453 : STD_LOGIC; 
  signal RESET_IBUF_1 : STD_LOGIC; 
  signal N12460 : STD_LOGIC; 
  signal N12462 : STD_LOGIC; 
  signal N12467 : STD_LOGIC; 
  signal N12469 : STD_LOGIC; 
  signal N12473 : STD_LOGIC; 
  signal N12494 : STD_LOGIC; 
  signal SYNC4I_rt_O : STD_LOGIC; 
  signal Ker7957_SW0_O : STD_LOGIC; 
  signal Q_n0039_0_1_O : STD_LOGIC; 
  signal Ker7962_SW0_O : STD_LOGIC; 
  signal Mcompar_n0111_inst_lut4_11_O : STD_LOGIC; 
  signal Mcompar_n0111_inst_lut4_01_O : STD_LOGIC; 
  signal Mcompar_n0111_inst_lut4_21_O : STD_LOGIC; 
  signal Q_n0039_7_1_O : STD_LOGIC; 
  signal Q_n0039_6_1_O : STD_LOGIC; 
  signal Q_n0039_5_1_O : STD_LOGIC; 
  signal Q_n0039_4_1_O : STD_LOGIC; 
  signal Q_n0039_3_1_O : STD_LOGIC; 
  signal Q_n0039_2_1_O : STD_LOGIC; 
  signal Q_n0039_1_1_O : STD_LOGIC; 
  signal Q_n0042_10_1_O : STD_LOGIC; 
  signal Q_n0042_0_1_O : STD_LOGIC; 
  signal Q_n0042_9_1_O : STD_LOGIC; 
  signal Q_n0042_8_1_O : STD_LOGIC; 
  signal Q_n0042_7_1_O : STD_LOGIC; 
  signal Q_n0042_6_1_O : STD_LOGIC; 
  signal Q_n0042_5_1_O : STD_LOGIC; 
  signal Q_n0042_4_1_O : STD_LOGIC; 
  signal Q_n0042_3_1_O : STD_LOGIC; 
  signal Q_n0042_2_1_O : STD_LOGIC; 
  signal Q_n0042_1_1_O : STD_LOGIC; 
  signal Q_n0039_10_1_O : STD_LOGIC; 
  signal TS_CNT_inst_lut3_41_O : STD_LOGIC; 
  signal TS_CNT_inst_lut3_01_O : STD_LOGIC; 
  signal TS_CNT_inst_lut3_31_O : STD_LOGIC; 
  signal TS_CNT_inst_lut3_21_O : STD_LOGIC; 
  signal TS_CNT_inst_lut3_11_O : STD_LOGIC; 
  signal Q_n0039_8_1_O : STD_LOGIC; 
  signal Q_n00291_O : STD_LOGIC; 
  signal Q_n0039_9_1_O : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_5_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_5_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_5_SPO : STD_LOGIC; 
  signal Mram_EIRQ_FIFO_inst_ramx_8_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_5_SPO : STD_LOGIC; 
  signal Mram_SENSE_FIFO_inst_ramx_9_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_5_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_6_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_7_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_0_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_1_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_2_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_3_SPO : STD_LOGIC; 
  signal Mram_MCTX_FIFO_inst_ramx_4_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_6_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_7_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_0_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_1_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_2_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_3_SPO : STD_LOGIC; 
  signal Mram_FCE_FIFO_inst_ramx_4_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_6_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_7_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_0_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_1_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_2_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_3_SPO : STD_LOGIC; 
  signal Mram_CRX_FIFO_inst_ramx_4_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_6_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_7_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_0_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_1_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_2_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_3_SPO : STD_LOGIC; 
  signal Mram_CTX_FIFO_inst_ramx_4_SPO : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_6_SPO : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_7_SPO : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_0_SPO : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_1_SPO : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_2_SPO : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_3_SPO : STD_LOGIC; 
  signal Mram_PCM1FIFO_inst_ramx_4_SPO : STD_LOGIC; 
  signal CLK16M_BUFGP_IBUFG : STD_LOGIC; 
  signal GSR : STD_LOGIC; 
  signal CTX_CNT_3_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_2_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_0_GSR_OR : STD_LOGIC; 
  signal MCTXO_7_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_1_GSR_OR : STD_LOGIC; 
  signal MCTXO_6_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_4_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_9_GSR_OR : STD_LOGIC; 
  signal CRXI_0_GSR_AND : STD_LOGIC; 
  signal CRXI_1_GSR_AND : STD_LOGIC; 
  signal CRX_CNT_3_GSR_OR : STD_LOGIC; 
  signal PCM1TS_3_GSR_OR : STD_LOGIC; 
  signal PCM1TS_2_GSR_OR : STD_LOGIC; 
  signal PCM1TS_1_GSR_OR : STD_LOGIC; 
  signal PCM1TS_0_GSR_OR : STD_LOGIC; 
  signal PCM1SEL_1_GSR_OR : STD_LOGIC; 
  signal PCM1SEL_0_GSR_OR : STD_LOGIC; 
  signal MCTXO_1_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_9_GSR_OR : STD_LOGIC; 
  signal MCTXO_2_GSR_OR : STD_LOGIC; 
  signal MCTX_CNT_2_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_8_GSR_OR : STD_LOGIC; 
  signal MCTXO_0_GSR_OR : STD_LOGIC; 
  signal MCTX_CNT_1_GSR_OR : STD_LOGIC; 
  signal PCM1TS_4_GSR_OR : STD_LOGIC; 
  signal MCTXO_5_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_8_GSR_OR : STD_LOGIC; 
  signal CRXI_2_GSR_AND : STD_LOGIC; 
  signal CRXI_3_GSR_AND : STD_LOGIC; 
  signal CRXI_4_GSR_AND : STD_LOGIC; 
  signal CRXI_5_GSR_AND : STD_LOGIC; 
  signal CRXI_6_GSR_AND : STD_LOGIC; 
  signal MCTXO_4_GSR_OR : STD_LOGIC; 
  signal MCTXO_3_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_6_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_7_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_7_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_6_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_4_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_5_GSR_OR : STD_LOGIC; 
  signal MCTX_CNT_0_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_2_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_1_GSR_OR : STD_LOGIC; 
  signal CRX_CNT_0_GSR_OR : STD_LOGIC; 
  signal CTXI_6_GSR_AND : STD_LOGIC; 
  signal CTXI_5_GSR_AND : STD_LOGIC; 
  signal CTXI_4_GSR_AND : STD_LOGIC; 
  signal CTXI_3_GSR_AND : STD_LOGIC; 
  signal CTXI_2_GSR_AND : STD_LOGIC; 
  signal CTXI_1_GSR_AND : STD_LOGIC; 
  signal CTXI_0_GSR_AND : STD_LOGIC; 
  signal CTX_CNT_5_GSR_OR : STD_LOGIC; 
  signal FCDI_7_GSR_OR : STD_LOGIC; 
  signal FCDI_6_GSR_OR : STD_LOGIC; 
  signal FCDI_5_GSR_OR : STD_LOGIC; 
  signal FCDI_4_GSR_OR : STD_LOGIC; 
  signal FCDI_3_GSR_OR : STD_LOGIC; 
  signal FCDI_2_GSR_OR : STD_LOGIC; 
  signal FCDI_1_GSR_OR : STD_LOGIC; 
  signal FCDI_0_GSR_OR : STD_LOGIC; 
  signal MCTX_CNT_3_GSR_OR : STD_LOGIC; 
  signal MCTX_RP_2_GSR_OR : STD_LOGIC; 
  signal MCTXO_8_GSR_OR : STD_LOGIC; 
  signal PCM1WP_2_GSR_OR : STD_LOGIC; 
  signal SYNC4I_GSR_OR : STD_LOGIC; 
  signal TS_CNT_6_GSR_OR : STD_LOGIC; 
  signal CTX_CNT_10_GSR_OR : STD_LOGIC; 
  signal CTX_WP_2_GSR_OR : STD_LOGIC; 
  signal CTXI_7_GSR_AND : STD_LOGIC; 
  signal CRX_CNT_10_GSR_OR : STD_LOGIC; 
  signal CRX_WP_2_GSR_OR : STD_LOGIC; 
  signal CRXI_7_GSR_AND : STD_LOGIC; 
  signal EIRQ_WP_2_GSR_OR : STD_LOGIC; 
  signal EIRQI_GSR_OR : STD_LOGIC; 
  signal EIRQI2_GSR_OR : STD_LOGIC; 
  signal FCE_WP_2_GSR_OR : STD_LOGIC; 
  signal MCPU_GSR_OR : STD_LOGIC; 
  signal LED_G_GSR_OR : STD_LOGIC; 
  signal LED_Y_GSR_OR : STD_LOGIC; 
  signal LED_R_GSR_OR : STD_LOGIC; 
  signal PCM1SEL_2_GSR_OR : STD_LOGIC; 
  signal PCM1TS_5_GSR_OR : STD_LOGIC; 
  signal MCTX_WP_2_GSR_OR : STD_LOGIC; 
  signal IEN_FC_GSR_OR : STD_LOGIC; 
  signal IEN_EIRQ_GSR_OR : STD_LOGIC; 
  signal IEN_CTX_GSR_OR : STD_LOGIC; 
  signal IEN_CRX_GSR_OR : STD_LOGIC; 
  signal IEN_PCM1_GSR_OR : STD_LOGIC; 
  signal IEN_CTXE_GSR_OR : STD_LOGIC; 
  signal MFCC_GSR_OR : STD_LOGIC; 
  signal MFCD_GSR_OR : STD_LOGIC; 
  signal MFCE_GSR_OR : STD_LOGIC; 
  signal FCE_RP_2_GSR_OR : STD_LOGIC; 
  signal CTX_RP_2_GSR_OR : STD_LOGIC; 
  signal CRX_RP_2_GSR_OR : STD_LOGIC; 
  signal PCM1RP_2_GSR_OR : STD_LOGIC; 
  signal EIRQ_RP_2_GSR_OR : STD_LOGIC; 
  signal EIRQ_RP_3_GSR_OR : STD_LOGIC; 
  signal EIRQ_RP_0_GSR_OR : STD_LOGIC; 
  signal EIRQ_RP_1_GSR_OR : STD_LOGIC; 
  signal PCM1RP_3_GSR_OR : STD_LOGIC; 
  signal PCM1RP_0_GSR_OR : STD_LOGIC; 
  signal PCM1RP_1_GSR_OR : STD_LOGIC; 
  signal CRX_RP_3_GSR_OR : STD_LOGIC; 
  signal TS_CNT_8_GSR_OR : STD_LOGIC; 
  signal CRX_RP_0_GSR_OR : STD_LOGIC; 
  signal CRX_RP_1_GSR_OR : STD_LOGIC; 
  signal CTX_RP_3_GSR_OR : STD_LOGIC; 
  signal CTX_RP_0_GSR_OR : STD_LOGIC; 
  signal CTX_RP_1_GSR_OR : STD_LOGIC; 
  signal FCE_RP_3_GSR_OR : STD_LOGIC; 
  signal FCE_RP_0_GSR_OR : STD_LOGIC; 
  signal FCE_RP_1_GSR_OR : STD_LOGIC; 
  signal MCTX_WP_3_GSR_OR : STD_LOGIC; 
  signal MCTX_WP_0_GSR_OR : STD_LOGIC; 
  signal MCTX_WP_1_GSR_OR : STD_LOGIC; 
  signal FCE_WP_3_GSR_OR : STD_LOGIC; 
  signal FCE_WP_0_GSR_OR : STD_LOGIC; 
  signal FCE_WP_1_GSR_OR : STD_LOGIC; 
  signal EIRQ_WP_3_GSR_OR : STD_LOGIC; 
  signal EIRQ_WP_0_GSR_OR : STD_LOGIC; 
  signal EIRQ_WP_1_GSR_OR : STD_LOGIC; 
  signal CRX_WP_3_GSR_OR : STD_LOGIC; 
  signal CRX_WP_0_GSR_OR : STD_LOGIC; 
  signal CRX_WP_1_GSR_OR : STD_LOGIC; 
  signal CTX_WP_3_GSR_OR : STD_LOGIC; 
  signal TS_CNT_5_GSR_OR : STD_LOGIC; 
  signal CTX_WP_0_GSR_OR : STD_LOGIC; 
  signal CTX_WP_1_GSR_OR : STD_LOGIC; 
  signal PCM1WP_3_GSR_OR : STD_LOGIC; 
  signal TS_CNT_4_GSR_OR : STD_LOGIC; 
  signal PCM1WP_0_GSR_OR : STD_LOGIC; 
  signal PCM1WP_1_GSR_OR : STD_LOGIC; 
  signal MCTX_RP_3_GSR_OR : STD_LOGIC; 
  signal TS_CNT_3_GSR_OR : STD_LOGIC; 
  signal MCTX_RP_0_GSR_OR : STD_LOGIC; 
  signal MCTX_RP_1_GSR_OR : STD_LOGIC; 
  signal TS_CNT_2_GSR_OR : STD_LOGIC; 
  signal TS_CNT_1_GSR_OR : STD_LOGIC; 
  signal TS_CNT_0_GSR_OR : STD_LOGIC; 
  signal TS_CNT_7_GSR_OR : STD_LOGIC; 
  signal SYNC4I_1_GSR_OR : STD_LOGIC; 
  signal GTS : STD_LOGIC; 
  signal TPCM_0_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal TPCM_1_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal TPCM_2_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal TPCM_3_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal FCC_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal FCD_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal FCEn_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal KA_0_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal CTX_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal KA_1_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal KA_2_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_0_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal KA_3_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_1_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal KA_4_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_2_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal KA_5_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_3_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_4_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_5_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_6_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal SYNC4_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal D_7_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal CLK4M_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal CLK8M_IOBUF_OBUFT_GTS_AND : STD_LOGIC; 
  signal SYNC2_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_7_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_6_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_5_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_4_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_3_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_2_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_1_OBUFT_GTS_AND : STD_LOGIC; 
  signal PC_0_OBUFT_GTS_AND : STD_LOGIC; 
  signal LED_2_OBUF_GTS_TRI : STD_LOGIC; 
  signal INTn_OBUF_GTS_TRI : STD_LOGIC; 
  signal LED_3_OBUF_GTS_TRI : STD_LOGIC; 
  signal Test_OBUF_GTS_TRI : STD_LOGIC; 
  signal LED_1_OBUF_GTS_TRI : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_7_C : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_6_C : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_5_C : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_4_C : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_3_C : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_2_C : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_1_C : STD_LOGIC; 
  signal NlwInverterSignal_PCM1I_0_C : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_CNT_9_C : STD_LOGIC; 
  signal NlwInverterSignal_SYNC4I_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_10_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_0_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_1_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_2_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_3_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_4_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_5_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_6_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_7_C : STD_LOGIC; 
  signal NlwInverterSignal_CNT_8_C : STD_LOGIC; 
  signal NlwInverterSignal_SYNC4I_1_C : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_0_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_1_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_2_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_3_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_4_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_5_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_6_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_6_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_5_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_4_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_3_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_2_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_1_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_0_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTXI_7_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CRXI_7_GSR_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_0_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_0_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_1_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_1_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_2_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_2_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_3_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_TPCM_3_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FCC_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FCC_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FCD_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FCD_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FCEn_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FCEn_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_KA_0_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_KA_0_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CTX_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CTX_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_KA_1_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_KA_1_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_KA_2_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_KA_2_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_0_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_0_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_KA_3_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_KA_3_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_1_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_1_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_KA_4_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_KA_4_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_2_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_2_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_KA_5_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_KA_5_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_3_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_3_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_4_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_4_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_5_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_5_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_6_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_6_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_SYNC4_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_SYNC4_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_7_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_7_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CLK4M_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CLK4M_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CLK8M_IOBUF_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CLK8M_IOBUF_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_SYNC2_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_SYNC2_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_7_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_7_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_6_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_6_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_5_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_5_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_4_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_4_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_3_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_3_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_2_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_2_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_1_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_1_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_PC_0_OBUFT_GTS_AND_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_PC_0_OBUFT_GTS_AND_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LED_2_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_INTn_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_LED_3_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_Test_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_LED_1_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal Q_n0051 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal FCE_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal CRX_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_n0044 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal FCE_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal FCDI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal EIRQ_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal TS_CNT : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal CTX_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PCM1RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_n0034 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MCTX_CNT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal EIRQ_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PCM1SEL : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal CTX_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal CTXO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CRXI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CTXI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Q_n0036 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal PCM1WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal CTX_CNT : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal MCTX_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_n0293 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal FCEO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CRX_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_n0042 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal PCM1O : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Q_n0067 : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal CRXO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Q_n0294 : STD_LOGIC_VECTOR ( 17 downto 10 ); 
  signal Q_n0068 : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal Q_n0039 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Q_n0041 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MCTX_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal CRX_CNT : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal PCM1I : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CNT : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal PCM1TS : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Q_n0050 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal MCTXO : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal FCIN : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal EIRQ_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal PCM1RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CRX_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CTX_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal FCE_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal MCTX_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal FCE_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal EIRQ_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CRX_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CTX_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal PCM1WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CNT_n0000 : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal MCTX_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  MCTX_RP_3_rt_0 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_RP(3),
      O => MCTX_RP_3_rt,
      ADR1 => GND
    );
  Mmux_n0051_Result_5_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0305,
      ADR1 => PCM1TS(5),
      ADR2 => N12156,
      O => Q_n0051(5)
    );
  Mmux_n0059_Result1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0306,
      ADR1 => MFCC,
      ADR2 => N12140,
      O => Q_n0059
    );
  TS_CNT_inst_sum_15_1 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_0,
      I1 => TS_CNT_inst_cy_18,
      O => TS_CNT_inst_sum_15
    );
  Ker80681 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => N7939,
      ADR1 => A_0_IBUF,
      ADR2 => A_3_IBUF,
      O => N8070
    );
  Q_n00241 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N7964,
      ADR1 => CRX_CNT(10),
      ADR2 => CRX_CNT(7),
      O => Q_n0024
    );
  Q_n00231 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N7959,
      ADR1 => CTX_CNT(10),
      ADR2 => CTX_CNT(7),
      O => Q_n0023
    );
  Q_n0216144_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      ADR0 => Q_n0210,
      ADR1 => Q_n0208,
      ADR2 => CHOICE247,
      ADR3 => Q_n0212,
      O => N12318
    );
  CTX_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(3),
      CE => Q_n0274,
      RST => CTX_CNT_3_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(3),
      SET => GND
    );
  CTX_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(2),
      CE => Q_n0274,
      RST => CTX_CNT_2_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(2),
      SET => GND
    );
  CTX_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(0),
      CE => Q_n0274,
      RST => CTX_CNT_0_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(0),
      SET => GND
    );
  MCTXO_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(7),
      CE => Q_n0272,
      SET => MCTXO_7_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(7),
      RST => GND
    );
  Q_n03131 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => RESET_IBUF,
      ADR1 => LED_R,
      O => LED_3_OBUF
    );
  Q_n03121 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => RESET_IBUF,
      ADR1 => LED_Y,
      O => LED_2_OBUF
    );
  Q_n03111 : X_LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      ADR0 => RESET_IBUF,
      ADR1 => LED_G,
      O => LED_1_OBUF
    );
  Mcompar_n0071_AEB53 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => FCE_RP(3),
      ADR1 => FCE_WP(3),
      ADR2 => FCE_RP(2),
      ADR3 => FCE_WP(2),
      O => CHOICE162
    );
  Q_n03051 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => N8135,
      ADR3 => A_0_IBUF,
      O => Q_n0305
    );
  Q_n03041 : X_LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => N8135,
      ADR3 => A_0_IBUF,
      O => Q_n0304
    );
  XST_VCC : X_ONE
    port map (
      O => TPCM_2_IOBUF
    );
  CTX_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(1),
      CE => Q_n0274,
      RST => CTX_CNT_1_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(1),
      SET => GND
    );
  MCTXO_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(6),
      CE => Q_n0272,
      SET => MCTXO_6_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(6),
      RST => GND
    );
  Mmux_n0060_Result1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0306,
      ADR1 => MFCD,
      ADR2 => N12144,
      O => Q_n0060
    );
  Q_n02891 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => MFCE,
      O => FCEn_IOBUF,
      ADR1 => GND
    );
  XST_GND : X_ZERO
    port map (
      O => PC_3_OBUFT
    );
  Q_n0077_6_10 : X_LUT4
    generic map(
      INIT => X"E222"
    )
    port map (
      ADR0 => CRXO(6),
      ADR1 => A_1_IBUF,
      ADR2 => N8077,
      ADR3 => PCM1O(6),
      O => CHOICE186
    );
  MCLK4M1 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CNT(1),
      O => MCLK4M,
      ADR1 => GND
    );
  MCLK8M1 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CNT(0),
      O => MCLK8M,
      ADR1 => GND
    );
  Mxor_n0177_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => EIRQI2,
      ADR1 => EIRQI,
      O => Q_n0177
    );
  TS_CNT_inst_lut3_51 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(5),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_5
    );
  Mmux_n0050_Result_1_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0304,
      ADR1 => PCM1SEL(1),
      ADR2 => N12144,
      O => Q_n0050(1)
    );
  TS_CNT_inst_cy_24_2 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_23,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_5,
      O => TS_CNT_inst_cy_24
    );
  Mmux_n0050_Result_0_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0304,
      ADR1 => PCM1SEL(0),
      ADR2 => N12140,
      O => Q_n0050(0)
    );
  Q_n02861 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Q_n0228,
      ADR1 => CSn_IBUF,
      O => Q_n0286
    );
  Q_n02851 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Q_n0140,
      ADR1 => CSn_IBUF,
      O => Q_n0285
    );
  Q_n02841 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Q_n0138,
      ADR1 => CSn_IBUF,
      O => Q_n0284
    );
  Q_n0077_7_19 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => N7939,
      ADR1 => A_0_IBUF,
      ADR2 => A_3_IBUF,
      ADR3 => N8059,
      O => CHOICE206
    );
  Q_n02821 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Q_n0135,
      ADR1 => CSn_IBUF,
      O => Q_n0282
    );
  CTX_CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(4),
      CE => Q_n0274,
      RST => CTX_CNT_4_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(4),
      SET => GND
    );
  Q_n02801 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => EIRQn_IBUF,
      O => Q_n0280,
      ADR1 => GND
    );
  Q_n02791 : X_LUT4
    generic map(
      INIT => X"02CE"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => N12467,
      ADR2 => Q_n0115,
      ADR3 => CRX_IBUF,
      O => Q_n0279
    );
  Q_n02781 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => Q_n0115,
      ADR1 => Q_n0088,
      ADR2 => Q_n0121,
      O => Q_n0278
    );
  Q_n02761 : X_LUT4
    generic map(
      INIT => X"02CE"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => N12469,
      ADR2 => Q_n0112,
      ADR3 => N12134,
      O => Q_n0276
    );
  Q_n02751 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => Q_n0112,
      ADR1 => Q_n0087,
      ADR2 => Q_n0119,
      O => Q_n0275
    );
  Q_n02771 : X_LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      ADR0 => CRX_CNT(10),
      ADR1 => CRX_IBUF,
      ADR2 => N7964,
      ADR3 => CRX_CNT(7),
      O => Q_n0277
    );
  Mcompar_n0111_inst_cy_1_3 : X_MUX2
    port map (
      IB => Mcompar_n0111_inst_cy_0,
      IA => TPCM_2_IOBUF,
      SEL => Mcompar_n0111_inst_lut4_1,
      O => Mcompar_n0111_inst_cy_1
    );
  Mmux_n0036_Result_7_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => Q_n0294(16),
      ADR2 => MCTXO(8),
      O => Q_n0036(7)
    );
  Mmux_n0036_Result_6_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => Q_n0294(15),
      ADR2 => MCTXO(7),
      O => Q_n0036(6)
    );
  Mmux_n0036_Result_5_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => Q_n0294(14),
      ADR2 => MCTXO(6),
      O => Q_n0036(5)
    );
  Mmux_n0036_Result_4_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => Q_n0294(13),
      ADR2 => MCTXO(5),
      O => Q_n0036(4)
    );
  Mmux_n0036_Result_3_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => Q_n0294(12),
      ADR2 => MCTXO(4),
      O => Q_n0036(3)
    );
  Mmux_n0036_Result_2_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => Q_n0294(11),
      ADR2 => MCTXO(3),
      O => Q_n0036(2)
    );
  Mmux_n0036_Result_1_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => Q_n0294(10),
      ADR2 => MCTXO(2),
      O => Q_n0036(1)
    );
  Madd_n0068_inst_sum_10 : X_XOR2
    port map (
      I0 => CRX_CNT_6_rt,
      I1 => Madd_n0068_inst_cy_12,
      O => Q_n0068(6)
    );
  CTX_CNT_10_rt_4 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(10),
      O => CTX_CNT_10_rt,
      ADR1 => GND
    );
  Q_n02401 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => SENSEn_IBUF,
      O => FCIN(3),
      ADR1 => GND
    );
  Madd_n0067_inst_sum_10 : X_XOR2
    port map (
      I0 => CTX_CNT_6_rt,
      I1 => Madd_n0067_inst_cy_12,
      O => Q_n0067(6)
    );
  MCTX_WP_3_rt_5 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_WP(3),
      O => MCTX_WP_3_rt,
      ADR1 => GND
    );
  Ker81381 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      O => N8140
    );
  Q_n0077_1_72_SW0 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => N8130,
      ADR1 => A_3_IBUF,
      ADR2 => A_2_IBUF,
      ADR3 => N8047,
      O => N12415
    );
  CRX_CNT_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(9),
      CE => Q_n0277,
      RST => CRX_CNT_9_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(9),
      SET => GND
    );
  CRXI_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(0),
      CE => Q_n0279,
      RST => CRXI_0_GSR_AND,
      CLK => N12166,
      O => CRXI(0),
      SET => GSR
    );
  CRXI_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(1),
      CE => Q_n0279,
      RST => CRXI_1_GSR_AND,
      CLK => N12166,
      O => CRXI(1),
      SET => GSR
    );
  MCTX_RP_ClkEn_INV1 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => N12494,
      ADR1 => MCTXE,
      ADR2 => CHOICE559,
      ADR3 => Q_n0082,
      O => MCTX_RP_0_N1154
    );
  Q_n0077_2_54 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => CTXO(2),
      ADR2 => N8059,
      ADR3 => N12310,
      O => CHOICE489
    );
  CRX_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(3),
      CE => Q_n0277,
      RST => CRX_CNT_3_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(3),
      SET => GND
    );
  CTX_CNT_9_rt_6 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(9),
      O => CTX_CNT_9_rt,
      ADR1 => GND
    );
  Q_n02131 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_3_IBUF,
      ADR2 => N7939,
      ADR3 => N8152,
      O => Q_n0213
    );
  Q_n02831 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => CSn_IBUF,
      ADR2 => N8135,
      ADR3 => N8152,
      O => Q_n0283
    );
  Mmux_n0034_Result_0_Q : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => Q_n0082,
      ADR1 => MCTXE,
      ADR2 => N7577,
      ADR3 => MCTX_CNT(0),
      O => Q_n0034(0)
    );
  Q_n02101 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => N8070,
      ADR1 => A_1_IBUF,
      ADR2 => A_2_IBUF,
      O => Q_n0210
    );
  N75771 : X_LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      ADR0 => MCTX_CNT(0),
      ADR1 => MCTX_CNT(3),
      ADR2 => MCTX_CNT(2),
      ADR3 => MCTX_CNT(1),
      O => N7577
    );
  Q_n02081 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => N8070,
      O => Q_n0208
    );
  CTX_CNT_8_rt_7 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(8),
      O => CTX_CNT_8_rt,
      ADR1 => GND
    );
  Q_n02061 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => N8070,
      ADR1 => A_1_IBUF,
      ADR2 => A_2_IBUF,
      O => Q_n0206
    );
  Q_n02041 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => N8047,
      ADR1 => A_0_IBUF,
      ADR2 => N8135,
      ADR3 => N8152,
      O => Q_n0204
    );
  Q_n02121 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => N7939,
      ADR1 => A_0_IBUF,
      ADR2 => A_3_IBUF,
      ADR3 => N8152,
      O => Q_n0212
    );
  Ker7970_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => CNT(6),
      ADR1 => CNT(8),
      ADR2 => CNT(9),
      ADR3 => CNT(10),
      O => N8526
    );
  Q_n02011 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => N8106,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      O => Q_n0201
    );
  Q_n02001 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => N8106,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      O => Q_n0200
    );
  Q_n01991 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => N8106,
      O => Q_n0199
    );
  Q_n01981 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => N8047,
      ADR1 => A_0_IBUF,
      ADR2 => N8135,
      ADR3 => N8140,
      O => Q_n0198
    );
  PCM1TS_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(3),
      CE => LED_G_N851,
      RST => PCM1TS_3_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1TS(3),
      SET => GND
    );
  PCM1TS_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(2),
      CE => LED_G_N851,
      RST => PCM1TS_2_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1TS(2),
      SET => GND
    );
  PCM1TS_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(1),
      CE => LED_G_N851,
      RST => PCM1TS_1_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1TS(1),
      SET => GND
    );
  PCM1TS_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(0),
      CE => LED_G_N851,
      RST => PCM1TS_0_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1TS(0),
      SET => GND
    );
  PC_3_OBUFT_8 : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_3_OBUFT_GTS_AND,
      O => PC(3)
    );
  PCM1SEL_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0050(1),
      CE => LED_G_N851,
      RST => PCM1SEL_1_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1SEL(1),
      SET => GND
    );
  PC_4_OBUFT : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_4_OBUFT_GTS_AND,
      O => PC(4)
    );
  PC_6_OBUFT : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_6_OBUFT_GTS_AND,
      O => PC(6)
    );
  PCM1SEL_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0050(0),
      CE => LED_G_N851,
      RST => PCM1SEL_0_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1SEL(0),
      SET => GND
    );
  MCTXO_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(1),
      CE => Q_n0272,
      SET => MCTXO_1_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(1),
      RST => GND
    );
  CTX_CNT_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(9),
      CE => Q_n0274,
      RST => CTX_CNT_9_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(9),
      SET => GND
    );
  MCTXO_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(2),
      CE => Q_n0272,
      SET => MCTXO_2_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(2),
      RST => GND
    );
  PC_5_OBUFT : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_5_OBUFT_GTS_AND,
      O => PC(5)
    );
  MCTX_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(2),
      CE => Q_n0109,
      RST => MCTX_CNT_2_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_CNT(2),
      SET => GND
    );
  CTX_CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(8),
      CE => Q_n0274,
      RST => CTX_CNT_8_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(8),
      SET => GND
    );
  MCTXO_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(0),
      CE => Q_n0272,
      SET => MCTXO_0_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(0),
      RST => GND
    );
  LED_G_N8511 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CSn_IBUF,
      O => LED_G_N851,
      ADR1 => GND
    );
  MCTX_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(1),
      CE => Q_n0109,
      RST => MCTX_CNT_1_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_CNT(1),
      SET => GND
    );
  PC_0_OBUFT : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_0_OBUFT_GTS_AND,
      O => PC(0)
    );
  PC_1_OBUFT : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_1_OBUFT_GTS_AND,
      O => PC(1)
    );
  PC_2_OBUFT : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_2_OBUFT_GTS_AND,
      O => PC(2)
    );
  PCM1TS_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(4),
      CE => LED_G_N851,
      RST => PCM1TS_4_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1TS(4),
      SET => GND
    );
  MCTXO_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(5),
      CE => Q_n0272,
      SET => MCTXO_5_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(5),
      RST => GND
    );
  Ker81041 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => N7939,
      ADR1 => A_2_IBUF,
      ADR2 => A_3_IBUF,
      O => N8106
    );
  Ker77501 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => CNT(0),
      ADR1 => CNT(1),
      O => N7752
    );
  CRX_CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(8),
      CE => Q_n0277,
      RST => CRX_CNT_8_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(8),
      SET => GND
    );
  CRXI_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(2),
      CE => Q_n0279,
      RST => CRXI_2_GSR_AND,
      CLK => N12166,
      O => CRXI(2),
      SET => GSR
    );
  CRXI_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(3),
      CE => Q_n0279,
      RST => CRXI_3_GSR_AND,
      CLK => N12166,
      O => CRXI(3),
      SET => GSR
    );
  CRXI_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(4),
      CE => Q_n0279,
      RST => CRXI_4_GSR_AND,
      CLK => N12166,
      O => CRXI(4),
      SET => GSR
    );
  CRXI_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(5),
      CE => Q_n0279,
      RST => CRXI_5_GSR_AND,
      CLK => N12166,
      O => CRXI(5),
      SET => GSR
    );
  CRXI_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(6),
      CE => Q_n0279,
      RST => CRXI_6_GSR_AND,
      CLK => N12166,
      O => CRXI(6),
      SET => GSR
    );
  Ker80851 : X_LUT4
    generic map(
      INIT => X"5551"
    )
    port map (
      ADR0 => Q_n0202,
      ADR1 => Q_n0135,
      ADR2 => CSn_IBUF,
      ADR3 => RDn_IBUF,
      O => N8087
    );
  MCTXO_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(4),
      CE => Q_n0272,
      SET => MCTXO_4_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(4),
      RST => GND
    );
  MCTXO_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(3),
      CE => Q_n0272,
      SET => MCTXO_3_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(3),
      RST => GND
    );
  CRX_CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(6),
      CE => Q_n0277,
      RST => CRX_CNT_6_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(6),
      SET => GND
    );
  CRX_CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(7),
      CE => Q_n0277,
      RST => CRX_CNT_7_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(7),
      SET => GND
    );
  TS_CNT_inst_cy_19_9 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_18,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_0,
      O => TS_CNT_inst_cy_19
    );
  Mmux_n0049_Result1 : X_LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      ADR0 => LED_R,
      ADR1 => N7765,
      ADR2 => N12148,
      ADR3 => N7982,
      O => Q_n0049
    );
  CTX_CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(7),
      CE => Q_n0274,
      RST => CTX_CNT_7_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(7),
      SET => GND
    );
  CTX_CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(6),
      CE => Q_n0274,
      RST => CTX_CNT_6_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(6),
      SET => GND
    );
  Mmux_n0034_Result_1_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0293(1),
      ADR1 => N7577,
      O => Q_n0034(1)
    );
  CRX_CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(4),
      CE => Q_n0277,
      RST => CRX_CNT_4_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(4),
      SET => GND
    );
  CRX_CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(5),
      CE => Q_n0277,
      RST => CRX_CNT_5_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(5),
      SET => GND
    );
  Mmux_n0061_Result1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0306,
      ADR1 => MFCE,
      ADR2 => N12148,
      O => Q_n0061
    );
  MCTX_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(0),
      CE => Q_n0109,
      RST => MCTX_CNT_0_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_CNT(0),
      SET => GND
    );
  CRX_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(2),
      CE => Q_n0277,
      RST => CRX_CNT_2_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(2),
      SET => GND
    );
  CRX_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(1),
      CE => Q_n0277,
      RST => CRX_CNT_1_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(1),
      SET => GND
    );
  CRX_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(0),
      CE => Q_n0277,
      RST => CRX_CNT_0_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(0),
      SET => GND
    );
  I72_N9731 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => MCPU,
      O => I72_N973,
      ADR1 => GND
    );
  CTXI_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(6),
      CE => Q_n0276,
      RST => CTXI_6_GSR_AND,
      CLK => N12166,
      O => CTXI(6),
      SET => GSR
    );
  Q_n01401 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => A_3_IBUF,
      ADR3 => N8130,
      O => Q_n0140
    );
  CTXI_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(5),
      CE => Q_n0276,
      RST => CTXI_5_GSR_AND,
      CLK => N12166,
      O => CTXI(5),
      SET => GSR
    );
  Ker79801 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => N8135,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => A_2_IBUF,
      O => N7982
    );
  CTXI_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(4),
      CE => Q_n0276,
      RST => CTXI_4_GSR_AND,
      CLK => N12166,
      O => CTXI(4),
      SET => GSR
    );
  Q_n021649_SW0 : X_LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      ADR0 => N8130,
      ADR1 => A_2_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => A_3_IBUF,
      O => N12381
    );
  Q_n01351 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => N8130,
      ADR1 => A_3_IBUF,
      ADR2 => A_2_IBUF,
      ADR3 => A_1_IBUF,
      O => Q_n0135
    );
  CTXI_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(3),
      CE => Q_n0276,
      RST => CTXI_3_GSR_AND,
      CLK => N12166,
      O => CTXI(3),
      SET => GSR
    );
  CTXI_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(2),
      CE => Q_n0276,
      RST => CTXI_2_GSR_AND,
      CLK => N12166,
      O => CTXI(2),
      SET => GSR
    );
  CTXI_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(1),
      CE => Q_n0276,
      RST => CTXI_1_GSR_AND,
      CLK => N12166,
      O => CTXI(1),
      SET => GSR
    );
  CTXI_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(0),
      CE => Q_n0276,
      RST => CTXI_0_GSR_AND,
      CLK => N12166,
      O => CTXI(0),
      SET => GSR
    );
  MCPU_ClkEn_INV1 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => CSn_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => N8135,
      ADR3 => N8140,
      O => MCPU_N846
    );
  Q_n01211 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CRX_CNT(4),
      ADR1 => CRX_CNT(5),
      ADR2 => CRX_CNT(6),
      ADR3 => N12473,
      O => Q_n0121
    );
  Q_n01191 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CTX_CNT(4),
      ADR1 => CTX_CNT(5),
      ADR2 => CTX_CNT(6),
      ADR3 => N12462,
      O => Q_n0119
    );
  Q_n01151 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => CRX_CNT(10),
      ADR1 => CRX_CNT(8),
      ADR2 => CRX_CNT(7),
      ADR3 => CRX_CNT(9),
      O => Q_n0115
    );
  Q_n01121 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => CTX_CNT(8),
      ADR2 => CTX_CNT(7),
      ADR3 => CTX_CNT(9),
      O => Q_n0112
    );
  Q_n0077_0_245_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0202,
      ADR1 => FCEO(0),
      O => N12306
    );
  Q_n00261 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => N8152,
      ADR1 => CSn_IBUF,
      ADR2 => N8135,
      ADR3 => A_0_IBUF,
      O => Q_n0026
    );
  TS_CNT_inst_cy_21_10 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_20,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_2,
      O => TS_CNT_inst_cy_21
    );
  TS_CNT_inst_sum_17_11 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_2,
      I1 => TS_CNT_inst_cy_20,
      O => TS_CNT_inst_sum_17
    );
  TS_CNT_inst_cy_22_12 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_21,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_3,
      O => TS_CNT_inst_cy_22
    );
  TS_CNT_inst_sum_18_13 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_3,
      I1 => TS_CNT_inst_cy_21,
      O => TS_CNT_inst_sum_18
    );
  Q_n02281 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => N8130,
      ADR1 => A_1_IBUF,
      ADR2 => A_2_IBUF,
      ADR3 => A_3_IBUF,
      O => Q_n0228
    );
  Ker81501 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => A_1_IBUF,
      O => N8152
    );
  TS_CNT_inst_cy_23_14 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_22,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_4,
      O => TS_CNT_inst_cy_23
    );
  TS_CNT_inst_sum_19_15 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_4,
      I1 => TS_CNT_inst_cy_22,
      O => TS_CNT_inst_sum_19
    );
  Q_n0216117 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => CHOICE244,
      ADR1 => Q_n0213,
      ADR2 => Q_n0200,
      O => CHOICE247
    );
  Q_n00861 : X_LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      ADR0 => N7972,
      ADR1 => CNT(3),
      ADR2 => CNT(2),
      ADR3 => N7752,
      O => Q_n0086
    );
  Q_n00851 : X_LUT4
    generic map(
      INIT => X"2D00"
    )
    port map (
      ADR0 => N7752,
      ADR1 => CNT(2),
      ADR2 => CNT(3),
      ADR3 => N7972,
      O => Q_n0085
    );
  Q_n00821 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => MCTX_CNT(0),
      ADR1 => MCTX_CNT(1),
      ADR2 => MCTX_CNT(2),
      ADR3 => MCTX_CNT(3),
      O => Q_n0082
    );
  TS_CNT_inst_cy_20_16 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_19,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_1,
      O => TS_CNT_inst_cy_20
    );
  TS_CNT_inst_sum_16_17 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_1,
      I1 => TS_CNT_inst_cy_19,
      O => TS_CNT_inst_sum_16
    );
  Q_n0077_0_301 : X_LUT4
    generic map(
      INIT => X"00F2"
    )
    port map (
      ADR0 => CHOICE621,
      ADR1 => Q_n0200,
      ADR2 => CHOICE627,
      ADR3 => Q_n0198,
      O => D_0_IOBUF
    );
  Q_n0077_1_150 : X_LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      ADR0 => Q_n0198,
      ADR1 => CHOICE537,
      ADR2 => CHOICE548,
      ADR3 => Q_n0199,
      O => D_1_IOBUF
    );
  Q_n0077_2_151 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => CHOICE489,
      ADR1 => CHOICE536,
      ADR2 => CHOICE510,
      ADR3 => CHOICE514,
      O => D_2_IOBUF
    );
  Q_n0077_3_158 : X_LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      ADR0 => Q_n0198,
      ADR1 => CHOICE461,
      ADR2 => CHOICE472,
      ADR3 => Q_n0199,
      O => D_3_IOBUF
    );
  Q_n0077_0_12 : X_LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      ADR0 => Q_n0208,
      ADR1 => Q_n0135,
      ADR2 => N8047,
      ADR3 => PCM1O(0),
      O => CHOICE574
    );
  Q_n0077_5_132 : X_LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      ADR0 => Q_n0198,
      ADR1 => CHOICE424,
      ADR2 => CHOICE434,
      ADR3 => Q_n0199,
      O => D_5_IOBUF
    );
  Q_n0077_1_77 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => N8059,
      ADR1 => CHOICE525,
      ADR2 => CHOICE516,
      ADR3 => CHOICE536,
      O => CHOICE537
    );
  Q_n0077_1_27 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => Q_n0206,
      ADR1 => CRXO(1),
      ADR2 => N8077,
      ADR3 => N12314,
      O => CHOICE525
    );
  CTX_CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(5),
      CE => Q_n0274,
      RST => CTX_CNT_5_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(5),
      SET => GND
    );
  Q_n02741 : X_LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => N12134,
      ADR2 => N7959,
      ADR3 => CTX_CNT(7),
      O => Q_n0274
    );
  Q_n0044_0_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRXI(1),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(0)
    );
  Q_n0044_1_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRXI(2),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(1)
    );
  Q_n0044_2_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRXI(3),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(2)
    );
  Q_n0044_3_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRXI(4),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(3)
    );
  Q_n0044_4_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRXI(5),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(4)
    );
  Q_n0044_5_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRXI(6),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(5)
    );
  Q_n0044_6_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRXI(7),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(6)
    );
  TS_CNT_inst_lut3_81 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(8),
      ADR1 => SYNC4I_1,
      O => TS_CNT_inst_lut3_8
    );
  Q_n0044_7_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CRX_IBUF,
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7964,
      O => Q_n0044(7)
    );
  Q_n0041_0_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CTXI(1),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(0)
    );
  Q_n0041_1_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CTXI(2),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(1)
    );
  Q_n0041_2_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CTXI(3),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(2)
    );
  Q_n0041_3_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CTXI(4),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(3)
    );
  Q_n0041_4_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CTXI(5),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(4)
    );
  Q_n0041_5_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CTXI(6),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(5)
    );
  Q_n0041_6_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => CTXI(7),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(6)
    );
  PCM1I_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(6),
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_7_C,
      O => PCM1I(7),
      SET => GND,
      RST => GSR
    );
  PCM1I_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(5),
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_6_C,
      O => PCM1I(6),
      SET => GND,
      RST => GSR
    );
  PCM1I_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(4),
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_5_C,
      O => PCM1I(5),
      SET => GND,
      RST => GSR
    );
  PCM1I_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(3),
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_4_C,
      O => PCM1I(4),
      SET => GND,
      RST => GSR
    );
  PCM1I_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(2),
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_3_C,
      O => PCM1I(3),
      SET => GND,
      RST => GSR
    );
  PCM1I_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(1),
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_2_C,
      O => PCM1I(2),
      SET => GND,
      RST => GSR
    );
  PCM1I_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(0),
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_1_C,
      O => PCM1I(1),
      SET => GND,
      RST => GSR
    );
  PCM1I_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1MUX,
      CE => Q_n0029,
      CLK => NlwInverterSignal_PCM1I_0_C,
      O => PCM1I(0),
      SET => GND,
      RST => GSR
    );
  FCDI_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(6),
      RST => FCDI_7_GSR_OR,
      CLK => N12126,
      O => FCDI(7),
      CE => VCC,
      SET => GND
    );
  FCDI_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(5),
      RST => FCDI_6_GSR_OR,
      CLK => N12126,
      O => FCDI(6),
      CE => VCC,
      SET => GND
    );
  FCDI_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(4),
      RST => FCDI_5_GSR_OR,
      CLK => N12126,
      O => FCDI(5),
      CE => VCC,
      SET => GND
    );
  FCDI_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(3),
      RST => FCDI_4_GSR_OR,
      CLK => N12126,
      O => FCDI(4),
      CE => VCC,
      SET => GND
    );
  FCDI_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(2),
      RST => FCDI_3_GSR_OR,
      CLK => N12126,
      O => FCDI(3),
      CE => VCC,
      SET => GND
    );
  FCDI_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(1),
      RST => FCDI_2_GSR_OR,
      CLK => N12126,
      O => FCDI(2),
      CE => VCC,
      SET => GND
    );
  FCDI_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(0),
      RST => FCDI_1_GSR_OR,
      CLK => N12126,
      O => FCDI(1),
      CE => VCC,
      SET => GND
    );
  FCDI_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N12128,
      RST => FCDI_0_GSR_OR,
      CLK => N12126,
      O => FCDI(0),
      CE => VCC,
      SET => GND
    );
  MCTX_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(3),
      CE => Q_n0109,
      RST => MCTX_CNT_3_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_CNT(3),
      SET => GND
    );
  MCTX_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_n0000(2),
      CE => MCTX_RP_0_N1154,
      RST => MCTX_RP_2_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_RP(2),
      SET => GND
    );
  MCTXO_8 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(8),
      CE => Q_n0272,
      SET => MCTXO_8_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTXO(8),
      RST => GND
    );
  CNT_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(9),
      CLK => NlwInverterSignal_CNT_9_C,
      O => CNT(9),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  MSYNC2_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0085,
      CE => MCPU,
      CLK => N12164,
      O => MSYNC2,
      SET => GND,
      RST => GSR
    );
  MSYNC4_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0086,
      CE => MCPU,
      CLK => N12164,
      O => MSYNC4,
      SET => GND,
      RST => GSR
    );
  PCM1WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(2),
      CE => SYNC4I_1,
      RST => PCM1WP_2_GSR_OR,
      CLK => N12164,
      O => PCM1WP(2),
      SET => GND
    );
  SYNC4I_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N12160,
      RST => SYNC4I_GSR_OR,
      CLK => NlwInverterSignal_SYNC4I_C,
      O => SYNC4I,
      CE => VCC,
      SET => GND
    );
  TS_CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_21,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_6_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(6)
    );
  CTX_CNT_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039(10),
      CE => Q_n0274,
      RST => CTX_CNT_10_GSR_OR,
      CLK => N12166,
      O => CTX_CNT(10),
      SET => GND
    );
  CTX_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_n0000(2),
      CE => Q_n0275,
      RST => CTX_WP_2_GSR_OR,
      CLK => N12166,
      O => CTX_WP(2),
      SET => GND
    );
  CTXI_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(7),
      CE => Q_n0276,
      RST => CTXI_7_GSR_AND,
      CLK => N12166,
      O => CTXI(7),
      SET => GSR
    );
  CRX_CNT_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(10),
      CE => Q_n0277,
      RST => CRX_CNT_10_GSR_OR,
      CLK => N12166,
      O => CRX_CNT(10),
      SET => GND
    );
  CRX_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_n0000(2),
      CE => Q_n0278,
      RST => CRX_WP_2_GSR_OR,
      CLK => N12166,
      O => CRX_WP(2),
      SET => GND
    );
  CRXI_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(7),
      CE => Q_n0279,
      RST => CRXI_7_GSR_AND,
      CLK => N12166,
      O => CRXI(7),
      SET => GSR
    );
  EIRQ_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_n0000(2),
      CE => Q_n0177,
      RST => EIRQ_WP_2_GSR_OR,
      CLK => N12166,
      O => EIRQ_WP(2),
      SET => GND
    );
  EIRQI_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0280,
      RST => EIRQI_GSR_OR,
      CLK => N12166,
      O => EIRQI,
      CE => VCC,
      SET => GND
    );
  EIRQI2_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQI,
      RST => EIRQI2_GSR_OR,
      CLK => N12166,
      O => EIRQI2,
      CE => VCC,
      SET => GND
    );
  FCE_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_n0000(2),
      RST => FCE_WP_2_GSR_OR,
      CLK => N12130,
      O => FCE_WP(2),
      CE => VCC,
      SET => GND
    );
  MCPU_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N12140,
      CE => MCPU_N846,
      RST => MCPU_GSR_OR,
      CLK => WRn_IBUF,
      O => MCPU,
      SET => GND
    );
  LED_G_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0047,
      CE => LED_G_N851,
      RST => LED_G_GSR_OR,
      CLK => WRn_IBUF,
      O => LED_G,
      SET => GND
    );
  LED_Y_25 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0048,
      CE => LED_G_N851,
      RST => LED_Y_GSR_OR,
      CLK => WRn_IBUF,
      O => LED_Y,
      SET => GND
    );
  LED_R_26 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0049,
      CE => LED_G_N851,
      RST => LED_R_GSR_OR,
      CLK => WRn_IBUF,
      O => LED_R,
      SET => GND
    );
  PCM1SEL_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0050(2),
      CE => LED_G_N851,
      RST => PCM1SEL_2_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1SEL(2),
      SET => GND
    );
  PCM1TS_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(5),
      CE => LED_G_N851,
      RST => PCM1TS_5_GSR_OR,
      CLK => WRn_IBUF,
      O => PCM1TS(5),
      SET => GND
    );
  MCTX_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_n0000(2),
      CE => Q_n0026,
      RST => MCTX_WP_2_GSR_OR,
      CLK => WRn_IBUF,
      O => MCTX_WP(2),
      SET => GND
    );
  IEN_FC_27 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0053,
      CE => LED_G_N851,
      SET => IEN_FC_GSR_OR,
      CLK => WRn_IBUF,
      O => IEN_FC,
      RST => GND
    );
  IEN_EIRQ_28 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0054,
      CE => LED_G_N851,
      SET => IEN_EIRQ_GSR_OR,
      CLK => WRn_IBUF,
      O => IEN_EIRQ,
      RST => GND
    );
  IEN_CTX_29 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0055,
      CE => LED_G_N851,
      SET => IEN_CTX_GSR_OR,
      CLK => WRn_IBUF,
      O => IEN_CTX,
      RST => GND
    );
  IEN_CRX_30 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0056,
      CE => LED_G_N851,
      SET => IEN_CRX_GSR_OR,
      CLK => WRn_IBUF,
      O => IEN_CRX,
      RST => GND
    );
  IEN_PCM1_31 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0057,
      CE => LED_G_N851,
      SET => IEN_PCM1_GSR_OR,
      CLK => WRn_IBUF,
      O => IEN_PCM1,
      RST => GND
    );
  IEN_CTXE_32 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0058,
      CE => LED_G_N851,
      RST => IEN_CTXE_GSR_OR,
      CLK => WRn_IBUF,
      O => IEN_CTXE,
      SET => GND
    );
  MFCC_33 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0059,
      CE => LED_G_N851,
      RST => MFCC_GSR_OR,
      CLK => WRn_IBUF,
      O => MFCC,
      SET => GND
    );
  MFCD_34 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0060,
      CE => LED_G_N851,
      RST => MFCD_GSR_OR,
      CLK => WRn_IBUF,
      O => MFCD,
      SET => GND
    );
  MFCE_35 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0061,
      CE => LED_G_N851,
      RST => MFCE_GSR_OR,
      CLK => WRn_IBUF,
      O => MFCE,
      SET => GND
    );
  FCE_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_n0000(2),
      CE => Q_n0282,
      RST => FCE_RP_2_GSR_OR,
      CLK => RDn_IBUF,
      O => FCE_RP(2),
      SET => GND
    );
  CTX_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_n0000(2),
      CE => Q_n0283,
      RST => CTX_RP_2_GSR_OR,
      CLK => RDn_IBUF,
      O => CTX_RP(2),
      SET => GND
    );
  CRX_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_n0000(2),
      CE => Q_n0284,
      RST => CRX_RP_2_GSR_OR,
      CLK => RDn_IBUF,
      O => CRX_RP(2),
      SET => GND
    );
  PCM1RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(2),
      CE => Q_n0285,
      RST => PCM1RP_2_GSR_OR,
      CLK => RDn_IBUF,
      O => PCM1RP(2),
      SET => GND
    );
  EIRQ_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_n0000(2),
      CE => Q_n0286,
      RST => EIRQ_RP_2_GSR_OR,
      CLK => RDn_IBUF,
      O => EIRQ_RP(2),
      SET => GND
    );
  PC_7_OBUFT : X_TRI
    port map (
      I => PC_3_OBUFT,
      CTL => PC_7_OBUFT_GTS_AND,
      O => PC(7)
    );
  SYNC2_OBUFT : X_TRI
    port map (
      I => MSYNC2,
      CTL => SYNC2_OBUFT_GTS_AND,
      O => SYNC2
    );
  Mmux_PCM1MUX_inst_lut3_121 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => PCM1SEL(0),
      ADR1 => RPCM_3_IBUF,
      ADR2 => RPCM_2_IBUF,
      O => Mmux_PCM1MUX_net25
    );
  Mmux_n0034_Result_3_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0293(3),
      ADR1 => N7577,
      O => Q_n0034(3)
    );
  Mmux_n0036_Result_8_1 : X_LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      ADR0 => Q_n0294(17),
      ADR1 => Q_n0082,
      O => Q_n0036(8)
    );
  Mmux_n0047_Result1 : X_LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      ADR0 => LED_G,
      ADR1 => N7765,
      ADR2 => N12140,
      ADR3 => N7982,
      O => Q_n0047
    );
  Mmux_n0048_Result1 : X_LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      ADR0 => LED_Y,
      ADR1 => N7765,
      ADR2 => N12144,
      ADR3 => N7982,
      O => Q_n0048
    );
  TS_CNT_inst_cy_18_36 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => SYNC4I_rt,
      O => TS_CNT_inst_cy_18
    );
  PCM1RP_3_rt_37 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => PCM1RP(3),
      O => PCM1RP_3_rt,
      ADR1 => GND
    );
  CTX_CNT_3_rt_38 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(3),
      O => CTX_CNT_3_rt,
      ADR1 => GND
    );
  Q_n0077_1_72 : X_LUT4
    generic map(
      INIT => X"0207"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => N8106,
      ADR2 => Q_n0202,
      ADR3 => N12415,
      O => CHOICE536
    );
  Ker7970 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => CNT(4),
      ADR1 => CNT(5),
      ADR2 => CNT(7),
      ADR3 => N8526,
      O => N7972
    );
  Q_n0077_2_25 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => N7951,
      ADR1 => CHOICE483,
      ADR2 => CHOICE479,
      ADR3 => N8077,
      O => CHOICE486
    );
  Mmux_n0050_Result_2_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0304,
      ADR1 => PCM1SEL(2),
      ADR2 => N12148,
      O => Q_n0050(2)
    );
  EIRQ_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_n0000(3),
      CE => Q_n0286,
      RST => EIRQ_RP_3_GSR_OR,
      CLK => RDn_IBUF,
      O => EIRQ_RP(3),
      SET => GND
    );
  Mmux_n0036_Result_0_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => MCTXO(1),
      ADR1 => Q_n0082,
      O => Q_n0036(0)
    );
  EIRQ_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0286,
      RST => EIRQ_RP_0_GSR_OR,
      CLK => RDn_IBUF,
      O => EIRQ_RP(0),
      SET => GND
    );
  EIRQ_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_n0000(1),
      CE => Q_n0286,
      RST => EIRQ_RP_1_GSR_OR,
      CLK => RDn_IBUF,
      O => EIRQ_RP(1),
      SET => GND
    );
  PCM1RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(3),
      CE => Q_n0285,
      RST => PCM1RP_3_GSR_OR,
      CLK => RDn_IBUF,
      O => PCM1RP(3),
      SET => GND
    );
  Mmux_n0034_Result_2_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0293(2),
      ADR1 => N7577,
      O => Q_n0034(2)
    );
  PCM1RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0285,
      RST => PCM1RP_0_GSR_OR,
      CLK => RDn_IBUF,
      O => PCM1RP(0),
      SET => GND
    );
  PCM1RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(1),
      CE => Q_n0285,
      RST => PCM1RP_1_GSR_OR,
      CLK => RDn_IBUF,
      O => PCM1RP(1),
      SET => GND
    );
  CRX_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_n0000(3),
      CE => Q_n0284,
      RST => CRX_RP_3_GSR_OR,
      CLK => RDn_IBUF,
      O => CRX_RP(3),
      SET => GND
    );
  TS_CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_23,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_8_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(8)
    );
  CRX_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0284,
      RST => CRX_RP_0_GSR_OR,
      CLK => RDn_IBUF,
      O => CRX_RP(0),
      SET => GND
    );
  CRX_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_n0000(1),
      CE => Q_n0284,
      RST => CRX_RP_1_GSR_OR,
      CLK => RDn_IBUF,
      O => CRX_RP(1),
      SET => GND
    );
  CTX_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_n0000(3),
      CE => Q_n0283,
      RST => CTX_RP_3_GSR_OR,
      CLK => RDn_IBUF,
      O => CTX_RP(3),
      SET => GND
    );
  Q_n0077_6_29 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => CTXO(6),
      O => CHOICE191
    );
  CTX_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0283,
      RST => CTX_RP_0_GSR_OR,
      CLK => RDn_IBUF,
      O => CTX_RP(0),
      SET => GND
    );
  CTX_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_n0000(1),
      CE => Q_n0283,
      RST => CTX_RP_1_GSR_OR,
      CLK => RDn_IBUF,
      O => CTX_RP(1),
      SET => GND
    );
  FCE_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_n0000(3),
      CE => Q_n0282,
      RST => FCE_RP_3_GSR_OR,
      CLK => RDn_IBUF,
      O => FCE_RP(3),
      SET => GND
    );
  Mmux_PCM1MUX_inst_lut3_111 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => PCM1SEL(0),
      ADR1 => RPCM_1_IBUF,
      ADR2 => RPCM_0_IBUF,
      O => Mmux_PCM1MUX_net24
    );
  FCE_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0282,
      RST => FCE_RP_0_GSR_OR,
      CLK => RDn_IBUF,
      O => FCE_RP(0),
      SET => GND
    );
  FCE_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_n0000(1),
      CE => Q_n0282,
      RST => FCE_RP_1_GSR_OR,
      CLK => RDn_IBUF,
      O => FCE_RP(1),
      SET => GND
    );
  MCTX_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_n0000(3),
      CE => Q_n0026,
      RST => MCTX_WP_3_GSR_OR,
      CLK => WRn_IBUF,
      O => MCTX_WP(3),
      SET => GND
    );
  Mmux_PCM1MUX_inst_mux_f5_0 : X_MUX2
    port map (
      IA => Mmux_PCM1MUX_net21,
      IB => Mmux_PCM1MUX_net22,
      SEL => PCM1SEL(1),
      O => Mmux_PCM1MUX_net23
    );
  MCTX_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0026,
      RST => MCTX_WP_0_GSR_OR,
      CLK => WRn_IBUF,
      O => MCTX_WP(0),
      SET => GND
    );
  MCTX_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_n0000(1),
      CE => Q_n0026,
      RST => MCTX_WP_1_GSR_OR,
      CLK => WRn_IBUF,
      O => MCTX_WP(1),
      SET => GND
    );
  FCE_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_n0000(3),
      RST => FCE_WP_3_GSR_OR,
      CLK => N12130,
      O => FCE_WP(3),
      CE => VCC,
      SET => GND
    );
  Mmux_PCM1MUX_inst_lut3_101 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => PCM1SEL(0),
      ADR1 => N12124,
      ADR2 => N12122,
      O => Mmux_PCM1MUX_net22
    );
  FCE_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_Madd_n0000_inst_lut2_0,
      RST => FCE_WP_0_GSR_OR,
      CLK => N12130,
      O => FCE_WP(0),
      CE => VCC,
      SET => GND
    );
  FCE_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_n0000(1),
      RST => FCE_WP_1_GSR_OR,
      CLK => N12130,
      O => FCE_WP(1),
      CE => VCC,
      SET => GND
    );
  EIRQ_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_n0000(3),
      CE => Q_n0177,
      RST => EIRQ_WP_3_GSR_OR,
      CLK => N12166,
      O => EIRQ_WP(3),
      SET => GND
    );
  Mmux_PCM1MUX_inst_lut3_91 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => PCM1SEL(0),
      ADR1 => N12120,
      ADR2 => N12118,
      O => Mmux_PCM1MUX_net21
    );
  Mmux_PCM1MUX_inst_mux_f6_0 : X_MUX2
    port map (
      IA => Mmux_PCM1MUX_net23,
      IB => Mmux_PCM1MUX_net26,
      SEL => PCM1SEL(2),
      O => PCM1MUX
    );
  EIRQ_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0177,
      RST => EIRQ_WP_0_GSR_OR,
      CLK => N12166,
      O => EIRQ_WP(0),
      SET => GND
    );
  EIRQ_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_n0000(1),
      CE => Q_n0177,
      RST => EIRQ_WP_1_GSR_OR,
      CLK => N12166,
      O => EIRQ_WP(1),
      SET => GND
    );
  CRX_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_n0000(3),
      CE => Q_n0278,
      RST => CRX_WP_3_GSR_OR,
      CLK => N12166,
      O => CRX_WP(3),
      SET => GND
    );
  Mmux_PCM1MUX_inst_mux_f5_1 : X_MUX2
    port map (
      IA => Mmux_PCM1MUX_net24,
      IB => Mmux_PCM1MUX_net25,
      SEL => PCM1SEL(1),
      O => Mmux_PCM1MUX_net26
    );
  CRX_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0278,
      RST => CRX_WP_0_GSR_OR,
      CLK => N12166,
      O => CRX_WP(0),
      SET => GND
    );
  CRX_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_n0000(1),
      CE => Q_n0278,
      RST => CRX_WP_1_GSR_OR,
      CLK => N12166,
      O => CRX_WP(1),
      SET => GND
    );
  CTX_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_n0000(3),
      CE => Q_n0275,
      RST => CTX_WP_3_GSR_OR,
      CLK => N12166,
      O => CTX_WP(3),
      SET => GND
    );
  TS_CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_20,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_5_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(5)
    );
  CTX_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0275,
      RST => CTX_WP_0_GSR_OR,
      CLK => N12166,
      O => CTX_WP(0),
      SET => GND
    );
  CTX_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_n0000(1),
      CE => Q_n0275,
      RST => CTX_WP_1_GSR_OR,
      CLK => N12166,
      O => CTX_WP(1),
      SET => GND
    );
  PCM1WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(3),
      CE => SYNC4I_1,
      RST => PCM1WP_3_GSR_OR,
      CLK => N12164,
      O => PCM1WP(3),
      SET => GND
    );
  TS_CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_19,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_4_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(4)
    );
  PCM1WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_Madd_n0000_inst_lut2_0,
      CE => SYNC4I_1,
      RST => PCM1WP_0_GSR_OR,
      CLK => N12164,
      O => PCM1WP(0),
      SET => GND
    );
  PCM1WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(1),
      CE => SYNC4I_1,
      RST => PCM1WP_1_GSR_OR,
      CLK => N12164,
      O => PCM1WP(1),
      SET => GND
    );
  CNT_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(10),
      CLK => NlwInverterSignal_CNT_10_C,
      O => CNT(10),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_Madd_n0000_inst_sum_10 : X_XOR2
    port map (
      I0 => CNT_6_rt,
      I1 => CNT_Madd_n0000_inst_cy_12,
      O => CNT_n0000(6)
    );
  CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_Madd_n0000_inst_lut2_4,
      CLK => NlwInverterSignal_CNT_0_C,
      O => CNT(0),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(1),
      CLK => NlwInverterSignal_CNT_1_C,
      O => CNT(1),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(2),
      CLK => NlwInverterSignal_CNT_2_C,
      O => CNT(2),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(3),
      CLK => NlwInverterSignal_CNT_3_C,
      O => CNT(3),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(4),
      CLK => NlwInverterSignal_CNT_4_C,
      O => CNT(4),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(5),
      CLK => NlwInverterSignal_CNT_5_C,
      O => CNT(5),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(6),
      CLK => NlwInverterSignal_CNT_6_C,
      O => CNT(6),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(7),
      CLK => NlwInverterSignal_CNT_7_C,
      O => CNT(7),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(8),
      CLK => NlwInverterSignal_CNT_8_C,
      O => CNT(8),
      CE => VCC,
      SET => GND,
      RST => GSR
    );
  MCTX_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_n0000(3),
      CE => MCTX_RP_0_N1154,
      RST => MCTX_RP_3_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_RP(3),
      SET => GND
    );
  TS_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_18,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_3_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(3)
    );
  Q_n02721 : X_LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      ADR0 => N12460,
      ADR1 => Q_n0082,
      ADR2 => MCTXE,
      ADR3 => CHOICE566,
      O => Q_n0272
    );
  MCTX_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_Madd_n0000_inst_lut2_0,
      CE => MCTX_RP_0_N1154,
      RST => MCTX_RP_0_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_RP(0),
      SET => GND
    );
  MCTX_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_n0000(1),
      CE => MCTX_RP_0_N1154,
      RST => MCTX_RP_1_GSR_OR,
      CLK => CLK16M_BUFGP,
      O => MCTX_RP(1),
      SET => GND
    );
  Mmux_n0051_Result_0_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0305,
      ADR1 => PCM1TS(0),
      ADR2 => N12140,
      O => Q_n0051(0)
    );
  Mmux_n0051_Result_1_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0305,
      ADR1 => PCM1TS(1),
      ADR2 => N12144,
      O => Q_n0051(1)
    );
  Mmux_n0051_Result_2_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0305,
      ADR1 => PCM1TS(2),
      ADR2 => N12148,
      O => Q_n0051(2)
    );
  Mmux_n0051_Result_3_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0305,
      ADR1 => PCM1TS(3),
      ADR2 => N12152,
      O => Q_n0051(3)
    );
  Mmux_n0051_Result_4_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => Q_n0305,
      ADR1 => PCM1TS(4),
      ADR2 => N12154,
      O => Q_n0051(4)
    );
  TS_CNT_inst_cy_25_39 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_24,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_6,
      O => TS_CNT_inst_cy_25
    );
  TS_CNT_inst_sum_20_40 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_5,
      I1 => TS_CNT_inst_cy_23,
      O => TS_CNT_inst_sum_20
    );
  Mcompar_n0111_inst_cy_2 : X_MUX2
    port map (
      IB => Mcompar_n0111_inst_cy_1,
      IA => TPCM_2_IOBUF,
      SEL => Mcompar_n0111_inst_lut4_2,
      O => Q_n0111
    );
  Mcompar_n0111_inst_cy_0_41 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => Mcompar_n0111_inst_lut4_0,
      O => Mcompar_n0111_inst_cy_0
    );
  MCTX_RP_Madd_n0000_inst_cy_5_42 : X_MUX2
    port map (
      IB => MCTX_RP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => MCTX_RP_2_rt,
      O => MCTX_RP_Madd_n0000_inst_cy_5
    );
  MCTX_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => MCTX_RP_2_rt,
      I1 => MCTX_RP_Madd_n0000_inst_cy_4,
      O => MCTX_RP_n0000(2)
    );
  MCTX_RP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => MCTX_RP(0),
      O => MCTX_RP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  MCTX_RP_Madd_n0000_inst_cy_3_43 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => MCTX_RP_Madd_n0000_inst_lut2_0,
      O => MCTX_RP_Madd_n0000_inst_cy_3
    );
  A_0_IBUF_44 : X_BUF
    port map (
      I => A(0),
      O => A_0_IBUF
    );
  MCTX_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => MCTX_RP_3_rt,
      I1 => MCTX_RP_Madd_n0000_inst_cy_5,
      O => MCTX_RP_n0000(3)
    );
  MCTX_RP_Madd_n0000_inst_cy_4_45 : X_MUX2
    port map (
      IB => MCTX_RP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => MCTX_RP_1_rt,
      O => MCTX_RP_Madd_n0000_inst_cy_4
    );
  MCTX_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => MCTX_RP_1_rt,
      I1 => MCTX_RP_Madd_n0000_inst_cy_3,
      O => MCTX_RP_n0000(1)
    );
  PCM1WP_Madd_n0000_inst_cy_5_46 : X_MUX2
    port map (
      IB => PCM1WP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => PCM1WP_2_rt,
      O => PCM1WP_Madd_n0000_inst_cy_5
    );
  PCM1WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => PCM1WP_2_rt,
      I1 => PCM1WP_Madd_n0000_inst_cy_4,
      O => PCM1WP_n0000(2)
    );
  PCM1WP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => PCM1WP(0),
      O => PCM1WP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  PCM1WP_Madd_n0000_inst_cy_3_47 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => PCM1WP_Madd_n0000_inst_lut2_0,
      O => PCM1WP_Madd_n0000_inst_cy_3
    );
  A_3_IBUF_48 : X_BUF
    port map (
      I => A(3),
      O => A_3_IBUF
    );
  PCM1WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => PCM1WP_3_rt,
      I1 => PCM1WP_Madd_n0000_inst_cy_5,
      O => PCM1WP_n0000(3)
    );
  PCM1WP_Madd_n0000_inst_cy_4_49 : X_MUX2
    port map (
      IB => PCM1WP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => PCM1WP_1_rt,
      O => PCM1WP_Madd_n0000_inst_cy_4
    );
  PCM1WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => PCM1WP_1_rt,
      I1 => PCM1WP_Madd_n0000_inst_cy_3,
      O => PCM1WP_n0000(1)
    );
  CTX_WP_Madd_n0000_inst_cy_5_50 : X_MUX2
    port map (
      IB => CTX_WP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => CTX_WP_2_rt,
      O => CTX_WP_Madd_n0000_inst_cy_5
    );
  CTX_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CTX_WP_2_rt,
      I1 => CTX_WP_Madd_n0000_inst_cy_4,
      O => CTX_WP_n0000(2)
    );
  CTX_WP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CTX_WP(0),
      O => CTX_WP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  CTX_WP_Madd_n0000_inst_cy_3_51 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => CTX_WP_Madd_n0000_inst_lut2_0,
      O => CTX_WP_Madd_n0000_inst_cy_3
    );
  Test_OBUF_52 : X_BUF
    port map (
      I => Test_OBUF,
      O => Test_OBUF_GTS_TRI
    );
  CTX_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CTX_WP_3_rt,
      I1 => CTX_WP_Madd_n0000_inst_cy_5,
      O => CTX_WP_n0000(3)
    );
  CTX_WP_Madd_n0000_inst_cy_4_53 : X_MUX2
    port map (
      IB => CTX_WP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => CTX_WP_1_rt,
      O => CTX_WP_Madd_n0000_inst_cy_4
    );
  CTX_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CTX_WP_1_rt,
      I1 => CTX_WP_Madd_n0000_inst_cy_3,
      O => CTX_WP_n0000(1)
    );
  CRX_WP_Madd_n0000_inst_cy_5_54 : X_MUX2
    port map (
      IB => CRX_WP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => CRX_WP_2_rt,
      O => CRX_WP_Madd_n0000_inst_cy_5
    );
  CRX_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CRX_WP_2_rt,
      I1 => CRX_WP_Madd_n0000_inst_cy_4,
      O => CRX_WP_n0000(2)
    );
  CRX_WP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CRX_WP(0),
      O => CRX_WP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  CRX_WP_Madd_n0000_inst_cy_3_55 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => CRX_WP_Madd_n0000_inst_lut2_0,
      O => CRX_WP_Madd_n0000_inst_cy_3
    );
  LED_3_OBUF_56 : X_BUF
    port map (
      I => LED_3_OBUF,
      O => LED_3_OBUF_GTS_TRI
    );
  CRX_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CRX_WP_3_rt,
      I1 => CRX_WP_Madd_n0000_inst_cy_5,
      O => CRX_WP_n0000(3)
    );
  CRX_WP_Madd_n0000_inst_cy_4_57 : X_MUX2
    port map (
      IB => CRX_WP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => CRX_WP_1_rt,
      O => CRX_WP_Madd_n0000_inst_cy_4
    );
  CRX_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CRX_WP_1_rt,
      I1 => CRX_WP_Madd_n0000_inst_cy_3,
      O => CRX_WP_n0000(1)
    );
  EIRQ_WP_Madd_n0000_inst_cy_5_58 : X_MUX2
    port map (
      IB => EIRQ_WP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => EIRQ_WP_2_rt,
      O => EIRQ_WP_Madd_n0000_inst_cy_5
    );
  EIRQ_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => EIRQ_WP_2_rt,
      I1 => EIRQ_WP_Madd_n0000_inst_cy_4,
      O => EIRQ_WP_n0000(2)
    );
  EIRQ_WP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => EIRQ_WP(0),
      O => EIRQ_WP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  EIRQ_WP_Madd_n0000_inst_cy_3_59 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => EIRQ_WP_Madd_n0000_inst_lut2_0,
      O => EIRQ_WP_Madd_n0000_inst_cy_3
    );
  RPCM_1_IBUF_60 : X_BUF
    port map (
      I => RPCM(1),
      O => RPCM_1_IBUF
    );
  EIRQ_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => EIRQ_WP_3_rt,
      I1 => EIRQ_WP_Madd_n0000_inst_cy_5,
      O => EIRQ_WP_n0000(3)
    );
  EIRQ_WP_Madd_n0000_inst_cy_4_61 : X_MUX2
    port map (
      IB => EIRQ_WP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => EIRQ_WP_1_rt,
      O => EIRQ_WP_Madd_n0000_inst_cy_4
    );
  EIRQ_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => EIRQ_WP_1_rt,
      I1 => EIRQ_WP_Madd_n0000_inst_cy_3,
      O => EIRQ_WP_n0000(1)
    );
  FCE_WP_Madd_n0000_inst_cy_5_62 : X_MUX2
    port map (
      IB => FCE_WP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => FCE_WP_2_rt,
      O => FCE_WP_Madd_n0000_inst_cy_5
    );
  FCE_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => FCE_WP_2_rt,
      I1 => FCE_WP_Madd_n0000_inst_cy_4,
      O => FCE_WP_n0000(2)
    );
  FCE_WP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => FCE_WP(0),
      O => FCE_WP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  FCE_WP_Madd_n0000_inst_cy_3_63 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => FCE_WP_Madd_n0000_inst_lut2_0,
      O => FCE_WP_Madd_n0000_inst_cy_3
    );
  RPCM_3_IBUF_64 : X_BUF
    port map (
      I => RPCM(3),
      O => RPCM_3_IBUF
    );
  FCE_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => FCE_WP_3_rt,
      I1 => FCE_WP_Madd_n0000_inst_cy_5,
      O => FCE_WP_n0000(3)
    );
  FCE_WP_Madd_n0000_inst_cy_4_65 : X_MUX2
    port map (
      IB => FCE_WP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => FCE_WP_1_rt,
      O => FCE_WP_Madd_n0000_inst_cy_4
    );
  FCE_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => FCE_WP_1_rt,
      I1 => FCE_WP_Madd_n0000_inst_cy_3,
      O => FCE_WP_n0000(1)
    );
  MCTX_WP_Madd_n0000_inst_cy_5_66 : X_MUX2
    port map (
      IB => MCTX_WP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => MCTX_WP_2_rt,
      O => MCTX_WP_Madd_n0000_inst_cy_5
    );
  MCTX_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => MCTX_WP_2_rt,
      I1 => MCTX_WP_Madd_n0000_inst_cy_4,
      O => MCTX_WP_n0000(2)
    );
  MCTX_WP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => MCTX_WP(0),
      O => MCTX_WP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  MCTX_WP_Madd_n0000_inst_cy_3_67 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => MCTX_WP_Madd_n0000_inst_lut2_0,
      O => MCTX_WP_Madd_n0000_inst_cy_3
    );
  A_1_IBUF_68 : X_BUF
    port map (
      I => A(1),
      O => A_1_IBUF
    );
  MCTX_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => MCTX_WP_3_rt,
      I1 => MCTX_WP_Madd_n0000_inst_cy_5,
      O => MCTX_WP_n0000(3)
    );
  MCTX_WP_Madd_n0000_inst_cy_4_69 : X_MUX2
    port map (
      IB => MCTX_WP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => MCTX_WP_1_rt,
      O => MCTX_WP_Madd_n0000_inst_cy_4
    );
  MCTX_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => MCTX_WP_1_rt,
      I1 => MCTX_WP_Madd_n0000_inst_cy_3,
      O => MCTX_WP_n0000(1)
    );
  FCE_RP_Madd_n0000_inst_cy_5_70 : X_MUX2
    port map (
      IB => FCE_RP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => FCE_RP_2_rt,
      O => FCE_RP_Madd_n0000_inst_cy_5
    );
  FCE_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => FCE_RP_2_rt,
      I1 => FCE_RP_Madd_n0000_inst_cy_4,
      O => FCE_RP_n0000(2)
    );
  FCE_RP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => FCE_RP(0),
      O => FCE_RP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  FCE_RP_Madd_n0000_inst_cy_3_71 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => FCE_RP_Madd_n0000_inst_lut2_0,
      O => FCE_RP_Madd_n0000_inst_cy_3
    );
  RPCM_2_IBUF_72 : X_BUF
    port map (
      I => RPCM(2),
      O => RPCM_2_IBUF
    );
  FCE_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => FCE_RP_3_rt,
      I1 => FCE_RP_Madd_n0000_inst_cy_5,
      O => FCE_RP_n0000(3)
    );
  FCE_RP_Madd_n0000_inst_cy_4_73 : X_MUX2
    port map (
      IB => FCE_RP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => FCE_RP_1_rt,
      O => FCE_RP_Madd_n0000_inst_cy_4
    );
  FCE_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => FCE_RP_1_rt,
      I1 => FCE_RP_Madd_n0000_inst_cy_3,
      O => FCE_RP_n0000(1)
    );
  CTX_RP_Madd_n0000_inst_cy_5_74 : X_MUX2
    port map (
      IB => CTX_RP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => CTX_RP_2_rt,
      O => CTX_RP_Madd_n0000_inst_cy_5
    );
  CTX_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CTX_RP_2_rt,
      I1 => CTX_RP_Madd_n0000_inst_cy_4,
      O => CTX_RP_n0000(2)
    );
  CTX_RP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CTX_RP(0),
      O => CTX_RP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  CTX_RP_Madd_n0000_inst_cy_3_75 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => CTX_RP_Madd_n0000_inst_lut2_0,
      O => CTX_RP_Madd_n0000_inst_cy_3
    );
  INTn_OBUF_76 : X_BUF
    port map (
      I => INTn_OBUF,
      O => INTn_OBUF_GTS_TRI
    );
  CTX_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CTX_RP_3_rt,
      I1 => CTX_RP_Madd_n0000_inst_cy_5,
      O => CTX_RP_n0000(3)
    );
  CTX_RP_Madd_n0000_inst_cy_4_77 : X_MUX2
    port map (
      IB => CTX_RP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => CTX_RP_1_rt,
      O => CTX_RP_Madd_n0000_inst_cy_4
    );
  CTX_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CTX_RP_1_rt,
      I1 => CTX_RP_Madd_n0000_inst_cy_3,
      O => CTX_RP_n0000(1)
    );
  CRX_RP_Madd_n0000_inst_cy_5_78 : X_MUX2
    port map (
      IB => CRX_RP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => CRX_RP_2_rt,
      O => CRX_RP_Madd_n0000_inst_cy_5
    );
  CRX_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CRX_RP_2_rt,
      I1 => CRX_RP_Madd_n0000_inst_cy_4,
      O => CRX_RP_n0000(2)
    );
  CRX_RP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CRX_RP(0),
      O => CRX_RP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  CRX_RP_Madd_n0000_inst_cy_3_79 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => CRX_RP_Madd_n0000_inst_lut2_0,
      O => CRX_RP_Madd_n0000_inst_cy_3
    );
  LED_2_OBUF_80 : X_BUF
    port map (
      I => LED_2_OBUF,
      O => LED_2_OBUF_GTS_TRI
    );
  CRX_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CRX_RP_3_rt,
      I1 => CRX_RP_Madd_n0000_inst_cy_5,
      O => CRX_RP_n0000(3)
    );
  CRX_RP_Madd_n0000_inst_cy_4_81 : X_MUX2
    port map (
      IB => CRX_RP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => CRX_RP_1_rt,
      O => CRX_RP_Madd_n0000_inst_cy_4
    );
  CRX_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CRX_RP_1_rt,
      I1 => CRX_RP_Madd_n0000_inst_cy_3,
      O => CRX_RP_n0000(1)
    );
  PCM1RP_Madd_n0000_inst_cy_5_82 : X_MUX2
    port map (
      IB => PCM1RP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => PCM1RP_2_rt,
      O => PCM1RP_Madd_n0000_inst_cy_5
    );
  PCM1RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => PCM1RP_2_rt,
      I1 => PCM1RP_Madd_n0000_inst_cy_4,
      O => PCM1RP_n0000(2)
    );
  PCM1RP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => PCM1RP(0),
      O => PCM1RP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  PCM1RP_Madd_n0000_inst_cy_3_83 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => PCM1RP_Madd_n0000_inst_lut2_0,
      O => PCM1RP_Madd_n0000_inst_cy_3
    );
  A_2_IBUF_84 : X_BUF
    port map (
      I => A(2),
      O => A_2_IBUF
    );
  PCM1RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => PCM1RP_3_rt,
      I1 => PCM1RP_Madd_n0000_inst_cy_5,
      O => PCM1RP_n0000(3)
    );
  PCM1RP_Madd_n0000_inst_cy_4_85 : X_MUX2
    port map (
      IB => PCM1RP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => PCM1RP_1_rt,
      O => PCM1RP_Madd_n0000_inst_cy_4
    );
  PCM1RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => PCM1RP_1_rt,
      I1 => PCM1RP_Madd_n0000_inst_cy_3,
      O => PCM1RP_n0000(1)
    );
  EIRQ_RP_Madd_n0000_inst_cy_5_86 : X_MUX2
    port map (
      IB => EIRQ_RP_Madd_n0000_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => EIRQ_RP_2_rt,
      O => EIRQ_RP_Madd_n0000_inst_cy_5
    );
  EIRQ_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => EIRQ_RP_2_rt,
      I1 => EIRQ_RP_Madd_n0000_inst_cy_4,
      O => EIRQ_RP_n0000(2)
    );
  EIRQ_RP_Madd_n0000_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => EIRQ_RP(0),
      O => EIRQ_RP_Madd_n0000_inst_lut2_0,
      ADR1 => GND
    );
  EIRQ_RP_Madd_n0000_inst_cy_3_87 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => EIRQ_RP_Madd_n0000_inst_lut2_0,
      O => EIRQ_RP_Madd_n0000_inst_cy_3
    );
  RPCM_0_IBUF_88 : X_BUF
    port map (
      I => RPCM(0),
      O => RPCM_0_IBUF
    );
  EIRQ_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => EIRQ_RP_3_rt,
      I1 => EIRQ_RP_Madd_n0000_inst_cy_5,
      O => EIRQ_RP_n0000(3)
    );
  EIRQ_RP_Madd_n0000_inst_cy_4_89 : X_MUX2
    port map (
      IB => EIRQ_RP_Madd_n0000_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => EIRQ_RP_1_rt,
      O => EIRQ_RP_Madd_n0000_inst_cy_4
    );
  EIRQ_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => EIRQ_RP_1_rt,
      I1 => EIRQ_RP_Madd_n0000_inst_cy_3,
      O => EIRQ_RP_n0000(1)
    );
  Madd_n0080_inst_cy_5_90 : X_MUX2
    port map (
      IB => Madd_n0080_inst_cy_4,
      IA => PC_3_OBUFT,
      SEL => MCTX_CNT_2_rt,
      O => Madd_n0080_inst_cy_5
    );
  Madd_n0080_inst_sum_2 : X_XOR2
    port map (
      I0 => MCTX_CNT_2_rt,
      I1 => Madd_n0080_inst_cy_4,
      O => Q_n0293(2)
    );
  Madd_n0080_inst_lut2_01 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => MCTX_CNT(0),
      O => Madd_n0080_inst_lut2_0,
      ADR1 => GND
    );
  Madd_n0080_inst_cy_3_91 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => Madd_n0080_inst_lut2_0,
      O => Madd_n0080_inst_cy_3
    );
  PA_7_IBUF_92 : X_BUF
    port map (
      I => PA(7),
      O => PA_7_IBUF
    );
  Madd_n0080_inst_sum_3 : X_XOR2
    port map (
      I0 => MCTX_CNT_3_rt,
      I1 => Madd_n0080_inst_cy_5,
      O => Q_n0293(3)
    );
  Madd_n0080_inst_cy_4_93 : X_MUX2
    port map (
      IB => Madd_n0080_inst_cy_3,
      IA => PC_3_OBUFT,
      SEL => MCTX_CNT_1_rt,
      O => Madd_n0080_inst_cy_4
    );
  Madd_n0080_inst_sum_1 : X_XOR2
    port map (
      I0 => MCTX_CNT_1_rt,
      I1 => Madd_n0080_inst_cy_3,
      O => Q_n0293(1)
    );
  Mcompar_n0071_AEB54 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE151,
      ADR1 => CHOICE162,
      O => Q_n0071
    );
  TS_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_17,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_2_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(2)
    );
  Q_n0077_7_33 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => CHOICE203,
      ADR1 => A_2_IBUF,
      ADR2 => CHOICE206,
      ADR3 => CHOICE208,
      O => CHOICE209
    );
  TS_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_16,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_1_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(1)
    );
  Q_n0077_0_26 : X_LUT4
    generic map(
      INIT => X"1F00"
    )
    port map (
      ADR0 => Q_n0135,
      ADR1 => Q_n0140,
      ADR2 => N8047,
      ADR3 => EIRQO,
      O => CHOICE580
    );
  TS_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_15,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_0_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(0)
    );
  Q_n021686 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => CSn_IBUF,
      ADR1 => CHOICE231,
      ADR2 => CHOICE241,
      ADR3 => RDn_IBUF,
      O => CHOICE244
    );
  TS_CNT_inst_sum_23_94 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_8,
      I1 => TS_CNT_inst_cy_26,
      O => TS_CNT_inst_sum_23
    );
  Q_n0077_6_53 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0202,
      ADR1 => FCEO(6),
      O => CHOICE194
    );
  TS_CNT_inst_sum_21_95 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_6,
      I1 => TS_CNT_inst_cy_24,
      O => TS_CNT_inst_sum_21
    );
  MCTX_CNT_3_rt_96 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_CNT(3),
      O => MCTX_CNT_3_rt,
      ADR1 => GND
    );
  Q_n0041_7_1 : X_LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      ADR0 => N12134,
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => N7959,
      O => Q_n0041(7)
    );
  CNT_Madd_n0000_inst_sum_12 : X_XOR2
    port map (
      I0 => CNT_8_rt,
      I1 => CNT_Madd_n0000_inst_cy_14,
      O => CNT_n0000(8)
    );
  CNT_Madd_n0000_inst_cy_14_97 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_13,
      IA => PC_3_OBUFT,
      SEL => CNT_7_rt,
      O => CNT_Madd_n0000_inst_cy_14
    );
  CNT_Madd_n0000_inst_lut2_41 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CNT(0),
      O => CNT_Madd_n0000_inst_lut2_4,
      ADR1 => GND
    );
  CNT_Madd_n0000_inst_cy_7_98 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => CNT_Madd_n0000_inst_lut2_4,
      O => CNT_Madd_n0000_inst_cy_7
    );
  LED_1_OBUF_99 : X_BUF
    port map (
      I => LED_1_OBUF,
      O => LED_1_OBUF_GTS_TRI
    );
  CNT_Madd_n0000_inst_sum_14 : X_XOR2
    port map (
      I0 => CNT_10_rt,
      I1 => CNT_Madd_n0000_inst_cy_16,
      O => CNT_n0000(10)
    );
  CNT_Madd_n0000_inst_cy_8_100 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_7,
      IA => PC_3_OBUFT,
      SEL => CNT_1_rt,
      O => CNT_Madd_n0000_inst_cy_8
    );
  CNT_Madd_n0000_inst_sum_5 : X_XOR2
    port map (
      I0 => CNT_1_rt,
      I1 => CNT_Madd_n0000_inst_cy_7,
      O => CNT_n0000(1)
    );
  TS_CNT_inst_sum_22_101 : X_XOR2
    port map (
      I0 => TS_CNT_inst_lut3_7,
      I1 => TS_CNT_inst_cy_25,
      O => TS_CNT_inst_sum_22
    );
  CNT_Madd_n0000_inst_cy_9_102 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_8,
      IA => PC_3_OBUFT,
      SEL => CNT_2_rt,
      O => CNT_Madd_n0000_inst_cy_9
    );
  CNT_Madd_n0000_inst_sum_6 : X_XOR2
    port map (
      I0 => CNT_2_rt,
      I1 => CNT_Madd_n0000_inst_cy_8,
      O => CNT_n0000(2)
    );
  CNT_Madd_n0000_inst_sum_11 : X_XOR2
    port map (
      I0 => CNT_7_rt,
      I1 => CNT_Madd_n0000_inst_cy_13,
      O => CNT_n0000(7)
    );
  CNT_Madd_n0000_inst_cy_10_103 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_9,
      IA => PC_3_OBUFT,
      SEL => CNT_3_rt,
      O => CNT_Madd_n0000_inst_cy_10
    );
  CNT_Madd_n0000_inst_sum_7 : X_XOR2
    port map (
      I0 => CNT_3_rt,
      I1 => CNT_Madd_n0000_inst_cy_9,
      O => CNT_n0000(3)
    );
  CNT_Madd_n0000_inst_sum_13 : X_XOR2
    port map (
      I0 => CNT_9_rt,
      I1 => CNT_Madd_n0000_inst_cy_15,
      O => CNT_n0000(9)
    );
  CNT_Madd_n0000_inst_cy_11_104 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_10,
      IA => PC_3_OBUFT,
      SEL => CNT_4_rt,
      O => CNT_Madd_n0000_inst_cy_11
    );
  CNT_Madd_n0000_inst_sum_8 : X_XOR2
    port map (
      I0 => CNT_4_rt,
      I1 => CNT_Madd_n0000_inst_cy_10,
      O => CNT_n0000(4)
    );
  CNT_Madd_n0000_inst_cy_16_105 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_15,
      IA => PC_3_OBUFT,
      SEL => CNT_9_rt,
      O => CNT_Madd_n0000_inst_cy_16
    );
  CNT_Madd_n0000_inst_cy_12_106 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_11,
      IA => PC_3_OBUFT,
      SEL => CNT_5_rt,
      O => CNT_Madd_n0000_inst_cy_12
    );
  CNT_Madd_n0000_inst_sum_9 : X_XOR2
    port map (
      I0 => CNT_5_rt,
      I1 => CNT_Madd_n0000_inst_cy_11,
      O => CNT_n0000(5)
    );
  CNT_Madd_n0000_inst_cy_15_107 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_14,
      IA => PC_3_OBUFT,
      SEL => CNT_8_rt,
      O => CNT_Madd_n0000_inst_cy_15
    );
  CNT_Madd_n0000_inst_cy_13_108 : X_MUX2
    port map (
      IB => CNT_Madd_n0000_inst_cy_12,
      IA => PC_3_OBUFT,
      SEL => CNT_6_rt,
      O => CNT_Madd_n0000_inst_cy_13
    );
  Madd_n0068_inst_sum_12 : X_XOR2
    port map (
      I0 => CRX_CNT_8_rt,
      I1 => Madd_n0068_inst_cy_14,
      O => Q_n0068(8)
    );
  Madd_n0068_inst_cy_14_109 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_13,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_7_rt,
      O => Madd_n0068_inst_cy_14
    );
  Madd_n0068_inst_lut2_41 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CRX_CNT(0),
      O => Madd_n0068_inst_lut2_4,
      ADR1 => GND
    );
  Madd_n0068_inst_cy_7_110 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => Madd_n0068_inst_lut2_4,
      O => Madd_n0068_inst_cy_7
    );
  PA_6_IBUF_111 : X_BUF
    port map (
      I => PA(6),
      O => PA_6_IBUF
    );
  Madd_n0068_inst_sum_14 : X_XOR2
    port map (
      I0 => CRX_CNT_10_rt,
      I1 => Madd_n0068_inst_cy_16,
      O => Q_n0068(10)
    );
  Madd_n0068_inst_cy_8_112 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_7,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_1_rt,
      O => Madd_n0068_inst_cy_8
    );
  Madd_n0068_inst_sum_5 : X_XOR2
    port map (
      I0 => CRX_CNT_1_rt,
      I1 => Madd_n0068_inst_cy_7,
      O => Q_n0068(1)
    );
  TS_CNT_inst_cy_26_113 : X_MUX2
    port map (
      IB => TS_CNT_inst_cy_25,
      IA => PC_3_OBUFT,
      SEL => TS_CNT_inst_lut3_7,
      O => TS_CNT_inst_cy_26
    );
  Madd_n0068_inst_cy_9_114 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_8,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_2_rt,
      O => Madd_n0068_inst_cy_9
    );
  Madd_n0068_inst_sum_6 : X_XOR2
    port map (
      I0 => CRX_CNT_2_rt,
      I1 => Madd_n0068_inst_cy_8,
      O => Q_n0068(2)
    );
  Madd_n0068_inst_sum_11 : X_XOR2
    port map (
      I0 => CRX_CNT_7_rt,
      I1 => Madd_n0068_inst_cy_13,
      O => Q_n0068(7)
    );
  Madd_n0068_inst_cy_10_115 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_9,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_3_rt,
      O => Madd_n0068_inst_cy_10
    );
  Madd_n0068_inst_sum_7 : X_XOR2
    port map (
      I0 => CRX_CNT_3_rt,
      I1 => Madd_n0068_inst_cy_9,
      O => Q_n0068(3)
    );
  Madd_n0068_inst_sum_13 : X_XOR2
    port map (
      I0 => CRX_CNT_9_rt,
      I1 => Madd_n0068_inst_cy_15,
      O => Q_n0068(9)
    );
  Madd_n0068_inst_cy_11_116 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_10,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_4_rt,
      O => Madd_n0068_inst_cy_11
    );
  Madd_n0068_inst_sum_8 : X_XOR2
    port map (
      I0 => CRX_CNT_4_rt,
      I1 => Madd_n0068_inst_cy_10,
      O => Q_n0068(4)
    );
  Madd_n0068_inst_cy_16_117 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_15,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_9_rt,
      O => Madd_n0068_inst_cy_16
    );
  Madd_n0068_inst_cy_12_118 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_11,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_5_rt,
      O => Madd_n0068_inst_cy_12
    );
  Madd_n0068_inst_sum_9 : X_XOR2
    port map (
      I0 => CRX_CNT_5_rt,
      I1 => Madd_n0068_inst_cy_11,
      O => Q_n0068(5)
    );
  Madd_n0068_inst_cy_15_119 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_14,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_8_rt,
      O => Madd_n0068_inst_cy_15
    );
  Madd_n0068_inst_cy_13_120 : X_MUX2
    port map (
      IB => Madd_n0068_inst_cy_12,
      IA => PC_3_OBUFT,
      SEL => CRX_CNT_6_rt,
      O => Madd_n0068_inst_cy_13
    );
  Madd_n0067_inst_sum_12 : X_XOR2
    port map (
      I0 => CTX_CNT_8_rt,
      I1 => Madd_n0067_inst_cy_14,
      O => Q_n0067(8)
    );
  Madd_n0067_inst_cy_14_121 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_13,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_7_rt,
      O => Madd_n0067_inst_cy_14
    );
  Madd_n0067_inst_lut2_41 : X_LUT2
    generic map(
      INIT => X"5"
    )
    port map (
      ADR0 => CTX_CNT(0),
      O => Madd_n0067_inst_lut2_4,
      ADR1 => GND
    );
  Madd_n0067_inst_cy_7_122 : X_MUX2
    port map (
      IB => PC_3_OBUFT,
      IA => TPCM_2_IOBUF,
      SEL => Madd_n0067_inst_lut2_4,
      O => Madd_n0067_inst_cy_7
    );
  PA_5_IBUF_123 : X_BUF
    port map (
      I => PA(5),
      O => PA_5_IBUF
    );
  Madd_n0067_inst_sum_14 : X_XOR2
    port map (
      I0 => CTX_CNT_10_rt,
      I1 => Madd_n0067_inst_cy_16,
      O => Q_n0067(10)
    );
  Madd_n0067_inst_cy_8_124 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_7,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_1_rt,
      O => Madd_n0067_inst_cy_8
    );
  Madd_n0067_inst_sum_5 : X_XOR2
    port map (
      I0 => CTX_CNT_1_rt,
      I1 => Madd_n0067_inst_cy_7,
      O => Q_n0067(1)
    );
  TS_CNT_inst_lut3_61 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(6),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_6
    );
  Madd_n0067_inst_cy_9_125 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_8,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_2_rt,
      O => Madd_n0067_inst_cy_9
    );
  Madd_n0067_inst_sum_6 : X_XOR2
    port map (
      I0 => CTX_CNT_2_rt,
      I1 => Madd_n0067_inst_cy_8,
      O => Q_n0067(2)
    );
  Madd_n0067_inst_sum_11 : X_XOR2
    port map (
      I0 => CTX_CNT_7_rt,
      I1 => Madd_n0067_inst_cy_13,
      O => Q_n0067(7)
    );
  Madd_n0067_inst_cy_10_126 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_9,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_3_rt,
      O => Madd_n0067_inst_cy_10
    );
  Madd_n0067_inst_sum_7 : X_XOR2
    port map (
      I0 => CTX_CNT_3_rt,
      I1 => Madd_n0067_inst_cy_9,
      O => Q_n0067(3)
    );
  Madd_n0067_inst_sum_13 : X_XOR2
    port map (
      I0 => CTX_CNT_9_rt,
      I1 => Madd_n0067_inst_cy_15,
      O => Q_n0067(9)
    );
  Madd_n0067_inst_cy_11_127 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_10,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_4_rt,
      O => Madd_n0067_inst_cy_11
    );
  Madd_n0067_inst_sum_8 : X_XOR2
    port map (
      I0 => CTX_CNT_4_rt,
      I1 => Madd_n0067_inst_cy_10,
      O => Q_n0067(4)
    );
  Madd_n0067_inst_cy_16_128 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_15,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_9_rt,
      O => Madd_n0067_inst_cy_16
    );
  Madd_n0067_inst_cy_12_129 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_11,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_5_rt,
      O => Madd_n0067_inst_cy_12
    );
  Madd_n0067_inst_sum_9 : X_XOR2
    port map (
      I0 => CTX_CNT_5_rt,
      I1 => Madd_n0067_inst_cy_11,
      O => Q_n0067(5)
    );
  Madd_n0067_inst_cy_15_130 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_14,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_8_rt,
      O => Madd_n0067_inst_cy_15
    );
  Madd_n0067_inst_cy_13_131 : X_MUX2
    port map (
      IB => Madd_n0067_inst_cy_12,
      IA => PC_3_OBUFT,
      SEL => CTX_CNT_6_rt,
      O => Madd_n0067_inst_cy_13
    );
  FCE_RP_3_rt_132 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => FCE_RP(3),
      O => FCE_RP_3_rt,
      ADR1 => GND
    );
  TS_CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_22,
      CE => TPCM_2_IOBUF,
      RST => TS_CNT_7_GSR_OR,
      SET => PC_3_OBUFT,
      CLK => N12164,
      O => TS_CNT(7)
    );
  Ker80751 : X_LUT4
    generic map(
      INIT => X"5551"
    )
    port map (
      ADR0 => Q_n0206,
      ADR1 => Q_n0138,
      ADR2 => RDn_IBUF,
      ADR3 => CSn_IBUF,
      O => N8077
    );
  Ker81331 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => A_3_IBUF,
      ADR2 => A_4_IBUF,
      O => N8135
    );
  Ker8110_SW1 : X_LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      ADR0 => N8140,
      ADR1 => CSn_IBUF,
      ADR2 => A_4_IBUF,
      ADR3 => RDn_IBUF,
      O => N12407
    );
  Ker80451 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => RDn_IBUF,
      ADR1 => CSn_IBUF,
      O => N8047
    );
  Q_n0077_1_10 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => Q_n0212,
      ADR1 => N12128,
      ADR2 => CHOICE520,
      ADR3 => N7951,
      O => CHOICE522
    );
  Ker79371 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => RDn_IBUF,
      ADR1 => CSn_IBUF,
      ADR2 => A_4_IBUF,
      ADR3 => A_5_IBUF,
      O => N7939
    );
  Q_n01381 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => N8130,
      ADR1 => A_1_IBUF,
      ADR2 => A_3_IBUF,
      ADR3 => A_2_IBUF,
      O => Q_n0138
    );
  CTX_CNT_6_rt_133 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(6),
      O => CTX_CNT_6_rt,
      ADR1 => GND
    );
  Q_n0077_7_10 : X_LUT4
    generic map(
      INIT => X"E222"
    )
    port map (
      ADR0 => CRXO(7),
      ADR1 => A_1_IBUF,
      ADR2 => N8077,
      ADR3 => PCM1O(7),
      O => CHOICE203
    );
  Ker77631 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => N8135,
      ADR1 => A_1_IBUF,
      ADR2 => A_2_IBUF,
      O => N7765
    );
  Ker81281 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_4_IBUF,
      ADR2 => A_5_IBUF,
      O => N8130
    );
  Q_n0202_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_3_IBUF,
      O => N8299
    );
  Q_n0202_134 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => N7939,
      ADR3 => N8299,
      O => Q_n0202
    );
  INTn45_SW0 : X_LUT4
    generic map(
      INIT => X"8F00"
    )
    port map (
      ADR0 => CHOICE116,
      ADR1 => CHOICE105,
      ADR2 => IEN_EIRQ,
      ADR3 => N12421,
      O => N12334
    );
  Q_n0077_6_82 : X_LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      ADR0 => N12393,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => N8106,
      O => D_6_IOBUF
    );
  Q_n0077_7_29 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => CTXO(7),
      O => CHOICE208
    );
  Q_n0077_2_10 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => Q_n0212,
      ADR1 => N12130,
      ADR2 => N8112,
      ADR3 => IEN_CRX,
      O => CHOICE483
    );
  INTn22 : X_LUT4
    generic map(
      INIT => X"0BBB"
    )
    port map (
      ADR0 => Q_n0071,
      ADR1 => IEN_FC,
      ADR2 => IEN_CTXE,
      ADR3 => MCTXE,
      O => CHOICE174
    );
  Q_n0077_6_82_SW0 : X_LUT4
    generic map(
      INIT => X"ABBB"
    )
    port map (
      ADR0 => Q_n0198,
      ADR1 => CHOICE194,
      ADR2 => CHOICE192,
      ADR3 => N8087,
      O => N12393
    );
  Mcompar_n0072_AEB26 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => EIRQ_RP(1),
      ADR1 => EIRQ_WP(1),
      ADR2 => EIRQ_RP(0),
      ADR3 => EIRQ_WP(0),
      O => CHOICE105
    );
  Q_n0077_0_142 : X_LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      ADR0 => Q_n0206,
      ADR1 => Q_n0135,
      ADR2 => N8047,
      ADR3 => CRXO(0),
      O => CHOICE604
    );
  Q_n0077_1_4 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => IEN_CTX,
      ADR1 => N8112,
      O => CHOICE520
    );
  Mcompar_n0074_AEB53 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => CRX_RP(3),
      ADR1 => CRX_WP(3),
      ADR2 => CRX_RP(2),
      ADR3 => CRX_WP(2),
      O => CHOICE93
    );
  Q_n021649 : X_LUT4
    generic map(
      INIT => X"2333"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => N12381,
      ADR2 => N8152,
      ADR3 => N8135,
      O => CHOICE241
    );
  PCM1WP_3_rt_135 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => PCM1WP(3),
      O => PCM1WP_3_rt,
      ADR1 => GND
    );
  Q_n0077_0_145 : X_LUT4
    generic map(
      INIT => X"FAEA"
    )
    port map (
      ADR0 => CHOICE604,
      ADR1 => CHOICE574,
      ADR2 => N8077,
      ADR3 => CHOICE597,
      O => CHOICE605
    );
  Mcompar_n0074_AEB54 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE82,
      ADR1 => CHOICE93,
      O => Q_n0074
    );
  Mcompar_n0075_AEB26 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => PCM1RP(1),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1RP(0),
      ADR3 => PCM1WP(0),
      O => CHOICE59
    );
  CTX_CNT_4_rt_136 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(4),
      O => CTX_CNT_4_rt,
      ADR1 => GND
    );
  CTX_RP_3_rt_137 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_RP(3),
      O => CTX_RP_3_rt,
      ADR1 => GND
    );
  Mmux_n0053_Result : X_LUT4
    generic map(
      INIT => X"CC4E"
    )
    port map (
      ADR0 => N12140,
      ADR1 => IEN_FC,
      ADR2 => A_0_IBUF,
      ADR3 => N10352,
      O => Q_n0053
    );
  CTX_CNT_5_rt_138 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(5),
      O => CTX_CNT_5_rt,
      ADR1 => GND
    );
  Q_n0077_0_37 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => IEN_FC,
      ADR1 => N8112,
      ADR2 => Q_n0212,
      ADR3 => N12126,
      O => CHOICE584
    );
  Q_n0306_SW0 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => A_3_IBUF,
      ADR2 => A_4_IBUF,
      O => N8338
    );
  Q_n0306_139 : X_LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => N8338,
      O => Q_n0306
    );
  Mmux_n0058_Result : X_LUT4
    generic map(
      INIT => X"CC4E"
    )
    port map (
      ADR0 => N12156,
      ADR1 => IEN_CTXE,
      ADR2 => A_0_IBUF,
      ADR3 => N10352,
      O => Q_n0058
    );
  CSn_IBUF_140 : X_BUF
    port map (
      I => CSn,
      O => CSn_IBUF
    );
  Q_n0077_1_27_SW0 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => Q_n0208,
      ADR1 => PCM1O(1),
      ADR2 => CHOICE522,
      O => N12314
    );
  Mmux_n0053_Result_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => N8140,
      ADR2 => A_4_IBUF,
      ADR3 => A_3_IBUF,
      O => N10352
    );
  Ker7962 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CRX_CNT(6),
      ADR1 => CRX_CNT(8),
      ADR2 => CRX_CNT(4),
      ADR3 => N9839,
      O => N7964
    );
  CRX_RP_3_rt_141 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_RP(3),
      O => CRX_RP_3_rt,
      ADR1 => GND
    );
  Q_n0077_1_0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => CTXO(1),
      O => CHOICE516
    );
  Q_n0077_2_54_SW0 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => Q_n0206,
      ADR1 => CRXO(2),
      ADR2 => CHOICE486,
      O => N12310
    );
  Q_n0077_2_2 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => N8070,
      ADR3 => PCM1O(2),
      O => CHOICE479
    );
  EIRQn_IBUF_142 : X_BUF
    port map (
      I => EIRQn,
      O => EIRQn_IBUF
    );
  Q_n0216144 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => Q_n0201,
      ADR1 => Q_n0202,
      ADR2 => Q_n0206,
      ADR3 => N12318,
      O => N9693
    );
  Q_n0077_4_1 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => CRXO(4),
      ADR1 => A_1_IBUF,
      ADR2 => N8070,
      ADR3 => A_2_IBUF,
      O => CHOICE371
    );
  SENSEn_IBUF_143 : X_BUF
    port map (
      I => SENSEn,
      O => SENSEn_IBUF
    );
  Q_n0077_4_127 : X_LUT4
    generic map(
      INIT => X"00F2"
    )
    port map (
      ADR0 => CHOICE398,
      ADR1 => Q_n0200,
      ADR2 => N12322,
      ADR3 => Q_n0198,
      O => D_4_IOBUF
    );
  Q_n0077_0_281 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => Q_n0200,
      ADR1 => Q_n0071,
      ADR2 => IEN_FC,
      ADR3 => Q_n0199,
      O => CHOICE627
    );
  Mmux_n0056_Result : X_LUT4
    generic map(
      INIT => X"CC4E"
    )
    port map (
      ADR0 => N12152,
      ADR1 => IEN_CRX,
      ADR2 => A_0_IBUF,
      ADR3 => N10352,
      O => Q_n0056
    );
  RESET_IBUF_144 : X_BUF
    port map (
      I => RESET,
      O => RESET_IBUF
    );
  A_4_IBUF_145 : X_BUF
    port map (
      I => A(4),
      O => A_4_IBUF
    );
  Q_n0077_4_3 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => N7951,
      ADR1 => N8112,
      O => CHOICE373
    );
  Q_n0077_3_33_SW0 : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => Q_n0208,
      ADR1 => PCM1O(3),
      ADR2 => CHOICE446,
      O => N12330
    );
  Q_n0077_5_95_SW0 : X_LUT4
    generic map(
      INIT => X"2777"
    )
    port map (
      ADR0 => Q_n0201,
      ADR1 => N12150,
      ADR2 => FCEO(5),
      ADR3 => Q_n0202,
      O => N12302
    );
  Test_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => HSSC_IBUF,
      ADR1 => TSYNC_IBUF,
      ADR2 => RESET_IBUF_1,
      O => N8382
    );
  Test_146 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => PA_7_IBUF,
      ADR1 => PA_6_IBUF,
      ADR2 => PA_5_IBUF,
      ADR3 => N8382,
      O => Test_OBUF
    );
  CTX_CNT_2_rt_147 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(2),
      O => CTX_CNT_2_rt,
      ADR1 => GND
    );
  CTX_CNT_7_rt_148 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(7),
      O => CTX_CNT_7_rt,
      ADR1 => GND
    );
  CRX_CNT_8_rt_149 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(8),
      O => CRX_CNT_8_rt,
      ADR1 => GND
    );
  Mcompar_n0072_AEB53 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => EIRQ_RP(3),
      ADR1 => EIRQ_WP(3),
      ADR2 => EIRQ_RP(2),
      ADR3 => EIRQ_WP(2),
      O => CHOICE116
    );
  EIRQ_WP_3_rt_150 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => EIRQ_WP(3),
      O => EIRQ_WP_3_rt,
      ADR1 => GND
    );
  CTX_CNT_1_rt_151 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_CNT(1),
      O => CTX_CNT_1_rt,
      ADR1 => GND
    );
  CRX_WP_3_rt_152 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_WP(3),
      O => CRX_WP_3_rt,
      ADR1 => GND
    );
  Q_n0077_0_180 : X_LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => Q_n0135,
      ADR2 => N8047,
      ADR3 => CTXO(0),
      O => CHOICE613
    );
  Mcompar_n0075_AEB53 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => PCM1RP(3),
      ADR1 => PCM1WP(3),
      ADR2 => PCM1RP(2),
      ADR3 => PCM1WP(2),
      O => CHOICE70
    );
  Q_n0077_3_123_G : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => IEN_EIRQ,
      ADR1 => CHOICE105,
      ADR2 => CHOICE116,
      O => N12453
    );
  Mcompar_n0075_AEB54 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE59,
      ADR1 => CHOICE70,
      O => Q_n0075
    );
  HSSC_IBUF_153 : X_BUF
    port map (
      I => HSSC,
      O => HSSC_IBUF
    );
  TS_CNT_inst_lut3_71 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(7),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_7
    );
  Ker80571 : X_LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      ADR0 => RDn_IBUF,
      ADR1 => N8135,
      ADR2 => N8152,
      ADR3 => CSn_IBUF,
      O => N8059
    );
  Ker8110 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => A_3_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => N12407,
      O => N8112
    );
  Q_n010926 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE559,
      ADR1 => CHOICE566,
      O => Q_n0109
    );
  Q_n0077_0_183 : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => SENSEO,
      ADR1 => Q_n0135,
      ADR2 => N8047,
      ADR3 => CHOICE613,
      O => CHOICE614
    );
  Mmux_n0054_Result : X_LUT4
    generic map(
      INIT => X"CC4E"
    )
    port map (
      ADR0 => N12144,
      ADR1 => IEN_EIRQ,
      ADR2 => A_0_IBUF,
      ADR3 => N10352,
      O => Q_n0054
    );
  RDn_IBUF_154 : X_BUF
    port map (
      I => RDn,
      O => RDn_IBUF
    );
  CRX_CNT_6_rt_155 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(6),
      O => CRX_CNT_6_rt,
      ADR1 => GND
    );
  Q_n0077_2_125_G : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => IEN_CRX,
      ADR1 => CHOICE82,
      ADR2 => CHOICE93,
      O => N12448
    );
  Q_n0077_0_94 : X_LUT4
    generic map(
      INIT => X"080D"
    )
    port map (
      ADR0 => Q_n0210,
      ADR1 => CHOICE580,
      ADR2 => Q_n0208,
      ADR3 => N12298,
      O => CHOICE597
    );
  Mcompar_n0071_AEB26 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => FCE_RP(1),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_RP(0),
      ADR3 => FCE_WP(0),
      O => CHOICE151
    );
  Q_n0077_1_115_G : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => IEN_CTX,
      ADR1 => CHOICE128,
      ADR2 => CHOICE139,
      O => N12443
    );
  Mmux_n0057_Result : X_LUT4
    generic map(
      INIT => X"CC4E"
    )
    port map (
      ADR0 => N12154,
      ADR1 => IEN_PCM1,
      ADR2 => A_0_IBUF,
      ADR3 => N10352,
      O => Q_n0057
    );
  CRX_IBUF_156 : X_BUF
    port map (
      I => CRX,
      O => CRX_IBUF
    );
  Q_n0077_4_24 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => N8077,
      ADR1 => CHOICE375,
      ADR2 => CHOICE371,
      ADR3 => N8059,
      O => CHOICE378
    );
  Q_n0077_5_61_SW0 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => N8077,
      ADR1 => CHOICE410,
      ADR2 => CHOICE406,
      ADR3 => N8059,
      O => N12326
    );
  Q_n0077_5_95 : X_LUT4
    generic map(
      INIT => X"808F"
    )
    port map (
      ADR0 => MCTXE,
      ADR1 => IEN_CTXE,
      ADR2 => Q_n0200,
      ADR3 => N12302,
      O => CHOICE434
    );
  Q_n0077_4_80 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => Q_n0200,
      ADR1 => Q_n0075,
      ADR2 => IEN_PCM1,
      ADR3 => Q_n0199,
      O => CHOICE393
    );
  Q_n0077_4_91 : X_LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      ADR0 => Q_n0201,
      ADR1 => N12146,
      ADR2 => FCEO(4),
      ADR3 => Q_n0202,
      O => CHOICE398
    );
  Q_n0077_0_53 : X_LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      ADR0 => Q_n0135,
      ADR1 => Q_n0140,
      ADR2 => Q_n0228,
      ADR3 => N8047,
      O => CHOICE591
    );
  Q_n0077_0_204 : X_LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      ADR0 => N8059,
      ADR1 => CHOICE605,
      ADR2 => CHOICE614,
      ADR3 => Q_n0202,
      O => CHOICE617
    );
  Q_n0077_4_127_SW0 : X_LUT4
    generic map(
      INIT => X"FAEA"
    )
    port map (
      ADR0 => CHOICE393,
      ADR1 => CHOICE370,
      ADR2 => CHOICE536,
      ADR3 => CHOICE378,
      O => N12322
    );
  CNT_10_rt_157 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(10),
      O => CNT_10_rt,
      ADR1 => GND
    );
  Q_n0077_5_8 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => Q_n0208,
      ADR1 => PCM1O(5),
      ADR2 => IEN_CTXE,
      ADR3 => CHOICE373,
      O => CHOICE410
    );
  Q_n0077_5_61 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => CTXO(5),
      ADR2 => N12326,
      ADR3 => CHOICE536,
      O => CHOICE424
    );
  FCE_WP_3_rt_158 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => FCE_WP(3),
      O => FCE_WP_3_rt,
      ADR1 => GND
    );
  Q_n0077_4_8 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => Q_n0208,
      ADR1 => PCM1O(4),
      ADR2 => IEN_PCM1,
      ADR3 => CHOICE373,
      O => CHOICE375
    );
  Q_n0077_0_94_SW0 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => CHOICE584,
      ADR1 => CHOICE591,
      O => N12298
    );
  Ker7949_SW0 : X_LUT4
    generic map(
      INIT => X"FAEA"
    )
    port map (
      ADR0 => Q_n0208,
      ADR1 => Q_n0228,
      ADR2 => N8047,
      ADR3 => Q_n0140,
      O => N8456
    );
  Ker7949 : X_LUT4
    generic map(
      INIT => X"2333"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => N8456,
      ADR2 => N8070,
      ADR3 => A_2_IBUF,
      O => N7951
    );
  CRX_CNT_10_rt_159 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(10),
      O => CRX_CNT_10_rt,
      ADR1 => GND
    );
  Q_n0077_3_33 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => Q_n0206,
      ADR1 => CRXO(3),
      ADR2 => N8077,
      ADR3 => N12330,
      O => CHOICE449
    );
  WRn_IBUF_160 : X_BUF
    port map (
      I => WRn,
      O => WRn_IBUF
    );
  Q_n0077_3_0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => CTXO(3),
      O => CHOICE439
    );
  Mcompar_n0070_AEB26 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => MCTX_RP(1),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_RP(0),
      ADR3 => MCTX_WP(0),
      O => CHOICE357
    );
  EIRQ_RP_3_rt_161 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => EIRQ_RP(3),
      O => EIRQ_RP_3_rt,
      ADR1 => GND
    );
  Q_n0077_3_6 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Q_n0212,
      ADR1 => SENSEn_IBUF,
      O => CHOICE444
    );
  Mcompar_n0070_AEB53 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => MCTX_RP(3),
      ADR1 => MCTX_WP(3),
      ADR2 => MCTX_RP(2),
      ADR3 => MCTX_WP(2),
      O => CHOICE368
    );
  Q_n0077_3_13 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => IEN_EIRQ,
      ADR1 => N8112,
      ADR2 => CHOICE444,
      ADR3 => N7951,
      O => CHOICE446
    );
  Mcompar_n0073_AEB26 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => CTX_RP(1),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_RP(0),
      ADR3 => CTX_WP(0),
      O => CHOICE128
    );
  Mcompar_n0074_AEB26 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => CRX_RP(1),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_RP(0),
      ADR3 => CRX_WP(0),
      O => CHOICE82
    );
  Mcompar_n0070_AEB54 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE357,
      ADR1 => CHOICE368,
      O => MCTXE
    );
  Q_n0077_3_85 : X_LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      ADR0 => N8059,
      ADR1 => CHOICE449,
      ADR2 => CHOICE439,
      ADR3 => CHOICE536,
      O => CHOICE461
    );
  CTX_WP_3_rt_162 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_WP(3),
      O => CTX_WP_3_rt,
      ADR1 => GND
    );
  Q_n0077_0_245 : X_LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      ADR0 => Q_n0201,
      ADR1 => N12132,
      ADR2 => CHOICE617,
      ADR3 => N12306,
      O => CHOICE621
    );
  Ker7957 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CTX_CNT(6),
      ADR1 => CTX_CNT(8),
      ADR2 => CTX_CNT(4),
      ADR3 => N9893,
      O => N7959
    );
  Mmux_n0055_Result : X_LUT4
    generic map(
      INIT => X"CC4E"
    )
    port map (
      ADR0 => N12148,
      ADR1 => IEN_CTX,
      ADR2 => A_0_IBUF,
      ADR3 => N10352,
      O => Q_n0055
    );
  TSYNC_IBUF_163 : X_BUF
    port map (
      I => TSYNC,
      O => TSYNC_IBUF
    );
  Q_n0077_2_148 : X_LUT4
    generic map(
      INIT => X"2333"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => Q_n0198,
      ADR2 => A_0_IBUF,
      ADR3 => N8106,
      O => CHOICE514
    );
  Q_n0077_7_69_SW0 : X_LUT4
    generic map(
      INIT => X"0777"
    )
    port map (
      ADR0 => N8087,
      ADR1 => CHOICE209,
      ADR2 => Q_n0202,
      ADR3 => FCEO(7),
      O => N12411
    );
  A_5_IBUF_164 : X_BUF
    port map (
      I => A(5),
      O => A_5_IBUF
    );
  INTn45 : X_LUT4
    generic map(
      INIT => X"B000"
    )
    port map (
      ADR0 => Q_n0073,
      ADR1 => IEN_CTX,
      ADR2 => CHOICE174,
      ADR3 => N12334,
      O => INTn_OBUF
    );
  Q_n0077_7_80 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => CHOICE213,
      ADR1 => Q_n0198,
      O => D_7_IOBUF
    );
  Mcompar_n0073_AEB53 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => CTX_RP(3),
      ADR1 => CTX_WP(3),
      ADR2 => CTX_RP(2),
      ADR3 => CTX_WP(2),
      O => CHOICE139
    );
  Q_n0077_7_69 : X_LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      ADR0 => N12411,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => N8106,
      O => CHOICE213
    );
  INTn45_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"B0BB"
    )
    port map (
      ADR0 => Q_n0074,
      ADR1 => IEN_CRX,
      ADR2 => Q_n0075,
      ADR3 => IEN_PCM1,
      O => N12421
    );
  Mcompar_n0073_AEB54 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => CHOICE128,
      ADR1 => CHOICE139,
      O => Q_n0073
    );
  Q_n0077_6_33 : X_LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      ADR0 => CHOICE186,
      ADR1 => A_2_IBUF,
      ADR2 => CHOICE206,
      ADR3 => CHOICE191,
      O => CHOICE192
    );
  Q_n0077_5_1 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => CRXO(5),
      ADR1 => A_1_IBUF,
      ADR2 => N8070,
      ADR3 => A_2_IBUF,
      O => CHOICE406
    );
  Q_n0077_4_0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Q_n0204,
      ADR1 => CTXO(4),
      O => CHOICE370
    );
  MCTX_RP_2_rt_165 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_RP(2),
      O => MCTX_RP_2_rt,
      ADR1 => GND
    );
  MCTX_RP_1_rt_166 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_RP(1),
      O => MCTX_RP_1_rt,
      ADR1 => GND
    );
  PCM1WP_2_rt_167 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => PCM1WP(2),
      O => PCM1WP_2_rt,
      ADR1 => GND
    );
  PCM1WP_1_rt_168 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => PCM1WP(1),
      O => PCM1WP_1_rt,
      ADR1 => GND
    );
  CTX_WP_2_rt_169 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_WP(2),
      O => CTX_WP_2_rt,
      ADR1 => GND
    );
  CTX_WP_1_rt_170 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_WP(1),
      O => CTX_WP_1_rt,
      ADR1 => GND
    );
  CRX_WP_2_rt_171 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_WP(2),
      O => CRX_WP_2_rt,
      ADR1 => GND
    );
  CRX_WP_1_rt_172 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_WP(1),
      O => CRX_WP_1_rt,
      ADR1 => GND
    );
  EIRQ_WP_2_rt_173 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => EIRQ_WP(2),
      O => EIRQ_WP_2_rt,
      ADR1 => GND
    );
  EIRQ_WP_1_rt_174 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => EIRQ_WP(1),
      O => EIRQ_WP_1_rt,
      ADR1 => GND
    );
  FCE_WP_2_rt_175 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => FCE_WP(2),
      O => FCE_WP_2_rt,
      ADR1 => GND
    );
  FCE_WP_1_rt_176 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => FCE_WP(1),
      O => FCE_WP_1_rt,
      ADR1 => GND
    );
  MCTX_WP_2_rt_177 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_WP(2),
      O => MCTX_WP_2_rt,
      ADR1 => GND
    );
  MCTX_WP_1_rt_178 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_WP(1),
      O => MCTX_WP_1_rt,
      ADR1 => GND
    );
  FCE_RP_2_rt_179 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => FCE_RP(2),
      O => FCE_RP_2_rt,
      ADR1 => GND
    );
  FCE_RP_1_rt_180 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => FCE_RP(1),
      O => FCE_RP_1_rt,
      ADR1 => GND
    );
  CTX_RP_2_rt_181 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_RP(2),
      O => CTX_RP_2_rt,
      ADR1 => GND
    );
  CTX_RP_1_rt_182 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CTX_RP(1),
      O => CTX_RP_1_rt,
      ADR1 => GND
    );
  CRX_RP_2_rt_183 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_RP(2),
      O => CRX_RP_2_rt,
      ADR1 => GND
    );
  CRX_RP_1_rt_184 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_RP(1),
      O => CRX_RP_1_rt,
      ADR1 => GND
    );
  PCM1RP_2_rt_185 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => PCM1RP(2),
      O => PCM1RP_2_rt,
      ADR1 => GND
    );
  PCM1RP_1_rt_186 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => PCM1RP(1),
      O => PCM1RP_1_rt,
      ADR1 => GND
    );
  EIRQ_RP_2_rt_187 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => EIRQ_RP(2),
      O => EIRQ_RP_2_rt,
      ADR1 => GND
    );
  EIRQ_RP_1_rt_188 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => EIRQ_RP(1),
      O => EIRQ_RP_1_rt,
      ADR1 => GND
    );
  MCTX_CNT_2_rt_189 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_CNT(2),
      O => MCTX_CNT_2_rt,
      ADR1 => GND
    );
  MCTX_CNT_1_rt_190 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MCTX_CNT(1),
      O => MCTX_CNT_1_rt,
      ADR1 => GND
    );
  CNT_7_rt_191 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(7),
      O => CNT_7_rt,
      ADR1 => GND
    );
  CNT_1_rt_192 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(1),
      O => CNT_1_rt,
      ADR1 => GND
    );
  CNT_2_rt_193 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(2),
      O => CNT_2_rt,
      ADR1 => GND
    );
  CNT_3_rt_194 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(3),
      O => CNT_3_rt,
      ADR1 => GND
    );
  CNT_4_rt_195 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(4),
      O => CNT_4_rt,
      ADR1 => GND
    );
  CNT_9_rt_196 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(9),
      O => CNT_9_rt,
      ADR1 => GND
    );
  CNT_5_rt_197 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(5),
      O => CNT_5_rt,
      ADR1 => GND
    );
  CNT_8_rt_198 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(8),
      O => CNT_8_rt,
      ADR1 => GND
    );
  CNT_6_rt_199 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CNT(6),
      O => CNT_6_rt,
      ADR1 => GND
    );
  CRX_CNT_7_rt_200 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(7),
      O => CRX_CNT_7_rt,
      ADR1 => GND
    );
  CRX_CNT_1_rt_201 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(1),
      O => CRX_CNT_1_rt,
      ADR1 => GND
    );
  CRX_CNT_2_rt_202 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(2),
      O => CRX_CNT_2_rt,
      ADR1 => GND
    );
  CRX_CNT_3_rt_203 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(3),
      O => CRX_CNT_3_rt,
      ADR1 => GND
    );
  CRX_CNT_4_rt_204 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(4),
      O => CRX_CNT_4_rt,
      ADR1 => GND
    );
  CRX_CNT_9_rt_205 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(9),
      O => CRX_CNT_9_rt,
      ADR1 => GND
    );
  CRX_CNT_5_rt_206 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CRX_CNT(5),
      O => CRX_CNT_5_rt,
      ADR1 => GND
    );
  Q_n021627 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => A_5_IBUF,
      ADR2 => N12435,
      O => CHOICE231
    );
  Q_n021627_SW0 : X_LUT4
    generic map(
      INIT => X"EE2E"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => A_4_IBUF,
      O => N12435
    );
  SYNC4I_1_207 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => N12160,
      RST => SYNC4I_1_GSR_OR,
      CLK => NlwInverterSignal_SYNC4I_1_C,
      O => SYNC4I_1,
      CE => VCC,
      SET => GND
    );
  Q_n0077_1_115 : X_MUX2
    port map (
      IA => N12441,
      IB => N12443,
      SEL => Q_n0200,
      O => CHOICE548
    );
  Q_n0077_1_115_F : X_LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      ADR0 => Q_n0201,
      ADR1 => N12136,
      ADR2 => Q_n0202,
      ADR3 => FCEO(1),
      O => N12441
    );
  Q_n0077_2_125 : X_MUX2
    port map (
      IA => N12446,
      IB => N12448,
      SEL => Q_n0200,
      O => CHOICE510
    );
  Q_n0077_2_125_F : X_LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      ADR0 => Q_n0201,
      ADR1 => N12138,
      ADR2 => Q_n0202,
      ADR3 => FCEO(2),
      O => N12446
    );
  Q_n0077_3_123 : X_MUX2
    port map (
      IA => N12451,
      IB => N12453,
      SEL => Q_n0200,
      O => CHOICE472
    );
  Q_n0077_3_123_F : X_LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      ADR0 => Q_n0201,
      ADR1 => N12142,
      ADR2 => Q_n0202,
      ADR3 => FCEO(3),
      O => N12451
    );
  RESET_IBUF_1_208 : X_BUF
    port map (
      I => RESET_IBUF,
      O => RESET_IBUF_1
    );
  SYNC4I_rt_LUT1_L_BUF : X_BUF
    port map (
      I => SYNC4I_rt_O,
      O => SYNC4I_rt
    );
  SYNC4I_rt_228 : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => SYNC4I,
      ADR1 => GND,
      O => SYNC4I_rt_O
    );
  Ker7957_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => Ker7957_SW0_O,
      O => N9893
    );
  Ker7957_SW0 : X_LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      ADR0 => CTX_CNT(5),
      ADR1 => CTX_CNT(9),
      ADR2 => N8123,
      O => Ker7957_SW0_O
    );
  Q_n0039_0_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_0_1_O,
      O => Q_n0039(0)
    );
  Q_n0039_0_1 : X_LUT4
    generic map(
      INIT => X"ABBB"
    )
    port map (
      ADR0 => Q_n0087,
      ADR1 => CTX_CNT(0),
      ADR2 => Q_n0112,
      ADR3 => Q_n0119,
      O => Q_n0039_0_1_O
    );
  Ker7962_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => Ker7962_SW0_O,
      O => N9839
    );
  Ker7962_SW0 : X_LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      ADR0 => CRX_CNT(5),
      ADR1 => CRX_CNT(9),
      ADR2 => N8118,
      O => Ker7962_SW0_O
    );
  Mcompar_n0111_inst_lut4_11_LUT4_L_BUF : X_BUF
    port map (
      I => Mcompar_n0111_inst_lut4_11_O,
      O => Mcompar_n0111_inst_lut4_1
    );
  Mcompar_n0111_inst_lut4_11 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => TS_CNT(5),
      ADR1 => PCM1TS(2),
      ADR2 => TS_CNT(6),
      ADR3 => PCM1TS(3),
      O => Mcompar_n0111_inst_lut4_11_O
    );
  Mcompar_n0111_inst_lut4_01_LUT4_L_BUF : X_BUF
    port map (
      I => Mcompar_n0111_inst_lut4_01_O,
      O => Mcompar_n0111_inst_lut4_0
    );
  Mcompar_n0111_inst_lut4_01 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => TS_CNT(3),
      ADR1 => PCM1TS(0),
      ADR2 => TS_CNT(4),
      ADR3 => PCM1TS(1),
      O => Mcompar_n0111_inst_lut4_01_O
    );
  Mcompar_n0111_inst_lut4_21_LUT4_L_BUF : X_BUF
    port map (
      I => Mcompar_n0111_inst_lut4_21_O,
      O => Mcompar_n0111_inst_lut4_2
    );
  Mcompar_n0111_inst_lut4_21 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => TS_CNT(7),
      ADR1 => PCM1TS(4),
      ADR2 => TS_CNT(8),
      ADR3 => PCM1TS(5),
      O => Mcompar_n0111_inst_lut4_21_O
    );
  Q_n010925_LUT4_D_BUF : X_BUF
    port map (
      I => CHOICE566,
      O => N12494
    );
  Q_n010925 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CNT(4),
      ADR1 => CNT(5),
      ADR2 => CNT(6),
      ADR3 => CNT(7),
      O => CHOICE566
    );
  Q_n0039_7_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_7_1_O,
      O => Q_n0039(7)
    );
  Q_n0039_7_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(7),
      O => Q_n0039_7_1_O
    );
  Q_n0039_6_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_6_1_O,
      O => Q_n0039(6)
    );
  Q_n0039_6_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(6),
      O => Q_n0039_6_1_O
    );
  Q_n0039_5_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_5_1_O,
      O => Q_n0039(5)
    );
  Q_n0039_5_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(5),
      O => Q_n0039_5_1_O
    );
  Q_n0039_4_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_4_1_O,
      O => Q_n0039(4)
    );
  Q_n0039_4_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(4),
      O => Q_n0039_4_1_O
    );
  Q_n0039_3_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_3_1_O,
      O => Q_n0039(3)
    );
  Q_n0039_3_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(3),
      O => Q_n0039_3_1_O
    );
  Q_n0039_2_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_2_1_O,
      O => Q_n0039(2)
    );
  Q_n0039_2_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(2),
      O => Q_n0039_2_1_O
    );
  Q_n0039_1_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_1_1_O,
      O => Q_n0039(1)
    );
  Q_n0039_1_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(1),
      O => Q_n0039_1_1_O
    );
  Q_n0042_10_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_10_1_O,
      O => Q_n0042(10)
    );
  Q_n0042_10_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(10),
      O => Q_n0042_10_1_O
    );
  Q_n0042_0_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_0_1_O,
      O => Q_n0042(0)
    );
  Q_n0042_0_1 : X_LUT4
    generic map(
      INIT => X"ABBB"
    )
    port map (
      ADR0 => Q_n0088,
      ADR1 => CRX_CNT(0),
      ADR2 => Q_n0115,
      ADR3 => Q_n0121,
      O => Q_n0042_0_1_O
    );
  Q_n0042_9_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_9_1_O,
      O => Q_n0042(9)
    );
  Q_n0042_9_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(9),
      O => Q_n0042_9_1_O
    );
  Q_n0042_8_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_8_1_O,
      O => Q_n0042(8)
    );
  Q_n0042_8_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(8),
      O => Q_n0042_8_1_O
    );
  Q_n0042_7_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_7_1_O,
      O => Q_n0042(7)
    );
  Q_n0042_7_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(7),
      O => Q_n0042_7_1_O
    );
  Q_n0042_6_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_6_1_O,
      O => Q_n0042(6)
    );
  Q_n0042_6_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(6),
      O => Q_n0042_6_1_O
    );
  Q_n0042_5_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_5_1_O,
      O => Q_n0042(5)
    );
  Q_n0042_5_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(5),
      O => Q_n0042_5_1_O
    );
  Q_n0042_4_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_4_1_O,
      O => Q_n0042(4)
    );
  Q_n0042_4_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(4),
      O => Q_n0042_4_1_O
    );
  Q_n0042_3_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_3_1_O,
      O => Q_n0042(3)
    );
  Q_n0042_3_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(3),
      O => Q_n0042_3_1_O
    );
  Q_n0042_2_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_2_1_O,
      O => Q_n0042(2)
    );
  Q_n0042_2_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(2),
      O => Q_n0042_2_1_O
    );
  Q_n0042_1_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0042_1_1_O,
      O => Q_n0042(1)
    );
  Q_n0042_1_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0121,
      ADR1 => Q_n0115,
      ADR2 => Q_n0088,
      ADR3 => Q_n0068(1),
      O => Q_n0042_1_1_O
    );
  Q_n0039_10_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_10_1_O,
      O => Q_n0039(10)
    );
  Q_n0039_10_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(10),
      O => Q_n0039_10_1_O
    );
  Ker81161_LUT4_D_BUF : X_BUF
    port map (
      I => N8118,
      O => N12473
    );
  Ker81161 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CRX_CNT(2),
      ADR1 => CRX_CNT(1),
      ADR2 => CRX_CNT(3),
      ADR3 => CRX_CNT(0),
      O => N8118
    );
  TS_CNT_inst_lut3_41_LUT2_L_BUF : X_BUF
    port map (
      I => TS_CNT_inst_lut3_41_O,
      O => TS_CNT_inst_lut3_4
    );
  TS_CNT_inst_lut3_41 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(4),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_41_O
    );
  TS_CNT_inst_lut3_01_LUT2_L_BUF : X_BUF
    port map (
      I => TS_CNT_inst_lut3_01_O,
      O => TS_CNT_inst_lut3_0
    );
  TS_CNT_inst_lut3_01 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(0),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_01_O
    );
  Q_n00871_LUT3_D_BUF : X_BUF
    port map (
      I => Q_n0087,
      O => N12469
    );
  Q_n00871 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => N7959,
      ADR1 => CTX_CNT(10),
      ADR2 => CTX_CNT(7),
      O => Q_n0087
    );
  Q_n00881_LUT3_D_BUF : X_BUF
    port map (
      I => Q_n0088,
      O => N12467
    );
  Q_n00881 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => N7964,
      ADR1 => CRX_CNT(10),
      ADR2 => CRX_CNT(7),
      O => Q_n0088
    );
  TS_CNT_inst_lut3_31_LUT2_L_BUF : X_BUF
    port map (
      I => TS_CNT_inst_lut3_31_O,
      O => TS_CNT_inst_lut3_3
    );
  TS_CNT_inst_lut3_31 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(3),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_31_O
    );
  TS_CNT_inst_lut3_21_LUT2_L_BUF : X_BUF
    port map (
      I => TS_CNT_inst_lut3_21_O,
      O => TS_CNT_inst_lut3_2
    );
  TS_CNT_inst_lut3_21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(2),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_21_O
    );
  TS_CNT_inst_lut3_11_LUT2_L_BUF : X_BUF
    port map (
      I => TS_CNT_inst_lut3_11_O,
      O => TS_CNT_inst_lut3_1
    );
  TS_CNT_inst_lut3_11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => TS_CNT(1),
      ADR1 => SYNC4I,
      O => TS_CNT_inst_lut3_11_O
    );
  Ker81211_LUT4_D_BUF : X_BUF
    port map (
      I => N8123,
      O => N12462
    );
  Ker81211 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CTX_CNT(3),
      ADR1 => CTX_CNT(2),
      ADR2 => CTX_CNT(1),
      ADR3 => CTX_CNT(0),
      O => N8123
    );
  Q_n010912_LUT4_D_BUF : X_BUF
    port map (
      I => CHOICE559,
      O => N12460
    );
  Q_n010912 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CNT(0),
      ADR1 => CNT(1),
      ADR2 => CNT(2),
      ADR3 => CNT(3),
      O => CHOICE559
    );
  Q_n0039_8_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_8_1_O,
      O => Q_n0039(8)
    );
  Q_n0039_8_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(8),
      O => Q_n0039_8_1_O
    );
  Q_n00291_LUT2_L_BUF : X_BUF
    port map (
      I => Q_n00291_O,
      O => Q_n0029
    );
  Q_n00291 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => RESET_IBUF,
      ADR1 => Q_n0111,
      O => Q_n00291_O
    );
  Q_n0039_9_1_LUT4_L_BUF : X_BUF
    port map (
      I => Q_n0039_9_1_O,
      O => Q_n0039(9)
    );
  Q_n0039_9_1 : X_LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      ADR0 => Q_n0119,
      ADR1 => Q_n0112,
      ADR2 => Q_n0087,
      ADR3 => Q_n0067(9),
      O => Q_n0039_9_1_O
    );
  KA_4_PULLUP : X_PU
    port map (
      O => KA(4)
    );
  KA_5_PULLUP : X_PU
    port map (
      O => KA(5)
    );
  TPCM_2_IOBUF_OBUFT : X_TRI
    port map (
      CTL => TPCM_2_IOBUF_OBUFT_GTS_AND,
      I => TPCM_2_IOBUF,
      O => TPCM(2)
    );
  TPCM_2_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(2),
      O => N12122
    );
  TPCM_1_IOBUF_OBUFT : X_TRI
    port map (
      CTL => TPCM_1_IOBUF_OBUFT_GTS_AND,
      I => TPCM_2_IOBUF,
      O => TPCM(1)
    );
  TPCM_1_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(1),
      O => N12120
    );
  D_3_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_3_IOBUF_OBUFT_GTS_AND,
      I => D_3_IOBUF,
      O => D(3)
    );
  D_3_IOBUF_IBUF : X_BUF
    port map (
      I => D(3),
      O => N12152
    );
  D_2_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_2_IOBUF_OBUFT_GTS_AND,
      I => D_2_IOBUF,
      O => D(2)
    );
  D_2_IOBUF_IBUF : X_BUF
    port map (
      I => D(2),
      O => N12148
    );
  D_4_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_4_IOBUF_OBUFT_GTS_AND,
      I => D_4_IOBUF,
      O => D(4)
    );
  D_4_IOBUF_IBUF : X_BUF
    port map (
      I => D(4),
      O => N12154
    );
  D_5_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_5_IOBUF_OBUFT_GTS_AND,
      I => D_5_IOBUF,
      O => D(5)
    );
  D_5_IOBUF_IBUF : X_BUF
    port map (
      I => D(5),
      O => N12156
    );
  D_6_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_6_IOBUF_OBUFT_GTS_AND,
      I => D_6_IOBUF,
      O => D(6)
    );
  D_6_IOBUF_IBUF : X_BUF
    port map (
      I => D(6),
      O => N12158
    );
  D_0_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_0_IOBUF_OBUFT_GTS_AND,
      I => D_0_IOBUF,
      O => D(0)
    );
  D_0_IOBUF_IBUF : X_BUF
    port map (
      I => D(0),
      O => N12140
    );
  D_1_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_1_IOBUF_OBUFT_GTS_AND,
      I => D_1_IOBUF,
      O => D(1)
    );
  D_1_IOBUF_IBUF : X_BUF
    port map (
      I => D(1),
      O => N12144
    );
  Mram_PCM1FIFO_inst_ramx_5_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(5),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(5)
    );
  Mram_PCM1FIFO_inst_ramx_5_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(5),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_5_SPO
    );
  Mram_CTX_FIFO_inst_ramx_5_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(5),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(5)
    );
  Mram_CTX_FIFO_inst_ramx_5_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(5),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_5_SPO
    );
  Mram_CRX_FIFO_inst_ramx_5_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(5),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(5)
    );
  Mram_CRX_FIFO_inst_ramx_5_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(5),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_5_SPO
    );
  Mram_EIRQ_FIFO_inst_ramx_8_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => EIRQ_RP(0),
      RADR1 => EIRQ_RP(1),
      RADR2 => EIRQ_RP(2),
      RADR3 => EIRQ_RP(3),
      WADR0 => EIRQ_WP(0),
      WADR1 => EIRQ_WP(1),
      WADR2 => EIRQ_WP(2),
      WADR3 => EIRQ_WP(3),
      I => EIRQI,
      CLK => N12166,
      WE => Q_n0177,
      O => EIRQO
    );
  Mram_EIRQ_FIFO_inst_ramx_8_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => EIRQ_WP(0),
      ADR1 => EIRQ_WP(1),
      ADR2 => EIRQ_WP(2),
      ADR3 => EIRQ_WP(3),
      I => EIRQI,
      CLK => N12166,
      WE => Q_n0177,
      O => Mram_EIRQ_FIFO_inst_ramx_8_SPO
    );
  Mram_FCE_FIFO_inst_ramx_5_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(5),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(5)
    );
  Mram_FCE_FIFO_inst_ramx_5_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(5),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_5_SPO
    );
  Mram_SENSE_FIFO_inst_ramx_9_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCIN(3),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => SENSEO
    );
  Mram_SENSE_FIFO_inst_ramx_9_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCIN(3),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_SENSE_FIFO_inst_ramx_9_SPO
    );
  Mram_MCTX_FIFO_inst_ramx_5_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12156,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(15)
    );
  Mram_MCTX_FIFO_inst_ramx_5_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12156,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_5_SPO
    );
  FCD_IOBUF_OBUFT : X_TRI
    port map (
      CTL => FCD_IOBUF_OBUFT_GTS_AND,
      I => MFCD,
      O => FCD
    );
  FCD_IOBUF_IBUF : X_BUF
    port map (
      I => FCD,
      O => N12128
    );
  FCC_IOBUF_OBUFT : X_TRI
    port map (
      CTL => FCC_IOBUF_OBUFT_GTS_AND,
      I => MFCC,
      O => FCC
    );
  FCC_IOBUF_IBUF : X_BUF
    port map (
      I => FCC,
      O => N12126
    );
  FCEn_IOBUF_OBUFT : X_TRI
    port map (
      CTL => FCEn_IOBUF_OBUFT_GTS_AND,
      I => FCEn_IOBUF,
      O => FCEn
    );
  FCEn_IOBUF_IBUF : X_BUF
    port map (
      I => FCEn,
      O => N12130
    );
  CTX_IOBUF_OBUFT : X_TRI
    port map (
      CTL => CTX_IOBUF_OBUFT_GTS_AND,
      I => MCTXO(0),
      O => CTX
    );
  CTX_IOBUF_IBUF : X_BUF
    port map (
      I => CTX,
      O => N12134
    );
  CLK8M_IOBUF_OBUFT : X_TRI
    port map (
      CTL => CLK8M_IOBUF_OBUFT_GTS_AND,
      I => MCLK8M,
      O => CLK8M
    );
  CLK8M_IOBUF_IBUF : X_BUF
    port map (
      I => CLK8M,
      O => N12166
    );
  CLK4M_IOBUF_OBUFT : X_TRI
    port map (
      CTL => CLK4M_IOBUF_OBUFT_GTS_AND,
      I => MCLK4M,
      O => CLK4M
    );
  CLK4M_IOBUF_IBUF : X_BUF
    port map (
      I => CLK4M,
      O => N12164
    );
  SYNC4_IOBUF_OBUFT : X_TRI
    port map (
      CTL => SYNC4_IOBUF_OBUFT_GTS_AND,
      I => MSYNC4,
      O => SYNC4
    );
  SYNC4_IOBUF_IBUF : X_BUF
    port map (
      I => SYNC4,
      O => N12160
    );
  TPCM_3_IOBUF_OBUFT : X_TRI
    port map (
      CTL => TPCM_3_IOBUF_OBUFT_GTS_AND,
      I => TPCM_2_IOBUF,
      O => TPCM(3)
    );
  TPCM_3_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(3),
      O => N12124
    );
  D_7_IOBUF_OBUFT : X_TRI
    port map (
      CTL => D_7_IOBUF_OBUFT_GTS_AND,
      I => D_7_IOBUF,
      O => D(7)
    );
  D_7_IOBUF_IBUF : X_BUF
    port map (
      I => D(7),
      O => N12162
    );
  KA_5_IOBUF_OBUFT : X_TRI
    port map (
      CTL => KA_5_IOBUF_OBUFT_GTS_AND,
      I => PC_3_OBUFT,
      O => KA(5)
    );
  KA_5_IOBUF_IBUF : X_BUF
    port map (
      I => KA(5),
      O => N12150
    );
  KA_4_IOBUF_OBUFT : X_TRI
    port map (
      CTL => KA_4_IOBUF_OBUFT_GTS_AND,
      I => PC_3_OBUFT,
      O => KA(4)
    );
  KA_4_IOBUF_IBUF : X_BUF
    port map (
      I => KA(4),
      O => N12146
    );
  KA_3_IOBUF_OBUFT : X_TRI
    port map (
      CTL => KA_3_IOBUF_OBUFT_GTS_AND,
      I => PC_3_OBUFT,
      O => KA(3)
    );
  KA_3_IOBUF_IBUF : X_BUF
    port map (
      I => KA(3),
      O => N12142
    );
  KA_2_IOBUF_OBUFT : X_TRI
    port map (
      CTL => KA_2_IOBUF_OBUFT_GTS_AND,
      I => PC_3_OBUFT,
      O => KA(2)
    );
  KA_2_IOBUF_IBUF : X_BUF
    port map (
      I => KA(2),
      O => N12138
    );
  KA_1_IOBUF_OBUFT : X_TRI
    port map (
      CTL => KA_1_IOBUF_OBUFT_GTS_AND,
      I => PC_3_OBUFT,
      O => KA(1)
    );
  KA_1_IOBUF_IBUF : X_BUF
    port map (
      I => KA(1),
      O => N12136
    );
  KA_0_IOBUF_OBUFT : X_TRI
    port map (
      CTL => KA_0_IOBUF_OBUFT_GTS_AND,
      I => PC_3_OBUFT,
      O => KA(0)
    );
  KA_0_IOBUF_IBUF : X_BUF
    port map (
      I => KA(0),
      O => N12132
    );
  TPCM_0_IOBUF_OBUFT : X_TRI
    port map (
      CTL => TPCM_0_IOBUF_OBUFT_GTS_AND,
      I => TPCM_2_IOBUF,
      O => TPCM(0)
    );
  TPCM_0_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(0),
      O => N12118
    );
  Mram_MCTX_FIFO_inst_ramx_6_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12158,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(16)
    );
  Mram_MCTX_FIFO_inst_ramx_6_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12158,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_6_SPO
    );
  Mram_MCTX_FIFO_inst_ramx_7_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12162,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(17)
    );
  Mram_MCTX_FIFO_inst_ramx_7_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12162,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_7_SPO
    );
  Mram_MCTX_FIFO_inst_ramx_0_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12140,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(10)
    );
  Mram_MCTX_FIFO_inst_ramx_0_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12140,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_0_SPO
    );
  Mram_MCTX_FIFO_inst_ramx_1_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12144,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(11)
    );
  Mram_MCTX_FIFO_inst_ramx_1_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12144,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_1_SPO
    );
  Mram_MCTX_FIFO_inst_ramx_2_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12148,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(12)
    );
  Mram_MCTX_FIFO_inst_ramx_2_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12148,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_2_SPO
    );
  Mram_MCTX_FIFO_inst_ramx_3_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12152,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(13)
    );
  Mram_MCTX_FIFO_inst_ramx_3_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12152,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_3_SPO
    );
  Mram_MCTX_FIFO_inst_ramx_4_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => MCTX_RP(0),
      RADR1 => MCTX_RP(1),
      RADR2 => MCTX_RP(2),
      RADR3 => MCTX_RP(3),
      WADR0 => MCTX_WP(0),
      WADR1 => MCTX_WP(1),
      WADR2 => MCTX_WP(2),
      WADR3 => MCTX_WP(3),
      I => N12154,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Q_n0294(14)
    );
  Mram_MCTX_FIFO_inst_ramx_4_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => MCTX_WP(0),
      ADR1 => MCTX_WP(1),
      ADR2 => MCTX_WP(2),
      ADR3 => MCTX_WP(3),
      I => N12154,
      CLK => WRn_IBUF,
      WE => Q_n0026,
      O => Mram_MCTX_FIFO_inst_ramx_4_SPO
    );
  Mram_FCE_FIFO_inst_ramx_6_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(6),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(6)
    );
  Mram_FCE_FIFO_inst_ramx_6_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(6),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_6_SPO
    );
  Mram_FCE_FIFO_inst_ramx_7_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(7),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(7)
    );
  Mram_FCE_FIFO_inst_ramx_7_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(7),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_7_SPO
    );
  Mram_FCE_FIFO_inst_ramx_0_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(0),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(0)
    );
  Mram_FCE_FIFO_inst_ramx_0_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(0),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_0_SPO
    );
  Mram_FCE_FIFO_inst_ramx_1_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(1),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(1)
    );
  Mram_FCE_FIFO_inst_ramx_1_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(1),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_1_SPO
    );
  Mram_FCE_FIFO_inst_ramx_2_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(2),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(2)
    );
  Mram_FCE_FIFO_inst_ramx_2_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(2),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_2_SPO
    );
  Mram_FCE_FIFO_inst_ramx_3_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(3),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(3)
    );
  Mram_FCE_FIFO_inst_ramx_3_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(3),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_3_SPO
    );
  Mram_FCE_FIFO_inst_ramx_4_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => FCE_RP(0),
      RADR1 => FCE_RP(1),
      RADR2 => FCE_RP(2),
      RADR3 => FCE_RP(3),
      WADR0 => FCE_WP(0),
      WADR1 => FCE_WP(1),
      WADR2 => FCE_WP(2),
      WADR3 => FCE_WP(3),
      I => FCDI(4),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => FCEO(4)
    );
  Mram_FCE_FIFO_inst_ramx_4_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => FCE_WP(0),
      ADR1 => FCE_WP(1),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      I => FCDI(4),
      CLK => N12130,
      WE => TPCM_2_IOBUF,
      O => Mram_FCE_FIFO_inst_ramx_4_SPO
    );
  Mram_CRX_FIFO_inst_ramx_6_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(6),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(6)
    );
  Mram_CRX_FIFO_inst_ramx_6_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(6),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_6_SPO
    );
  Mram_CRX_FIFO_inst_ramx_7_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(7),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(7)
    );
  Mram_CRX_FIFO_inst_ramx_7_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(7),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_7_SPO
    );
  Mram_CRX_FIFO_inst_ramx_0_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(0),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(0)
    );
  Mram_CRX_FIFO_inst_ramx_0_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(0),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_0_SPO
    );
  Mram_CRX_FIFO_inst_ramx_1_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(1),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(1)
    );
  Mram_CRX_FIFO_inst_ramx_1_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(1),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_1_SPO
    );
  Mram_CRX_FIFO_inst_ramx_2_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(2),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(2)
    );
  Mram_CRX_FIFO_inst_ramx_2_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(2),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_2_SPO
    );
  Mram_CRX_FIFO_inst_ramx_3_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(3),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(3)
    );
  Mram_CRX_FIFO_inst_ramx_3_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(3),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_3_SPO
    );
  Mram_CRX_FIFO_inst_ramx_4_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CRX_RP(0),
      RADR1 => CRX_RP(1),
      RADR2 => CRX_RP(2),
      RADR3 => CRX_RP(3),
      WADR0 => CRX_WP(0),
      WADR1 => CRX_WP(1),
      WADR2 => CRX_WP(2),
      WADR3 => CRX_WP(3),
      I => CRXI(4),
      CLK => N12166,
      WE => Q_n0024,
      O => CRXO(4)
    );
  Mram_CRX_FIFO_inst_ramx_4_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CRX_WP(0),
      ADR1 => CRX_WP(1),
      ADR2 => CRX_WP(2),
      ADR3 => CRX_WP(3),
      I => CRXI(4),
      CLK => N12166,
      WE => Q_n0024,
      O => Mram_CRX_FIFO_inst_ramx_4_SPO
    );
  Mram_CTX_FIFO_inst_ramx_6_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(6),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(6)
    );
  Mram_CTX_FIFO_inst_ramx_6_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(6),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_6_SPO
    );
  Mram_CTX_FIFO_inst_ramx_7_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(7),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(7)
    );
  Mram_CTX_FIFO_inst_ramx_7_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(7),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_7_SPO
    );
  Mram_CTX_FIFO_inst_ramx_0_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(0),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(0)
    );
  Mram_CTX_FIFO_inst_ramx_0_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(0),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_0_SPO
    );
  Mram_CTX_FIFO_inst_ramx_1_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(1),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(1)
    );
  Mram_CTX_FIFO_inst_ramx_1_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(1),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_1_SPO
    );
  Mram_CTX_FIFO_inst_ramx_2_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(2),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(2)
    );
  Mram_CTX_FIFO_inst_ramx_2_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(2),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_2_SPO
    );
  Mram_CTX_FIFO_inst_ramx_3_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(3),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(3)
    );
  Mram_CTX_FIFO_inst_ramx_3_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(3),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_3_SPO
    );
  Mram_CTX_FIFO_inst_ramx_4_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => CTX_RP(0),
      RADR1 => CTX_RP(1),
      RADR2 => CTX_RP(2),
      RADR3 => CTX_RP(3),
      WADR0 => CTX_WP(0),
      WADR1 => CTX_WP(1),
      WADR2 => CTX_WP(2),
      WADR3 => CTX_WP(3),
      I => CTXI(4),
      CLK => N12166,
      WE => Q_n0023,
      O => CTXO(4)
    );
  Mram_CTX_FIFO_inst_ramx_4_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => CTX_WP(0),
      ADR1 => CTX_WP(1),
      ADR2 => CTX_WP(2),
      ADR3 => CTX_WP(3),
      I => CTXI(4),
      CLK => N12166,
      WE => Q_n0023,
      O => Mram_CTX_FIFO_inst_ramx_4_SPO
    );
  Mram_PCM1FIFO_inst_ramx_6_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(6),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(6)
    );
  Mram_PCM1FIFO_inst_ramx_6_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(6),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_6_SPO
    );
  Mram_PCM1FIFO_inst_ramx_7_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(7),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(7)
    );
  Mram_PCM1FIFO_inst_ramx_7_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(7),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_7_SPO
    );
  Mram_PCM1FIFO_inst_ramx_0_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(0),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(0)
    );
  Mram_PCM1FIFO_inst_ramx_0_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(0),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_0_SPO
    );
  Mram_PCM1FIFO_inst_ramx_1_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(1),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(1)
    );
  Mram_PCM1FIFO_inst_ramx_1_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(1),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_1_SPO
    );
  Mram_PCM1FIFO_inst_ramx_2_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(2),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(2)
    );
  Mram_PCM1FIFO_inst_ramx_2_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(2),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_2_SPO
    );
  Mram_PCM1FIFO_inst_ramx_3_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(3),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(3)
    );
  Mram_PCM1FIFO_inst_ramx_3_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(3),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_3_SPO
    );
  Mram_PCM1FIFO_inst_ramx_4_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => PCM1RP(0),
      RADR1 => PCM1RP(1),
      RADR2 => PCM1RP(2),
      RADR3 => PCM1RP(3),
      WADR0 => PCM1WP(0),
      WADR1 => PCM1WP(1),
      WADR2 => PCM1WP(2),
      WADR3 => PCM1WP(3),
      I => PCM1I(4),
      CLK => N12164,
      WE => SYNC4I_1,
      O => PCM1O(4)
    );
  Mram_PCM1FIFO_inst_ramx_4_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => PCM1WP(0),
      ADR1 => PCM1WP(1),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1WP(3),
      I => PCM1I(4),
      CLK => N12164,
      WE => SYNC4I_1,
      O => Mram_PCM1FIFO_inst_ramx_4_SPO
    );
  CLK16M_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK16M_BUFGP_IBUFG,
      O => CLK16M_BUFGP
    );
  CLK16M_BUFGP_IBUFG_229 : X_CKBUF
    port map (
      I => CLK16M,
      O => CLK16M_BUFGP_IBUFG
    );
  CTX_CNT_3_GSR_OR_230 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_3_GSR_OR
    );
  CTX_CNT_2_GSR_OR_231 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_2_GSR_OR
    );
  CTX_CNT_0_GSR_OR_232 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_0_GSR_OR
    );
  MCTXO_7_GSR_OR_233 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_7_GSR_OR
    );
  CTX_CNT_1_GSR_OR_234 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_1_GSR_OR
    );
  MCTXO_6_GSR_OR_235 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_6_GSR_OR
    );
  CTX_CNT_4_GSR_OR_236 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_4_GSR_OR
    );
  CRX_CNT_9_GSR_OR_237 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_9_GSR_OR
    );
  CRXI_0_GSR_AND_238 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_0_GSR_AND_IN1,
      O => CRXI_0_GSR_AND
    );
  CRXI_1_GSR_AND_239 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_1_GSR_AND_IN1,
      O => CRXI_1_GSR_AND
    );
  CRX_CNT_3_GSR_OR_240 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_3_GSR_OR
    );
  PCM1TS_3_GSR_OR_241 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_3_GSR_OR
    );
  PCM1TS_2_GSR_OR_242 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_2_GSR_OR
    );
  PCM1TS_1_GSR_OR_243 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_1_GSR_OR
    );
  PCM1TS_0_GSR_OR_244 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_0_GSR_OR
    );
  PCM1SEL_1_GSR_OR_245 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1SEL_1_GSR_OR
    );
  PCM1SEL_0_GSR_OR_246 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1SEL_0_GSR_OR
    );
  MCTXO_1_GSR_OR_247 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_1_GSR_OR
    );
  CTX_CNT_9_GSR_OR_248 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_9_GSR_OR
    );
  MCTXO_2_GSR_OR_249 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_2_GSR_OR
    );
  MCTX_CNT_2_GSR_OR_250 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_2_GSR_OR
    );
  CTX_CNT_8_GSR_OR_251 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_8_GSR_OR
    );
  MCTXO_0_GSR_OR_252 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_0_GSR_OR
    );
  MCTX_CNT_1_GSR_OR_253 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_1_GSR_OR
    );
  PCM1TS_4_GSR_OR_254 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_4_GSR_OR
    );
  MCTXO_5_GSR_OR_255 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_5_GSR_OR
    );
  CRX_CNT_8_GSR_OR_256 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_8_GSR_OR
    );
  CRXI_2_GSR_AND_257 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_2_GSR_AND_IN1,
      O => CRXI_2_GSR_AND
    );
  CRXI_3_GSR_AND_258 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_3_GSR_AND_IN1,
      O => CRXI_3_GSR_AND
    );
  CRXI_4_GSR_AND_259 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_4_GSR_AND_IN1,
      O => CRXI_4_GSR_AND
    );
  CRXI_5_GSR_AND_260 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_5_GSR_AND_IN1,
      O => CRXI_5_GSR_AND
    );
  CRXI_6_GSR_AND_261 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_6_GSR_AND_IN1,
      O => CRXI_6_GSR_AND
    );
  MCTXO_4_GSR_OR_262 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_4_GSR_OR
    );
  MCTXO_3_GSR_OR_263 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_3_GSR_OR
    );
  CRX_CNT_6_GSR_OR_264 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_6_GSR_OR
    );
  CRX_CNT_7_GSR_OR_265 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_7_GSR_OR
    );
  CTX_CNT_7_GSR_OR_266 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_7_GSR_OR
    );
  CTX_CNT_6_GSR_OR_267 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_6_GSR_OR
    );
  CRX_CNT_4_GSR_OR_268 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_4_GSR_OR
    );
  CRX_CNT_5_GSR_OR_269 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_5_GSR_OR
    );
  MCTX_CNT_0_GSR_OR_270 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_0_GSR_OR
    );
  CRX_CNT_2_GSR_OR_271 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_2_GSR_OR
    );
  CRX_CNT_1_GSR_OR_272 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_1_GSR_OR
    );
  CRX_CNT_0_GSR_OR_273 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_0_GSR_OR
    );
  CTXI_6_GSR_AND_274 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_6_GSR_AND_IN1,
      O => CTXI_6_GSR_AND
    );
  CTXI_5_GSR_AND_275 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_5_GSR_AND_IN1,
      O => CTXI_5_GSR_AND
    );
  CTXI_4_GSR_AND_276 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_4_GSR_AND_IN1,
      O => CTXI_4_GSR_AND
    );
  CTXI_3_GSR_AND_277 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_3_GSR_AND_IN1,
      O => CTXI_3_GSR_AND
    );
  CTXI_2_GSR_AND_278 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_2_GSR_AND_IN1,
      O => CTXI_2_GSR_AND
    );
  CTXI_1_GSR_AND_279 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_1_GSR_AND_IN1,
      O => CTXI_1_GSR_AND
    );
  CTXI_0_GSR_AND_280 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_0_GSR_AND_IN1,
      O => CTXI_0_GSR_AND
    );
  CTX_CNT_5_GSR_OR_281 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_5_GSR_OR
    );
  FCDI_7_GSR_OR_282 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCDI_7_GSR_OR
    );
  FCDI_6_GSR_OR_283 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCDI_6_GSR_OR
    );
  FCDI_5_GSR_OR_284 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCDI_5_GSR_OR
    );
  FCDI_4_GSR_OR_285 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_4_GSR_OR
    );
  FCDI_3_GSR_OR_286 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_3_GSR_OR
    );
  FCDI_2_GSR_OR_287 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_2_GSR_OR
    );
  FCDI_1_GSR_OR_288 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_1_GSR_OR
    );
  FCDI_0_GSR_OR_289 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_0_GSR_OR
    );
  MCTX_CNT_3_GSR_OR_290 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_3_GSR_OR
    );
  MCTX_RP_2_GSR_OR_291 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_2_GSR_OR
    );
  MCTXO_8_GSR_OR_292 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTXO_8_GSR_OR
    );
  PCM1WP_2_GSR_OR_293 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_2_GSR_OR
    );
  SYNC4I_GSR_OR_294 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => SYNC4I_GSR_OR
    );
  TS_CNT_6_GSR_OR_295 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_6_GSR_OR
    );
  CTX_CNT_10_GSR_OR_296 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_10_GSR_OR
    );
  CTX_WP_2_GSR_OR_297 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_2_GSR_OR
    );
  CTXI_7_GSR_AND_298 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CTXI_7_GSR_AND_IN1,
      O => CTXI_7_GSR_AND
    );
  CRX_CNT_10_GSR_OR_299 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_10_GSR_OR
    );
  CRX_WP_2_GSR_OR_300 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_2_GSR_OR
    );
  CRXI_7_GSR_AND_301 : X_AND2
    port map (
      I0 => RESET_IBUF,
      I1 => NlwInverterSignal_CRXI_7_GSR_AND_IN1,
      O => CRXI_7_GSR_AND
    );
  EIRQ_WP_2_GSR_OR_302 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_2_GSR_OR
    );
  EIRQI_GSR_OR_303 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQI_GSR_OR
    );
  EIRQI2_GSR_OR_304 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQI2_GSR_OR
    );
  FCE_WP_2_GSR_OR_305 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_2_GSR_OR
    );
  MCPU_GSR_OR_306 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCPU_GSR_OR
    );
  LED_G_GSR_OR_307 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => LED_G_GSR_OR
    );
  LED_Y_GSR_OR_308 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => LED_Y_GSR_OR
    );
  LED_R_GSR_OR_309 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => LED_R_GSR_OR
    );
  PCM1SEL_2_GSR_OR_310 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1SEL_2_GSR_OR
    );
  PCM1TS_5_GSR_OR_311 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_5_GSR_OR
    );
  MCTX_WP_2_GSR_OR_312 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_2_GSR_OR
    );
  IEN_FC_GSR_OR_313 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => IEN_FC_GSR_OR
    );
  IEN_EIRQ_GSR_OR_314 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => IEN_EIRQ_GSR_OR
    );
  IEN_CTX_GSR_OR_315 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => IEN_CTX_GSR_OR
    );
  IEN_CRX_GSR_OR_316 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => IEN_CRX_GSR_OR
    );
  IEN_PCM1_GSR_OR_317 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => IEN_PCM1_GSR_OR
    );
  IEN_CTXE_GSR_OR_318 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => IEN_CTXE_GSR_OR
    );
  MFCC_GSR_OR_319 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MFCC_GSR_OR
    );
  MFCD_GSR_OR_320 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MFCD_GSR_OR
    );
  MFCE_GSR_OR_321 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MFCE_GSR_OR
    );
  FCE_RP_2_GSR_OR_322 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_RP_2_GSR_OR
    );
  CTX_RP_2_GSR_OR_323 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_2_GSR_OR
    );
  CRX_RP_2_GSR_OR_324 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_2_GSR_OR
    );
  PCM1RP_2_GSR_OR_325 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_2_GSR_OR
    );
  EIRQ_RP_2_GSR_OR_326 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_2_GSR_OR
    );
  EIRQ_RP_3_GSR_OR_327 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_3_GSR_OR
    );
  EIRQ_RP_0_GSR_OR_328 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_0_GSR_OR
    );
  EIRQ_RP_1_GSR_OR_329 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_1_GSR_OR
    );
  PCM1RP_3_GSR_OR_330 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_3_GSR_OR
    );
  PCM1RP_0_GSR_OR_331 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_0_GSR_OR
    );
  PCM1RP_1_GSR_OR_332 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_1_GSR_OR
    );
  CRX_RP_3_GSR_OR_333 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_3_GSR_OR
    );
  TS_CNT_8_GSR_OR_334 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_8_GSR_OR
    );
  CRX_RP_0_GSR_OR_335 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_0_GSR_OR
    );
  CRX_RP_1_GSR_OR_336 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_1_GSR_OR
    );
  CTX_RP_3_GSR_OR_337 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_3_GSR_OR
    );
  CTX_RP_0_GSR_OR_338 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_0_GSR_OR
    );
  CTX_RP_1_GSR_OR_339 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_1_GSR_OR
    );
  FCE_RP_3_GSR_OR_340 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_RP_3_GSR_OR
    );
  FCE_RP_0_GSR_OR_341 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_RP_0_GSR_OR
    );
  FCE_RP_1_GSR_OR_342 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_RP_1_GSR_OR
    );
  MCTX_WP_3_GSR_OR_343 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_3_GSR_OR
    );
  MCTX_WP_0_GSR_OR_344 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_0_GSR_OR
    );
  MCTX_WP_1_GSR_OR_345 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_1_GSR_OR
    );
  FCE_WP_3_GSR_OR_346 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_3_GSR_OR
    );
  FCE_WP_0_GSR_OR_347 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_0_GSR_OR
    );
  FCE_WP_1_GSR_OR_348 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_1_GSR_OR
    );
  EIRQ_WP_3_GSR_OR_349 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_3_GSR_OR
    );
  EIRQ_WP_0_GSR_OR_350 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_0_GSR_OR
    );
  EIRQ_WP_1_GSR_OR_351 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_1_GSR_OR
    );
  CRX_WP_3_GSR_OR_352 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_3_GSR_OR
    );
  CRX_WP_0_GSR_OR_353 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_0_GSR_OR
    );
  CRX_WP_1_GSR_OR_354 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_1_GSR_OR
    );
  CTX_WP_3_GSR_OR_355 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_3_GSR_OR
    );
  TS_CNT_5_GSR_OR_356 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_5_GSR_OR
    );
  CTX_WP_0_GSR_OR_357 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_0_GSR_OR
    );
  CTX_WP_1_GSR_OR_358 : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_1_GSR_OR
    );
  PCM1WP_3_GSR_OR_359 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_3_GSR_OR
    );
  TS_CNT_4_GSR_OR_360 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_4_GSR_OR
    );
  PCM1WP_0_GSR_OR_361 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_0_GSR_OR
    );
  PCM1WP_1_GSR_OR_362 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_1_GSR_OR
    );
  MCTX_RP_3_GSR_OR_363 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_3_GSR_OR
    );
  TS_CNT_3_GSR_OR_364 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_3_GSR_OR
    );
  MCTX_RP_0_GSR_OR_365 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_0_GSR_OR
    );
  MCTX_RP_1_GSR_OR_366 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_1_GSR_OR
    );
  TS_CNT_2_GSR_OR_367 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_2_GSR_OR
    );
  TS_CNT_1_GSR_OR_368 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_1_GSR_OR
    );
  TS_CNT_0_GSR_OR_369 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_0_GSR_OR
    );
  TS_CNT_7_GSR_OR_370 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_7_GSR_OR
    );
  SYNC4I_1_GSR_OR_371 : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => SYNC4I_1_GSR_OR
    );
  TPCM_0_IOBUF_OBUFT_GTS_AND_372 : X_AND2
    port map (
      I0 => NlwInverterSignal_TPCM_0_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_TPCM_0_IOBUF_OBUFT_GTS_AND_IN1,
      O => TPCM_0_IOBUF_OBUFT_GTS_AND
    );
  TPCM_1_IOBUF_OBUFT_GTS_AND_373 : X_AND2
    port map (
      I0 => NlwInverterSignal_TPCM_1_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_TPCM_1_IOBUF_OBUFT_GTS_AND_IN1,
      O => TPCM_1_IOBUF_OBUFT_GTS_AND
    );
  TPCM_2_IOBUF_OBUFT_GTS_AND_374 : X_AND2
    port map (
      I0 => NlwInverterSignal_TPCM_2_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_TPCM_2_IOBUF_OBUFT_GTS_AND_IN1,
      O => TPCM_2_IOBUF_OBUFT_GTS_AND
    );
  TPCM_3_IOBUF_OBUFT_GTS_AND_375 : X_AND2
    port map (
      I0 => NlwInverterSignal_TPCM_3_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_TPCM_3_IOBUF_OBUFT_GTS_AND_IN1,
      O => TPCM_3_IOBUF_OBUFT_GTS_AND
    );
  FCC_IOBUF_OBUFT_GTS_AND_376 : X_AND2
    port map (
      I0 => NlwInverterSignal_FCC_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_FCC_IOBUF_OBUFT_GTS_AND_IN1,
      O => FCC_IOBUF_OBUFT_GTS_AND
    );
  FCD_IOBUF_OBUFT_GTS_AND_377 : X_AND2
    port map (
      I0 => NlwInverterSignal_FCD_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_FCD_IOBUF_OBUFT_GTS_AND_IN1,
      O => FCD_IOBUF_OBUFT_GTS_AND
    );
  FCEn_IOBUF_OBUFT_GTS_AND_378 : X_AND2
    port map (
      I0 => NlwInverterSignal_FCEn_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_FCEn_IOBUF_OBUFT_GTS_AND_IN1,
      O => FCEn_IOBUF_OBUFT_GTS_AND
    );
  KA_0_IOBUF_OBUFT_GTS_AND_379 : X_AND2
    port map (
      I0 => NlwInverterSignal_KA_0_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_KA_0_IOBUF_OBUFT_GTS_AND_IN1,
      O => KA_0_IOBUF_OBUFT_GTS_AND
    );
  CTX_IOBUF_OBUFT_GTS_AND_380 : X_AND2
    port map (
      I0 => NlwInverterSignal_CTX_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_CTX_IOBUF_OBUFT_GTS_AND_IN1,
      O => CTX_IOBUF_OBUFT_GTS_AND
    );
  KA_1_IOBUF_OBUFT_GTS_AND_381 : X_AND2
    port map (
      I0 => NlwInverterSignal_KA_1_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_KA_1_IOBUF_OBUFT_GTS_AND_IN1,
      O => KA_1_IOBUF_OBUFT_GTS_AND
    );
  KA_2_IOBUF_OBUFT_GTS_AND_382 : X_AND2
    port map (
      I0 => NlwInverterSignal_KA_2_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_KA_2_IOBUF_OBUFT_GTS_AND_IN1,
      O => KA_2_IOBUF_OBUFT_GTS_AND
    );
  D_0_IOBUF_OBUFT_GTS_AND_383 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_0_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_0_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_0_IOBUF_OBUFT_GTS_AND
    );
  KA_3_IOBUF_OBUFT_GTS_AND_384 : X_AND2
    port map (
      I0 => NlwInverterSignal_KA_3_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_KA_3_IOBUF_OBUFT_GTS_AND_IN1,
      O => KA_3_IOBUF_OBUFT_GTS_AND
    );
  D_1_IOBUF_OBUFT_GTS_AND_385 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_1_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_1_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_1_IOBUF_OBUFT_GTS_AND
    );
  KA_4_IOBUF_OBUFT_GTS_AND_386 : X_AND2
    port map (
      I0 => NlwInverterSignal_KA_4_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_KA_4_IOBUF_OBUFT_GTS_AND_IN1,
      O => KA_4_IOBUF_OBUFT_GTS_AND
    );
  D_2_IOBUF_OBUFT_GTS_AND_387 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_2_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_2_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_2_IOBUF_OBUFT_GTS_AND
    );
  KA_5_IOBUF_OBUFT_GTS_AND_388 : X_AND2
    port map (
      I0 => NlwInverterSignal_KA_5_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_KA_5_IOBUF_OBUFT_GTS_AND_IN1,
      O => KA_5_IOBUF_OBUFT_GTS_AND
    );
  D_3_IOBUF_OBUFT_GTS_AND_389 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_3_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_3_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_3_IOBUF_OBUFT_GTS_AND
    );
  D_4_IOBUF_OBUFT_GTS_AND_390 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_4_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_4_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_4_IOBUF_OBUFT_GTS_AND
    );
  D_5_IOBUF_OBUFT_GTS_AND_391 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_5_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_5_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_5_IOBUF_OBUFT_GTS_AND
    );
  D_6_IOBUF_OBUFT_GTS_AND_392 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_6_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_6_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_6_IOBUF_OBUFT_GTS_AND
    );
  SYNC4_IOBUF_OBUFT_GTS_AND_393 : X_AND2
    port map (
      I0 => NlwInverterSignal_SYNC4_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_SYNC4_IOBUF_OBUFT_GTS_AND_IN1,
      O => SYNC4_IOBUF_OBUFT_GTS_AND
    );
  D_7_IOBUF_OBUFT_GTS_AND_394 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_7_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_D_7_IOBUF_OBUFT_GTS_AND_IN1,
      O => D_7_IOBUF_OBUFT_GTS_AND
    );
  CLK4M_IOBUF_OBUFT_GTS_AND_395 : X_AND2
    port map (
      I0 => NlwInverterSignal_CLK4M_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_CLK4M_IOBUF_OBUFT_GTS_AND_IN1,
      O => CLK4M_IOBUF_OBUFT_GTS_AND
    );
  CLK8M_IOBUF_OBUFT_GTS_AND_396 : X_AND2
    port map (
      I0 => NlwInverterSignal_CLK8M_IOBUF_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_CLK8M_IOBUF_OBUFT_GTS_AND_IN1,
      O => CLK8M_IOBUF_OBUFT_GTS_AND
    );
  SYNC2_OBUFT_GTS_AND_397 : X_AND2
    port map (
      I0 => NlwInverterSignal_SYNC2_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_SYNC2_OBUFT_GTS_AND_IN1,
      O => SYNC2_OBUFT_GTS_AND
    );
  PC_7_OBUFT_GTS_AND_398 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_7_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_7_OBUFT_GTS_AND_IN1,
      O => PC_7_OBUFT_GTS_AND
    );
  PC_6_OBUFT_GTS_AND_399 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_6_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_6_OBUFT_GTS_AND_IN1,
      O => PC_6_OBUFT_GTS_AND
    );
  PC_5_OBUFT_GTS_AND_400 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_5_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_5_OBUFT_GTS_AND_IN1,
      O => PC_5_OBUFT_GTS_AND
    );
  PC_4_OBUFT_GTS_AND_401 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_4_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_4_OBUFT_GTS_AND_IN1,
      O => PC_4_OBUFT_GTS_AND
    );
  PC_3_OBUFT_GTS_AND_402 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_3_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_3_OBUFT_GTS_AND_IN1,
      O => PC_3_OBUFT_GTS_AND
    );
  PC_2_OBUFT_GTS_AND_403 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_2_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_2_OBUFT_GTS_AND_IN1,
      O => PC_2_OBUFT_GTS_AND
    );
  PC_1_OBUFT_GTS_AND_404 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_1_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_1_OBUFT_GTS_AND_IN1,
      O => PC_1_OBUFT_GTS_AND
    );
  PC_0_OBUFT_GTS_AND_405 : X_AND2
    port map (
      I0 => NlwInverterSignal_PC_0_OBUFT_GTS_AND_IN0,
      I1 => NlwInverterSignal_PC_0_OBUFT_GTS_AND_IN1,
      O => PC_0_OBUFT_GTS_AND
    );
  LED_2_OBUF_GTS_TRI_406 : X_TRI
    port map (
      I => LED_2_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_LED_2_OBUF_GTS_TRI_CTL,
      O => LED(2)
    );
  INTn_OBUF_GTS_TRI_407 : X_TRI
    port map (
      I => INTn_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_INTn_OBUF_GTS_TRI_CTL,
      O => INTn
    );
  LED_3_OBUF_GTS_TRI_408 : X_TRI
    port map (
      I => LED_3_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_LED_3_OBUF_GTS_TRI_CTL,
      O => LED(3)
    );
  Test_OBUF_GTS_TRI_409 : X_TRI
    port map (
      I => Test_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_Test_OBUF_GTS_TRI_CTL,
      O => Test
    );
  LED_1_OBUF_GTS_TRI_410 : X_TRI
    port map (
      I => LED_1_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_LED_1_OBUF_GTS_TRI_CTL,
      O => LED(1)
    );
  NlwBlock_pub_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_PCM1I_7_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_7_C
    );
  NlwInverterBlock_PCM1I_6_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_6_C
    );
  NlwInverterBlock_PCM1I_5_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_5_C
    );
  NlwInverterBlock_PCM1I_4_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_4_C
    );
  NlwInverterBlock_PCM1I_3_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_3_C
    );
  NlwInverterBlock_PCM1I_2_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_2_C
    );
  NlwInverterBlock_PCM1I_1_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_1_C
    );
  NlwInverterBlock_PCM1I_0_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_PCM1I_0_C
    );
  NlwBlock_pub_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_CNT_9_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_9_C
    );
  NlwInverterBlock_SYNC4I_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_SYNC4I_C
    );
  NlwInverterBlock_CNT_10_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_10_C
    );
  NlwInverterBlock_CNT_0_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_0_C
    );
  NlwInverterBlock_CNT_1_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_1_C
    );
  NlwInverterBlock_CNT_2_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_2_C
    );
  NlwInverterBlock_CNT_3_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_3_C
    );
  NlwInverterBlock_CNT_4_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_4_C
    );
  NlwInverterBlock_CNT_5_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_5_C
    );
  NlwInverterBlock_CNT_6_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_6_C
    );
  NlwInverterBlock_CNT_7_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_7_C
    );
  NlwInverterBlock_CNT_8_C : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => NlwInverterSignal_CNT_8_C
    );
  NlwInverterBlock_SYNC4I_1_C : X_INV
    port map (
      I => N12164,
      O => NlwInverterSignal_SYNC4I_1_C
    );
  NlwInverterBlock_CRXI_0_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_0_GSR_AND_IN1
    );
  NlwInverterBlock_CRXI_1_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_1_GSR_AND_IN1
    );
  NlwInverterBlock_CRXI_2_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_2_GSR_AND_IN1
    );
  NlwInverterBlock_CRXI_3_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_3_GSR_AND_IN1
    );
  NlwInverterBlock_CRXI_4_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_4_GSR_AND_IN1
    );
  NlwInverterBlock_CRXI_5_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_5_GSR_AND_IN1
    );
  NlwInverterBlock_CRXI_6_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_6_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_6_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_6_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_5_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_5_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_4_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_4_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_3_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_3_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_2_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_2_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_1_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_1_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_0_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_0_GSR_AND_IN1
    );
  NlwInverterBlock_CTXI_7_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CTXI_7_GSR_AND_IN1
    );
  NlwInverterBlock_CRXI_7_GSR_AND_IN1 : X_INV
    port map (
      I => GSR,
      O => NlwInverterSignal_CRXI_7_GSR_AND_IN1
    );
  NlwInverterBlock_TPCM_0_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_TPCM_0_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_TPCM_0_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_TPCM_0_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_TPCM_1_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_TPCM_1_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_TPCM_1_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_TPCM_1_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_TPCM_2_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_TPCM_2_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_TPCM_2_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_TPCM_2_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_TPCM_3_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_TPCM_3_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_TPCM_3_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_TPCM_3_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_FCC_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_FCC_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_FCC_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_FCC_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_FCD_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_FCD_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_FCD_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_FCD_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_FCEn_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_FCEn_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_FCEn_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_FCEn_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_KA_0_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_KA_0_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_KA_0_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_KA_0_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_CTX_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_CTX_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_CTX_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_CTX_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_KA_1_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_KA_1_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_KA_1_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_KA_1_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_KA_2_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_KA_2_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_KA_2_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_KA_2_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_0_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_0_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_0_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_0_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_KA_3_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_KA_3_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_KA_3_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_KA_3_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_1_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_1_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_1_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_1_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_KA_4_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_KA_4_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_KA_4_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_KA_4_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_2_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_2_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_2_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_2_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_KA_5_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_KA_5_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_KA_5_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_KA_5_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_3_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_3_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_3_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_3_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_4_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_4_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_4_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_4_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_5_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_5_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_5_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_5_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_6_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_6_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_6_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_6_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_SYNC4_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_SYNC4_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_SYNC4_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_SYNC4_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_D_7_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => N9693,
      O => NlwInverterSignal_D_7_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_D_7_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_D_7_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_CLK4M_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_CLK4M_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_CLK4M_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_CLK4M_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_CLK8M_IOBUF_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_CLK8M_IOBUF_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_CLK8M_IOBUF_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_CLK8M_IOBUF_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_SYNC2_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => I72_N973,
      O => NlwInverterSignal_SYNC2_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_SYNC2_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_SYNC2_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_7_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_7_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_7_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_7_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_6_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_6_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_6_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_6_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_5_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_5_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_5_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_5_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_4_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_4_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_4_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_4_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_3_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_3_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_3_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_3_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_2_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_2_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_2_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_2_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_1_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_1_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_1_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_1_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_PC_0_OBUFT_GTS_AND_IN0 : X_INV
    port map (
      I => TPCM_2_IOBUF,
      O => NlwInverterSignal_PC_0_OBUFT_GTS_AND_IN0
    );
  NlwInverterBlock_PC_0_OBUFT_GTS_AND_IN1 : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_PC_0_OBUFT_GTS_AND_IN1
    );
  NlwInverterBlock_LED_2_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_LED_2_OBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_INTn_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_INTn_OBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_LED_3_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_LED_3_OBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_Test_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_Test_OBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_LED_1_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_LED_1_OBUF_GTS_TRI_CTL
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

