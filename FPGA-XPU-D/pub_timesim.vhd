-- Xilinx Vhdl netlist produced by netgen application (version G.26)
-- Command       : -intstyle ise -s 5 -pcf pub.pcf -ngm pub.ngm -rpw 100 -tpw 0 -ar Structure -xon true -w -ofmt vhdl -sim pub.ncd pub_timesim.vhd 
-- Input file    : pub.ncd
-- Output file   : pub_timesim.vhd
-- Design name   : pub
-- # of Entities : 1
-- Xilinx        : C:/Xilinx
-- Device        : 2s100tq144-5 (PRODUCTION 1.27 2003-11-04)

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
    INTn : out STD_LOGIC; 
    Test : out STD_LOGIC; 
    SYNC2 : out STD_LOGIC; 
    CLK8M : inout STD_LOGIC; 
    CLK4M : inout STD_LOGIC; 
    SYNC4 : inout STD_LOGIC; 
    CTX : inout STD_LOGIC; 
    FCEn : inout STD_LOGIC; 
    FCD : inout STD_LOGIC; 
    FCC : inout STD_LOGIC; 
    HSSC : in STD_LOGIC := 'X'; 
    EIRQn : in STD_LOGIC := 'X'; 
    SENSEn : in STD_LOGIC := 'X'; 
    WRn : in STD_LOGIC := 'X'; 
    RDn : in STD_LOGIC := 'X'; 
    CLK16M : in STD_LOGIC := 'X'; 
    TSYNC : in STD_LOGIC := 'X'; 
    CRX : in STD_LOGIC := 'X'; 
    CSn : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    LED : out STD_LOGIC_VECTOR ( 3 downto 1 ); 
    PC : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    KA_IO : inout STD_LOGIC_VECTOR ( 5 downto 4 ); 
    D : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    TPCM : inout STD_LOGIC_VECTOR ( 3 downto 0 ); 
    KA_I : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    RPCM : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    PA : in STD_LOGIC_VECTOR ( 7 downto 5 ); 
    A : in STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end pub;

architecture Structure of pub is
  signal N12095 : STD_LOGIC; 
  signal MFCE : STD_LOGIC; 
  signal MCPU : STD_LOGIC; 
  signal HSSC_IBUF : STD_LOGIC; 
  signal N12117 : STD_LOGIC; 
  signal N12119 : STD_LOGIC; 
  signal INTn_OBUF : STD_LOGIC; 
  signal PA_5_IBUF : STD_LOGIC; 
  signal PA_6_IBUF : STD_LOGIC; 
  signal PA_7_IBUF : STD_LOGIC; 
  signal EIRQn_IBUF : STD_LOGIC; 
  signal KA_I_0_IBUF : STD_LOGIC; 
  signal KA_I_1_IBUF : STD_LOGIC; 
  signal KA_I_2_IBUF : STD_LOGIC; 
  signal CLK16M_BUFGP_IBUFG : STD_LOGIC; 
  signal KA_I_3_IBUF : STD_LOGIC; 
  signal RESET_IBUF : STD_LOGIC; 
  signal Test_OBUF : STD_LOGIC; 
  signal LED_1_OBUF : STD_LOGIC; 
  signal LED_2_OBUF : STD_LOGIC; 
  signal LED_3_OBUF : STD_LOGIC; 
  signal N12091 : STD_LOGIC; 
  signal MFCC : STD_LOGIC; 
  signal N12093 : STD_LOGIC; 
  signal MFCD : STD_LOGIC; 
  signal Q_n0083 : STD_LOGIC; 
  signal CRX_IBUF : STD_LOGIC; 
  signal SYNC4I : STD_LOGIC; 
  signal Q_n0084 : STD_LOGIC; 
  signal RESET_IBUF_1 : STD_LOGIC; 
  signal CLK16M_BUFGP : STD_LOGIC; 
  signal N12097 : STD_LOGIC; 
  signal Q_n0269 : STD_LOGIC; 
  signal CSn_IBUF : STD_LOGIC; 
  signal TSYNC_IBUF : STD_LOGIC; 
  signal RDn_IBUF : STD_LOGIC; 
  signal WRn_IBUF : STD_LOGIC; 
  signal RPCM_0_IBUF : STD_LOGIC; 
  signal RPCM_1_IBUF : STD_LOGIC; 
  signal RPCM_2_IBUF : STD_LOGIC; 
  signal RPCM_3_IBUF : STD_LOGIC; 
  signal N12121 : STD_LOGIC; 
  signal N12081 : STD_LOGIC; 
  signal A_0_IBUF : STD_LOGIC; 
  signal A_1_IBUF : STD_LOGIC; 
  signal A_2_IBUF : STD_LOGIC; 
  signal A_3_IBUF : STD_LOGIC; 
  signal A_4_IBUF : STD_LOGIC; 
  signal A_5_IBUF : STD_LOGIC; 
  signal SENSEn_IBUF : STD_LOGIC; 
  signal N12083 : STD_LOGIC; 
  signal MCPU_N801 : STD_LOGIC; 
  signal N12099 : STD_LOGIC; 
  signal D_0_IOBUF : STD_LOGIC; 
  signal Q_n0210 : STD_LOGIC; 
  signal N12085 : STD_LOGIC; 
  signal N12101 : STD_LOGIC; 
  signal D_1_IOBUF : STD_LOGIC; 
  signal N12087 : STD_LOGIC; 
  signal N12103 : STD_LOGIC; 
  signal D_2_IOBUF : STD_LOGIC; 
  signal N12089 : STD_LOGIC; 
  signal N12105 : STD_LOGIC; 
  signal D_3_IOBUF : STD_LOGIC; 
  signal N12107 : STD_LOGIC; 
  signal D_4_IOBUF : STD_LOGIC; 
  signal N12109 : STD_LOGIC; 
  signal D_5_IOBUF : STD_LOGIC; 
  signal N12111 : STD_LOGIC; 
  signal D_6_IOBUF : STD_LOGIC; 
  signal N12115 : STD_LOGIC; 
  signal D_7_IOBUF : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net23 : STD_LOGIC; 
  signal PCM1MUX : STD_LOGIC; 
  signal CHOICE87 : STD_LOGIC; 
  signal CHOICE76 : STD_LOGIC; 
  signal IEN_CTX : STD_LOGIC; 
  signal CHOICE369 : STD_LOGIC; 
  signal Q_n0071 : STD_LOGIC; 
  signal IEN_FC : STD_LOGIC; 
  signal CHOICE585 : STD_LOGIC; 
  signal Q_n0272 : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal Q_n0280 : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_8 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_10 : STD_LOGIC; 
  signal Q_n0075 : STD_LOGIC; 
  signal Mcompar_n0108_inst_cy_5 : STD_LOGIC; 
  signal Q_n0108 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_34 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_36 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_38 : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_40 : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal Q_n0275 : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal Q_n0279 : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal Q_n0281 : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal Q_n0282 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_34 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_36 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_38 : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_40 : STD_LOGIC; 
  signal Madd_n0121_inst_cy_1 : STD_LOGIC; 
  signal TS_CNT_inst_cy_24 : STD_LOGIC; 
  signal TS_CNT_inst_cy_26 : STD_LOGIC; 
  signal TS_CNT_inst_cy_28 : STD_LOGIC; 
  signal TS_CNT_inst_cy_30 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_13 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_15 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_17 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_19 : STD_LOGIC; 
  signal Madd_n0067_inst_cy_21 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_13 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_15 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_17 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_19 : STD_LOGIC; 
  signal Madd_n0068_inst_cy_21 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_13 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_15 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_17 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_19 : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_21 : STD_LOGIC; 
  signal Q_n0027 : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal Q_n0187 : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal MCTX_RP_0_N1147 : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal Q_n0283 : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_cy_1 : STD_LOGIC; 
  signal N8209 : STD_LOGIC; 
  signal Q_n0123 : STD_LOGIC; 
  signal N8214 : STD_LOGIC; 
  signal Q_n0125 : STD_LOGIC; 
  signal N9712 : STD_LOGIC; 
  signal N8104 : STD_LOGIC; 
  signal Q_n0085 : STD_LOGIC; 
  signal N7799 : STD_LOGIC; 
  signal N10193 : STD_LOGIC; 
  signal Q_n0086 : STD_LOGIC; 
  signal Q_n0274 : STD_LOGIC; 
  signal Q_n0079 : STD_LOGIC; 
  signal MCTXE : STD_LOGIC; 
  signal CHOICE496 : STD_LOGIC; 
  signal CHOICE503 : STD_LOGIC; 
  signal Q_n0271 : STD_LOGIC; 
  signal N9545 : STD_LOGIC; 
  signal N7697 : STD_LOGIC; 
  signal Q_n00291_O : STD_LOGIC; 
  signal Ker7695_SW0_O : STD_LOGIC; 
  signal Q_n0301 : STD_LOGIC; 
  signal N7683 : STD_LOGIC; 
  signal LED_Y : STD_LOGIC; 
  signal N7917 : STD_LOGIC; 
  signal N8130 : STD_LOGIC; 
  signal LED_G : STD_LOGIC; 
  signal N7775 : STD_LOGIC; 
  signal Q_n0300 : STD_LOGIC; 
  signal Q_n0299 : STD_LOGIC; 
  signal Q_n0276 : STD_LOGIC; 
  signal Q_n0273 : STD_LOGIC; 
  signal N8136 : STD_LOGIC; 
  signal CHOICE542 : STD_LOGIC; 
  signal CHOICE547 : STD_LOGIC; 
  signal CHOICE557 : STD_LOGIC; 
  signal CHOICE337 : STD_LOGIC; 
  signal Q_n0024 : STD_LOGIC; 
  signal N12336 : STD_LOGIC; 
  signal CHOICE334 : STD_LOGIC; 
  signal CHOICE345 : STD_LOGIC; 
  signal N8095 : STD_LOGIC; 
  signal N8201 : STD_LOGIC; 
  signal CHOICE344 : STD_LOGIC; 
  signal CHOICE595 : STD_LOGIC; 
  signal LED_R : STD_LOGIC; 
  signal Q_n0215 : STD_LOGIC; 
  signal N7835 : STD_LOGIC; 
  signal CHOICE482 : STD_LOGIC; 
  signal CHOICE483 : STD_LOGIC; 
  signal CHOICE474 : STD_LOGIC; 
  signal CHOICE453 : STD_LOGIC; 
  signal CHOICE487 : STD_LOGIC; 
  signal N8117 : STD_LOGIC; 
  signal CHOICE171 : STD_LOGIC; 
  signal N8409 : STD_LOGIC; 
  signal EIRQI_Twice : STD_LOGIC; 
  signal EIRQI_Once : STD_LOGIC; 
  signal SENSEO : STD_LOGIC; 
  signal N8572 : STD_LOGIC; 
  signal CHOICE379 : STD_LOGIC; 
  signal N8174 : STD_LOGIC; 
  signal IEN_EIRQ : STD_LOGIC; 
  signal CHOICE600 : STD_LOGIC; 
  signal N8192 : STD_LOGIC; 
  signal N12261 : STD_LOGIC; 
  signal N12265 : STD_LOGIC; 
  signal IEN_CTXE : STD_LOGIC; 
  signal N12280 : STD_LOGIC; 
  signal CHOICE417 : STD_LOGIC; 
  signal N12347 : STD_LOGIC; 
  signal CHOICE333 : STD_LOGIC; 
  signal CHOICE353 : STD_LOGIC; 
  signal N9591 : STD_LOGIC; 
  signal N8123 : STD_LOGIC; 
  signal N7896 : STD_LOGIC; 
  signal N10263 : STD_LOGIC; 
  signal Q_n0072 : STD_LOGIC; 
  signal CHOICE190 : STD_LOGIC; 
  signal CHOICE195 : STD_LOGIC; 
  signal N12341 : STD_LOGIC; 
  signal N12330 : STD_LOGIC; 
  signal CHOICE398 : STD_LOGIC; 
  signal CHOICE409 : STD_LOGIC; 
  signal CHOICE273 : STD_LOGIC; 
  signal CHOICE122 : STD_LOGIC; 
  signal CHOICE133 : STD_LOGIC; 
  signal CHOICE459 : STD_LOGIC; 
  signal CHOICE281 : STD_LOGIC; 
  signal CHOICE434 : STD_LOGIC; 
  signal N12269 : STD_LOGIC; 
  signal CHOICE357 : STD_LOGIC; 
  signal N12271 : STD_LOGIC; 
  signal IEN_PCM1 : STD_LOGIC; 
  signal CHOICE265 : STD_LOGIC; 
  signal CHOICE602 : STD_LOGIC; 
  signal CHOICE559 : STD_LOGIC; 
  signal CHOICE319 : STD_LOGIC; 
  signal CHOICE570 : STD_LOGIC; 
  signal EIRQO : STD_LOGIC; 
  signal N12257 : STD_LOGIC; 
  signal CHOICE564 : STD_LOGIC; 
  signal IEN_CRX : STD_LOGIC; 
  signal CHOICE510 : STD_LOGIC; 
  signal CHOICE511 : STD_LOGIC; 
  signal CHOICE373 : STD_LOGIC; 
  signal CHOICE384 : STD_LOGIC; 
  signal N8480 : STD_LOGIC; 
  signal Q_n0025 : STD_LOGIC; 
  signal CHOICE451 : STD_LOGIC; 
  signal CHOICE99 : STD_LOGIC; 
  signal CHOICE110 : STD_LOGIC; 
  signal CHOICE469 : STD_LOGIC; 
  signal CHOICE460 : STD_LOGIC; 
  signal CHOICE468 : STD_LOGIC; 
  signal CHOICE437 : STD_LOGIC; 
  signal CHOICE534 : STD_LOGIC; 
  signal CHOICE147 : STD_LOGIC; 
  signal CHOICE151 : STD_LOGIC; 
  signal CHOICE175 : STD_LOGIC; 
  signal CHOICE53 : STD_LOGIC; 
  signal CHOICE64 : STD_LOGIC; 
  signal Q_n0074 : STD_LOGIC; 
  signal CHOICE312 : STD_LOGIC; 
  signal N8453 : STD_LOGIC; 
  signal N12285 : STD_LOGIC; 
  signal CHOICE249 : STD_LOGIC; 
  signal CHOICE241 : STD_LOGIC; 
  signal CHOICE257 : STD_LOGIC; 
  signal N12253 : STD_LOGIC; 
  signal CHOICE525 : STD_LOGIC; 
  signal CHOICE537 : STD_LOGIC; 
  signal N8536 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_1 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_2 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_3 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_4 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_5 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_6 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_7 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_8 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_9 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_10 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_11 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_12 : STD_LOGIC; 
  signal GLOBAL_LOGIC1_13 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_1 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_2 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_3 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_4 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_5 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_6 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_7 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_8 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_9 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_10 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_11 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_12 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_13 : STD_LOGIC; 
  signal GLOBAL_LOGIC0_14 : STD_LOGIC; 
  signal GSR : STD_LOGIC; 
  signal GTS : STD_LOGIC; 
  signal FCEn_ENABLE : STD_LOGIC; 
  signal FCEn_TORGTS : STD_LOGIC; 
  signal FCEn_OUTMUX : STD_LOGIC; 
  signal FCEn_TDATANOT : STD_LOGIC; 
  signal FCEn_ODNOT : STD_LOGIC; 
  signal FCEn_IBUF : STD_LOGIC; 
  signal HSSC_IBUF_0 : STD_LOGIC; 
  signal CLK4M_ENABLE : STD_LOGIC; 
  signal CLK4M_TORGTS : STD_LOGIC; 
  signal CLK4M_OUTMUX : STD_LOGIC; 
  signal CLK4M_TDATANOT : STD_LOGIC; 
  signal CLK4M_ODNOT : STD_LOGIC; 
  signal CLK4M_IBUF : STD_LOGIC; 
  signal CLK8M_ENABLE : STD_LOGIC; 
  signal CLK8M_TORGTS : STD_LOGIC; 
  signal CLK8M_OUTMUX : STD_LOGIC; 
  signal CLK8M_TDATANOT : STD_LOGIC; 
  signal CLK8M_ODNOT : STD_LOGIC; 
  signal CLK8M_IBUF : STD_LOGIC; 
  signal INTn_ENABLE : STD_LOGIC; 
  signal INTn_TORGTS : STD_LOGIC; 
  signal INTn_OUTMUX : STD_LOGIC; 
  signal PA_5_IBUF_1 : STD_LOGIC; 
  signal PA_6_IBUF_2 : STD_LOGIC; 
  signal PA_7_IBUF_3 : STD_LOGIC; 
  signal EIRQn_IBUF_4 : STD_LOGIC; 
  signal KA_I_0_IBUF_5 : STD_LOGIC; 
  signal KA_I_1_IBUF_6 : STD_LOGIC; 
  signal KA_I_2_IBUF_7 : STD_LOGIC; 
  signal KA_I_3_IBUF_8 : STD_LOGIC; 
  signal RESET_IBUF_9 : STD_LOGIC; 
  signal Test_ENABLE : STD_LOGIC; 
  signal Test_TORGTS : STD_LOGIC; 
  signal Test_OUTMUX : STD_LOGIC; 
  signal LED_1_ENABLE : STD_LOGIC; 
  signal LED_1_TORGTS : STD_LOGIC; 
  signal LED_1_OUTMUX : STD_LOGIC; 
  signal LED_2_ENABLE : STD_LOGIC; 
  signal LED_2_TORGTS : STD_LOGIC; 
  signal LED_2_OUTMUX : STD_LOGIC; 
  signal LED_3_ENABLE : STD_LOGIC; 
  signal LED_3_TORGTS : STD_LOGIC; 
  signal LED_3_OUTMUX : STD_LOGIC; 
  signal FCC_ENABLE : STD_LOGIC; 
  signal FCC_TORGTS : STD_LOGIC; 
  signal FCC_OUTMUX : STD_LOGIC; 
  signal FCC_TDATANOT : STD_LOGIC; 
  signal FCC_IBUF : STD_LOGIC; 
  signal FCD_ENABLE : STD_LOGIC; 
  signal FCD_TORGTS : STD_LOGIC; 
  signal FCD_OUTMUX : STD_LOGIC; 
  signal FCD_TDATANOT : STD_LOGIC; 
  signal FCD_IDELAY : STD_LOGIC; 
  signal FCD_IBUF : STD_LOGIC; 
  signal SYNC2_OFF_RST : STD_LOGIC; 
  signal SYNC2_ENABLE : STD_LOGIC; 
  signal SYNC2_TORGTS : STD_LOGIC; 
  signal SYNC2_OUTMUX : STD_LOGIC; 
  signal SYNC2_TDATANOT : STD_LOGIC; 
  signal MSYNC2 : STD_LOGIC; 
  signal SYNC2_OD : STD_LOGIC; 
  signal CRX_IBUF_10 : STD_LOGIC; 
  signal SYNC4_ENABLE : STD_LOGIC; 
  signal SYNC4_TORGTS : STD_LOGIC; 
  signal SYNC4_OUTMUX : STD_LOGIC; 
  signal SYNC4_TDATANOT : STD_LOGIC; 
  signal MSYNC4 : STD_LOGIC; 
  signal SYNC4_OD : STD_LOGIC; 
  signal SYNC4_ICLKNOT : STD_LOGIC; 
  signal SYNC4_IDELAY : STD_LOGIC; 
  signal N12113 : STD_LOGIC; 
  signal CTX_ENABLE : STD_LOGIC; 
  signal CTX_TORGTS : STD_LOGIC; 
  signal CTX_OUTMUX : STD_LOGIC; 
  signal CTX_TDATANOT : STD_LOGIC; 
  signal CTX_OD : STD_LOGIC; 
  signal CTX_IBUF : STD_LOGIC; 
  signal CSn_IBUF_11 : STD_LOGIC; 
  signal TSYNC_IBUF_12 : STD_LOGIC; 
  signal RDn_IBUF_13 : STD_LOGIC; 
  signal WRn_IBUF_14 : STD_LOGIC; 
  signal RPCM_0_IBUF_15 : STD_LOGIC; 
  signal RPCM_1_IBUF_16 : STD_LOGIC; 
  signal RPCM_2_IBUF_17 : STD_LOGIC; 
  signal RPCM_3_IBUF_18 : STD_LOGIC; 
  signal KA_IO_4_ENABLE : STD_LOGIC; 
  signal KA_IO_4_TORGTS : STD_LOGIC; 
  signal KA_IO_4_OUTMUX : STD_LOGIC; 
  signal KA_IO_4_LOGIC_ZERO : STD_LOGIC; 
  signal KA_IO_4_TDATANOT : STD_LOGIC; 
  signal KA_IO_4_IBUF : STD_LOGIC; 
  signal KA_IO_5_ENABLE : STD_LOGIC; 
  signal KA_IO_5_TORGTS : STD_LOGIC; 
  signal KA_IO_5_OUTMUX : STD_LOGIC; 
  signal KA_IO_5_LOGIC_ZERO : STD_LOGIC; 
  signal KA_IO_5_TDATANOT : STD_LOGIC; 
  signal KA_IO_5_IBUF : STD_LOGIC; 
  signal A_0_IBUF_19 : STD_LOGIC; 
  signal A_1_IBUF_20 : STD_LOGIC; 
  signal A_2_IBUF_21 : STD_LOGIC; 
  signal A_3_IBUF_22 : STD_LOGIC; 
  signal A_4_IBUF_23 : STD_LOGIC; 
  signal A_5_IBUF_24 : STD_LOGIC; 
  signal SENSEn_IBUF_25 : STD_LOGIC; 
  signal TPCM_0_ENABLE : STD_LOGIC; 
  signal TPCM_0_TORGTS : STD_LOGIC; 
  signal TPCM_0_OUTMUX : STD_LOGIC; 
  signal TPCM_0_LOGIC_ONE : STD_LOGIC; 
  signal TPCM_0_TDATANOT : STD_LOGIC; 
  signal TPCM_0_IBUF : STD_LOGIC; 
  signal D_0_ENABLE : STD_LOGIC; 
  signal D_0_TORGTS : STD_LOGIC; 
  signal D_0_OUTMUX : STD_LOGIC; 
  signal D_0_IDELAY : STD_LOGIC; 
  signal D_0_IBUF : STD_LOGIC; 
  signal TPCM_1_ENABLE : STD_LOGIC; 
  signal TPCM_1_TORGTS : STD_LOGIC; 
  signal TPCM_1_OUTMUX : STD_LOGIC; 
  signal TPCM_1_LOGIC_ONE : STD_LOGIC; 
  signal TPCM_1_TDATANOT : STD_LOGIC; 
  signal TPCM_1_IBUF : STD_LOGIC; 
  signal D_1_ENABLE : STD_LOGIC; 
  signal D_1_TORGTS : STD_LOGIC; 
  signal D_1_OUTMUX : STD_LOGIC; 
  signal D_1_IBUF : STD_LOGIC; 
  signal TPCM_2_ENABLE : STD_LOGIC; 
  signal TPCM_2_TORGTS : STD_LOGIC; 
  signal TPCM_2_OUTMUX : STD_LOGIC; 
  signal TPCM_2_LOGIC_ONE : STD_LOGIC; 
  signal TPCM_2_TDATANOT : STD_LOGIC; 
  signal TPCM_2_IBUF : STD_LOGIC; 
  signal D_2_ENABLE : STD_LOGIC; 
  signal D_2_TORGTS : STD_LOGIC; 
  signal D_2_OUTMUX : STD_LOGIC; 
  signal D_2_IBUF : STD_LOGIC; 
  signal TPCM_3_ENABLE : STD_LOGIC; 
  signal TPCM_3_TORGTS : STD_LOGIC; 
  signal TPCM_3_OUTMUX : STD_LOGIC; 
  signal TPCM_3_LOGIC_ONE : STD_LOGIC; 
  signal TPCM_3_TDATANOT : STD_LOGIC; 
  signal TPCM_3_IBUF : STD_LOGIC; 
  signal D_3_ENABLE : STD_LOGIC; 
  signal D_3_TORGTS : STD_LOGIC; 
  signal D_3_OUTMUX : STD_LOGIC; 
  signal D_3_IBUF : STD_LOGIC; 
  signal D_4_ENABLE : STD_LOGIC; 
  signal D_4_TORGTS : STD_LOGIC; 
  signal D_4_OUTMUX : STD_LOGIC; 
  signal D_4_IBUF : STD_LOGIC; 
  signal D_5_ENABLE : STD_LOGIC; 
  signal D_5_TORGTS : STD_LOGIC; 
  signal D_5_OUTMUX : STD_LOGIC; 
  signal D_5_IBUF : STD_LOGIC; 
  signal D_6_ENABLE : STD_LOGIC; 
  signal D_6_TORGTS : STD_LOGIC; 
  signal D_6_OUTMUX : STD_LOGIC; 
  signal D_6_IBUF : STD_LOGIC; 
  signal D_7_ENABLE : STD_LOGIC; 
  signal D_7_TORGTS : STD_LOGIC; 
  signal D_7_OUTMUX : STD_LOGIC; 
  signal D_7_IBUF : STD_LOGIC; 
  signal PCM1FIFO_DOB15 : STD_LOGIC; 
  signal PCM1FIFO_DOB14 : STD_LOGIC; 
  signal PCM1FIFO_DOB13 : STD_LOGIC; 
  signal PCM1FIFO_DOB12 : STD_LOGIC; 
  signal PCM1FIFO_DOB11 : STD_LOGIC; 
  signal PCM1FIFO_DOB10 : STD_LOGIC; 
  signal PCM1FIFO_DOB9 : STD_LOGIC; 
  signal PCM1FIFO_DOB8 : STD_LOGIC; 
  signal PCM1FIFO_DOA15 : STD_LOGIC; 
  signal PCM1FIFO_DOA14 : STD_LOGIC; 
  signal PCM1FIFO_DOA13 : STD_LOGIC; 
  signal PCM1FIFO_DOA12 : STD_LOGIC; 
  signal PCM1FIFO_DOA11 : STD_LOGIC; 
  signal PCM1FIFO_DOA10 : STD_LOGIC; 
  signal PCM1FIFO_DOA9 : STD_LOGIC; 
  signal PCM1FIFO_DOA8 : STD_LOGIC; 
  signal PCM1FIFO_DOA7 : STD_LOGIC; 
  signal PCM1FIFO_DOA6 : STD_LOGIC; 
  signal PCM1FIFO_DOA5 : STD_LOGIC; 
  signal PCM1FIFO_DOA4 : STD_LOGIC; 
  signal PCM1FIFO_DOA3 : STD_LOGIC; 
  signal PCM1FIFO_DOA2 : STD_LOGIC; 
  signal PCM1FIFO_DOA1 : STD_LOGIC; 
  signal PCM1FIFO_DOA0 : STD_LOGIC; 
  signal PCM1FIFO_DIB15 : STD_LOGIC; 
  signal PCM1FIFO_DIB14 : STD_LOGIC; 
  signal PCM1FIFO_DIB13 : STD_LOGIC; 
  signal PCM1FIFO_DIB12 : STD_LOGIC; 
  signal PCM1FIFO_DIB11 : STD_LOGIC; 
  signal PCM1FIFO_DIB10 : STD_LOGIC; 
  signal PCM1FIFO_DIB9 : STD_LOGIC; 
  signal PCM1FIFO_DIB8 : STD_LOGIC; 
  signal PCM1FIFO_DIA15 : STD_LOGIC; 
  signal PCM1FIFO_DIA14 : STD_LOGIC; 
  signal PCM1FIFO_DIA13 : STD_LOGIC; 
  signal PCM1FIFO_DIA12 : STD_LOGIC; 
  signal PCM1FIFO_DIA11 : STD_LOGIC; 
  signal PCM1FIFO_DIA10 : STD_LOGIC; 
  signal PCM1FIFO_DIA9 : STD_LOGIC; 
  signal PCM1FIFO_DIA8 : STD_LOGIC; 
  signal PCM1FIFO_ADDRB2 : STD_LOGIC; 
  signal PCM1FIFO_ADDRB1 : STD_LOGIC; 
  signal PCM1FIFO_ADDRB0 : STD_LOGIC; 
  signal PCM1FIFO_ADDRA2 : STD_LOGIC; 
  signal PCM1FIFO_ADDRA1 : STD_LOGIC; 
  signal PCM1FIFO_ADDRA0 : STD_LOGIC; 
  signal PCM1FIFO_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1FIFO_LOGIC_ONE : STD_LOGIC; 
  signal Mmux_PCM1MUX_net22 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net21 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net23_F5MUX : STD_LOGIC; 
  signal Mmux_PCM1MUX_net25 : STD_LOGIC; 
  signal Mmux_PCM1MUX_net24 : STD_LOGIC; 
  signal PCM1MUX_F6MUX : STD_LOGIC; 
  signal Mmux_PCM1MUX_net26 : STD_LOGIC; 
  signal N12354 : STD_LOGIC; 
  signal N12352 : STD_LOGIC; 
  signal CHOICE369_F5MUX : STD_LOGIC; 
  signal N12359 : STD_LOGIC; 
  signal N12357 : STD_LOGIC; 
  signal CHOICE585_F5MUX : STD_LOGIC; 
  signal CTX_WP_0_FFX_RST : STD_LOGIC; 
  signal CTX_WP_0_FFY_RST : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CTX_WP_0_CYMUXG : STD_LOGIC; 
  signal CTX_WP_0_GROM : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal CTX_WP_0_LOGIC_ZERO : STD_LOGIC; 
  signal CTX_WP_2_FFY_RST : STD_LOGIC; 
  signal CTX_WP_2_FFX_RST : STD_LOGIC; 
  signal CTX_WP_2_LOGIC_ZERO : STD_LOGIC; 
  signal CTX_WP_2_FROM : STD_LOGIC; 
  signal CTX_WP_3_rt : STD_LOGIC; 
  signal CTX_WP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal CTX_WP_2_CYINIT : STD_LOGIC; 
  signal CTX_RP_0_FFY_RST : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CTX_RP_0_CYMUXG : STD_LOGIC; 
  signal CTX_RP_0_GROM : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal CTX_RP_0_LOGIC_ZERO : STD_LOGIC; 
  signal CTX_RP_2_FFY_RST : STD_LOGIC; 
  signal CTX_RP_2_LOGIC_ZERO : STD_LOGIC; 
  signal CTX_RP_2_FROM : STD_LOGIC; 
  signal CTX_RP_3_rt : STD_LOGIC; 
  signal CTX_RP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal CTX_RP_2_CYINIT : STD_LOGIC; 
  signal Mcompar_n0075_inst_lut4_3 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_8_CYMUXG : STD_LOGIC; 
  signal Mcompar_n0075_inst_lut4_4 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_7 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_8_LOGIC_ZERO : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_8_LOGIC_ONE : STD_LOGIC; 
  signal Mcompar_n0075_inst_lut4_5 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_10_CYMUXG : STD_LOGIC; 
  signal Mcompar_n0075_inst_lut4_6 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_9 : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_10_LOGIC_ZERO : STD_LOGIC; 
  signal Mcompar_n0075_inst_cy_10_CYINIT : STD_LOGIC; 
  signal Q_n0075_LOGIC_ZERO : STD_LOGIC; 
  signal Mcompar_n0075_inst_lut4_7 : STD_LOGIC; 
  signal Q_n0075_CYMUXF : STD_LOGIC; 
  signal Q_n0075_CYINIT : STD_LOGIC; 
  signal Mcompar_n0108_inst_lut4_01_O : STD_LOGIC; 
  signal Mcompar_n0108_inst_cy_5_CYMUXG : STD_LOGIC; 
  signal Mcompar_n0108_inst_lut4_11_O : STD_LOGIC; 
  signal Mcompar_n0108_inst_cy_4 : STD_LOGIC; 
  signal Mcompar_n0108_inst_cy_5_LOGIC_ONE : STD_LOGIC; 
  signal Mcompar_n0108_inst_cy_5_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0108_LOGIC_ONE : STD_LOGIC; 
  signal Mcompar_n0108_inst_lut4_21_O : STD_LOGIC; 
  signal Q_n0108_CYMUXF : STD_LOGIC; 
  signal Q_n0108_CYINIT : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_lut2_15 : STD_LOGIC; 
  signal PCM1WP_0_CYMUXG : STD_LOGIC; 
  signal PCM1WP_0_GROM : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_33 : STD_LOGIC; 
  signal PCM1WP_0_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1WP_2_FROM : STD_LOGIC; 
  signal PCM1WP_2_CYMUXG : STD_LOGIC; 
  signal PCM1WP_2_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1WP_2_GROM : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_35 : STD_LOGIC; 
  signal PCM1WP_2_CYINIT : STD_LOGIC; 
  signal PCM1WP_4_FROM : STD_LOGIC; 
  signal PCM1WP_4_CYMUXG : STD_LOGIC; 
  signal PCM1WP_4_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1WP_4_GROM : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_37 : STD_LOGIC; 
  signal PCM1WP_4_CYINIT : STD_LOGIC; 
  signal PCM1WP_6_FROM : STD_LOGIC; 
  signal PCM1WP_6_CYMUXG : STD_LOGIC; 
  signal PCM1WP_6_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1WP_6_GROM : STD_LOGIC; 
  signal PCM1WP_Madd_n0000_inst_cy_39 : STD_LOGIC; 
  signal PCM1WP_6_CYINIT : STD_LOGIC; 
  signal PCM1WP_8_rt : STD_LOGIC; 
  signal PCM1WP_8_CYINIT : STD_LOGIC; 
  signal FCE_WP_0_FFX_RST : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal FCE_WP_0_CYMUXG : STD_LOGIC; 
  signal FCE_WP_0_GROM : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal FCE_WP_0_LOGIC_ZERO : STD_LOGIC; 
  signal FCE_WP_2_FFX_RST : STD_LOGIC; 
  signal FCE_WP_2_FFY_RST : STD_LOGIC; 
  signal FCE_WP_2_LOGIC_ZERO : STD_LOGIC; 
  signal FCE_WP_2_FROM : STD_LOGIC; 
  signal FCE_WP_3_rt : STD_LOGIC; 
  signal FCE_WP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal FCE_WP_2_CYINIT : STD_LOGIC; 
  signal CRX_WP_0_FFY_RST : STD_LOGIC; 
  signal CRX_WP_0_FFX_RST : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CRX_WP_0_CYMUXG : STD_LOGIC; 
  signal CRX_WP_0_GROM : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal CRX_WP_0_LOGIC_ZERO : STD_LOGIC; 
  signal CRX_WP_2_FFY_RST : STD_LOGIC; 
  signal CRX_WP_2_FFX_RST : STD_LOGIC; 
  signal CRX_WP_2_LOGIC_ZERO : STD_LOGIC; 
  signal CRX_WP_2_FROM : STD_LOGIC; 
  signal CRX_WP_3_rt : STD_LOGIC; 
  signal CRX_WP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal CRX_WP_2_CYINIT : STD_LOGIC; 
  signal FCE_RP_0_FFX_RST : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal FCE_RP_0_CYMUXG : STD_LOGIC; 
  signal FCE_RP_0_XORG : STD_LOGIC; 
  signal FCE_RP_0_GROM : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal FCE_RP_0_LOGIC_ZERO : STD_LOGIC; 
  signal FCE_RP_2_FFX_RST : STD_LOGIC; 
  signal FCE_RP_2_FFY_RST : STD_LOGIC; 
  signal FCE_RP_2_LOGIC_ZERO : STD_LOGIC; 
  signal FCE_RP_2_FROM : STD_LOGIC; 
  signal FCE_RP_3_rt : STD_LOGIC; 
  signal FCE_RP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal FCE_RP_2_CYINIT : STD_LOGIC; 
  signal CRX_RP_0_FFY_RST : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal CRX_RP_0_CYMUXG : STD_LOGIC; 
  signal CRX_RP_0_GROM : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal CRX_RP_0_LOGIC_ZERO : STD_LOGIC; 
  signal CRX_RP_2_FFY_RST : STD_LOGIC; 
  signal CRX_RP_2_LOGIC_ZERO : STD_LOGIC; 
  signal CRX_RP_2_FROM : STD_LOGIC; 
  signal CRX_RP_3_rt : STD_LOGIC; 
  signal CRX_RP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal CRX_RP_2_CYINIT : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_lut2_15 : STD_LOGIC; 
  signal PCM1RP_0_CYMUXG : STD_LOGIC; 
  signal PCM1RP_0_GROM : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_33 : STD_LOGIC; 
  signal PCM1RP_0_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1RP_2_FROM : STD_LOGIC; 
  signal PCM1RP_2_CYMUXG : STD_LOGIC; 
  signal PCM1RP_2_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1RP_2_GROM : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_35 : STD_LOGIC; 
  signal PCM1RP_2_CYINIT : STD_LOGIC; 
  signal PCM1RP_4_FROM : STD_LOGIC; 
  signal PCM1RP_4_CYMUXG : STD_LOGIC; 
  signal PCM1RP_4_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1RP_4_GROM : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_37 : STD_LOGIC; 
  signal PCM1RP_4_CYINIT : STD_LOGIC; 
  signal PCM1RP_6_FROM : STD_LOGIC; 
  signal PCM1RP_6_CYMUXG : STD_LOGIC; 
  signal PCM1RP_6_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1RP_6_GROM : STD_LOGIC; 
  signal PCM1RP_Madd_n0000_inst_cy_39 : STD_LOGIC; 
  signal PCM1RP_6_CYINIT : STD_LOGIC; 
  signal PCM1RP_8_rt : STD_LOGIC; 
  signal PCM1RP_8_CYINIT : STD_LOGIC; 
  signal Madd_n0121_inst_lut2_0 : STD_LOGIC; 
  signal Q_n0121_1_CYMUXG : STD_LOGIC; 
  signal Q_n0121_1_XORG : STD_LOGIC; 
  signal Q_n0121_1_GROM : STD_LOGIC; 
  signal Madd_n0121_inst_cy_0 : STD_LOGIC; 
  signal Q_n0121_1_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0121_2_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0121_2_FROM : STD_LOGIC; 
  signal Q_n0121_2_XORF : STD_LOGIC; 
  signal Q_n0121_2_XORG : STD_LOGIC; 
  signal MCTX_CNT_3_rt : STD_LOGIC; 
  signal Madd_n0121_inst_cy_2 : STD_LOGIC; 
  signal Q_n0121_2_CYINIT : STD_LOGIC; 
  signal SYNC4I_rt : STD_LOGIC; 
  signal TS_CNT_0_CYMUXG : STD_LOGIC; 
  signal TS_CNT_inst_lut3_01_O : STD_LOGIC; 
  signal TS_CNT_inst_cy_23 : STD_LOGIC; 
  signal TS_CNT_0_LOGIC_ZERO : STD_LOGIC; 
  signal TS_CNT_inst_sum_15 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_11_O : STD_LOGIC; 
  signal TS_CNT_inst_sum_16 : STD_LOGIC; 
  signal TS_CNT_1_CYMUXG : STD_LOGIC; 
  signal TS_CNT_1_LOGIC_ZERO : STD_LOGIC; 
  signal TS_CNT_inst_lut3_21_O : STD_LOGIC; 
  signal TS_CNT_inst_cy_25 : STD_LOGIC; 
  signal TS_CNT_1_CYINIT : STD_LOGIC; 
  signal TS_CNT_inst_sum_17 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_31_O : STD_LOGIC; 
  signal TS_CNT_inst_sum_18 : STD_LOGIC; 
  signal TS_CNT_3_CYMUXG : STD_LOGIC; 
  signal TS_CNT_3_LOGIC_ZERO : STD_LOGIC; 
  signal TS_CNT_inst_lut3_41_O : STD_LOGIC; 
  signal TS_CNT_inst_cy_27 : STD_LOGIC; 
  signal TS_CNT_3_CYINIT : STD_LOGIC; 
  signal TS_CNT_inst_sum_19 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_51_O : STD_LOGIC; 
  signal TS_CNT_inst_sum_20 : STD_LOGIC; 
  signal TS_CNT_5_CYMUXG : STD_LOGIC; 
  signal TS_CNT_5_LOGIC_ZERO : STD_LOGIC; 
  signal TS_CNT_inst_lut3_61_O : STD_LOGIC; 
  signal TS_CNT_inst_cy_29 : STD_LOGIC; 
  signal TS_CNT_5_CYINIT : STD_LOGIC; 
  signal TS_CNT_inst_sum_21 : STD_LOGIC; 
  signal TS_CNT_7_LOGIC_ZERO : STD_LOGIC; 
  signal TS_CNT_inst_lut3_71_O : STD_LOGIC; 
  signal TS_CNT_inst_sum_22 : STD_LOGIC; 
  signal TS_CNT_inst_lut3_81_O : STD_LOGIC; 
  signal TS_CNT_inst_cy_31 : STD_LOGIC; 
  signal TS_CNT_7_CYINIT : STD_LOGIC; 
  signal TS_CNT_inst_sum_23 : STD_LOGIC; 
  signal Madd_n0067_inst_lut2_4 : STD_LOGIC; 
  signal Q_n0067_1_CYMUXG : STD_LOGIC; 
  signal Q_n0067_1_XORG : STD_LOGIC; 
  signal Q_n0067_1_GROM : STD_LOGIC; 
  signal Madd_n0067_inst_cy_12 : STD_LOGIC; 
  signal Q_n0067_1_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0067_2_FROM : STD_LOGIC; 
  signal Q_n0067_2_XORF : STD_LOGIC; 
  signal Q_n0067_2_CYMUXG : STD_LOGIC; 
  signal Q_n0067_2_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0067_2_XORG : STD_LOGIC; 
  signal Q_n0067_2_GROM : STD_LOGIC; 
  signal Madd_n0067_inst_cy_14 : STD_LOGIC; 
  signal Q_n0067_2_CYINIT : STD_LOGIC; 
  signal Q_n0067_4_FROM : STD_LOGIC; 
  signal Q_n0067_4_XORF : STD_LOGIC; 
  signal Q_n0067_4_CYMUXG : STD_LOGIC; 
  signal Q_n0067_4_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0067_4_XORG : STD_LOGIC; 
  signal Q_n0067_4_GROM : STD_LOGIC; 
  signal Madd_n0067_inst_cy_16 : STD_LOGIC; 
  signal Q_n0067_4_CYINIT : STD_LOGIC; 
  signal Q_n0067_6_FROM : STD_LOGIC; 
  signal Q_n0067_6_XORF : STD_LOGIC; 
  signal Q_n0067_6_CYMUXG : STD_LOGIC; 
  signal Q_n0067_6_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0067_6_XORG : STD_LOGIC; 
  signal Q_n0067_6_GROM : STD_LOGIC; 
  signal Madd_n0067_inst_cy_18 : STD_LOGIC; 
  signal Q_n0067_6_CYINIT : STD_LOGIC; 
  signal Q_n0067_8_FROM : STD_LOGIC; 
  signal Q_n0067_8_XORF : STD_LOGIC; 
  signal Q_n0067_8_CYMUXG : STD_LOGIC; 
  signal Q_n0067_8_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0067_8_XORG : STD_LOGIC; 
  signal Q_n0067_8_GROM : STD_LOGIC; 
  signal Madd_n0067_inst_cy_20 : STD_LOGIC; 
  signal Q_n0067_8_CYINIT : STD_LOGIC; 
  signal CTX_CNT_10_rt : STD_LOGIC; 
  signal Q_n0067_10_XORF : STD_LOGIC; 
  signal Q_n0067_10_CYINIT : STD_LOGIC; 
  signal Madd_n0068_inst_lut2_4 : STD_LOGIC; 
  signal Q_n0068_1_CYMUXG : STD_LOGIC; 
  signal Q_n0068_1_XORG : STD_LOGIC; 
  signal Q_n0068_1_GROM : STD_LOGIC; 
  signal Madd_n0068_inst_cy_12 : STD_LOGIC; 
  signal Q_n0068_1_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0068_2_FROM : STD_LOGIC; 
  signal Q_n0068_2_XORF : STD_LOGIC; 
  signal Q_n0068_2_CYMUXG : STD_LOGIC; 
  signal Q_n0068_2_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0068_2_XORG : STD_LOGIC; 
  signal Q_n0068_2_GROM : STD_LOGIC; 
  signal Madd_n0068_inst_cy_14 : STD_LOGIC; 
  signal Q_n0068_2_CYINIT : STD_LOGIC; 
  signal Q_n0068_4_FROM : STD_LOGIC; 
  signal Q_n0068_4_XORF : STD_LOGIC; 
  signal Q_n0068_4_CYMUXG : STD_LOGIC; 
  signal Q_n0068_4_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0068_4_XORG : STD_LOGIC; 
  signal Q_n0068_4_GROM : STD_LOGIC; 
  signal Madd_n0068_inst_cy_16 : STD_LOGIC; 
  signal Q_n0068_4_CYINIT : STD_LOGIC; 
  signal Q_n0068_6_FROM : STD_LOGIC; 
  signal Q_n0068_6_XORF : STD_LOGIC; 
  signal Q_n0068_6_CYMUXG : STD_LOGIC; 
  signal Q_n0068_6_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0068_6_XORG : STD_LOGIC; 
  signal Q_n0068_6_GROM : STD_LOGIC; 
  signal Madd_n0068_inst_cy_18 : STD_LOGIC; 
  signal Q_n0068_6_CYINIT : STD_LOGIC; 
  signal Q_n0068_8_FROM : STD_LOGIC; 
  signal Q_n0068_8_XORF : STD_LOGIC; 
  signal Q_n0068_8_CYMUXG : STD_LOGIC; 
  signal Q_n0068_8_LOGIC_ZERO : STD_LOGIC; 
  signal Q_n0068_8_XORG : STD_LOGIC; 
  signal Q_n0068_8_GROM : STD_LOGIC; 
  signal Madd_n0068_inst_cy_20 : STD_LOGIC; 
  signal Q_n0068_8_CYINIT : STD_LOGIC; 
  signal CRX_CNT_10_rt : STD_LOGIC; 
  signal Q_n0068_10_XORF : STD_LOGIC; 
  signal Q_n0068_10_CYINIT : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_lut2_4 : STD_LOGIC; 
  signal CNT_0_CYMUXG : STD_LOGIC; 
  signal CNT_0_GROM : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_12 : STD_LOGIC; 
  signal CNT_0_LOGIC_ZERO : STD_LOGIC; 
  signal CNT_0_CKMUXNOT : STD_LOGIC; 
  signal CNT_2_FROM : STD_LOGIC; 
  signal CNT_2_CYMUXG : STD_LOGIC; 
  signal CNT_2_LOGIC_ZERO : STD_LOGIC; 
  signal CNT_2_GROM : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_14 : STD_LOGIC; 
  signal CNT_2_CYINIT : STD_LOGIC; 
  signal CNT_2_CKMUXNOT : STD_LOGIC; 
  signal CNT_4_FROM : STD_LOGIC; 
  signal CNT_4_CYMUXG : STD_LOGIC; 
  signal CNT_4_LOGIC_ZERO : STD_LOGIC; 
  signal CNT_4_GROM : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_16 : STD_LOGIC; 
  signal CNT_4_CYINIT : STD_LOGIC; 
  signal CNT_4_CKMUXNOT : STD_LOGIC; 
  signal CNT_6_FROM : STD_LOGIC; 
  signal CNT_6_CYMUXG : STD_LOGIC; 
  signal CNT_6_LOGIC_ZERO : STD_LOGIC; 
  signal CNT_6_GROM : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_18 : STD_LOGIC; 
  signal CNT_6_CYINIT : STD_LOGIC; 
  signal CNT_6_CKMUXNOT : STD_LOGIC; 
  signal CNT_8_FROM : STD_LOGIC; 
  signal CNT_8_CYMUXG : STD_LOGIC; 
  signal CNT_8_LOGIC_ZERO : STD_LOGIC; 
  signal CNT_8_GROM : STD_LOGIC; 
  signal CNT_Madd_n0000_inst_cy_20 : STD_LOGIC; 
  signal CNT_8_CYINIT : STD_LOGIC; 
  signal CNT_8_CKMUXNOT : STD_LOGIC; 
  signal CNT_10_rt : STD_LOGIC; 
  signal CNT_10_CKMUXNOT : STD_LOGIC; 
  signal CNT_10_CYINIT : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal MCTX_WP_0_CYMUXG : STD_LOGIC; 
  signal MCTX_WP_0_GROM : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal MCTX_WP_0_LOGIC_ZERO : STD_LOGIC; 
  signal MCTX_WP_2_LOGIC_ZERO : STD_LOGIC; 
  signal MCTX_WP_2_FROM : STD_LOGIC; 
  signal MCTX_WP_3_rt : STD_LOGIC; 
  signal MCTX_WP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal MCTX_WP_2_CYINIT : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal EIRQ_WP_0_CYMUXG : STD_LOGIC; 
  signal EIRQ_WP_0_GROM : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal EIRQ_WP_0_LOGIC_ZERO : STD_LOGIC; 
  signal EIRQ_WP_2_LOGIC_ZERO : STD_LOGIC; 
  signal EIRQ_WP_2_FROM : STD_LOGIC; 
  signal EIRQ_WP_3_rt : STD_LOGIC; 
  signal EIRQ_WP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal EIRQ_WP_2_CYINIT : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal MCTX_RP_0_CYMUXG : STD_LOGIC; 
  signal MCTX_RP_0_GROM : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal MCTX_RP_0_LOGIC_ZERO : STD_LOGIC; 
  signal MCTX_RP_2_LOGIC_ZERO : STD_LOGIC; 
  signal MCTX_RP_2_FROM : STD_LOGIC; 
  signal MCTX_RP_3_rt : STD_LOGIC; 
  signal MCTX_RP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal MCTX_RP_2_CYINIT : STD_LOGIC; 
  signal FCD_IFF_RST : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_lut2_0 : STD_LOGIC; 
  signal EIRQ_RP_0_CYMUXG : STD_LOGIC; 
  signal EIRQ_RP_0_GROM : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_cy_0 : STD_LOGIC; 
  signal EIRQ_RP_0_LOGIC_ZERO : STD_LOGIC; 
  signal EIRQ_RP_2_LOGIC_ZERO : STD_LOGIC; 
  signal EIRQ_RP_2_FROM : STD_LOGIC; 
  signal EIRQ_RP_3_rt : STD_LOGIC; 
  signal EIRQ_RP_Madd_n0000_inst_cy_2 : STD_LOGIC; 
  signal EIRQ_RP_2_CYINIT : STD_LOGIC; 
  signal N8209_FROM : STD_LOGIC; 
  signal N8209_GROM : STD_LOGIC; 
  signal N8214_FROM : STD_LOGIC; 
  signal N8214_GROM : STD_LOGIC; 
  signal N8104_FROM : STD_LOGIC; 
  signal N8104_GROM : STD_LOGIC; 
  signal Q_n0086_FROM : STD_LOGIC; 
  signal Q_n0086_GROM : STD_LOGIC; 
  signal CHOICE496_FROM : STD_LOGIC; 
  signal CHOICE496_GROM : STD_LOGIC; 
  signal CTX_CNT_10_FROM : STD_LOGIC; 
  signal Q_n0039_10_1_O : STD_LOGIC; 
  signal PCM1I_1_GROM : STD_LOGIC; 
  signal PCM1I_1_CKMUXNOT : STD_LOGIC; 
  signal CTX_CNT_1_FFY_RST : STD_LOGIC; 
  signal Q_n0039_1_1_O : STD_LOGIC; 
  signal Q_n0039_0_1_O : STD_LOGIC; 
  signal Q_n0039_3_1_O : STD_LOGIC; 
  signal Q_n0039_2_1_O : STD_LOGIC; 
  signal Q_n0039_5_1_O : STD_LOGIC; 
  signal Q_n0039_4_1_O : STD_LOGIC; 
  signal Q_n0039_7_1_O : STD_LOGIC; 
  signal Q_n0039_6_1_O : STD_LOGIC; 
  signal CTX_CNT_9_FFX_RST : STD_LOGIC; 
  signal Q_n0039_9_1_O : STD_LOGIC; 
  signal Q_n0039_8_1_O : STD_LOGIC; 
  signal CHOICE503_FROM : STD_LOGIC; 
  signal CHOICE503_GROM : STD_LOGIC; 
  signal Ker7695_SW0_O_FROM : STD_LOGIC; 
  signal Ker7695_SW0_O_GROM : STD_LOGIC; 
  signal MFCD_FFX_RST : STD_LOGIC; 
  signal MFCD_FFY_RST : STD_LOGIC; 
  signal Q_n0060 : STD_LOGIC; 
  signal Q_n0059 : STD_LOGIC; 
  signal MFCD_CEMUXNOT : STD_LOGIC; 
  signal CRX_CNT_10_FFX_RST : STD_LOGIC; 
  signal CRX_CNT_10_FFY_RST : STD_LOGIC; 
  signal CRX_CNT_3_FFX_RST : STD_LOGIC; 
  signal CRX_CNT_3_FFY_RST : STD_LOGIC; 
  signal CRX_CNT_5_FFY_RST : STD_LOGIC; 
  signal CRX_CNT_5_FFX_RST : STD_LOGIC; 
  signal CRX_CNT_7_FFY_RST : STD_LOGIC; 
  signal Q_n0048 : STD_LOGIC; 
  signal Q_n0047 : STD_LOGIC; 
  signal LED_Y_CEMUXNOT : STD_LOGIC; 
  signal MCTXO_5_FROM : STD_LOGIC; 
  signal PCM1TS_1_CEMUXNOT : STD_LOGIC; 
  signal PCM1SEL_2_CEMUXNOT : STD_LOGIC; 
  signal CRXI_1_LOGIC_ZERO : STD_LOGIC; 
  signal CRXI_3_FFY_RST : STD_LOGIC; 
  signal CRXI_3_FFY_SET : STD_LOGIC; 
  signal CRXI_3_LOGIC_ZERO : STD_LOGIC; 
  signal CRXI_5_LOGIC_ZERO : STD_LOGIC; 
  signal CRXI_7_LOGIC_ZERO : STD_LOGIC; 
  signal CTXI_1_LOGIC_ZERO : STD_LOGIC; 
  signal CTXI_3_FFY_RST : STD_LOGIC; 
  signal CTXI_3_FFY_SET : STD_LOGIC; 
  signal CTXI_3_LOGIC_ZERO : STD_LOGIC; 
  signal CTXI_5_LOGIC_ZERO : STD_LOGIC; 
  signal CTXI_7_LOGIC_ZERO : STD_LOGIC; 
  signal PCM1TS_3_CEMUXNOT : STD_LOGIC; 
  signal PCM1TS_5_CEMUXNOT : STD_LOGIC; 
  signal CHOICE547_FROM : STD_LOGIC; 
  signal CHOICE547_GROM : STD_LOGIC; 
  signal CHOICE557_FROM : STD_LOGIC; 
  signal CHOICE557_GROM : STD_LOGIC; 
  signal Q_n0271_FROM : STD_LOGIC; 
  signal Q_n0271_GROM : STD_LOGIC; 
  signal CHOICE345_FROM : STD_LOGIC; 
  signal CHOICE345_GROM : STD_LOGIC; 
  signal Q_n0280_FROM : STD_LOGIC; 
  signal Q_n0280_GROM : STD_LOGIC; 
  signal CHOICE344_FROM : STD_LOGIC; 
  signal CHOICE344_GROM : STD_LOGIC; 
  signal PCM1TS_0_FROM : STD_LOGIC; 
  signal PCM1TS_0_CEMUXNOT : STD_LOGIC; 
  signal RESET_IBUF_1_FROM : STD_LOGIC; 
  signal RESET_IBUF_1_GROM : STD_LOGIC; 
  signal Q_n0215_FROM : STD_LOGIC; 
  signal Q_n0215_GROM : STD_LOGIC; 
  signal SYNC4_IFF_RST : STD_LOGIC; 
  signal CHOICE482_FROM : STD_LOGIC; 
  signal CHOICE482_GROM : STD_LOGIC; 
  signal LED_2_OBUF_FROM : STD_LOGIC; 
  signal LED_2_OBUF_GROM : STD_LOGIC; 
  signal MCTXO_6_FROM : STD_LOGIC; 
  signal CHOICE487_FROM : STD_LOGIC; 
  signal CHOICE487_GROM : STD_LOGIC; 
  signal Q_n0282_FROM : STD_LOGIC; 
  signal Q_n0282_GROM : STD_LOGIC; 
  signal CHOICE171_FROM : STD_LOGIC; 
  signal CHOICE171_GROM : STD_LOGIC; 
  signal N10193_FROM : STD_LOGIC; 
  signal N10193_GROM : STD_LOGIC; 
  signal PCM1SEL_0_FROM : STD_LOGIC; 
  signal PCM1SEL_0_CEMUXNOT : STD_LOGIC; 
  signal Q_n0187_GROM : STD_LOGIC; 
  signal SENSEO_LOGIC_ONE : STD_LOGIC; 
  signal SENSEO_DPROUT : STD_LOGIC; 
  signal SENSEO_BYMUXNOT : STD_LOGIC; 
  signal SYNC4_OFF_RST : STD_LOGIC; 
  signal N9545_FROM : STD_LOGIC; 
  signal N9545_GROM : STD_LOGIC; 
  signal N8117_FROM : STD_LOGIC; 
  signal N8117_GROM : STD_LOGIC; 
  signal N8572_GROM : STD_LOGIC; 
  signal CHOICE379_FROM : STD_LOGIC; 
  signal CHOICE379_GROM : STD_LOGIC; 
  signal LED_R_FROM : STD_LOGIC; 
  signal Q_n0049 : STD_LOGIC; 
  signal LED_R_CEMUXNOT : STD_LOGIC; 
  signal N8174_FROM : STD_LOGIC; 
  signal N8174_GROM : STD_LOGIC; 
  signal N8095_FROM : STD_LOGIC; 
  signal N8095_GROM : STD_LOGIC; 
  signal CHOICE600_FROM : STD_LOGIC; 
  signal CHOICE600_GROM : STD_LOGIC; 
  signal N12261_FROM : STD_LOGIC; 
  signal N12261_GROM : STD_LOGIC; 
  signal N12280_FROM : STD_LOGIC; 
  signal N12280_GROM : STD_LOGIC; 
  signal N12347_FROM : STD_LOGIC; 
  signal N12347_GROM : STD_LOGIC; 
  signal N8201_FROM : STD_LOGIC; 
  signal N8201_GROM : STD_LOGIC; 
  signal CRX_CNT_1_FROM : STD_LOGIC; 
  signal MCTX_CNT_1_FROM : STD_LOGIC; 
  signal N9591_FROM : STD_LOGIC; 
  signal N9591_GROM : STD_LOGIC; 
  signal N7896_FROM : STD_LOGIC; 
  signal N7896_GROM : STD_LOGIC; 
  signal N10263_FROM : STD_LOGIC; 
  signal N10263_GROM : STD_LOGIC; 
  signal EIRQI_Once_BYMUXNOT : STD_LOGIC; 
  signal N12341_FROM : STD_LOGIC; 
  signal N12341_GROM : STD_LOGIC; 
  signal CTX_OFF_SET : STD_LOGIC; 
  signal N12330_FROM : STD_LOGIC; 
  signal N12330_GROM : STD_LOGIC; 
  signal PCM1I_3_CKMUXNOT : STD_LOGIC; 
  signal PCM1I_5_CKMUXNOT : STD_LOGIC; 
  signal PCM1I_7_CKMUXNOT : STD_LOGIC; 
  signal FCDI_4_FFY_RST : STD_LOGIC; 
  signal FCDI_7_FFY_RST : STD_LOGIC; 
  signal CHOICE398_GROM : STD_LOGIC; 
  signal CHOICE409_GROM : STD_LOGIC; 
  signal MCTXE_FROM : STD_LOGIC; 
  signal MCTXE_GROM : STD_LOGIC; 
  signal IEN_FC_FROM : STD_LOGIC; 
  signal Q_n0053 : STD_LOGIC; 
  signal IEN_FC_CEMUXNOT : STD_LOGIC; 
  signal CHOICE122_GROM : STD_LOGIC; 
  signal FCEO_0_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_0_DPROUT : STD_LOGIC; 
  signal CHOICE133_FROM : STD_LOGIC; 
  signal CHOICE133_GROM : STD_LOGIC; 
  signal FCEO_1_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_1_DPROUT : STD_LOGIC; 
  signal FCEO_2_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_2_DPROUT : STD_LOGIC; 
  signal FCEO_3_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_3_DPROUT : STD_LOGIC; 
  signal FCEO_4_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_4_DPROUT : STD_LOGIC; 
  signal CHOICE459_FROM : STD_LOGIC; 
  signal CHOICE459_GROM : STD_LOGIC; 
  signal Q_n0289_16_DPROUT : STD_LOGIC; 
  signal Q_n0289_17_DPROUT : STD_LOGIC; 
  signal CHOICE312_FROM : STD_LOGIC; 
  signal CHOICE312_GROM : STD_LOGIC; 
  signal CRXO_0_DPROUT : STD_LOGIC; 
  signal CRXO_1_DPROUT : STD_LOGIC; 
  signal CRXO_2_DPROUT : STD_LOGIC; 
  signal CRXO_3_DPROUT : STD_LOGIC; 
  signal CRXO_4_DPROUT : STD_LOGIC; 
  signal CRXO_5_DPROUT : STD_LOGIC; 
  signal CRXO_6_DPROUT : STD_LOGIC; 
  signal CRXO_7_DPROUT : STD_LOGIC; 
  signal N8453_FROM : STD_LOGIC; 
  signal N8453_GROM : STD_LOGIC; 
  signal N12285_FROM : STD_LOGIC; 
  signal N12285_GROM : STD_LOGIC; 
  signal IEN_EIRQ_FROM : STD_LOGIC; 
  signal Q_n0054 : STD_LOGIC; 
  signal IEN_EIRQ_CEMUXNOT : STD_LOGIC; 
  signal IEN_CRX_FROM : STD_LOGIC; 
  signal Q_n0056 : STD_LOGIC; 
  signal IEN_CRX_CEMUXNOT : STD_LOGIC; 
  signal IEN_CTXE_FROM : STD_LOGIC; 
  signal Q_n0058 : STD_LOGIC; 
  signal IEN_CTXE_CEMUXNOT : STD_LOGIC; 
  signal N12253_FROM : STD_LOGIC; 
  signal N12253_GROM : STD_LOGIC; 
  signal CHOICE384_GROM : STD_LOGIC; 
  signal N8480_GROM : STD_LOGIC; 
  signal CHOICE537_FROM : STD_LOGIC; 
  signal CHOICE537_GROM : STD_LOGIC; 
  signal N8536_FROM : STD_LOGIC; 
  signal N8536_GROM : STD_LOGIC; 
  signal FCEO_5_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_5_DPROUT : STD_LOGIC; 
  signal FCEO_6_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_6_DPROUT : STD_LOGIC; 
  signal IEN_CTX_FROM : STD_LOGIC; 
  signal Q_n0055 : STD_LOGIC; 
  signal IEN_CTX_CEMUXNOT : STD_LOGIC; 
  signal FCEO_7_LOGIC_ONE : STD_LOGIC; 
  signal FCEO_7_DPROUT : STD_LOGIC; 
  signal CHOICE434_FROM : STD_LOGIC; 
  signal CHOICE434_GROM : STD_LOGIC; 
  signal CHOICE357_FROM : STD_LOGIC; 
  signal CHOICE357_GROM : STD_LOGIC; 
  signal CTXO_0_DPROUT : STD_LOGIC; 
  signal CTXO_1_DPROUT : STD_LOGIC; 
  signal CTXO_2_DPROUT : STD_LOGIC; 
  signal IEN_PCM1_FROM : STD_LOGIC; 
  signal Q_n0057 : STD_LOGIC; 
  signal IEN_PCM1_CEMUXNOT : STD_LOGIC; 
  signal CTXO_3_DPROUT : STD_LOGIC; 
  signal CTXO_4_DPROUT : STD_LOGIC; 
  signal CTXO_5_DPROUT : STD_LOGIC; 
  signal CTXO_6_DPROUT : STD_LOGIC; 
  signal CTXO_7_DPROUT : STD_LOGIC; 
  signal CHOICE559_FROM : STD_LOGIC; 
  signal CHOICE559_GROM : STD_LOGIC; 
  signal CHOICE319_FROM : STD_LOGIC; 
  signal CHOICE319_GROM : STD_LOGIC; 
  signal N12257_FROM : STD_LOGIC; 
  signal N12257_GROM : STD_LOGIC; 
  signal CHOICE510_FROM : STD_LOGIC; 
  signal CHOICE510_GROM : STD_LOGIC; 
  signal CHOICE373_FROM : STD_LOGIC; 
  signal CHOICE373_GROM : STD_LOGIC; 
  signal Q_n0025_GROM : STD_LOGIC; 
  signal MFCE_FROM : STD_LOGIC; 
  signal Q_n0061 : STD_LOGIC; 
  signal MFCE_CEMUXNOT : STD_LOGIC; 
  signal CHOICE451_FROM : STD_LOGIC; 
  signal CHOICE451_GROM : STD_LOGIC; 
  signal CHOICE99_GROM : STD_LOGIC; 
  signal CHOICE110_FROM : STD_LOGIC; 
  signal CHOICE110_GROM : STD_LOGIC; 
  signal CHOICE460_FROM : STD_LOGIC; 
  signal CHOICE460_GROM : STD_LOGIC; 
  signal Q_n0276_GROM : STD_LOGIC; 
  signal CHOICE468_FROM : STD_LOGIC; 
  signal CHOICE468_GROM : STD_LOGIC; 
  signal CHOICE437_FROM : STD_LOGIC; 
  signal CHOICE437_GROM : STD_LOGIC; 
  signal CHOICE534_FROM : STD_LOGIC; 
  signal CHOICE534_GROM : STD_LOGIC; 
  signal CHOICE151_FROM : STD_LOGIC; 
  signal CHOICE151_GROM : STD_LOGIC; 
  signal CHOICE175_FROM : STD_LOGIC; 
  signal CHOICE175_GROM : STD_LOGIC; 
  signal CHOICE76_GROM : STD_LOGIC; 
  signal N8123_FROM : STD_LOGIC; 
  signal N8123_GROM : STD_LOGIC; 
  signal CHOICE87_GROM : STD_LOGIC; 
  signal EIRQO_DPROUT : STD_LOGIC; 
  signal CHOICE53_GROM : STD_LOGIC; 
  signal CHOICE64_GROM : STD_LOGIC; 
  signal Q_n0074_FROM : STD_LOGIC; 
  signal Q_n0074_GROM : STD_LOGIC; 
  signal Q_n0289_10_DPROUT : STD_LOGIC; 
  signal Q_n0289_11_DPROUT : STD_LOGIC; 
  signal Q_n0289_12_DPROUT : STD_LOGIC; 
  signal Q_n0289_13_DPROUT : STD_LOGIC; 
  signal Q_n0289_14_DPROUT : STD_LOGIC; 
  signal Q_n0289_15_DPROUT : STD_LOGIC; 
  signal D_0_IFF_RST : STD_LOGIC; 
  signal PCM1I_1_FFX_RST : STD_LOGIC; 
  signal CTX_CNT_1_FFX_RST : STD_LOGIC; 
  signal CTX_CNT_3_FFX_RST : STD_LOGIC; 
  signal CTX_CNT_3_FFY_RST : STD_LOGIC; 
  signal CTX_CNT_5_FFX_RST : STD_LOGIC; 
  signal CTX_CNT_5_FFY_RST : STD_LOGIC; 
  signal CTX_CNT_7_FFX_RST : STD_LOGIC; 
  signal CTX_CNT_7_FFY_RST : STD_LOGIC; 
  signal CTX_CNT_9_FFY_RST : STD_LOGIC; 
  signal TS_CNT_1_FFX_RST : STD_LOGIC; 
  signal TS_CNT_3_FFY_RST : STD_LOGIC; 
  signal TS_CNT_3_FFX_RST : STD_LOGIC; 
  signal TS_CNT_5_FFY_RST : STD_LOGIC; 
  signal TS_CNT_7_FFY_RST : STD_LOGIC; 
  signal PCM1WP_0_FFY_RST : STD_LOGIC; 
  signal PCM1WP_4_FFY_RST : STD_LOGIC; 
  signal PCM1WP_0_FFX_RST : STD_LOGIC; 
  signal PCM1WP_2_FFY_RST : STD_LOGIC; 
  signal PCM1WP_6_FFY_RST : STD_LOGIC; 
  signal MCTX_RP_0_FFX_RST : STD_LOGIC; 
  signal MCTX_RP_2_FFX_RST : STD_LOGIC; 
  signal EIRQ_RP_0_FFY_RST : STD_LOGIC; 
  signal EIRQ_RP_2_FFY_RST : STD_LOGIC; 
  signal EIRQ_RP_0_FFX_RST : STD_LOGIC; 
  signal PCM1RP_6_FFX_RST : STD_LOGIC; 
  signal TS_CNT_0_FFY_RST : STD_LOGIC; 
  signal TS_CNT_1_FFY_RST : STD_LOGIC; 
  signal CTX_RP_0_FFX_RST : STD_LOGIC; 
  signal CTX_RP_2_FFX_RST : STD_LOGIC; 
  signal CRX_RP_0_FFX_RST : STD_LOGIC; 
  signal CRX_RP_2_FFX_RST : STD_LOGIC; 
  signal PCM1RP_0_FFY_RST : STD_LOGIC; 
  signal PCM1RP_2_FFY_RST : STD_LOGIC; 
  signal PCM1RP_4_FFY_RST : STD_LOGIC; 
  signal PCM1RP_0_FFX_RST : STD_LOGIC; 
  signal PCM1WP_2_FFX_RST : STD_LOGIC; 
  signal PCM1WP_4_FFX_RST : STD_LOGIC; 
  signal FCE_WP_0_FFY_RST : STD_LOGIC; 
  signal PCM1WP_6_FFX_RST : STD_LOGIC; 
  signal PCM1WP_8_FFX_RST : STD_LOGIC; 
  signal TS_CNT_5_FFX_RST : STD_LOGIC; 
  signal TS_CNT_7_FFX_RST : STD_LOGIC; 
  signal PCM1RP_2_FFX_RST : STD_LOGIC; 
  signal PCM1RP_4_FFX_RST : STD_LOGIC; 
  signal PCM1RP_6_FFY_RST : STD_LOGIC; 
  signal PCM1RP_8_FFX_RST : STD_LOGIC; 
  signal CNT_10_FFX_RST : STD_LOGIC; 
  signal CNT_8_FFX_RST : STD_LOGIC; 
  signal MCTX_WP_0_FFY_RST : STD_LOGIC; 
  signal EIRQ_WP_0_FFY_RST : STD_LOGIC; 
  signal MCTX_WP_0_FFX_RST : STD_LOGIC; 
  signal MCTX_WP_2_FFY_RST : STD_LOGIC; 
  signal CNT_0_FFY_RST : STD_LOGIC; 
  signal CNT_4_FFY_RST : STD_LOGIC; 
  signal CNT_0_FFX_RST : STD_LOGIC; 
  signal CNT_2_FFY_RST : STD_LOGIC; 
  signal MCTX_WP_2_FFX_RST : STD_LOGIC; 
  signal EIRQ_WP_2_FFY_RST : STD_LOGIC; 
  signal EIRQ_WP_0_FFX_RST : STD_LOGIC; 
  signal MCTX_RP_2_FFY_RST : STD_LOGIC; 
  signal EIRQ_WP_2_FFX_RST : STD_LOGIC; 
  signal MCTX_RP_0_FFY_RST : STD_LOGIC; 
  signal CNT_2_FFX_RST : STD_LOGIC; 
  signal CNT_4_FFX_RST : STD_LOGIC; 
  signal CNT_6_FFY_RST : STD_LOGIC; 
  signal CNT_6_FFX_RST : STD_LOGIC; 
  signal CNT_8_FFY_RST : STD_LOGIC; 
  signal EIRQ_RP_2_FFX_RST : STD_LOGIC; 
  signal CTX_CNT_10_FFY_RST : STD_LOGIC; 
  signal PCM1I_1_FFY_RST : STD_LOGIC; 
  signal PCM1TS_3_FFX_RST : STD_LOGIC; 
  signal PCM1TS_5_FFY_RST : STD_LOGIC; 
  signal PCM1TS_5_FFX_RST : STD_LOGIC; 
  signal PCM1TS_0_FFY_RST : STD_LOGIC; 
  signal IEN_PCM1_FFY_SET : STD_LOGIC; 
  signal MFCE_FFY_RST : STD_LOGIC; 
  signal IEN_CTX_FFY_SET : STD_LOGIC; 
  signal CRX_CNT_1_FFY_RST : STD_LOGIC; 
  signal MCTX_CNT_1_FFY_RST : STD_LOGIC; 
  signal FCE_RP_1_FFY_RST : STD_LOGIC; 
  signal MCTXO_6_FFY_SET : STD_LOGIC; 
  signal EIRQI_Once_FFY_RST : STD_LOGIC; 
  signal PCM1I_3_FFY_RST : STD_LOGIC; 
  signal PCM1I_3_FFX_RST : STD_LOGIC; 
  signal PCM1I_5_FFY_RST : STD_LOGIC; 
  signal PCM1I_5_FFX_RST : STD_LOGIC; 
  signal PCM1I_7_FFY_RST : STD_LOGIC; 
  signal PCM1I_7_FFX_RST : STD_LOGIC; 
  signal FCDI_2_FFY_RST : STD_LOGIC; 
  signal FCDI_2_FFX_RST : STD_LOGIC; 
  signal FCDI_6_FFY_RST : STD_LOGIC; 
  signal MCTXO_2_FFX_SET : STD_LOGIC; 
  signal MCTXO_4_FFX_SET : STD_LOGIC; 
  signal MCTXO_5_FFY_SET : STD_LOGIC; 
  signal MCTXO_8_FFY_SET : STD_LOGIC; 
  signal MCTXO_8_FFX_SET : STD_LOGIC; 
  signal PCM1TS_1_FFY_RST : STD_LOGIC; 
  signal PCM1TS_1_FFX_RST : STD_LOGIC; 
  signal PCM1SEL_2_FFY_RST : STD_LOGIC; 
  signal CRXI_1_FFY_SET : STD_LOGIC; 
  signal CRXI_1_FFY_RST : STD_LOGIC; 
  signal CRXI_1_FFX_SET : STD_LOGIC; 
  signal CRXI_1_FFX_RST : STD_LOGIC; 
  signal CRXI_3_FFX_SET : STD_LOGIC; 
  signal CRXI_3_FFX_RST : STD_LOGIC; 
  signal CRXI_5_FFX_SET : STD_LOGIC; 
  signal CRXI_5_FFX_RST : STD_LOGIC; 
  signal CRXI_5_FFY_SET : STD_LOGIC; 
  signal CRXI_5_FFY_RST : STD_LOGIC; 
  signal CRXI_7_FFY_SET : STD_LOGIC; 
  signal CRXI_7_FFY_RST : STD_LOGIC; 
  signal CRXI_7_FFX_SET : STD_LOGIC; 
  signal CRXI_7_FFX_RST : STD_LOGIC; 
  signal CTXI_1_FFY_SET : STD_LOGIC; 
  signal CTXI_1_FFY_RST : STD_LOGIC; 
  signal CRX_CNT_7_FFX_RST : STD_LOGIC; 
  signal CRX_CNT_9_FFX_RST : STD_LOGIC; 
  signal CRX_CNT_9_FFY_RST : STD_LOGIC; 
  signal LED_Y_FFX_RST : STD_LOGIC; 
  signal LED_Y_FFY_RST : STD_LOGIC; 
  signal MCTX_CNT_0_FFY_RST : STD_LOGIC; 
  signal MCTX_CNT_3_FFY_RST : STD_LOGIC; 
  signal MCTX_CNT_3_FFX_RST : STD_LOGIC; 
  signal MCTXO_2_FFY_SET : STD_LOGIC; 
  signal MCTXO_4_FFY_SET : STD_LOGIC; 
  signal CTXI_1_FFX_SET : STD_LOGIC; 
  signal CTXI_1_FFX_RST : STD_LOGIC; 
  signal CTXI_3_FFX_SET : STD_LOGIC; 
  signal CTXI_3_FFX_RST : STD_LOGIC; 
  signal PCM1TS_3_FFY_RST : STD_LOGIC; 
  signal CTXI_5_FFY_SET : STD_LOGIC; 
  signal CTXI_5_FFY_RST : STD_LOGIC; 
  signal CTXI_5_FFX_SET : STD_LOGIC; 
  signal CTXI_5_FFX_RST : STD_LOGIC; 
  signal CTXI_7_FFY_SET : STD_LOGIC; 
  signal CTXI_7_FFY_RST : STD_LOGIC; 
  signal CTXI_7_FFX_SET : STD_LOGIC; 
  signal CTXI_7_FFX_RST : STD_LOGIC; 
  signal PCM1SEL_0_FFY_RST : STD_LOGIC; 
  signal LED_R_FFY_RST : STD_LOGIC; 
  signal FCDI_4_FFX_RST : STD_LOGIC; 
  signal FCDI_6_FFX_RST : STD_LOGIC; 
  signal IEN_FC_FFY_SET : STD_LOGIC; 
  signal EIRQI_Twice_FFY_RST : STD_LOGIC; 
  signal IEN_EIRQ_FFY_SET : STD_LOGIC; 
  signal IEN_CRX_FFY_SET : STD_LOGIC; 
  signal IEN_CTXE_FFY_RST : STD_LOGIC; 
  signal CLK16M_BUFGP_BUFG_CE : STD_LOGIC; 
  signal PWR_VCC_0_FROM : STD_LOGIC; 
  signal PWR_VCC_1_FROM : STD_LOGIC; 
  signal PWR_VCC_1_GROM : STD_LOGIC; 
  signal PWR_VCC_2_FROM : STD_LOGIC; 
  signal PWR_VCC_3_FROM : STD_LOGIC; 
  signal PWR_VCC_4_FROM : STD_LOGIC; 
  signal PWR_VCC_4_GROM : STD_LOGIC; 
  signal PWR_VCC_5_FROM : STD_LOGIC; 
  signal PWR_VCC_5_GROM : STD_LOGIC; 
  signal PWR_VCC_6_FROM : STD_LOGIC; 
  signal PWR_VCC_7_FROM : STD_LOGIC; 
  signal PWR_VCC_7_GROM : STD_LOGIC; 
  signal PWR_VCC_8_FROM : STD_LOGIC; 
  signal PWR_VCC_8_GROM : STD_LOGIC; 
  signal PWR_VCC_9_FROM : STD_LOGIC; 
  signal PWR_VCC_10_FROM : STD_LOGIC; 
  signal PWR_VCC_10_GROM : STD_LOGIC; 
  signal PWR_VCC_11_FROM : STD_LOGIC; 
  signal PWR_VCC_12_FROM : STD_LOGIC; 
  signal PWR_VCC_12_GROM : STD_LOGIC; 
  signal PWR_VCC_13_FROM : STD_LOGIC; 
  signal PWR_VCC_14_FROM : STD_LOGIC; 
  signal PWR_GND_0_GROM : STD_LOGIC; 
  signal PWR_GND_1_GROM : STD_LOGIC; 
  signal PWR_GND_2_GROM : STD_LOGIC; 
  signal PWR_GND_3_GROM : STD_LOGIC; 
  signal PWR_GND_4_GROM : STD_LOGIC; 
  signal PWR_GND_5_GROM : STD_LOGIC; 
  signal PWR_GND_6_GROM : STD_LOGIC; 
  signal PWR_GND_7_GROM : STD_LOGIC; 
  signal PWR_GND_8_GROM : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal CNT : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal FCDI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Q_n0036 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal PCM1WP : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal PCM1RP : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal PCM1I : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PCM1O : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PCM1SEL : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal CRXO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CTX_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal CTX_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal TS_CNT : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal PCM1TS : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal FCE_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal CRX_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal FCE_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal FCE_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CRX_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MCTX_CNT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_n0121 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CTX_CNT : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Q_n0067 : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal CRX_CNT : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Q_n0068 : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal MCTX_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal EIRQ_WP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MCTX_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal EIRQ_RP : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_n0289 : STD_LOGIC_VECTOR ( 17 downto 10 ); 
  signal MCTXO : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal CRXI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CTXI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CTXO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal FCEO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CTX_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CTX_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal PCM1WP_n0000 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal FCE_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CRX_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal CRX_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal PCM1RP_n0000 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal CNT_n0000 : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal MCTX_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal EIRQ_WP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal MCTX_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal EIRQ_RP_n0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal Q_n0042 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Q_n0034 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Q_n0051 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Q_n0050 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Q_n0044 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Q_n0041 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  FCEn_IOBUF_OBUFT : X_TRI
    port map (
      I => FCEn_OUTMUX,
      CTL => FCEn_ENABLE,
      O => FCEn
    );
  FCEn_ENABLEINV : X_INV
    port map (
      I => FCEn_TORGTS,
      O => FCEn_ENABLE
    );
  FCEn_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => FCEn_TDATANOT,
      O => FCEn_TORGTS
    );
  FCEn_OUTMUX_26 : X_BUF
    port map (
      I => FCEn_ODNOT,
      O => FCEn_OUTMUX
    );
  FCEn_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => FCEn_TDATANOT
    );
  FCEn_OMUX : X_INV
    port map (
      I => MFCE,
      O => FCEn_ODNOT
    );
  FCEn_IMUX : X_BUF
    port map (
      I => FCEn_IBUF,
      O => N12095
    );
  FCEn_IOBUF_IBUF : X_BUF
    port map (
      I => FCEn,
      O => FCEn_IBUF
    );
  HSSC_IMUX : X_BUF
    port map (
      I => HSSC_IBUF_0,
      O => HSSC_IBUF
    );
  HSSC_IBUF_27 : X_BUF
    port map (
      I => HSSC,
      O => HSSC_IBUF_0
    );
  CLK4M_IOBUF_OBUFT : X_TRI
    port map (
      I => CLK4M_OUTMUX,
      CTL => CLK4M_ENABLE,
      O => CLK4M
    );
  CLK4M_ENABLEINV : X_INV
    port map (
      I => CLK4M_TORGTS,
      O => CLK4M_ENABLE
    );
  CLK4M_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => CLK4M_TDATANOT,
      O => CLK4M_TORGTS
    );
  CLK4M_OUTMUX_28 : X_BUF
    port map (
      I => CLK4M_ODNOT,
      O => CLK4M_OUTMUX
    );
  CLK4M_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => CLK4M_TDATANOT
    );
  CLK4M_OMUX : X_INV
    port map (
      I => CNT(1),
      O => CLK4M_ODNOT
    );
  CLK4M_IMUX : X_BUF
    port map (
      I => CLK4M_IBUF,
      O => N12117
    );
  CLK4M_IOBUF_IBUF : X_BUF
    port map (
      I => CLK4M,
      O => CLK4M_IBUF
    );
  CLK8M_IOBUF_OBUFT : X_TRI
    port map (
      I => CLK8M_OUTMUX,
      CTL => CLK8M_ENABLE,
      O => CLK8M
    );
  CLK8M_ENABLEINV : X_INV
    port map (
      I => CLK8M_TORGTS,
      O => CLK8M_ENABLE
    );
  CLK8M_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => CLK8M_TDATANOT,
      O => CLK8M_TORGTS
    );
  CLK8M_OUTMUX_29 : X_BUF
    port map (
      I => CLK8M_ODNOT,
      O => CLK8M_OUTMUX
    );
  CLK8M_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => CLK8M_TDATANOT
    );
  CLK8M_OMUX : X_INV
    port map (
      I => CNT(0),
      O => CLK8M_ODNOT
    );
  CLK8M_IMUX : X_BUF
    port map (
      I => CLK8M_IBUF,
      O => N12119
    );
  CLK8M_IOBUF_IBUF : X_BUF
    port map (
      I => CLK8M,
      O => CLK8M_IBUF
    );
  INTn_OBUF_30 : X_TRI
    port map (
      I => INTn_OUTMUX,
      CTL => INTn_ENABLE,
      O => INTn
    );
  INTn_ENABLEINV : X_INV
    port map (
      I => INTn_TORGTS,
      O => INTn_ENABLE
    );
  INTn_GTS_OR : X_BUF
    port map (
      I => GTS,
      O => INTn_TORGTS
    );
  INTn_OUTMUX_31 : X_BUF
    port map (
      I => INTn_OBUF,
      O => INTn_OUTMUX
    );
  PA_5_IMUX : X_BUF
    port map (
      I => PA_5_IBUF_1,
      O => PA_5_IBUF
    );
  PA_5_IBUF_32 : X_BUF
    port map (
      I => PA(5),
      O => PA_5_IBUF_1
    );
  PA_6_IMUX : X_BUF
    port map (
      I => PA_6_IBUF_2,
      O => PA_6_IBUF
    );
  PA_6_IBUF_33 : X_BUF
    port map (
      I => PA(6),
      O => PA_6_IBUF_2
    );
  PA_7_IMUX : X_BUF
    port map (
      I => PA_7_IBUF_3,
      O => PA_7_IBUF
    );
  PA_7_IBUF_34 : X_BUF
    port map (
      I => PA(7),
      O => PA_7_IBUF_3
    );
  EIRQn_IMUX : X_BUF
    port map (
      I => EIRQn_IBUF_4,
      O => EIRQn_IBUF
    );
  EIRQn_IBUF_35 : X_BUF
    port map (
      I => EIRQn,
      O => EIRQn_IBUF_4
    );
  KA_I_0_IMUX : X_BUF
    port map (
      I => KA_I_0_IBUF_5,
      O => KA_I_0_IBUF
    );
  KA_I_0_IBUF_36 : X_BUF
    port map (
      I => KA_I(0),
      O => KA_I_0_IBUF_5
    );
  KA_I_1_IMUX : X_BUF
    port map (
      I => KA_I_1_IBUF_6,
      O => KA_I_1_IBUF
    );
  KA_I_1_IBUF_37 : X_BUF
    port map (
      I => KA_I(1),
      O => KA_I_1_IBUF_6
    );
  KA_I_2_IMUX : X_BUF
    port map (
      I => KA_I_2_IBUF_7,
      O => KA_I_2_IBUF
    );
  KA_I_2_IBUF_38 : X_BUF
    port map (
      I => KA_I(2),
      O => KA_I_2_IBUF_7
    );
  KA_I_3_IMUX : X_BUF
    port map (
      I => KA_I_3_IBUF_8,
      O => KA_I_3_IBUF
    );
  KA_I_3_IBUF_39 : X_BUF
    port map (
      I => KA_I(3),
      O => KA_I_3_IBUF_8
    );
  RESET_IMUX : X_BUF
    port map (
      I => RESET_IBUF_9,
      O => RESET_IBUF
    );
  RESET_IBUF_40 : X_BUF
    port map (
      I => RESET,
      O => RESET_IBUF_9
    );
  Test_OBUF_41 : X_TRI
    port map (
      I => Test_OUTMUX,
      CTL => Test_ENABLE,
      O => Test
    );
  Test_ENABLEINV : X_INV
    port map (
      I => Test_TORGTS,
      O => Test_ENABLE
    );
  Test_GTS_OR : X_BUF
    port map (
      I => GTS,
      O => Test_TORGTS
    );
  Test_OUTMUX_42 : X_BUF
    port map (
      I => Test_OBUF,
      O => Test_OUTMUX
    );
  LED_1_OBUF_43 : X_TRI
    port map (
      I => LED_1_OUTMUX,
      CTL => LED_1_ENABLE,
      O => LED(1)
    );
  LED_1_ENABLEINV : X_INV
    port map (
      I => LED_1_TORGTS,
      O => LED_1_ENABLE
    );
  LED_1_GTS_OR : X_BUF
    port map (
      I => GTS,
      O => LED_1_TORGTS
    );
  LED_1_OUTMUX_44 : X_BUF
    port map (
      I => LED_1_OBUF,
      O => LED_1_OUTMUX
    );
  LED_2_OBUF_45 : X_TRI
    port map (
      I => LED_2_OUTMUX,
      CTL => LED_2_ENABLE,
      O => LED(2)
    );
  LED_2_ENABLEINV : X_INV
    port map (
      I => LED_2_TORGTS,
      O => LED_2_ENABLE
    );
  LED_2_GTS_OR : X_BUF
    port map (
      I => GTS,
      O => LED_2_TORGTS
    );
  LED_2_OUTMUX_46 : X_BUF
    port map (
      I => LED_2_OBUF,
      O => LED_2_OUTMUX
    );
  LED_3_OBUF_47 : X_TRI
    port map (
      I => LED_3_OUTMUX,
      CTL => LED_3_ENABLE,
      O => LED(3)
    );
  LED_3_ENABLEINV : X_INV
    port map (
      I => LED_3_TORGTS,
      O => LED_3_ENABLE
    );
  LED_3_GTS_OR : X_BUF
    port map (
      I => GTS,
      O => LED_3_TORGTS
    );
  LED_3_OUTMUX_48 : X_BUF
    port map (
      I => LED_3_OBUF,
      O => LED_3_OUTMUX
    );
  FCC_IOBUF_OBUFT : X_TRI
    port map (
      I => FCC_OUTMUX,
      CTL => FCC_ENABLE,
      O => FCC
    );
  FCC_ENABLEINV : X_INV
    port map (
      I => FCC_TORGTS,
      O => FCC_ENABLE
    );
  FCC_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => FCC_TDATANOT,
      O => FCC_TORGTS
    );
  FCC_OUTMUX_49 : X_BUF
    port map (
      I => MFCC,
      O => FCC_OUTMUX
    );
  FCC_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => FCC_TDATANOT
    );
  FCC_IMUX : X_BUF
    port map (
      I => FCC_IBUF,
      O => N12091
    );
  FCC_IOBUF_IBUF : X_BUF
    port map (
      I => FCC,
      O => FCC_IBUF
    );
  FCD_IOBUF_OBUFT : X_TRI
    port map (
      I => FCD_OUTMUX,
      CTL => FCD_ENABLE,
      O => FCD
    );
  FCD_ENABLEINV : X_INV
    port map (
      I => FCD_TORGTS,
      O => FCD_ENABLE
    );
  FCD_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => FCD_TDATANOT,
      O => FCD_TORGTS
    );
  FCD_OUTMUX_50 : X_BUF
    port map (
      I => MFCD,
      O => FCD_OUTMUX
    );
  FCD_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => FCD_TDATANOT
    );
  FCD_IMUX : X_BUF
    port map (
      I => FCD_IBUF,
      O => N12093
    );
  FCD_IOBUF_IBUF : X_BUF
    port map (
      I => FCD,
      O => FCD_IBUF
    );
  FCD_DELAY : X_BUF
    port map (
      I => FCD_IBUF,
      O => FCD_IDELAY
    );
  SYNC2_OFF_RSTOR : X_BUF
    port map (
      I => GSR,
      O => SYNC2_OFF_RST
    );
  MSYNC2_51 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => SYNC2_OD,
      CE => MCPU,
      CLK => N12117,
      SET => GND,
      RST => SYNC2_OFF_RST,
      O => MSYNC2
    );
  SYNC2_OBUFT : X_TRI
    port map (
      I => SYNC2_OUTMUX,
      CTL => SYNC2_ENABLE,
      O => SYNC2
    );
  SYNC2_ENABLEINV : X_INV
    port map (
      I => SYNC2_TORGTS,
      O => SYNC2_ENABLE
    );
  SYNC2_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => SYNC2_TDATANOT,
      O => SYNC2_TORGTS
    );
  SYNC2_OUTMUX_52 : X_BUF
    port map (
      I => MSYNC2,
      O => SYNC2_OUTMUX
    );
  SYNC2_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => SYNC2_TDATANOT
    );
  SYNC2_OMUX : X_BUF
    port map (
      I => Q_n0083,
      O => SYNC2_OD
    );
  CRX_IMUX : X_BUF
    port map (
      I => CRX_IBUF_10,
      O => CRX_IBUF
    );
  CRX_IBUF_53 : X_BUF
    port map (
      I => CRX,
      O => CRX_IBUF_10
    );
  SYNC4_IOBUF_OBUFT : X_TRI
    port map (
      I => SYNC4_OUTMUX,
      CTL => SYNC4_ENABLE,
      O => SYNC4
    );
  SYNC4_ENABLEINV : X_INV
    port map (
      I => SYNC4_TORGTS,
      O => SYNC4_ENABLE
    );
  SYNC4_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => SYNC4_TDATANOT,
      O => SYNC4_TORGTS
    );
  SYNC4_OUTMUX_54 : X_BUF
    port map (
      I => MSYNC4,
      O => SYNC4_OUTMUX
    );
  SYNC4_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => SYNC4_TDATANOT
    );
  SYNC4_OMUX : X_BUF
    port map (
      I => Q_n0084,
      O => SYNC4_OD
    );
  SYNC4_ICKINV : X_INV
    port map (
      I => N12117,
      O => SYNC4_ICLKNOT
    );
  SYNC4_IOBUF_IBUF : X_BUF
    port map (
      I => SYNC4,
      O => N12113
    );
  SYNC4_DELAY : X_BUF
    port map (
      I => N12113,
      O => SYNC4_IDELAY
    );
  CTX_IOBUF_OBUFT : X_TRI
    port map (
      I => CTX_OUTMUX,
      CTL => CTX_ENABLE,
      O => CTX
    );
  CTX_ENABLEINV : X_INV
    port map (
      I => CTX_TORGTS,
      O => CTX_ENABLE
    );
  CTX_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => CTX_TDATANOT,
      O => CTX_TORGTS
    );
  CTX_OUTMUX_55 : X_BUF
    port map (
      I => MCTXO(0),
      O => CTX_OUTMUX
    );
  CTX_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => CTX_TDATANOT
    );
  CTX_OMUX : X_BUF
    port map (
      I => Q_n0036(0),
      O => CTX_OD
    );
  CTX_IMUX : X_BUF
    port map (
      I => CTX_IBUF,
      O => N12097
    );
  CTX_IOBUF_IBUF : X_BUF
    port map (
      I => CTX,
      O => CTX_IBUF
    );
  CSn_IMUX : X_BUF
    port map (
      I => CSn_IBUF_11,
      O => CSn_IBUF
    );
  CSn_IBUF_56 : X_BUF
    port map (
      I => CSn,
      O => CSn_IBUF_11
    );
  TSYNC_IMUX : X_BUF
    port map (
      I => TSYNC_IBUF_12,
      O => TSYNC_IBUF
    );
  TSYNC_IBUF_57 : X_BUF
    port map (
      I => TSYNC,
      O => TSYNC_IBUF_12
    );
  RDn_IMUX : X_BUF
    port map (
      I => RDn_IBUF_13,
      O => RDn_IBUF
    );
  RDn_IBUF_58 : X_BUF
    port map (
      I => RDn,
      O => RDn_IBUF_13
    );
  WRn_IMUX : X_BUF
    port map (
      I => WRn_IBUF_14,
      O => WRn_IBUF
    );
  WRn_IBUF_59 : X_BUF
    port map (
      I => WRn,
      O => WRn_IBUF_14
    );
  RPCM_0_IMUX : X_BUF
    port map (
      I => RPCM_0_IBUF_15,
      O => RPCM_0_IBUF
    );
  RPCM_0_IBUF_60 : X_BUF
    port map (
      I => RPCM(0),
      O => RPCM_0_IBUF_15
    );
  RPCM_1_IMUX : X_BUF
    port map (
      I => RPCM_1_IBUF_16,
      O => RPCM_1_IBUF
    );
  RPCM_1_IBUF_61 : X_BUF
    port map (
      I => RPCM(1),
      O => RPCM_1_IBUF_16
    );
  RPCM_2_IMUX : X_BUF
    port map (
      I => RPCM_2_IBUF_17,
      O => RPCM_2_IBUF
    );
  RPCM_2_IBUF_62 : X_BUF
    port map (
      I => RPCM(2),
      O => RPCM_2_IBUF_17
    );
  RPCM_3_IMUX : X_BUF
    port map (
      I => RPCM_3_IBUF_18,
      O => RPCM_3_IBUF
    );
  RPCM_3_IBUF_63 : X_BUF
    port map (
      I => RPCM(3),
      O => RPCM_3_IBUF_18
    );
  KA_IO_4_LOGIC_ZERO_64 : X_ZERO
    port map (
      O => KA_IO_4_LOGIC_ZERO
    );
  KA_IO_4_PULLUP : X_PU
    port map (
      O => KA_IO(4)
    );
  KA_IO_4_IOBUF_OBUFT : X_TRI
    port map (
      I => KA_IO_4_OUTMUX,
      CTL => KA_IO_4_ENABLE,
      O => KA_IO(4)
    );
  KA_IO_4_ENABLEINV : X_INV
    port map (
      I => KA_IO_4_TORGTS,
      O => KA_IO_4_ENABLE
    );
  KA_IO_4_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => KA_IO_4_TDATANOT,
      O => KA_IO_4_TORGTS
    );
  KA_IO_4_OUTMUX_65 : X_BUF
    port map (
      I => KA_IO_4_LOGIC_ZERO,
      O => KA_IO_4_OUTMUX
    );
  KA_IO_4_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => KA_IO_4_TDATANOT
    );
  KA_IO_4_IMUX : X_BUF
    port map (
      I => KA_IO_4_IBUF,
      O => N12121
    );
  KA_IO_4_IOBUF_IBUF : X_BUF
    port map (
      I => KA_IO(4),
      O => KA_IO_4_IBUF
    );
  KA_IO_5_LOGIC_ZERO_66 : X_ZERO
    port map (
      O => KA_IO_5_LOGIC_ZERO
    );
  KA_IO_5_PULLUP : X_PU
    port map (
      O => KA_IO(5)
    );
  KA_IO_5_IOBUF_OBUFT : X_TRI
    port map (
      I => KA_IO_5_OUTMUX,
      CTL => KA_IO_5_ENABLE,
      O => KA_IO(5)
    );
  KA_IO_5_ENABLEINV : X_INV
    port map (
      I => KA_IO_5_TORGTS,
      O => KA_IO_5_ENABLE
    );
  KA_IO_5_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => KA_IO_5_TDATANOT,
      O => KA_IO_5_TORGTS
    );
  KA_IO_5_OUTMUX_67 : X_BUF
    port map (
      I => KA_IO_5_LOGIC_ZERO,
      O => KA_IO_5_OUTMUX
    );
  KA_IO_5_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => KA_IO_5_TDATANOT
    );
  KA_IO_5_IMUX : X_BUF
    port map (
      I => KA_IO_5_IBUF,
      O => N12081
    );
  KA_IO_5_IOBUF_IBUF : X_BUF
    port map (
      I => KA_IO(5),
      O => KA_IO_5_IBUF
    );
  A_0_IMUX : X_BUF
    port map (
      I => A_0_IBUF_19,
      O => A_0_IBUF
    );
  A_0_IBUF_68 : X_BUF
    port map (
      I => A(0),
      O => A_0_IBUF_19
    );
  A_1_IMUX : X_BUF
    port map (
      I => A_1_IBUF_20,
      O => A_1_IBUF
    );
  A_1_IBUF_69 : X_BUF
    port map (
      I => A(1),
      O => A_1_IBUF_20
    );
  A_2_IMUX : X_BUF
    port map (
      I => A_2_IBUF_21,
      O => A_2_IBUF
    );
  A_2_IBUF_70 : X_BUF
    port map (
      I => A(2),
      O => A_2_IBUF_21
    );
  A_3_IMUX : X_BUF
    port map (
      I => A_3_IBUF_22,
      O => A_3_IBUF
    );
  A_3_IBUF_71 : X_BUF
    port map (
      I => A(3),
      O => A_3_IBUF_22
    );
  A_4_IMUX : X_BUF
    port map (
      I => A_4_IBUF_23,
      O => A_4_IBUF
    );
  A_4_IBUF_72 : X_BUF
    port map (
      I => A(4),
      O => A_4_IBUF_23
    );
  A_5_IMUX : X_BUF
    port map (
      I => A_5_IBUF_24,
      O => A_5_IBUF
    );
  A_5_IBUF_73 : X_BUF
    port map (
      I => A(5),
      O => A_5_IBUF_24
    );
  SENSEn_IMUX : X_BUF
    port map (
      I => SENSEn_IBUF_25,
      O => SENSEn_IBUF
    );
  SENSEn_IBUF_74 : X_BUF
    port map (
      I => SENSEn,
      O => SENSEn_IBUF_25
    );
  TPCM_0_LOGIC_ONE_75 : X_ONE
    port map (
      O => TPCM_0_LOGIC_ONE
    );
  TPCM_0_IOBUF_OBUFT : X_TRI
    port map (
      I => TPCM_0_OUTMUX,
      CTL => TPCM_0_ENABLE,
      O => TPCM(0)
    );
  TPCM_0_ENABLEINV : X_INV
    port map (
      I => TPCM_0_TORGTS,
      O => TPCM_0_ENABLE
    );
  TPCM_0_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => TPCM_0_TDATANOT,
      O => TPCM_0_TORGTS
    );
  TPCM_0_OUTMUX_76 : X_BUF
    port map (
      I => TPCM_0_LOGIC_ONE,
      O => TPCM_0_OUTMUX
    );
  TPCM_0_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => TPCM_0_TDATANOT
    );
  TPCM_0_IMUX : X_BUF
    port map (
      I => TPCM_0_IBUF,
      O => N12083
    );
  TPCM_0_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(0),
      O => TPCM_0_IBUF
    );
  D_0_IOBUF_OBUFT : X_TRI
    port map (
      I => D_0_OUTMUX,
      CTL => D_0_ENABLE,
      O => D(0)
    );
  D_0_ENABLEINV : X_INV
    port map (
      I => D_0_TORGTS,
      O => D_0_ENABLE
    );
  D_0_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_0_TORGTS
    );
  D_0_OUTMUX_77 : X_BUF
    port map (
      I => D_0_IOBUF,
      O => D_0_OUTMUX
    );
  D_0_IMUX : X_BUF
    port map (
      I => D_0_IBUF,
      O => N12099
    );
  D_0_IOBUF_IBUF : X_BUF
    port map (
      I => D(0),
      O => D_0_IBUF
    );
  D_0_DELAY : X_BUF
    port map (
      I => D_0_IBUF,
      O => D_0_IDELAY
    );
  TPCM_1_LOGIC_ONE_78 : X_ONE
    port map (
      O => TPCM_1_LOGIC_ONE
    );
  TPCM_1_IOBUF_OBUFT : X_TRI
    port map (
      I => TPCM_1_OUTMUX,
      CTL => TPCM_1_ENABLE,
      O => TPCM(1)
    );
  TPCM_1_ENABLEINV : X_INV
    port map (
      I => TPCM_1_TORGTS,
      O => TPCM_1_ENABLE
    );
  TPCM_1_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => TPCM_1_TDATANOT,
      O => TPCM_1_TORGTS
    );
  TPCM_1_OUTMUX_79 : X_BUF
    port map (
      I => TPCM_1_LOGIC_ONE,
      O => TPCM_1_OUTMUX
    );
  TPCM_1_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => TPCM_1_TDATANOT
    );
  TPCM_1_IMUX : X_BUF
    port map (
      I => TPCM_1_IBUF,
      O => N12085
    );
  TPCM_1_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(1),
      O => TPCM_1_IBUF
    );
  D_1_IOBUF_OBUFT : X_TRI
    port map (
      I => D_1_OUTMUX,
      CTL => D_1_ENABLE,
      O => D(1)
    );
  D_1_ENABLEINV : X_INV
    port map (
      I => D_1_TORGTS,
      O => D_1_ENABLE
    );
  D_1_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_1_TORGTS
    );
  D_1_OUTMUX_80 : X_BUF
    port map (
      I => D_1_IOBUF,
      O => D_1_OUTMUX
    );
  D_1_IMUX : X_BUF
    port map (
      I => D_1_IBUF,
      O => N12101
    );
  D_1_IOBUF_IBUF : X_BUF
    port map (
      I => D(1),
      O => D_1_IBUF
    );
  TPCM_2_LOGIC_ONE_81 : X_ONE
    port map (
      O => TPCM_2_LOGIC_ONE
    );
  TPCM_2_IOBUF_OBUFT : X_TRI
    port map (
      I => TPCM_2_OUTMUX,
      CTL => TPCM_2_ENABLE,
      O => TPCM(2)
    );
  TPCM_2_ENABLEINV : X_INV
    port map (
      I => TPCM_2_TORGTS,
      O => TPCM_2_ENABLE
    );
  TPCM_2_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => TPCM_2_TDATANOT,
      O => TPCM_2_TORGTS
    );
  TPCM_2_OUTMUX_82 : X_BUF
    port map (
      I => TPCM_2_LOGIC_ONE,
      O => TPCM_2_OUTMUX
    );
  TPCM_2_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => TPCM_2_TDATANOT
    );
  TPCM_2_IMUX : X_BUF
    port map (
      I => TPCM_2_IBUF,
      O => N12087
    );
  TPCM_2_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(2),
      O => TPCM_2_IBUF
    );
  D_2_IOBUF_OBUFT : X_TRI
    port map (
      I => D_2_OUTMUX,
      CTL => D_2_ENABLE,
      O => D(2)
    );
  D_2_ENABLEINV : X_INV
    port map (
      I => D_2_TORGTS,
      O => D_2_ENABLE
    );
  D_2_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_2_TORGTS
    );
  D_2_OUTMUX_83 : X_BUF
    port map (
      I => D_2_IOBUF,
      O => D_2_OUTMUX
    );
  D_2_IMUX : X_BUF
    port map (
      I => D_2_IBUF,
      O => N12103
    );
  D_2_IOBUF_IBUF : X_BUF
    port map (
      I => D(2),
      O => D_2_IBUF
    );
  TPCM_3_LOGIC_ONE_84 : X_ONE
    port map (
      O => TPCM_3_LOGIC_ONE
    );
  TPCM_3_IOBUF_OBUFT : X_TRI
    port map (
      I => TPCM_3_OUTMUX,
      CTL => TPCM_3_ENABLE,
      O => TPCM(3)
    );
  TPCM_3_ENABLEINV : X_INV
    port map (
      I => TPCM_3_TORGTS,
      O => TPCM_3_ENABLE
    );
  TPCM_3_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => TPCM_3_TDATANOT,
      O => TPCM_3_TORGTS
    );
  TPCM_3_OUTMUX_85 : X_BUF
    port map (
      I => TPCM_3_LOGIC_ONE,
      O => TPCM_3_OUTMUX
    );
  TPCM_3_TRIMUX : X_INV
    port map (
      I => MCPU,
      O => TPCM_3_TDATANOT
    );
  TPCM_3_IMUX : X_BUF
    port map (
      I => TPCM_3_IBUF,
      O => N12089
    );
  TPCM_3_IOBUF_IBUF : X_BUF
    port map (
      I => TPCM(3),
      O => TPCM_3_IBUF
    );
  D_3_IOBUF_OBUFT : X_TRI
    port map (
      I => D_3_OUTMUX,
      CTL => D_3_ENABLE,
      O => D(3)
    );
  D_3_ENABLEINV : X_INV
    port map (
      I => D_3_TORGTS,
      O => D_3_ENABLE
    );
  D_3_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_3_TORGTS
    );
  D_3_OUTMUX_86 : X_BUF
    port map (
      I => D_3_IOBUF,
      O => D_3_OUTMUX
    );
  D_3_IMUX : X_BUF
    port map (
      I => D_3_IBUF,
      O => N12105
    );
  D_3_IOBUF_IBUF : X_BUF
    port map (
      I => D(3),
      O => D_3_IBUF
    );
  D_4_IOBUF_OBUFT : X_TRI
    port map (
      I => D_4_OUTMUX,
      CTL => D_4_ENABLE,
      O => D(4)
    );
  D_4_ENABLEINV : X_INV
    port map (
      I => D_4_TORGTS,
      O => D_4_ENABLE
    );
  D_4_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_4_TORGTS
    );
  D_4_OUTMUX_87 : X_BUF
    port map (
      I => D_4_IOBUF,
      O => D_4_OUTMUX
    );
  D_4_IMUX : X_BUF
    port map (
      I => D_4_IBUF,
      O => N12107
    );
  D_4_IOBUF_IBUF : X_BUF
    port map (
      I => D(4),
      O => D_4_IBUF
    );
  D_5_IOBUF_OBUFT : X_TRI
    port map (
      I => D_5_OUTMUX,
      CTL => D_5_ENABLE,
      O => D(5)
    );
  D_5_ENABLEINV : X_INV
    port map (
      I => D_5_TORGTS,
      O => D_5_ENABLE
    );
  D_5_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_5_TORGTS
    );
  D_5_OUTMUX_88 : X_BUF
    port map (
      I => D_5_IOBUF,
      O => D_5_OUTMUX
    );
  D_5_IMUX : X_BUF
    port map (
      I => D_5_IBUF,
      O => N12109
    );
  D_5_IOBUF_IBUF : X_BUF
    port map (
      I => D(5),
      O => D_5_IBUF
    );
  D_6_IOBUF_OBUFT : X_TRI
    port map (
      I => D_6_OUTMUX,
      CTL => D_6_ENABLE,
      O => D(6)
    );
  D_6_ENABLEINV : X_INV
    port map (
      I => D_6_TORGTS,
      O => D_6_ENABLE
    );
  D_6_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_6_TORGTS
    );
  D_6_OUTMUX_89 : X_BUF
    port map (
      I => D_6_IOBUF,
      O => D_6_OUTMUX
    );
  D_6_IMUX : X_BUF
    port map (
      I => D_6_IBUF,
      O => N12111
    );
  D_6_IOBUF_IBUF : X_BUF
    port map (
      I => D(6),
      O => D_6_IBUF
    );
  D_7_IOBUF_OBUFT : X_TRI
    port map (
      I => D_7_OUTMUX,
      CTL => D_7_ENABLE,
      O => D(7)
    );
  D_7_ENABLEINV : X_INV
    port map (
      I => D_7_TORGTS,
      O => D_7_ENABLE
    );
  D_7_GTS_OR : X_OR2
    port map (
      I0 => GTS,
      I1 => Q_n0210,
      O => D_7_TORGTS
    );
  D_7_OUTMUX_90 : X_BUF
    port map (
      I => D_7_IOBUF,
      O => D_7_OUTMUX
    );
  D_7_IMUX : X_BUF
    port map (
      I => D_7_IBUF,
      O => N12115
    );
  D_7_IOBUF_IBUF : X_BUF
    port map (
      I => D(7),
      O => D_7_IBUF
    );
  PCM1FIFO_LOGIC_ONE_91 : X_ONE
    port map (
      O => PCM1FIFO_LOGIC_ONE
    );
  PCM1FIFO_LOGIC_ZERO_92 : X_ZERO
    port map (
      O => PCM1FIFO_LOGIC_ZERO
    );
  PCM1FIFO : X_RAMB4_S8_S8
    generic map(
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
      SETUP_ALL => 3737 ps
    )
    port map (
      CLKA => N12117,
      CLKB => GLOBAL_LOGIC0,
      ENA => PCM1FIFO_LOGIC_ONE,
      ENB => PCM1FIFO_LOGIC_ONE,
      RSTA => PCM1FIFO_LOGIC_ZERO,
      RSTB => PCM1FIFO_LOGIC_ZERO,
      WEA => SYNC4I,
      WEB => PCM1FIFO_LOGIC_ZERO,
      GSR => GSR,
      ADDRA(8) => PCM1WP(8),
      ADDRA(7) => PCM1WP(7),
      ADDRA(6) => PCM1WP(6),
      ADDRA(5) => PCM1WP(5),
      ADDRA(4) => PCM1WP(4),
      ADDRA(3) => PCM1WP(3),
      ADDRA(2) => PCM1WP(2),
      ADDRA(1) => PCM1WP(1),
      ADDRA(0) => PCM1WP(0),
      ADDRB(8) => PCM1RP(8),
      ADDRB(7) => PCM1RP(7),
      ADDRB(6) => PCM1RP(6),
      ADDRB(5) => PCM1RP(5),
      ADDRB(4) => PCM1RP(4),
      ADDRB(3) => PCM1RP(3),
      ADDRB(2) => PCM1RP(2),
      ADDRB(1) => PCM1RP(1),
      ADDRB(0) => PCM1RP(0),
      DIA(7) => PCM1I(7),
      DIA(6) => PCM1I(6),
      DIA(5) => PCM1I(5),
      DIA(4) => PCM1I(4),
      DIA(3) => PCM1I(3),
      DIA(2) => PCM1I(2),
      DIA(1) => PCM1I(1),
      DIA(0) => PCM1I(0),
      DIB(7) => GLOBAL_LOGIC0,
      DIB(6) => GLOBAL_LOGIC0,
      DIB(5) => GLOBAL_LOGIC0,
      DIB(4) => GLOBAL_LOGIC0,
      DIB(3) => GLOBAL_LOGIC0,
      DIB(2) => GLOBAL_LOGIC0,
      DIB(1) => GLOBAL_LOGIC0,
      DIB(0) => GLOBAL_LOGIC0,
      DOA(7) => PCM1FIFO_DOA7,
      DOA(6) => PCM1FIFO_DOA6,
      DOA(5) => PCM1FIFO_DOA5,
      DOA(4) => PCM1FIFO_DOA4,
      DOA(3) => PCM1FIFO_DOA3,
      DOA(2) => PCM1FIFO_DOA2,
      DOA(1) => PCM1FIFO_DOA1,
      DOA(0) => PCM1FIFO_DOA0,
      DOB(7) => PCM1O(7),
      DOB(6) => PCM1O(6),
      DOB(5) => PCM1O(5),
      DOB(4) => PCM1O(4),
      DOB(3) => PCM1O(3),
      DOB(2) => PCM1O(2),
      DOB(1) => PCM1O(1),
      DOB(0) => PCM1O(0)
    );
  Mmux_PCM1MUX_inst_mux_f5_0 : X_MUX2
    port map (
      IA => Mmux_PCM1MUX_net21,
      IB => Mmux_PCM1MUX_net22,
      SEL => PCM1SEL(1),
      O => Mmux_PCM1MUX_net23_F5MUX
    );
  Mmux_PCM1MUX_inst_lut3_101 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => N12089,
      ADR1 => N12087,
      ADR2 => PCM1SEL(0),
      ADR3 => VCC,
      O => Mmux_PCM1MUX_net22
    );
  Mmux_PCM1MUX_inst_lut3_91 : X_LUT4
    generic map(
      INIT => X"F5A0"
    )
    port map (
      ADR0 => PCM1SEL(0),
      ADR1 => VCC,
      ADR2 => N12085,
      ADR3 => N12083,
      O => Mmux_PCM1MUX_net21
    );
  Mmux_PCM1MUX_net23_F5USED : X_BUF
    port map (
      I => Mmux_PCM1MUX_net23_F5MUX,
      O => Mmux_PCM1MUX_net23
    );
  Mmux_PCM1MUX_inst_mux_f5_1 : X_MUX2
    port map (
      IA => Mmux_PCM1MUX_net24,
      IB => Mmux_PCM1MUX_net25,
      SEL => PCM1SEL(1),
      O => Mmux_PCM1MUX_net26
    );
  Mmux_PCM1MUX_inst_lut3_121 : X_LUT4
    generic map(
      INIT => X"EE22"
    )
    port map (
      ADR0 => RPCM_2_IBUF,
      ADR1 => PCM1SEL(0),
      ADR2 => VCC,
      ADR3 => RPCM_3_IBUF,
      O => Mmux_PCM1MUX_net25
    );
  Mmux_PCM1MUX_inst_lut3_111 : X_LUT4
    generic map(
      INIT => X"F0CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RPCM_0_IBUF,
      ADR2 => RPCM_1_IBUF,
      ADR3 => PCM1SEL(0),
      O => Mmux_PCM1MUX_net24
    );
  PCM1MUX_YUSED : X_BUF
    port map (
      I => PCM1MUX_F6MUX,
      O => PCM1MUX
    );
  Mmux_PCM1MUX_inst_mux_f6_0 : X_MUX2
    port map (
      IA => Mmux_PCM1MUX_net23,
      IB => Mmux_PCM1MUX_net26,
      SEL => PCM1SEL(2),
      O => PCM1MUX_F6MUX
    );
  Q_n0077_1_49 : X_MUX2
    port map (
      IA => N12352,
      IB => N12354,
      SEL => A_3_IBUF,
      O => CHOICE369_F5MUX
    );
  Q_n0077_1_49_G : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => CRXO(1),
      ADR1 => PCM1O(1),
      ADR2 => A_1_IBUF,
      ADR3 => VCC,
      O => N12354
    );
  Q_n0077_1_49_F : X_LUT4
    generic map(
      INIT => X"7F0F"
    )
    port map (
      ADR0 => CHOICE87,
      ADR1 => CHOICE76,
      ADR2 => A_1_IBUF,
      ADR3 => IEN_CTX,
      O => N12352
    );
  CHOICE369_XUSED : X_BUF
    port map (
      I => CHOICE369_F5MUX,
      O => CHOICE369
    );
  Q_n0077_0_115 : X_MUX2
    port map (
      IA => N12357,
      IB => N12359,
      SEL => A_3_IBUF,
      O => CHOICE585_F5MUX
    );
  Q_n0077_0_115_G : X_LUT4
    generic map(
      INIT => X"3210"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => CRXO(0),
      ADR3 => PCM1O(0),
      O => N12359
    );
  Q_n0077_0_115_F : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => Q_n0071,
      ADR1 => A_2_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => IEN_FC,
      O => N12357
    );
  CHOICE585_XUSED : X_BUF
    port map (
      I => CHOICE585_F5MUX,
      O => CHOICE585
    );
  CTX_WP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_0_FFX_RST
    );
  CTX_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0272,
      CLK => N12119,
      SET => GND,
      RST => CTX_WP_0_FFX_RST,
      O => CTX_WP(0)
    );
  CTX_WP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_0_FFY_RST
    );
  CTX_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_n0000(1),
      CE => Q_n0272,
      CLK => N12119,
      SET => GND,
      RST => CTX_WP_0_FFY_RST,
      O => CTX_WP(1)
    );
  CTX_WP_0_LOGIC_ZERO_93 : X_ZERO
    port map (
      O => CTX_WP_0_LOGIC_ZERO
    );
  CTX_WP_Madd_n0000_inst_cy_0_94 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1,
      IB => CTX_WP_0_LOGIC_ZERO,
      SEL => CTX_WP_Madd_n0000_inst_lut2_0,
      O => CTX_WP_Madd_n0000_inst_cy_0
    );
  CTX_WP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CTX_WP(0),
      O => CTX_WP_Madd_n0000_inst_lut2_0
    );
  CTX_WP_0_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_14,
      ADR1 => CTX_WP(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CTX_WP_0_GROM
    );
  CTX_WP_0_COUTUSED : X_BUF
    port map (
      I => CTX_WP_0_CYMUXG,
      O => CTX_WP_Madd_n0000_inst_cy_1
    );
  CTX_WP_Madd_n0000_inst_cy_1_95 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_14,
      IB => CTX_WP_Madd_n0000_inst_cy_0,
      SEL => CTX_WP_0_GROM,
      O => CTX_WP_0_CYMUXG
    );
  CTX_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CTX_WP_Madd_n0000_inst_cy_0,
      I1 => CTX_WP_0_GROM,
      O => CTX_WP_n0000(1)
    );
  CTX_WP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_2_FFY_RST
    );
  CTX_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_n0000(3),
      CE => Q_n0272,
      CLK => N12119,
      SET => GND,
      RST => CTX_WP_2_FFY_RST,
      O => CTX_WP(3)
    );
  CTX_WP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_WP_2_FFX_RST
    );
  CTX_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_WP_n0000(2),
      CE => Q_n0272,
      CLK => N12119,
      SET => GND,
      RST => CTX_WP_2_FFX_RST,
      O => CTX_WP(2)
    );
  CTX_WP_2_LOGIC_ZERO_96 : X_ZERO
    port map (
      O => CTX_WP_2_LOGIC_ZERO
    );
  CTX_WP_Madd_n0000_inst_cy_2_97 : X_MUX2
    port map (
      IA => CTX_WP_2_LOGIC_ZERO,
      IB => CTX_WP_2_CYINIT,
      SEL => CTX_WP_2_FROM,
      O => CTX_WP_Madd_n0000_inst_cy_2
    );
  CTX_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CTX_WP_2_CYINIT,
      I1 => CTX_WP_2_FROM,
      O => CTX_WP_n0000(2)
    );
  CTX_WP_2_F : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CTX_WP(2),
      ADR3 => VCC,
      O => CTX_WP_2_FROM
    );
  CTX_WP_3_rt_98 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CTX_WP(3),
      O => CTX_WP_3_rt
    );
  CTX_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CTX_WP_Madd_n0000_inst_cy_2,
      I1 => CTX_WP_3_rt,
      O => CTX_WP_n0000(3)
    );
  CTX_WP_2_CYINIT_99 : X_BUF
    port map (
      I => CTX_WP_Madd_n0000_inst_cy_1,
      O => CTX_WP_2_CYINIT
    );
  CTX_RP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_0_FFY_RST
    );
  CTX_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_n0000(1),
      CE => Q_n0280,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CTX_RP_0_FFY_RST,
      O => CTX_RP(1)
    );
  CTX_RP_0_LOGIC_ZERO_100 : X_ZERO
    port map (
      O => CTX_RP_0_LOGIC_ZERO
    );
  CTX_RP_Madd_n0000_inst_cy_0_101 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_3,
      IB => CTX_RP_0_LOGIC_ZERO,
      SEL => CTX_RP_Madd_n0000_inst_lut2_0,
      O => CTX_RP_Madd_n0000_inst_cy_0
    );
  CTX_RP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"3333"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_3,
      ADR1 => CTX_RP(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CTX_RP_Madd_n0000_inst_lut2_0
    );
  CTX_RP_0_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_11,
      ADR1 => VCC,
      ADR2 => CTX_RP(1),
      ADR3 => VCC,
      O => CTX_RP_0_GROM
    );
  CTX_RP_0_COUTUSED : X_BUF
    port map (
      I => CTX_RP_0_CYMUXG,
      O => CTX_RP_Madd_n0000_inst_cy_1
    );
  CTX_RP_Madd_n0000_inst_cy_1_102 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_11,
      IB => CTX_RP_Madd_n0000_inst_cy_0,
      SEL => CTX_RP_0_GROM,
      O => CTX_RP_0_CYMUXG
    );
  CTX_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CTX_RP_Madd_n0000_inst_cy_0,
      I1 => CTX_RP_0_GROM,
      O => CTX_RP_n0000(1)
    );
  CTX_RP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_2_FFY_RST
    );
  CTX_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_n0000(3),
      CE => Q_n0280,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CTX_RP_2_FFY_RST,
      O => CTX_RP(3)
    );
  CTX_RP_2_LOGIC_ZERO_103 : X_ZERO
    port map (
      O => CTX_RP_2_LOGIC_ZERO
    );
  CTX_RP_Madd_n0000_inst_cy_2_104 : X_MUX2
    port map (
      IA => CTX_RP_2_LOGIC_ZERO,
      IB => CTX_RP_2_CYINIT,
      SEL => CTX_RP_2_FROM,
      O => CTX_RP_Madd_n0000_inst_cy_2
    );
  CTX_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CTX_RP_2_CYINIT,
      I1 => CTX_RP_2_FROM,
      O => CTX_RP_n0000(2)
    );
  CTX_RP_2_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CTX_RP(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CTX_RP_2_FROM
    );
  CTX_RP_3_rt_105 : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CTX_RP(3),
      ADR3 => VCC,
      O => CTX_RP_3_rt
    );
  CTX_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CTX_RP_Madd_n0000_inst_cy_2,
      I1 => CTX_RP_3_rt,
      O => CTX_RP_n0000(3)
    );
  CTX_RP_2_CYINIT_106 : X_BUF
    port map (
      I => CTX_RP_Madd_n0000_inst_cy_1,
      O => CTX_RP_2_CYINIT
    );
  Mcompar_n0075_inst_cy_8_LOGIC_ONE_107 : X_ONE
    port map (
      O => Mcompar_n0075_inst_cy_8_LOGIC_ONE
    );
  Mcompar_n0075_inst_cy_8_LOGIC_ZERO_108 : X_ZERO
    port map (
      O => Mcompar_n0075_inst_cy_8_LOGIC_ZERO
    );
  Mcompar_n0075_inst_cy_7_109 : X_MUX2
    port map (
      IA => Mcompar_n0075_inst_cy_8_LOGIC_ZERO,
      IB => Mcompar_n0075_inst_cy_8_LOGIC_ONE,
      SEL => Mcompar_n0075_inst_lut4_3,
      O => Mcompar_n0075_inst_cy_7
    );
  Mcompar_n0075_inst_lut4_31 : X_LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      ADR0 => PCM1WP(1),
      ADR1 => PCM1RP(0),
      ADR2 => PCM1RP(1),
      ADR3 => PCM1WP(0),
      O => Mcompar_n0075_inst_lut4_3
    );
  Mcompar_n0075_inst_lut4_41 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => PCM1WP(3),
      ADR1 => PCM1RP(2),
      ADR2 => PCM1WP(2),
      ADR3 => PCM1RP(3),
      O => Mcompar_n0075_inst_lut4_4
    );
  Mcompar_n0075_inst_cy_8_COUTUSED : X_BUF
    port map (
      I => Mcompar_n0075_inst_cy_8_CYMUXG,
      O => Mcompar_n0075_inst_cy_8
    );
  Mcompar_n0075_inst_cy_8_110 : X_MUX2
    port map (
      IA => Mcompar_n0075_inst_cy_8_LOGIC_ZERO,
      IB => Mcompar_n0075_inst_cy_7,
      SEL => Mcompar_n0075_inst_lut4_4,
      O => Mcompar_n0075_inst_cy_8_CYMUXG
    );
  Mcompar_n0075_inst_cy_10_LOGIC_ZERO_111 : X_ZERO
    port map (
      O => Mcompar_n0075_inst_cy_10_LOGIC_ZERO
    );
  Mcompar_n0075_inst_cy_9_112 : X_MUX2
    port map (
      IA => Mcompar_n0075_inst_cy_10_LOGIC_ZERO,
      IB => Mcompar_n0075_inst_cy_10_CYINIT,
      SEL => Mcompar_n0075_inst_lut4_5,
      O => Mcompar_n0075_inst_cy_9
    );
  Mcompar_n0075_inst_lut4_51 : X_LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      ADR0 => PCM1WP(4),
      ADR1 => PCM1WP(5),
      ADR2 => PCM1RP(4),
      ADR3 => PCM1RP(5),
      O => Mcompar_n0075_inst_lut4_5
    );
  Mcompar_n0075_inst_lut4_61 : X_LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      ADR0 => PCM1RP(6),
      ADR1 => PCM1RP(7),
      ADR2 => PCM1WP(6),
      ADR3 => PCM1WP(7),
      O => Mcompar_n0075_inst_lut4_6
    );
  Mcompar_n0075_inst_cy_10_COUTUSED : X_BUF
    port map (
      I => Mcompar_n0075_inst_cy_10_CYMUXG,
      O => Mcompar_n0075_inst_cy_10
    );
  Mcompar_n0075_inst_cy_10_113 : X_MUX2
    port map (
      IA => Mcompar_n0075_inst_cy_10_LOGIC_ZERO,
      IB => Mcompar_n0075_inst_cy_9,
      SEL => Mcompar_n0075_inst_lut4_6,
      O => Mcompar_n0075_inst_cy_10_CYMUXG
    );
  Mcompar_n0075_inst_cy_10_CYINIT_114 : X_BUF
    port map (
      I => Mcompar_n0075_inst_cy_8,
      O => Mcompar_n0075_inst_cy_10_CYINIT
    );
  Q_n0075_LOGIC_ZERO_115 : X_ZERO
    port map (
      O => Q_n0075_LOGIC_ZERO
    );
  Mcompar_n0075_inst_cy_11 : X_MUX2
    port map (
      IA => Q_n0075_LOGIC_ZERO,
      IB => Q_n0075_CYINIT,
      SEL => Mcompar_n0075_inst_lut4_7,
      O => Q_n0075_CYMUXF
    );
  Mcompar_n0075_inst_lut4_71 : X_LUT4
    generic map(
      INIT => X"F00F"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PCM1RP(8),
      ADR3 => PCM1WP(8),
      O => Mcompar_n0075_inst_lut4_7
    );
  Q_n0075_XBUSED : X_BUF
    port map (
      I => Q_n0075_CYMUXF,
      O => Q_n0075
    );
  Q_n0075_CYINIT_116 : X_BUF
    port map (
      I => Mcompar_n0075_inst_cy_10,
      O => Q_n0075_CYINIT
    );
  Mcompar_n0108_inst_cy_5_LOGIC_ZERO_117 : X_ZERO
    port map (
      O => Mcompar_n0108_inst_cy_5_LOGIC_ZERO
    );
  Mcompar_n0108_inst_cy_5_LOGIC_ONE_118 : X_ONE
    port map (
      O => Mcompar_n0108_inst_cy_5_LOGIC_ONE
    );
  Mcompar_n0108_inst_cy_4_119 : X_MUX2
    port map (
      IA => Mcompar_n0108_inst_cy_5_LOGIC_ONE,
      IB => Mcompar_n0108_inst_cy_5_LOGIC_ZERO,
      SEL => Mcompar_n0108_inst_lut4_01_O,
      O => Mcompar_n0108_inst_cy_4
    );
  Mcompar_n0108_inst_lut4_01 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => PCM1TS(0),
      ADR1 => PCM1TS(1),
      ADR2 => TS_CNT(4),
      ADR3 => TS_CNT(3),
      O => Mcompar_n0108_inst_lut4_01_O
    );
  Mcompar_n0108_inst_lut4_11 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => PCM1TS(2),
      ADR1 => TS_CNT(6),
      ADR2 => PCM1TS(3),
      ADR3 => TS_CNT(5),
      O => Mcompar_n0108_inst_lut4_11_O
    );
  Mcompar_n0108_inst_cy_5_COUTUSED : X_BUF
    port map (
      I => Mcompar_n0108_inst_cy_5_CYMUXG,
      O => Mcompar_n0108_inst_cy_5
    );
  Mcompar_n0108_inst_cy_5_120 : X_MUX2
    port map (
      IA => Mcompar_n0108_inst_cy_5_LOGIC_ONE,
      IB => Mcompar_n0108_inst_cy_4,
      SEL => Mcompar_n0108_inst_lut4_11_O,
      O => Mcompar_n0108_inst_cy_5_CYMUXG
    );
  Q_n0108_LOGIC_ONE_121 : X_ONE
    port map (
      O => Q_n0108_LOGIC_ONE
    );
  Mcompar_n0108_inst_cy_6 : X_MUX2
    port map (
      IA => Q_n0108_LOGIC_ONE,
      IB => Q_n0108_CYINIT,
      SEL => Mcompar_n0108_inst_lut4_21_O,
      O => Q_n0108_CYMUXF
    );
  Mcompar_n0108_inst_lut4_21 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => TS_CNT(8),
      ADR1 => TS_CNT(7),
      ADR2 => PCM1TS(4),
      ADR3 => PCM1TS(5),
      O => Mcompar_n0108_inst_lut4_21_O
    );
  Q_n0108_XBUSED : X_BUF
    port map (
      I => Q_n0108_CYMUXF,
      O => Q_n0108
    );
  Q_n0108_CYINIT_122 : X_BUF
    port map (
      I => Mcompar_n0108_inst_cy_5,
      O => Q_n0108_CYINIT
    );
  PCM1WP_0_LOGIC_ZERO_123 : X_ZERO
    port map (
      O => PCM1WP_0_LOGIC_ZERO
    );
  PCM1WP_Madd_n0000_inst_cy_33_124 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_12,
      IB => PCM1WP_0_LOGIC_ZERO,
      SEL => PCM1WP_Madd_n0000_inst_lut2_15,
      O => PCM1WP_Madd_n0000_inst_cy_33
    );
  PCM1WP_Madd_n0000_inst_lut2_151 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_12,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PCM1WP(0),
      O => PCM1WP_Madd_n0000_inst_lut2_15
    );
  PCM1WP_0_G : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_1,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PCM1WP(1),
      O => PCM1WP_0_GROM
    );
  PCM1WP_0_COUTUSED : X_BUF
    port map (
      I => PCM1WP_0_CYMUXG,
      O => PCM1WP_Madd_n0000_inst_cy_34
    );
  PCM1WP_Madd_n0000_inst_cy_34_125 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_1,
      IB => PCM1WP_Madd_n0000_inst_cy_33,
      SEL => PCM1WP_0_GROM,
      O => PCM1WP_0_CYMUXG
    );
  PCM1WP_Madd_n0000_inst_sum_25 : X_XOR2
    port map (
      I0 => PCM1WP_Madd_n0000_inst_cy_33,
      I1 => PCM1WP_0_GROM,
      O => PCM1WP_n0000(1)
    );
  PCM1WP_2_LOGIC_ZERO_126 : X_ZERO
    port map (
      O => PCM1WP_2_LOGIC_ZERO
    );
  PCM1WP_Madd_n0000_inst_cy_35_127 : X_MUX2
    port map (
      IA => PCM1WP_2_LOGIC_ZERO,
      IB => PCM1WP_2_CYINIT,
      SEL => PCM1WP_2_FROM,
      O => PCM1WP_Madd_n0000_inst_cy_35
    );
  PCM1WP_Madd_n0000_inst_sum_26 : X_XOR2
    port map (
      I0 => PCM1WP_2_CYINIT,
      I1 => PCM1WP_2_FROM,
      O => PCM1WP_n0000(2)
    );
  PCM1WP_2_F : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PCM1WP(2),
      ADR3 => VCC,
      O => PCM1WP_2_FROM
    );
  PCM1WP_2_G : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PCM1WP(3),
      O => PCM1WP_2_GROM
    );
  PCM1WP_2_COUTUSED : X_BUF
    port map (
      I => PCM1WP_2_CYMUXG,
      O => PCM1WP_Madd_n0000_inst_cy_36
    );
  PCM1WP_Madd_n0000_inst_cy_36_128 : X_MUX2
    port map (
      IA => PCM1WP_2_LOGIC_ZERO,
      IB => PCM1WP_Madd_n0000_inst_cy_35,
      SEL => PCM1WP_2_GROM,
      O => PCM1WP_2_CYMUXG
    );
  PCM1WP_Madd_n0000_inst_sum_27 : X_XOR2
    port map (
      I0 => PCM1WP_Madd_n0000_inst_cy_35,
      I1 => PCM1WP_2_GROM,
      O => PCM1WP_n0000(3)
    );
  PCM1WP_2_CYINIT_129 : X_BUF
    port map (
      I => PCM1WP_Madd_n0000_inst_cy_34,
      O => PCM1WP_2_CYINIT
    );
  PCM1WP_4_LOGIC_ZERO_130 : X_ZERO
    port map (
      O => PCM1WP_4_LOGIC_ZERO
    );
  PCM1WP_Madd_n0000_inst_cy_37_131 : X_MUX2
    port map (
      IA => PCM1WP_4_LOGIC_ZERO,
      IB => PCM1WP_4_CYINIT,
      SEL => PCM1WP_4_FROM,
      O => PCM1WP_Madd_n0000_inst_cy_37
    );
  PCM1WP_Madd_n0000_inst_sum_28 : X_XOR2
    port map (
      I0 => PCM1WP_4_CYINIT,
      I1 => PCM1WP_4_FROM,
      O => PCM1WP_n0000(4)
    );
  PCM1WP_4_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => PCM1WP(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PCM1WP_4_FROM
    );
  PCM1WP_4_G : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PCM1WP(5),
      O => PCM1WP_4_GROM
    );
  PCM1WP_4_COUTUSED : X_BUF
    port map (
      I => PCM1WP_4_CYMUXG,
      O => PCM1WP_Madd_n0000_inst_cy_38
    );
  PCM1WP_Madd_n0000_inst_cy_38_132 : X_MUX2
    port map (
      IA => PCM1WP_4_LOGIC_ZERO,
      IB => PCM1WP_Madd_n0000_inst_cy_37,
      SEL => PCM1WP_4_GROM,
      O => PCM1WP_4_CYMUXG
    );
  PCM1WP_Madd_n0000_inst_sum_29 : X_XOR2
    port map (
      I0 => PCM1WP_Madd_n0000_inst_cy_37,
      I1 => PCM1WP_4_GROM,
      O => PCM1WP_n0000(5)
    );
  PCM1WP_4_CYINIT_133 : X_BUF
    port map (
      I => PCM1WP_Madd_n0000_inst_cy_36,
      O => PCM1WP_4_CYINIT
    );
  PCM1WP_6_LOGIC_ZERO_134 : X_ZERO
    port map (
      O => PCM1WP_6_LOGIC_ZERO
    );
  PCM1WP_Madd_n0000_inst_cy_39_135 : X_MUX2
    port map (
      IA => PCM1WP_6_LOGIC_ZERO,
      IB => PCM1WP_6_CYINIT,
      SEL => PCM1WP_6_FROM,
      O => PCM1WP_Madd_n0000_inst_cy_39
    );
  PCM1WP_Madd_n0000_inst_sum_30 : X_XOR2
    port map (
      I0 => PCM1WP_6_CYINIT,
      I1 => PCM1WP_6_FROM,
      O => PCM1WP_n0000(6)
    );
  PCM1WP_6_F : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PCM1WP(6),
      ADR3 => VCC,
      O => PCM1WP_6_FROM
    );
  PCM1WP_6_G : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PCM1WP(7),
      O => PCM1WP_6_GROM
    );
  PCM1WP_6_COUTUSED : X_BUF
    port map (
      I => PCM1WP_6_CYMUXG,
      O => PCM1WP_Madd_n0000_inst_cy_40
    );
  PCM1WP_Madd_n0000_inst_cy_40_136 : X_MUX2
    port map (
      IA => PCM1WP_6_LOGIC_ZERO,
      IB => PCM1WP_Madd_n0000_inst_cy_39,
      SEL => PCM1WP_6_GROM,
      O => PCM1WP_6_CYMUXG
    );
  PCM1WP_Madd_n0000_inst_sum_31 : X_XOR2
    port map (
      I0 => PCM1WP_Madd_n0000_inst_cy_39,
      I1 => PCM1WP_6_GROM,
      O => PCM1WP_n0000(7)
    );
  PCM1WP_6_CYINIT_137 : X_BUF
    port map (
      I => PCM1WP_Madd_n0000_inst_cy_38,
      O => PCM1WP_6_CYINIT
    );
  PCM1WP_Madd_n0000_inst_sum_32 : X_XOR2
    port map (
      I0 => PCM1WP_8_CYINIT,
      I1 => PCM1WP_8_rt,
      O => PCM1WP_n0000(8)
    );
  PCM1WP_8_rt_138 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => PCM1WP(8),
      O => PCM1WP_8_rt
    );
  PCM1WP_8_CYINIT_139 : X_BUF
    port map (
      I => PCM1WP_Madd_n0000_inst_cy_40,
      O => PCM1WP_8_CYINIT
    );
  FCE_WP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_0_FFX_RST
    );
  FCE_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_Madd_n0000_inst_lut2_0,
      CE => VCC,
      CLK => N12095,
      SET => GND,
      RST => FCE_WP_0_FFX_RST,
      O => FCE_WP(0)
    );
  FCE_WP_0_LOGIC_ZERO_140 : X_ZERO
    port map (
      O => FCE_WP_0_LOGIC_ZERO
    );
  FCE_WP_Madd_n0000_inst_cy_0_141 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_11,
      IB => FCE_WP_0_LOGIC_ZERO,
      SEL => FCE_WP_Madd_n0000_inst_lut2_0,
      O => FCE_WP_Madd_n0000_inst_cy_0
    );
  FCE_WP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_11,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => FCE_WP(0),
      O => FCE_WP_Madd_n0000_inst_lut2_0
    );
  FCE_WP_0_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_3,
      ADR1 => VCC,
      ADR2 => FCE_WP(1),
      ADR3 => VCC,
      O => FCE_WP_0_GROM
    );
  FCE_WP_0_COUTUSED : X_BUF
    port map (
      I => FCE_WP_0_CYMUXG,
      O => FCE_WP_Madd_n0000_inst_cy_1
    );
  FCE_WP_Madd_n0000_inst_cy_1_142 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_3,
      IB => FCE_WP_Madd_n0000_inst_cy_0,
      SEL => FCE_WP_0_GROM,
      O => FCE_WP_0_CYMUXG
    );
  FCE_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => FCE_WP_Madd_n0000_inst_cy_0,
      I1 => FCE_WP_0_GROM,
      O => FCE_WP_n0000(1)
    );
  FCE_WP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_2_FFX_RST
    );
  FCE_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_n0000(2),
      CE => VCC,
      CLK => N12095,
      SET => GND,
      RST => FCE_WP_2_FFX_RST,
      O => FCE_WP(2)
    );
  FCE_WP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_2_FFY_RST
    );
  FCE_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_n0000(3),
      CE => VCC,
      CLK => N12095,
      SET => GND,
      RST => FCE_WP_2_FFY_RST,
      O => FCE_WP(3)
    );
  FCE_WP_2_LOGIC_ZERO_143 : X_ZERO
    port map (
      O => FCE_WP_2_LOGIC_ZERO
    );
  FCE_WP_Madd_n0000_inst_cy_2_144 : X_MUX2
    port map (
      IA => FCE_WP_2_LOGIC_ZERO,
      IB => FCE_WP_2_CYINIT,
      SEL => FCE_WP_2_FROM,
      O => FCE_WP_Madd_n0000_inst_cy_2
    );
  FCE_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => FCE_WP_2_CYINIT,
      I1 => FCE_WP_2_FROM,
      O => FCE_WP_n0000(2)
    );
  FCE_WP_2_F : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => FCE_WP(2),
      O => FCE_WP_2_FROM
    );
  FCE_WP_3_rt_145 : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FCE_WP(3),
      ADR3 => VCC,
      O => FCE_WP_3_rt
    );
  FCE_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => FCE_WP_Madd_n0000_inst_cy_2,
      I1 => FCE_WP_3_rt,
      O => FCE_WP_n0000(3)
    );
  FCE_WP_2_CYINIT_146 : X_BUF
    port map (
      I => FCE_WP_Madd_n0000_inst_cy_1,
      O => FCE_WP_2_CYINIT
    );
  CRX_WP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_0_FFY_RST
    );
  CRX_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_n0000(1),
      CE => Q_n0275,
      CLK => N12119,
      SET => GND,
      RST => CRX_WP_0_FFY_RST,
      O => CRX_WP(1)
    );
  CRX_WP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_0_FFX_RST
    );
  CRX_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0275,
      CLK => N12119,
      SET => GND,
      RST => CRX_WP_0_FFX_RST,
      O => CRX_WP(0)
    );
  CRX_WP_0_LOGIC_ZERO_147 : X_ZERO
    port map (
      O => CRX_WP_0_LOGIC_ZERO
    );
  CRX_WP_Madd_n0000_inst_cy_0_148 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_7,
      IB => CRX_WP_0_LOGIC_ZERO,
      SEL => CRX_WP_Madd_n0000_inst_lut2_0,
      O => CRX_WP_Madd_n0000_inst_cy_0
    );
  CRX_WP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_7,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CRX_WP(0),
      O => CRX_WP_Madd_n0000_inst_lut2_0
    );
  CRX_WP_0_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_7,
      ADR1 => CRX_WP(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CRX_WP_0_GROM
    );
  CRX_WP_0_COUTUSED : X_BUF
    port map (
      I => CRX_WP_0_CYMUXG,
      O => CRX_WP_Madd_n0000_inst_cy_1
    );
  CRX_WP_Madd_n0000_inst_cy_1_149 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_7,
      IB => CRX_WP_Madd_n0000_inst_cy_0,
      SEL => CRX_WP_0_GROM,
      O => CRX_WP_0_CYMUXG
    );
  CRX_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CRX_WP_Madd_n0000_inst_cy_0,
      I1 => CRX_WP_0_GROM,
      O => CRX_WP_n0000(1)
    );
  CRX_WP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_2_FFY_RST
    );
  CRX_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_n0000(3),
      CE => Q_n0275,
      CLK => N12119,
      SET => GND,
      RST => CRX_WP_2_FFY_RST,
      O => CRX_WP(3)
    );
  CRX_WP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_WP_2_FFX_RST
    );
  CRX_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_WP_n0000(2),
      CE => Q_n0275,
      CLK => N12119,
      SET => GND,
      RST => CRX_WP_2_FFX_RST,
      O => CRX_WP(2)
    );
  CRX_WP_2_LOGIC_ZERO_150 : X_ZERO
    port map (
      O => CRX_WP_2_LOGIC_ZERO
    );
  CRX_WP_Madd_n0000_inst_cy_2_151 : X_MUX2
    port map (
      IA => CRX_WP_2_LOGIC_ZERO,
      IB => CRX_WP_2_CYINIT,
      SEL => CRX_WP_2_FROM,
      O => CRX_WP_Madd_n0000_inst_cy_2
    );
  CRX_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CRX_WP_2_CYINIT,
      I1 => CRX_WP_2_FROM,
      O => CRX_WP_n0000(2)
    );
  CRX_WP_2_F : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CRX_WP(2),
      ADR3 => VCC,
      O => CRX_WP_2_FROM
    );
  CRX_WP_3_rt_152 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CRX_WP(3),
      O => CRX_WP_3_rt
    );
  CRX_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CRX_WP_Madd_n0000_inst_cy_2,
      I1 => CRX_WP_3_rt,
      O => CRX_WP_n0000(3)
    );
  CRX_WP_2_CYINIT_153 : X_BUF
    port map (
      I => CRX_WP_Madd_n0000_inst_cy_1,
      O => CRX_WP_2_CYINIT
    );
  FCE_RP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCE_RP_0_FFX_RST
    );
  FCE_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0279,
      CLK => RDn_IBUF,
      SET => GND,
      RST => FCE_RP_0_FFX_RST,
      O => FCE_RP(0)
    );
  FCE_RP_0_LOGIC_ZERO_154 : X_ZERO
    port map (
      O => FCE_RP_0_LOGIC_ZERO
    );
  FCE_RP_Madd_n0000_inst_cy_0_155 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_11,
      IB => FCE_RP_0_LOGIC_ZERO,
      SEL => FCE_RP_Madd_n0000_inst_lut2_0,
      O => FCE_RP_Madd_n0000_inst_cy_0
    );
  FCE_RP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"3333"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_11,
      ADR1 => FCE_RP(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => FCE_RP_Madd_n0000_inst_lut2_0
    );
  FCE_RP_0_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_3,
      ADR1 => VCC,
      ADR2 => FCE_RP(1),
      ADR3 => VCC,
      O => FCE_RP_0_GROM
    );
  FCE_RP_0_COUTUSED : X_BUF
    port map (
      I => FCE_RP_0_CYMUXG,
      O => FCE_RP_Madd_n0000_inst_cy_1
    );
  FCE_RP_0_YUSED : X_BUF
    port map (
      I => FCE_RP_0_XORG,
      O => FCE_RP_n0000(1)
    );
  FCE_RP_Madd_n0000_inst_cy_1_156 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_3,
      IB => FCE_RP_Madd_n0000_inst_cy_0,
      SEL => FCE_RP_0_GROM,
      O => FCE_RP_0_CYMUXG
    );
  FCE_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => FCE_RP_Madd_n0000_inst_cy_0,
      I1 => FCE_RP_0_GROM,
      O => FCE_RP_0_XORG
    );
  FCE_RP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_RP_2_FFX_RST
    );
  FCE_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_n0000(2),
      CE => Q_n0279,
      CLK => RDn_IBUF,
      SET => GND,
      RST => FCE_RP_2_FFX_RST,
      O => FCE_RP(2)
    );
  FCE_RP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_RP_2_FFY_RST
    );
  FCE_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_n0000(3),
      CE => Q_n0279,
      CLK => RDn_IBUF,
      SET => GND,
      RST => FCE_RP_2_FFY_RST,
      O => FCE_RP(3)
    );
  FCE_RP_2_LOGIC_ZERO_157 : X_ZERO
    port map (
      O => FCE_RP_2_LOGIC_ZERO
    );
  FCE_RP_Madd_n0000_inst_cy_2_158 : X_MUX2
    port map (
      IA => FCE_RP_2_LOGIC_ZERO,
      IB => FCE_RP_2_CYINIT,
      SEL => FCE_RP_2_FROM,
      O => FCE_RP_Madd_n0000_inst_cy_2
    );
  FCE_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => FCE_RP_2_CYINIT,
      I1 => FCE_RP_2_FROM,
      O => FCE_RP_n0000(2)
    );
  FCE_RP_2_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => FCE_RP(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FCE_RP_2_FROM
    );
  FCE_RP_3_rt_159 : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FCE_RP(3),
      ADR3 => VCC,
      O => FCE_RP_3_rt
    );
  FCE_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => FCE_RP_Madd_n0000_inst_cy_2,
      I1 => FCE_RP_3_rt,
      O => FCE_RP_n0000(3)
    );
  FCE_RP_2_CYINIT_160 : X_BUF
    port map (
      I => FCE_RP_Madd_n0000_inst_cy_1,
      O => FCE_RP_2_CYINIT
    );
  CRX_RP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_0_FFY_RST
    );
  CRX_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_n0000(1),
      CE => Q_n0281,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CRX_RP_0_FFY_RST,
      O => CRX_RP(1)
    );
  CRX_RP_0_LOGIC_ZERO_161 : X_ZERO
    port map (
      O => CRX_RP_0_LOGIC_ZERO
    );
  CRX_RP_Madd_n0000_inst_cy_0_162 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_6,
      IB => CRX_RP_0_LOGIC_ZERO,
      SEL => CRX_RP_Madd_n0000_inst_lut2_0,
      O => CRX_RP_Madd_n0000_inst_cy_0
    );
  CRX_RP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"3333"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_6,
      ADR1 => CRX_RP(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CRX_RP_Madd_n0000_inst_lut2_0
    );
  CRX_RP_0_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_9,
      ADR1 => CRX_RP(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CRX_RP_0_GROM
    );
  CRX_RP_0_COUTUSED : X_BUF
    port map (
      I => CRX_RP_0_CYMUXG,
      O => CRX_RP_Madd_n0000_inst_cy_1
    );
  CRX_RP_Madd_n0000_inst_cy_1_163 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_9,
      IB => CRX_RP_Madd_n0000_inst_cy_0,
      SEL => CRX_RP_0_GROM,
      O => CRX_RP_0_CYMUXG
    );
  CRX_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => CRX_RP_Madd_n0000_inst_cy_0,
      I1 => CRX_RP_0_GROM,
      O => CRX_RP_n0000(1)
    );
  CRX_RP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_2_FFY_RST
    );
  CRX_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_n0000(3),
      CE => Q_n0281,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CRX_RP_2_FFY_RST,
      O => CRX_RP(3)
    );
  CRX_RP_2_LOGIC_ZERO_164 : X_ZERO
    port map (
      O => CRX_RP_2_LOGIC_ZERO
    );
  CRX_RP_Madd_n0000_inst_cy_2_165 : X_MUX2
    port map (
      IA => CRX_RP_2_LOGIC_ZERO,
      IB => CRX_RP_2_CYINIT,
      SEL => CRX_RP_2_FROM,
      O => CRX_RP_Madd_n0000_inst_cy_2
    );
  CRX_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => CRX_RP_2_CYINIT,
      I1 => CRX_RP_2_FROM,
      O => CRX_RP_n0000(2)
    );
  CRX_RP_2_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CRX_RP(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CRX_RP_2_FROM
    );
  CRX_RP_3_rt_166 : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CRX_RP(3),
      ADR3 => VCC,
      O => CRX_RP_3_rt
    );
  CRX_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => CRX_RP_Madd_n0000_inst_cy_2,
      I1 => CRX_RP_3_rt,
      O => CRX_RP_n0000(3)
    );
  CRX_RP_2_CYINIT_167 : X_BUF
    port map (
      I => CRX_RP_Madd_n0000_inst_cy_1,
      O => CRX_RP_2_CYINIT
    );
  PCM1RP_0_LOGIC_ZERO_168 : X_ZERO
    port map (
      O => PCM1RP_0_LOGIC_ZERO
    );
  PCM1RP_Madd_n0000_inst_cy_33_169 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_10,
      IB => PCM1RP_0_LOGIC_ZERO,
      SEL => PCM1RP_Madd_n0000_inst_lut2_15,
      O => PCM1RP_Madd_n0000_inst_cy_33
    );
  PCM1RP_Madd_n0000_inst_lut2_151 : X_LUT4
    generic map(
      INIT => X"3333"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_10,
      ADR1 => PCM1RP(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => PCM1RP_Madd_n0000_inst_lut2_15
    );
  PCM1RP_0_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_4,
      ADR1 => VCC,
      ADR2 => PCM1RP(1),
      ADR3 => VCC,
      O => PCM1RP_0_GROM
    );
  PCM1RP_0_COUTUSED : X_BUF
    port map (
      I => PCM1RP_0_CYMUXG,
      O => PCM1RP_Madd_n0000_inst_cy_34
    );
  PCM1RP_Madd_n0000_inst_cy_34_170 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_4,
      IB => PCM1RP_Madd_n0000_inst_cy_33,
      SEL => PCM1RP_0_GROM,
      O => PCM1RP_0_CYMUXG
    );
  PCM1RP_Madd_n0000_inst_sum_25 : X_XOR2
    port map (
      I0 => PCM1RP_Madd_n0000_inst_cy_33,
      I1 => PCM1RP_0_GROM,
      O => PCM1RP_n0000(1)
    );
  PCM1RP_2_LOGIC_ZERO_171 : X_ZERO
    port map (
      O => PCM1RP_2_LOGIC_ZERO
    );
  PCM1RP_Madd_n0000_inst_cy_35_172 : X_MUX2
    port map (
      IA => PCM1RP_2_LOGIC_ZERO,
      IB => PCM1RP_2_CYINIT,
      SEL => PCM1RP_2_FROM,
      O => PCM1RP_Madd_n0000_inst_cy_35
    );
  PCM1RP_Madd_n0000_inst_sum_26 : X_XOR2
    port map (
      I0 => PCM1RP_2_CYINIT,
      I1 => PCM1RP_2_FROM,
      O => PCM1RP_n0000(2)
    );
  PCM1RP_2_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PCM1RP(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => PCM1RP_2_FROM
    );
  PCM1RP_2_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PCM1RP(3),
      ADR3 => VCC,
      O => PCM1RP_2_GROM
    );
  PCM1RP_2_COUTUSED : X_BUF
    port map (
      I => PCM1RP_2_CYMUXG,
      O => PCM1RP_Madd_n0000_inst_cy_36
    );
  PCM1RP_Madd_n0000_inst_cy_36_173 : X_MUX2
    port map (
      IA => PCM1RP_2_LOGIC_ZERO,
      IB => PCM1RP_Madd_n0000_inst_cy_35,
      SEL => PCM1RP_2_GROM,
      O => PCM1RP_2_CYMUXG
    );
  PCM1RP_Madd_n0000_inst_sum_27 : X_XOR2
    port map (
      I0 => PCM1RP_Madd_n0000_inst_cy_35,
      I1 => PCM1RP_2_GROM,
      O => PCM1RP_n0000(3)
    );
  PCM1RP_2_CYINIT_174 : X_BUF
    port map (
      I => PCM1RP_Madd_n0000_inst_cy_34,
      O => PCM1RP_2_CYINIT
    );
  PCM1RP_4_LOGIC_ZERO_175 : X_ZERO
    port map (
      O => PCM1RP_4_LOGIC_ZERO
    );
  PCM1RP_Madd_n0000_inst_cy_37_176 : X_MUX2
    port map (
      IA => PCM1RP_4_LOGIC_ZERO,
      IB => PCM1RP_4_CYINIT,
      SEL => PCM1RP_4_FROM,
      O => PCM1RP_Madd_n0000_inst_cy_37
    );
  PCM1RP_Madd_n0000_inst_sum_28 : X_XOR2
    port map (
      I0 => PCM1RP_4_CYINIT,
      I1 => PCM1RP_4_FROM,
      O => PCM1RP_n0000(4)
    );
  PCM1RP_4_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PCM1RP(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => PCM1RP_4_FROM
    );
  PCM1RP_4_G : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => PCM1RP(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PCM1RP_4_GROM
    );
  PCM1RP_4_COUTUSED : X_BUF
    port map (
      I => PCM1RP_4_CYMUXG,
      O => PCM1RP_Madd_n0000_inst_cy_38
    );
  PCM1RP_Madd_n0000_inst_cy_38_177 : X_MUX2
    port map (
      IA => PCM1RP_4_LOGIC_ZERO,
      IB => PCM1RP_Madd_n0000_inst_cy_37,
      SEL => PCM1RP_4_GROM,
      O => PCM1RP_4_CYMUXG
    );
  PCM1RP_Madd_n0000_inst_sum_29 : X_XOR2
    port map (
      I0 => PCM1RP_Madd_n0000_inst_cy_37,
      I1 => PCM1RP_4_GROM,
      O => PCM1RP_n0000(5)
    );
  PCM1RP_4_CYINIT_178 : X_BUF
    port map (
      I => PCM1RP_Madd_n0000_inst_cy_36,
      O => PCM1RP_4_CYINIT
    );
  PCM1RP_6_LOGIC_ZERO_179 : X_ZERO
    port map (
      O => PCM1RP_6_LOGIC_ZERO
    );
  PCM1RP_Madd_n0000_inst_cy_39_180 : X_MUX2
    port map (
      IA => PCM1RP_6_LOGIC_ZERO,
      IB => PCM1RP_6_CYINIT,
      SEL => PCM1RP_6_FROM,
      O => PCM1RP_Madd_n0000_inst_cy_39
    );
  PCM1RP_Madd_n0000_inst_sum_30 : X_XOR2
    port map (
      I0 => PCM1RP_6_CYINIT,
      I1 => PCM1RP_6_FROM,
      O => PCM1RP_n0000(6)
    );
  PCM1RP_6_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PCM1RP(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => PCM1RP_6_FROM
    );
  PCM1RP_6_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => PCM1RP(7),
      ADR3 => VCC,
      O => PCM1RP_6_GROM
    );
  PCM1RP_6_COUTUSED : X_BUF
    port map (
      I => PCM1RP_6_CYMUXG,
      O => PCM1RP_Madd_n0000_inst_cy_40
    );
  PCM1RP_Madd_n0000_inst_cy_40_181 : X_MUX2
    port map (
      IA => PCM1RP_6_LOGIC_ZERO,
      IB => PCM1RP_Madd_n0000_inst_cy_39,
      SEL => PCM1RP_6_GROM,
      O => PCM1RP_6_CYMUXG
    );
  PCM1RP_Madd_n0000_inst_sum_31 : X_XOR2
    port map (
      I0 => PCM1RP_Madd_n0000_inst_cy_39,
      I1 => PCM1RP_6_GROM,
      O => PCM1RP_n0000(7)
    );
  PCM1RP_6_CYINIT_182 : X_BUF
    port map (
      I => PCM1RP_Madd_n0000_inst_cy_38,
      O => PCM1RP_6_CYINIT
    );
  PCM1RP_Madd_n0000_inst_sum_32 : X_XOR2
    port map (
      I0 => PCM1RP_8_CYINIT,
      I1 => PCM1RP_8_rt,
      O => PCM1RP_n0000(8)
    );
  PCM1RP_8_rt_183 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PCM1RP(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => PCM1RP_8_rt
    );
  PCM1RP_8_CYINIT_184 : X_BUF
    port map (
      I => PCM1RP_Madd_n0000_inst_cy_40,
      O => PCM1RP_8_CYINIT
    );
  Q_n0121_1_LOGIC_ZERO_185 : X_ZERO
    port map (
      O => Q_n0121_1_LOGIC_ZERO
    );
  Madd_n0121_inst_cy_0_186 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_4,
      IB => Q_n0121_1_LOGIC_ZERO,
      SEL => Madd_n0121_inst_lut2_0,
      O => Madd_n0121_inst_cy_0
    );
  Madd_n0121_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_4,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MCTX_CNT(0),
      O => Madd_n0121_inst_lut2_0
    );
  Q_n0121_1_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_10,
      ADR1 => VCC,
      ADR2 => MCTX_CNT(1),
      ADR3 => VCC,
      O => Q_n0121_1_GROM
    );
  Q_n0121_1_COUTUSED : X_BUF
    port map (
      I => Q_n0121_1_CYMUXG,
      O => Madd_n0121_inst_cy_1
    );
  Q_n0121_1_YUSED : X_BUF
    port map (
      I => Q_n0121_1_XORG,
      O => Q_n0121(1)
    );
  Madd_n0121_inst_cy_1_187 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_10,
      IB => Madd_n0121_inst_cy_0,
      SEL => Q_n0121_1_GROM,
      O => Q_n0121_1_CYMUXG
    );
  Madd_n0121_inst_sum_1 : X_XOR2
    port map (
      I0 => Madd_n0121_inst_cy_0,
      I1 => Q_n0121_1_GROM,
      O => Q_n0121_1_XORG
    );
  Q_n0121_2_LOGIC_ZERO_188 : X_ZERO
    port map (
      O => Q_n0121_2_LOGIC_ZERO
    );
  Madd_n0121_inst_cy_2_189 : X_MUX2
    port map (
      IA => Q_n0121_2_LOGIC_ZERO,
      IB => Q_n0121_2_CYINIT,
      SEL => Q_n0121_2_FROM,
      O => Madd_n0121_inst_cy_2
    );
  Madd_n0121_inst_sum_2 : X_XOR2
    port map (
      I0 => Q_n0121_2_CYINIT,
      I1 => Q_n0121_2_FROM,
      O => Q_n0121_2_XORF
    );
  Q_n0121_2_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => MCTX_CNT(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0121_2_FROM
    );
  MCTX_CNT_3_rt_190 : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => MCTX_CNT(3),
      ADR3 => VCC,
      O => MCTX_CNT_3_rt
    );
  Q_n0121_2_XUSED : X_BUF
    port map (
      I => Q_n0121_2_XORF,
      O => Q_n0121(2)
    );
  Q_n0121_2_YUSED : X_BUF
    port map (
      I => Q_n0121_2_XORG,
      O => Q_n0121(3)
    );
  Madd_n0121_inst_sum_3 : X_XOR2
    port map (
      I0 => Madd_n0121_inst_cy_2,
      I1 => MCTX_CNT_3_rt,
      O => Q_n0121_2_XORG
    );
  Q_n0121_2_CYINIT_191 : X_BUF
    port map (
      I => Madd_n0121_inst_cy_1,
      O => Q_n0121_2_CYINIT
    );
  TS_CNT_0_LOGIC_ZERO_192 : X_ZERO
    port map (
      O => TS_CNT_0_LOGIC_ZERO
    );
  TS_CNT_inst_cy_23_193 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_12,
      IB => TS_CNT_0_LOGIC_ZERO,
      SEL => SYNC4I_rt,
      O => TS_CNT_inst_cy_23
    );
  SYNC4I_rt_194 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_12,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SYNC4I,
      O => SYNC4I_rt
    );
  TS_CNT_inst_lut3_01 : X_LUT4
    generic map(
      INIT => X"00F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_2,
      ADR1 => VCC,
      ADR2 => TS_CNT(0),
      ADR3 => SYNC4I,
      O => TS_CNT_inst_lut3_01_O
    );
  TS_CNT_0_COUTUSED : X_BUF
    port map (
      I => TS_CNT_0_CYMUXG,
      O => TS_CNT_inst_cy_24
    );
  TS_CNT_inst_cy_24_195 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_2,
      IB => TS_CNT_inst_cy_23,
      SEL => TS_CNT_inst_lut3_01_O,
      O => TS_CNT_0_CYMUXG
    );
  TS_CNT_inst_sum_15_196 : X_XOR2
    port map (
      I0 => TS_CNT_inst_cy_23,
      I1 => TS_CNT_inst_lut3_01_O,
      O => TS_CNT_inst_sum_15
    );
  TS_CNT_1_LOGIC_ZERO_197 : X_ZERO
    port map (
      O => TS_CNT_1_LOGIC_ZERO
    );
  TS_CNT_inst_cy_25_198 : X_MUX2
    port map (
      IA => TS_CNT_1_LOGIC_ZERO,
      IB => TS_CNT_1_CYINIT,
      SEL => TS_CNT_inst_lut3_11_O,
      O => TS_CNT_inst_cy_25
    );
  TS_CNT_inst_sum_16_199 : X_XOR2
    port map (
      I0 => TS_CNT_1_CYINIT,
      I1 => TS_CNT_inst_lut3_11_O,
      O => TS_CNT_inst_sum_16
    );
  TS_CNT_inst_lut3_11 : X_LUT4
    generic map(
      INIT => X"3300"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SYNC4I,
      ADR2 => VCC,
      ADR3 => TS_CNT(1),
      O => TS_CNT_inst_lut3_11_O
    );
  TS_CNT_inst_lut3_21 : X_LUT4
    generic map(
      INIT => X"3030"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SYNC4I,
      ADR2 => TS_CNT(2),
      ADR3 => VCC,
      O => TS_CNT_inst_lut3_21_O
    );
  TS_CNT_1_COUTUSED : X_BUF
    port map (
      I => TS_CNT_1_CYMUXG,
      O => TS_CNT_inst_cy_26
    );
  TS_CNT_inst_cy_26_200 : X_MUX2
    port map (
      IA => TS_CNT_1_LOGIC_ZERO,
      IB => TS_CNT_inst_cy_25,
      SEL => TS_CNT_inst_lut3_21_O,
      O => TS_CNT_1_CYMUXG
    );
  TS_CNT_inst_sum_17_201 : X_XOR2
    port map (
      I0 => TS_CNT_inst_cy_25,
      I1 => TS_CNT_inst_lut3_21_O,
      O => TS_CNT_inst_sum_17
    );
  TS_CNT_1_CYINIT_202 : X_BUF
    port map (
      I => TS_CNT_inst_cy_24,
      O => TS_CNT_1_CYINIT
    );
  TS_CNT_3_LOGIC_ZERO_203 : X_ZERO
    port map (
      O => TS_CNT_3_LOGIC_ZERO
    );
  TS_CNT_inst_cy_27_204 : X_MUX2
    port map (
      IA => TS_CNT_3_LOGIC_ZERO,
      IB => TS_CNT_3_CYINIT,
      SEL => TS_CNT_inst_lut3_31_O,
      O => TS_CNT_inst_cy_27
    );
  TS_CNT_inst_sum_18_205 : X_XOR2
    port map (
      I0 => TS_CNT_3_CYINIT,
      I1 => TS_CNT_inst_lut3_31_O,
      O => TS_CNT_inst_sum_18
    );
  TS_CNT_inst_lut3_31 : X_LUT4
    generic map(
      INIT => X"0C0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => TS_CNT(3),
      ADR2 => SYNC4I,
      ADR3 => VCC,
      O => TS_CNT_inst_lut3_31_O
    );
  TS_CNT_inst_lut3_41 : X_LUT4
    generic map(
      INIT => X"0F00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SYNC4I,
      ADR3 => TS_CNT(4),
      O => TS_CNT_inst_lut3_41_O
    );
  TS_CNT_3_COUTUSED : X_BUF
    port map (
      I => TS_CNT_3_CYMUXG,
      O => TS_CNT_inst_cy_28
    );
  TS_CNT_inst_cy_28_206 : X_MUX2
    port map (
      IA => TS_CNT_3_LOGIC_ZERO,
      IB => TS_CNT_inst_cy_27,
      SEL => TS_CNT_inst_lut3_41_O,
      O => TS_CNT_3_CYMUXG
    );
  TS_CNT_inst_sum_19_207 : X_XOR2
    port map (
      I0 => TS_CNT_inst_cy_27,
      I1 => TS_CNT_inst_lut3_41_O,
      O => TS_CNT_inst_sum_19
    );
  TS_CNT_3_CYINIT_208 : X_BUF
    port map (
      I => TS_CNT_inst_cy_26,
      O => TS_CNT_3_CYINIT
    );
  TS_CNT_5_LOGIC_ZERO_209 : X_ZERO
    port map (
      O => TS_CNT_5_LOGIC_ZERO
    );
  TS_CNT_inst_cy_29_210 : X_MUX2
    port map (
      IA => TS_CNT_5_LOGIC_ZERO,
      IB => TS_CNT_5_CYINIT,
      SEL => TS_CNT_inst_lut3_51_O,
      O => TS_CNT_inst_cy_29
    );
  TS_CNT_inst_sum_20_211 : X_XOR2
    port map (
      I0 => TS_CNT_5_CYINIT,
      I1 => TS_CNT_inst_lut3_51_O,
      O => TS_CNT_inst_sum_20
    );
  TS_CNT_inst_lut3_51 : X_LUT4
    generic map(
      INIT => X"00CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => TS_CNT(5),
      ADR2 => VCC,
      ADR3 => SYNC4I,
      O => TS_CNT_inst_lut3_51_O
    );
  TS_CNT_inst_lut3_61 : X_LUT4
    generic map(
      INIT => X"00F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => TS_CNT(6),
      ADR3 => SYNC4I,
      O => TS_CNT_inst_lut3_61_O
    );
  TS_CNT_5_COUTUSED : X_BUF
    port map (
      I => TS_CNT_5_CYMUXG,
      O => TS_CNT_inst_cy_30
    );
  TS_CNT_inst_cy_30_212 : X_MUX2
    port map (
      IA => TS_CNT_5_LOGIC_ZERO,
      IB => TS_CNT_inst_cy_29,
      SEL => TS_CNT_inst_lut3_61_O,
      O => TS_CNT_5_CYMUXG
    );
  TS_CNT_inst_sum_21_213 : X_XOR2
    port map (
      I0 => TS_CNT_inst_cy_29,
      I1 => TS_CNT_inst_lut3_61_O,
      O => TS_CNT_inst_sum_21
    );
  TS_CNT_5_CYINIT_214 : X_BUF
    port map (
      I => TS_CNT_inst_cy_28,
      O => TS_CNT_5_CYINIT
    );
  TS_CNT_7_LOGIC_ZERO_215 : X_ZERO
    port map (
      O => TS_CNT_7_LOGIC_ZERO
    );
  TS_CNT_inst_cy_31_216 : X_MUX2
    port map (
      IA => TS_CNT_7_LOGIC_ZERO,
      IB => TS_CNT_7_CYINIT,
      SEL => TS_CNT_inst_lut3_71_O,
      O => TS_CNT_inst_cy_31
    );
  TS_CNT_inst_sum_22_217 : X_XOR2
    port map (
      I0 => TS_CNT_7_CYINIT,
      I1 => TS_CNT_inst_lut3_71_O,
      O => TS_CNT_inst_sum_22
    );
  TS_CNT_inst_lut3_71 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => TS_CNT(7),
      ADR1 => SYNC4I,
      ADR2 => VCC,
      ADR3 => VCC,
      O => TS_CNT_inst_lut3_71_O
    );
  TS_CNT_inst_lut3_81 : X_LUT4
    generic map(
      INIT => X"3030"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SYNC4I,
      ADR2 => TS_CNT(8),
      ADR3 => VCC,
      O => TS_CNT_inst_lut3_81_O
    );
  TS_CNT_inst_sum_23_218 : X_XOR2
    port map (
      I0 => TS_CNT_inst_cy_31,
      I1 => TS_CNT_inst_lut3_81_O,
      O => TS_CNT_inst_sum_23
    );
  TS_CNT_7_CYINIT_219 : X_BUF
    port map (
      I => TS_CNT_inst_cy_30,
      O => TS_CNT_7_CYINIT
    );
  Q_n0067_1_LOGIC_ZERO_220 : X_ZERO
    port map (
      O => Q_n0067_1_LOGIC_ZERO
    );
  Madd_n0067_inst_cy_12_221 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_0,
      IB => Q_n0067_1_LOGIC_ZERO,
      SEL => Madd_n0067_inst_lut2_4,
      O => Madd_n0067_inst_cy_12
    );
  Madd_n0067_inst_lut2_41 : X_LUT4
    generic map(
      INIT => X"0F0F"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_0,
      ADR1 => VCC,
      ADR2 => CTX_CNT(0),
      ADR3 => VCC,
      O => Madd_n0067_inst_lut2_4
    );
  Q_n0067_1_G : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_14,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CTX_CNT(1),
      O => Q_n0067_1_GROM
    );
  Q_n0067_1_COUTUSED : X_BUF
    port map (
      I => Q_n0067_1_CYMUXG,
      O => Madd_n0067_inst_cy_13
    );
  Q_n0067_1_YUSED : X_BUF
    port map (
      I => Q_n0067_1_XORG,
      O => Q_n0067(1)
    );
  Madd_n0067_inst_cy_13_222 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_14,
      IB => Madd_n0067_inst_cy_12,
      SEL => Q_n0067_1_GROM,
      O => Q_n0067_1_CYMUXG
    );
  Madd_n0067_inst_sum_5 : X_XOR2
    port map (
      I0 => Madd_n0067_inst_cy_12,
      I1 => Q_n0067_1_GROM,
      O => Q_n0067_1_XORG
    );
  Q_n0067_2_LOGIC_ZERO_223 : X_ZERO
    port map (
      O => Q_n0067_2_LOGIC_ZERO
    );
  Madd_n0067_inst_cy_14_224 : X_MUX2
    port map (
      IA => Q_n0067_2_LOGIC_ZERO,
      IB => Q_n0067_2_CYINIT,
      SEL => Q_n0067_2_FROM,
      O => Madd_n0067_inst_cy_14
    );
  Madd_n0067_inst_sum_6 : X_XOR2
    port map (
      I0 => Q_n0067_2_CYINIT,
      I1 => Q_n0067_2_FROM,
      O => Q_n0067_2_XORF
    );
  Q_n0067_2_F : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CTX_CNT(2),
      ADR3 => VCC,
      O => Q_n0067_2_FROM
    );
  Q_n0067_2_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CTX_CNT(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0067_2_GROM
    );
  Q_n0067_2_COUTUSED : X_BUF
    port map (
      I => Q_n0067_2_CYMUXG,
      O => Madd_n0067_inst_cy_15
    );
  Q_n0067_2_XUSED : X_BUF
    port map (
      I => Q_n0067_2_XORF,
      O => Q_n0067(2)
    );
  Q_n0067_2_YUSED : X_BUF
    port map (
      I => Q_n0067_2_XORG,
      O => Q_n0067(3)
    );
  Madd_n0067_inst_cy_15_225 : X_MUX2
    port map (
      IA => Q_n0067_2_LOGIC_ZERO,
      IB => Madd_n0067_inst_cy_14,
      SEL => Q_n0067_2_GROM,
      O => Q_n0067_2_CYMUXG
    );
  Madd_n0067_inst_sum_7 : X_XOR2
    port map (
      I0 => Madd_n0067_inst_cy_14,
      I1 => Q_n0067_2_GROM,
      O => Q_n0067_2_XORG
    );
  Q_n0067_2_CYINIT_226 : X_BUF
    port map (
      I => Madd_n0067_inst_cy_13,
      O => Q_n0067_2_CYINIT
    );
  Q_n0067_4_LOGIC_ZERO_227 : X_ZERO
    port map (
      O => Q_n0067_4_LOGIC_ZERO
    );
  Madd_n0067_inst_cy_16_228 : X_MUX2
    port map (
      IA => Q_n0067_4_LOGIC_ZERO,
      IB => Q_n0067_4_CYINIT,
      SEL => Q_n0067_4_FROM,
      O => Madd_n0067_inst_cy_16
    );
  Madd_n0067_inst_sum_8 : X_XOR2
    port map (
      I0 => Q_n0067_4_CYINIT,
      I1 => Q_n0067_4_FROM,
      O => Q_n0067_4_XORF
    );
  Q_n0067_4_F : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CTX_CNT(4),
      O => Q_n0067_4_FROM
    );
  Q_n0067_4_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CTX_CNT(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0067_4_GROM
    );
  Q_n0067_4_COUTUSED : X_BUF
    port map (
      I => Q_n0067_4_CYMUXG,
      O => Madd_n0067_inst_cy_17
    );
  Q_n0067_4_XUSED : X_BUF
    port map (
      I => Q_n0067_4_XORF,
      O => Q_n0067(4)
    );
  Q_n0067_4_YUSED : X_BUF
    port map (
      I => Q_n0067_4_XORG,
      O => Q_n0067(5)
    );
  Madd_n0067_inst_cy_17_229 : X_MUX2
    port map (
      IA => Q_n0067_4_LOGIC_ZERO,
      IB => Madd_n0067_inst_cy_16,
      SEL => Q_n0067_4_GROM,
      O => Q_n0067_4_CYMUXG
    );
  Madd_n0067_inst_sum_9 : X_XOR2
    port map (
      I0 => Madd_n0067_inst_cy_16,
      I1 => Q_n0067_4_GROM,
      O => Q_n0067_4_XORG
    );
  Q_n0067_4_CYINIT_230 : X_BUF
    port map (
      I => Madd_n0067_inst_cy_15,
      O => Q_n0067_4_CYINIT
    );
  Q_n0067_6_LOGIC_ZERO_231 : X_ZERO
    port map (
      O => Q_n0067_6_LOGIC_ZERO
    );
  Madd_n0067_inst_cy_18_232 : X_MUX2
    port map (
      IA => Q_n0067_6_LOGIC_ZERO,
      IB => Q_n0067_6_CYINIT,
      SEL => Q_n0067_6_FROM,
      O => Madd_n0067_inst_cy_18
    );
  Madd_n0067_inst_sum_10 : X_XOR2
    port map (
      I0 => Q_n0067_6_CYINIT,
      I1 => Q_n0067_6_FROM,
      O => Q_n0067_6_XORF
    );
  Q_n0067_6_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CTX_CNT(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0067_6_FROM
    );
  Q_n0067_6_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CTX_CNT(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0067_6_GROM
    );
  Q_n0067_6_COUTUSED : X_BUF
    port map (
      I => Q_n0067_6_CYMUXG,
      O => Madd_n0067_inst_cy_19
    );
  Q_n0067_6_XUSED : X_BUF
    port map (
      I => Q_n0067_6_XORF,
      O => Q_n0067(6)
    );
  Q_n0067_6_YUSED : X_BUF
    port map (
      I => Q_n0067_6_XORG,
      O => Q_n0067(7)
    );
  Madd_n0067_inst_cy_19_233 : X_MUX2
    port map (
      IA => Q_n0067_6_LOGIC_ZERO,
      IB => Madd_n0067_inst_cy_18,
      SEL => Q_n0067_6_GROM,
      O => Q_n0067_6_CYMUXG
    );
  Madd_n0067_inst_sum_11 : X_XOR2
    port map (
      I0 => Madd_n0067_inst_cy_18,
      I1 => Q_n0067_6_GROM,
      O => Q_n0067_6_XORG
    );
  Q_n0067_6_CYINIT_234 : X_BUF
    port map (
      I => Madd_n0067_inst_cy_17,
      O => Q_n0067_6_CYINIT
    );
  Q_n0067_8_LOGIC_ZERO_235 : X_ZERO
    port map (
      O => Q_n0067_8_LOGIC_ZERO
    );
  Madd_n0067_inst_cy_20_236 : X_MUX2
    port map (
      IA => Q_n0067_8_LOGIC_ZERO,
      IB => Q_n0067_8_CYINIT,
      SEL => Q_n0067_8_FROM,
      O => Madd_n0067_inst_cy_20
    );
  Madd_n0067_inst_sum_12 : X_XOR2
    port map (
      I0 => Q_n0067_8_CYINIT,
      I1 => Q_n0067_8_FROM,
      O => Q_n0067_8_XORF
    );
  Q_n0067_8_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CTX_CNT(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0067_8_FROM
    );
  Q_n0067_8_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CTX_CNT(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0067_8_GROM
    );
  Q_n0067_8_COUTUSED : X_BUF
    port map (
      I => Q_n0067_8_CYMUXG,
      O => Madd_n0067_inst_cy_21
    );
  Q_n0067_8_XUSED : X_BUF
    port map (
      I => Q_n0067_8_XORF,
      O => Q_n0067(8)
    );
  Q_n0067_8_YUSED : X_BUF
    port map (
      I => Q_n0067_8_XORG,
      O => Q_n0067(9)
    );
  Madd_n0067_inst_cy_21_237 : X_MUX2
    port map (
      IA => Q_n0067_8_LOGIC_ZERO,
      IB => Madd_n0067_inst_cy_20,
      SEL => Q_n0067_8_GROM,
      O => Q_n0067_8_CYMUXG
    );
  Madd_n0067_inst_sum_13 : X_XOR2
    port map (
      I0 => Madd_n0067_inst_cy_20,
      I1 => Q_n0067_8_GROM,
      O => Q_n0067_8_XORG
    );
  Q_n0067_8_CYINIT_238 : X_BUF
    port map (
      I => Madd_n0067_inst_cy_19,
      O => Q_n0067_8_CYINIT
    );
  Madd_n0067_inst_sum_14 : X_XOR2
    port map (
      I0 => Q_n0067_10_CYINIT,
      I1 => CTX_CNT_10_rt,
      O => Q_n0067_10_XORF
    );
  CTX_CNT_10_rt_239 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CTX_CNT(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CTX_CNT_10_rt
    );
  Q_n0067_10_XUSED : X_BUF
    port map (
      I => Q_n0067_10_XORF,
      O => Q_n0067(10)
    );
  Q_n0067_10_CYINIT_240 : X_BUF
    port map (
      I => Madd_n0067_inst_cy_21,
      O => Q_n0067_10_CYINIT
    );
  Q_n0068_1_LOGIC_ZERO_241 : X_ZERO
    port map (
      O => Q_n0068_1_LOGIC_ZERO
    );
  Madd_n0068_inst_cy_12_242 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_13,
      IB => Q_n0068_1_LOGIC_ZERO,
      SEL => Madd_n0068_inst_lut2_4,
      O => Madd_n0068_inst_cy_12
    );
  Madd_n0068_inst_lut2_41 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_13,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CRX_CNT(0),
      O => Madd_n0068_inst_lut2_4
    );
  Q_n0068_1_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_0,
      ADR1 => VCC,
      ADR2 => CRX_CNT(1),
      ADR3 => VCC,
      O => Q_n0068_1_GROM
    );
  Q_n0068_1_COUTUSED : X_BUF
    port map (
      I => Q_n0068_1_CYMUXG,
      O => Madd_n0068_inst_cy_13
    );
  Q_n0068_1_YUSED : X_BUF
    port map (
      I => Q_n0068_1_XORG,
      O => Q_n0068(1)
    );
  Madd_n0068_inst_cy_13_243 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_0,
      IB => Madd_n0068_inst_cy_12,
      SEL => Q_n0068_1_GROM,
      O => Q_n0068_1_CYMUXG
    );
  Madd_n0068_inst_sum_5 : X_XOR2
    port map (
      I0 => Madd_n0068_inst_cy_12,
      I1 => Q_n0068_1_GROM,
      O => Q_n0068_1_XORG
    );
  Q_n0068_2_LOGIC_ZERO_244 : X_ZERO
    port map (
      O => Q_n0068_2_LOGIC_ZERO
    );
  Madd_n0068_inst_cy_14_245 : X_MUX2
    port map (
      IA => Q_n0068_2_LOGIC_ZERO,
      IB => Q_n0068_2_CYINIT,
      SEL => Q_n0068_2_FROM,
      O => Madd_n0068_inst_cy_14
    );
  Madd_n0068_inst_sum_6 : X_XOR2
    port map (
      I0 => Q_n0068_2_CYINIT,
      I1 => Q_n0068_2_FROM,
      O => Q_n0068_2_XORF
    );
  Q_n0068_2_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CRX_CNT(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_2_FROM
    );
  Q_n0068_2_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CRX_CNT(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_2_GROM
    );
  Q_n0068_2_COUTUSED : X_BUF
    port map (
      I => Q_n0068_2_CYMUXG,
      O => Madd_n0068_inst_cy_15
    );
  Q_n0068_2_XUSED : X_BUF
    port map (
      I => Q_n0068_2_XORF,
      O => Q_n0068(2)
    );
  Q_n0068_2_YUSED : X_BUF
    port map (
      I => Q_n0068_2_XORG,
      O => Q_n0068(3)
    );
  Madd_n0068_inst_cy_15_246 : X_MUX2
    port map (
      IA => Q_n0068_2_LOGIC_ZERO,
      IB => Madd_n0068_inst_cy_14,
      SEL => Q_n0068_2_GROM,
      O => Q_n0068_2_CYMUXG
    );
  Madd_n0068_inst_sum_7 : X_XOR2
    port map (
      I0 => Madd_n0068_inst_cy_14,
      I1 => Q_n0068_2_GROM,
      O => Q_n0068_2_XORG
    );
  Q_n0068_2_CYINIT_247 : X_BUF
    port map (
      I => Madd_n0068_inst_cy_13,
      O => Q_n0068_2_CYINIT
    );
  Q_n0068_4_LOGIC_ZERO_248 : X_ZERO
    port map (
      O => Q_n0068_4_LOGIC_ZERO
    );
  Madd_n0068_inst_cy_16_249 : X_MUX2
    port map (
      IA => Q_n0068_4_LOGIC_ZERO,
      IB => Q_n0068_4_CYINIT,
      SEL => Q_n0068_4_FROM,
      O => Madd_n0068_inst_cy_16
    );
  Madd_n0068_inst_sum_8 : X_XOR2
    port map (
      I0 => Q_n0068_4_CYINIT,
      I1 => Q_n0068_4_FROM,
      O => Q_n0068_4_XORF
    );
  Q_n0068_4_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CRX_CNT(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_4_FROM
    );
  Q_n0068_4_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CRX_CNT(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_4_GROM
    );
  Q_n0068_4_COUTUSED : X_BUF
    port map (
      I => Q_n0068_4_CYMUXG,
      O => Madd_n0068_inst_cy_17
    );
  Q_n0068_4_XUSED : X_BUF
    port map (
      I => Q_n0068_4_XORF,
      O => Q_n0068(4)
    );
  Q_n0068_4_YUSED : X_BUF
    port map (
      I => Q_n0068_4_XORG,
      O => Q_n0068(5)
    );
  Madd_n0068_inst_cy_17_250 : X_MUX2
    port map (
      IA => Q_n0068_4_LOGIC_ZERO,
      IB => Madd_n0068_inst_cy_16,
      SEL => Q_n0068_4_GROM,
      O => Q_n0068_4_CYMUXG
    );
  Madd_n0068_inst_sum_9 : X_XOR2
    port map (
      I0 => Madd_n0068_inst_cy_16,
      I1 => Q_n0068_4_GROM,
      O => Q_n0068_4_XORG
    );
  Q_n0068_4_CYINIT_251 : X_BUF
    port map (
      I => Madd_n0068_inst_cy_15,
      O => Q_n0068_4_CYINIT
    );
  Q_n0068_6_LOGIC_ZERO_252 : X_ZERO
    port map (
      O => Q_n0068_6_LOGIC_ZERO
    );
  Madd_n0068_inst_cy_18_253 : X_MUX2
    port map (
      IA => Q_n0068_6_LOGIC_ZERO,
      IB => Q_n0068_6_CYINIT,
      SEL => Q_n0068_6_FROM,
      O => Madd_n0068_inst_cy_18
    );
  Madd_n0068_inst_sum_10 : X_XOR2
    port map (
      I0 => Q_n0068_6_CYINIT,
      I1 => Q_n0068_6_FROM,
      O => Q_n0068_6_XORF
    );
  Q_n0068_6_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CRX_CNT(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_6_FROM
    );
  Q_n0068_6_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CRX_CNT(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_6_GROM
    );
  Q_n0068_6_COUTUSED : X_BUF
    port map (
      I => Q_n0068_6_CYMUXG,
      O => Madd_n0068_inst_cy_19
    );
  Q_n0068_6_XUSED : X_BUF
    port map (
      I => Q_n0068_6_XORF,
      O => Q_n0068(6)
    );
  Q_n0068_6_YUSED : X_BUF
    port map (
      I => Q_n0068_6_XORG,
      O => Q_n0068(7)
    );
  Madd_n0068_inst_cy_19_254 : X_MUX2
    port map (
      IA => Q_n0068_6_LOGIC_ZERO,
      IB => Madd_n0068_inst_cy_18,
      SEL => Q_n0068_6_GROM,
      O => Q_n0068_6_CYMUXG
    );
  Madd_n0068_inst_sum_11 : X_XOR2
    port map (
      I0 => Madd_n0068_inst_cy_18,
      I1 => Q_n0068_6_GROM,
      O => Q_n0068_6_XORG
    );
  Q_n0068_6_CYINIT_255 : X_BUF
    port map (
      I => Madd_n0068_inst_cy_17,
      O => Q_n0068_6_CYINIT
    );
  Q_n0068_8_LOGIC_ZERO_256 : X_ZERO
    port map (
      O => Q_n0068_8_LOGIC_ZERO
    );
  Madd_n0068_inst_cy_20_257 : X_MUX2
    port map (
      IA => Q_n0068_8_LOGIC_ZERO,
      IB => Q_n0068_8_CYINIT,
      SEL => Q_n0068_8_FROM,
      O => Madd_n0068_inst_cy_20
    );
  Madd_n0068_inst_sum_12 : X_XOR2
    port map (
      I0 => Q_n0068_8_CYINIT,
      I1 => Q_n0068_8_FROM,
      O => Q_n0068_8_XORF
    );
  Q_n0068_8_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CRX_CNT(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_8_FROM
    );
  Q_n0068_8_G : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CRX_CNT(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0068_8_GROM
    );
  Q_n0068_8_COUTUSED : X_BUF
    port map (
      I => Q_n0068_8_CYMUXG,
      O => Madd_n0068_inst_cy_21
    );
  Q_n0068_8_XUSED : X_BUF
    port map (
      I => Q_n0068_8_XORF,
      O => Q_n0068(8)
    );
  Q_n0068_8_YUSED : X_BUF
    port map (
      I => Q_n0068_8_XORG,
      O => Q_n0068(9)
    );
  Madd_n0068_inst_cy_21_258 : X_MUX2
    port map (
      IA => Q_n0068_8_LOGIC_ZERO,
      IB => Madd_n0068_inst_cy_20,
      SEL => Q_n0068_8_GROM,
      O => Q_n0068_8_CYMUXG
    );
  Madd_n0068_inst_sum_13 : X_XOR2
    port map (
      I0 => Madd_n0068_inst_cy_20,
      I1 => Q_n0068_8_GROM,
      O => Q_n0068_8_XORG
    );
  Q_n0068_8_CYINIT_259 : X_BUF
    port map (
      I => Madd_n0068_inst_cy_19,
      O => Q_n0068_8_CYINIT
    );
  Madd_n0068_inst_sum_14 : X_XOR2
    port map (
      I0 => Q_n0068_10_CYINIT,
      I1 => CRX_CNT_10_rt,
      O => Q_n0068_10_XORF
    );
  CRX_CNT_10_rt_260 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CRX_CNT(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CRX_CNT_10_rt
    );
  Q_n0068_10_XUSED : X_BUF
    port map (
      I => Q_n0068_10_XORF,
      O => Q_n0068(10)
    );
  Q_n0068_10_CYINIT_261 : X_BUF
    port map (
      I => Madd_n0068_inst_cy_21,
      O => Q_n0068_10_CYINIT
    );
  CNT_0_LOGIC_ZERO_262 : X_ZERO
    port map (
      O => CNT_0_LOGIC_ZERO
    );
  CNT_Madd_n0000_inst_cy_12_263 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_9,
      IB => CNT_0_LOGIC_ZERO,
      SEL => CNT_Madd_n0000_inst_lut2_4,
      O => CNT_Madd_n0000_inst_cy_12
    );
  CNT_Madd_n0000_inst_lut2_41 : X_LUT4
    generic map(
      INIT => X"3333"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_9,
      ADR1 => CNT(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CNT_Madd_n0000_inst_lut2_4
    );
  CNT_0_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_6,
      ADR1 => VCC,
      ADR2 => CNT(1),
      ADR3 => VCC,
      O => CNT_0_GROM
    );
  CNT_0_COUTUSED : X_BUF
    port map (
      I => CNT_0_CYMUXG,
      O => CNT_Madd_n0000_inst_cy_13
    );
  CNT_0_CKINV : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => CNT_0_CKMUXNOT
    );
  CNT_Madd_n0000_inst_cy_13_264 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_6,
      IB => CNT_Madd_n0000_inst_cy_12,
      SEL => CNT_0_GROM,
      O => CNT_0_CYMUXG
    );
  CNT_Madd_n0000_inst_sum_5 : X_XOR2
    port map (
      I0 => CNT_Madd_n0000_inst_cy_12,
      I1 => CNT_0_GROM,
      O => CNT_n0000(1)
    );
  CNT_2_LOGIC_ZERO_265 : X_ZERO
    port map (
      O => CNT_2_LOGIC_ZERO
    );
  CNT_Madd_n0000_inst_cy_14_266 : X_MUX2
    port map (
      IA => CNT_2_LOGIC_ZERO,
      IB => CNT_2_CYINIT,
      SEL => CNT_2_FROM,
      O => CNT_Madd_n0000_inst_cy_14
    );
  CNT_Madd_n0000_inst_sum_6 : X_XOR2
    port map (
      I0 => CNT_2_CYINIT,
      I1 => CNT_2_FROM,
      O => CNT_n0000(2)
    );
  CNT_2_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CNT(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CNT_2_FROM
    );
  CNT_2_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CNT(3),
      ADR3 => VCC,
      O => CNT_2_GROM
    );
  CNT_2_COUTUSED : X_BUF
    port map (
      I => CNT_2_CYMUXG,
      O => CNT_Madd_n0000_inst_cy_15
    );
  CNT_2_CKINV : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => CNT_2_CKMUXNOT
    );
  CNT_Madd_n0000_inst_cy_15_267 : X_MUX2
    port map (
      IA => CNT_2_LOGIC_ZERO,
      IB => CNT_Madd_n0000_inst_cy_14,
      SEL => CNT_2_GROM,
      O => CNT_2_CYMUXG
    );
  CNT_Madd_n0000_inst_sum_7 : X_XOR2
    port map (
      I0 => CNT_Madd_n0000_inst_cy_14,
      I1 => CNT_2_GROM,
      O => CNT_n0000(3)
    );
  CNT_2_CYINIT_268 : X_BUF
    port map (
      I => CNT_Madd_n0000_inst_cy_13,
      O => CNT_2_CYINIT
    );
  CNT_4_LOGIC_ZERO_269 : X_ZERO
    port map (
      O => CNT_4_LOGIC_ZERO
    );
  CNT_Madd_n0000_inst_cy_16_270 : X_MUX2
    port map (
      IA => CNT_4_LOGIC_ZERO,
      IB => CNT_4_CYINIT,
      SEL => CNT_4_FROM,
      O => CNT_Madd_n0000_inst_cy_16
    );
  CNT_Madd_n0000_inst_sum_8 : X_XOR2
    port map (
      I0 => CNT_4_CYINIT,
      I1 => CNT_4_FROM,
      O => CNT_n0000(4)
    );
  CNT_4_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CNT(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CNT_4_FROM
    );
  CNT_4_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CNT(5),
      ADR3 => VCC,
      O => CNT_4_GROM
    );
  CNT_4_COUTUSED : X_BUF
    port map (
      I => CNT_4_CYMUXG,
      O => CNT_Madd_n0000_inst_cy_17
    );
  CNT_4_CKINV : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => CNT_4_CKMUXNOT
    );
  CNT_Madd_n0000_inst_cy_17_271 : X_MUX2
    port map (
      IA => CNT_4_LOGIC_ZERO,
      IB => CNT_Madd_n0000_inst_cy_16,
      SEL => CNT_4_GROM,
      O => CNT_4_CYMUXG
    );
  CNT_Madd_n0000_inst_sum_9 : X_XOR2
    port map (
      I0 => CNT_Madd_n0000_inst_cy_16,
      I1 => CNT_4_GROM,
      O => CNT_n0000(5)
    );
  CNT_4_CYINIT_272 : X_BUF
    port map (
      I => CNT_Madd_n0000_inst_cy_15,
      O => CNT_4_CYINIT
    );
  CNT_6_LOGIC_ZERO_273 : X_ZERO
    port map (
      O => CNT_6_LOGIC_ZERO
    );
  CNT_Madd_n0000_inst_cy_18_274 : X_MUX2
    port map (
      IA => CNT_6_LOGIC_ZERO,
      IB => CNT_6_CYINIT,
      SEL => CNT_6_FROM,
      O => CNT_Madd_n0000_inst_cy_18
    );
  CNT_Madd_n0000_inst_sum_10 : X_XOR2
    port map (
      I0 => CNT_6_CYINIT,
      I1 => CNT_6_FROM,
      O => CNT_n0000(6)
    );
  CNT_6_F : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CNT(6),
      O => CNT_6_FROM
    );
  CNT_6_G : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CNT(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CNT_6_GROM
    );
  CNT_6_COUTUSED : X_BUF
    port map (
      I => CNT_6_CYMUXG,
      O => CNT_Madd_n0000_inst_cy_19
    );
  CNT_6_CKINV : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => CNT_6_CKMUXNOT
    );
  CNT_Madd_n0000_inst_cy_19_275 : X_MUX2
    port map (
      IA => CNT_6_LOGIC_ZERO,
      IB => CNT_Madd_n0000_inst_cy_18,
      SEL => CNT_6_GROM,
      O => CNT_6_CYMUXG
    );
  CNT_Madd_n0000_inst_sum_11 : X_XOR2
    port map (
      I0 => CNT_Madd_n0000_inst_cy_18,
      I1 => CNT_6_GROM,
      O => CNT_n0000(7)
    );
  CNT_6_CYINIT_276 : X_BUF
    port map (
      I => CNT_Madd_n0000_inst_cy_17,
      O => CNT_6_CYINIT
    );
  CNT_8_LOGIC_ZERO_277 : X_ZERO
    port map (
      O => CNT_8_LOGIC_ZERO
    );
  CNT_Madd_n0000_inst_cy_20_278 : X_MUX2
    port map (
      IA => CNT_8_LOGIC_ZERO,
      IB => CNT_8_CYINIT,
      SEL => CNT_8_FROM,
      O => CNT_Madd_n0000_inst_cy_20
    );
  CNT_Madd_n0000_inst_sum_12 : X_XOR2
    port map (
      I0 => CNT_8_CYINIT,
      I1 => CNT_8_FROM,
      O => CNT_n0000(8)
    );
  CNT_8_F : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => CNT(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CNT_8_FROM
    );
  CNT_8_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CNT(9),
      ADR3 => VCC,
      O => CNT_8_GROM
    );
  CNT_8_COUTUSED : X_BUF
    port map (
      I => CNT_8_CYMUXG,
      O => CNT_Madd_n0000_inst_cy_21
    );
  CNT_8_CKINV : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => CNT_8_CKMUXNOT
    );
  CNT_Madd_n0000_inst_cy_21_279 : X_MUX2
    port map (
      IA => CNT_8_LOGIC_ZERO,
      IB => CNT_Madd_n0000_inst_cy_20,
      SEL => CNT_8_GROM,
      O => CNT_8_CYMUXG
    );
  CNT_Madd_n0000_inst_sum_13 : X_XOR2
    port map (
      I0 => CNT_Madd_n0000_inst_cy_20,
      I1 => CNT_8_GROM,
      O => CNT_n0000(9)
    );
  CNT_8_CYINIT_280 : X_BUF
    port map (
      I => CNT_Madd_n0000_inst_cy_19,
      O => CNT_8_CYINIT
    );
  CNT_Madd_n0000_inst_sum_14 : X_XOR2
    port map (
      I0 => CNT_10_CYINIT,
      I1 => CNT_10_rt,
      O => CNT_n0000(10)
    );
  CNT_10_rt_281 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CNT(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CNT_10_rt
    );
  CNT_10_CKINV : X_INV
    port map (
      I => CLK16M_BUFGP,
      O => CNT_10_CKMUXNOT
    );
  CNT_10_CYINIT_282 : X_BUF
    port map (
      I => CNT_Madd_n0000_inst_cy_21,
      O => CNT_10_CYINIT
    );
  MCTX_WP_0_LOGIC_ZERO_283 : X_ZERO
    port map (
      O => MCTX_WP_0_LOGIC_ZERO
    );
  MCTX_WP_Madd_n0000_inst_cy_0_284 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_2,
      IB => MCTX_WP_0_LOGIC_ZERO,
      SEL => MCTX_WP_Madd_n0000_inst_lut2_0,
      O => MCTX_WP_Madd_n0000_inst_cy_0
    );
  MCTX_WP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_2,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MCTX_WP(0),
      O => MCTX_WP_Madd_n0000_inst_lut2_0
    );
  MCTX_WP_0_G : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_12,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MCTX_WP(1),
      O => MCTX_WP_0_GROM
    );
  MCTX_WP_0_COUTUSED : X_BUF
    port map (
      I => MCTX_WP_0_CYMUXG,
      O => MCTX_WP_Madd_n0000_inst_cy_1
    );
  MCTX_WP_Madd_n0000_inst_cy_1_285 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_12,
      IB => MCTX_WP_Madd_n0000_inst_cy_0,
      SEL => MCTX_WP_0_GROM,
      O => MCTX_WP_0_CYMUXG
    );
  MCTX_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => MCTX_WP_Madd_n0000_inst_cy_0,
      I1 => MCTX_WP_0_GROM,
      O => MCTX_WP_n0000(1)
    );
  MCTX_WP_2_LOGIC_ZERO_286 : X_ZERO
    port map (
      O => MCTX_WP_2_LOGIC_ZERO
    );
  MCTX_WP_Madd_n0000_inst_cy_2_287 : X_MUX2
    port map (
      IA => MCTX_WP_2_LOGIC_ZERO,
      IB => MCTX_WP_2_CYINIT,
      SEL => MCTX_WP_2_FROM,
      O => MCTX_WP_Madd_n0000_inst_cy_2
    );
  MCTX_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => MCTX_WP_2_CYINIT,
      I1 => MCTX_WP_2_FROM,
      O => MCTX_WP_n0000(2)
    );
  MCTX_WP_2_F : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => MCTX_WP(2),
      ADR3 => VCC,
      O => MCTX_WP_2_FROM
    );
  MCTX_WP_3_rt_288 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MCTX_WP(3),
      O => MCTX_WP_3_rt
    );
  MCTX_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => MCTX_WP_Madd_n0000_inst_cy_2,
      I1 => MCTX_WP_3_rt,
      O => MCTX_WP_n0000(3)
    );
  MCTX_WP_2_CYINIT_289 : X_BUF
    port map (
      I => MCTX_WP_Madd_n0000_inst_cy_1,
      O => MCTX_WP_2_CYINIT
    );
  EIRQ_WP_0_LOGIC_ZERO_290 : X_ZERO
    port map (
      O => EIRQ_WP_0_LOGIC_ZERO
    );
  EIRQ_WP_Madd_n0000_inst_cy_0_291 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_8,
      IB => EIRQ_WP_0_LOGIC_ZERO,
      SEL => EIRQ_WP_Madd_n0000_inst_lut2_0,
      O => EIRQ_WP_Madd_n0000_inst_cy_0
    );
  EIRQ_WP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"3333"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_8,
      ADR1 => EIRQ_WP(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => EIRQ_WP_Madd_n0000_inst_lut2_0
    );
  EIRQ_WP_0_G : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_5,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => EIRQ_WP(1),
      O => EIRQ_WP_0_GROM
    );
  EIRQ_WP_0_COUTUSED : X_BUF
    port map (
      I => EIRQ_WP_0_CYMUXG,
      O => EIRQ_WP_Madd_n0000_inst_cy_1
    );
  EIRQ_WP_Madd_n0000_inst_cy_1_292 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_5,
      IB => EIRQ_WP_Madd_n0000_inst_cy_0,
      SEL => EIRQ_WP_0_GROM,
      O => EIRQ_WP_0_CYMUXG
    );
  EIRQ_WP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => EIRQ_WP_Madd_n0000_inst_cy_0,
      I1 => EIRQ_WP_0_GROM,
      O => EIRQ_WP_n0000(1)
    );
  EIRQ_WP_2_LOGIC_ZERO_293 : X_ZERO
    port map (
      O => EIRQ_WP_2_LOGIC_ZERO
    );
  EIRQ_WP_Madd_n0000_inst_cy_2_294 : X_MUX2
    port map (
      IA => EIRQ_WP_2_LOGIC_ZERO,
      IB => EIRQ_WP_2_CYINIT,
      SEL => EIRQ_WP_2_FROM,
      O => EIRQ_WP_Madd_n0000_inst_cy_2
    );
  EIRQ_WP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => EIRQ_WP_2_CYINIT,
      I1 => EIRQ_WP_2_FROM,
      O => EIRQ_WP_n0000(2)
    );
  EIRQ_WP_2_F : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => EIRQ_WP(2),
      O => EIRQ_WP_2_FROM
    );
  EIRQ_WP_3_rt_295 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => EIRQ_WP(3),
      O => EIRQ_WP_3_rt
    );
  EIRQ_WP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => EIRQ_WP_Madd_n0000_inst_cy_2,
      I1 => EIRQ_WP_3_rt,
      O => EIRQ_WP_n0000(3)
    );
  EIRQ_WP_2_CYINIT_296 : X_BUF
    port map (
      I => EIRQ_WP_Madd_n0000_inst_cy_1,
      O => EIRQ_WP_2_CYINIT
    );
  MCTX_RP_0_LOGIC_ZERO_297 : X_ZERO
    port map (
      O => MCTX_RP_0_LOGIC_ZERO
    );
  MCTX_RP_Madd_n0000_inst_cy_0_298 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_1,
      IB => MCTX_RP_0_LOGIC_ZERO,
      SEL => MCTX_RP_Madd_n0000_inst_lut2_0,
      O => MCTX_RP_Madd_n0000_inst_cy_0
    );
  MCTX_RP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"0F0F"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_1,
      ADR1 => VCC,
      ADR2 => MCTX_RP(0),
      ADR3 => VCC,
      O => MCTX_RP_Madd_n0000_inst_lut2_0
    );
  MCTX_RP_0_G : X_LUT4
    generic map(
      INIT => X"F0F0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_13,
      ADR1 => VCC,
      ADR2 => MCTX_RP(1),
      ADR3 => VCC,
      O => MCTX_RP_0_GROM
    );
  MCTX_RP_0_COUTUSED : X_BUF
    port map (
      I => MCTX_RP_0_CYMUXG,
      O => MCTX_RP_Madd_n0000_inst_cy_1
    );
  MCTX_RP_Madd_n0000_inst_cy_1_299 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_13,
      IB => MCTX_RP_Madd_n0000_inst_cy_0,
      SEL => MCTX_RP_0_GROM,
      O => MCTX_RP_0_CYMUXG
    );
  MCTX_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => MCTX_RP_Madd_n0000_inst_cy_0,
      I1 => MCTX_RP_0_GROM,
      O => MCTX_RP_n0000(1)
    );
  MCTX_RP_2_LOGIC_ZERO_300 : X_ZERO
    port map (
      O => MCTX_RP_2_LOGIC_ZERO
    );
  MCTX_RP_Madd_n0000_inst_cy_2_301 : X_MUX2
    port map (
      IA => MCTX_RP_2_LOGIC_ZERO,
      IB => MCTX_RP_2_CYINIT,
      SEL => MCTX_RP_2_FROM,
      O => MCTX_RP_Madd_n0000_inst_cy_2
    );
  MCTX_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => MCTX_RP_2_CYINIT,
      I1 => MCTX_RP_2_FROM,
      O => MCTX_RP_n0000(2)
    );
  MCTX_RP_2_F : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => MCTX_RP(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => MCTX_RP_2_FROM
    );
  MCTX_RP_3_rt_302 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MCTX_RP(3),
      O => MCTX_RP_3_rt
    );
  MCTX_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => MCTX_RP_Madd_n0000_inst_cy_2,
      I1 => MCTX_RP_3_rt,
      O => MCTX_RP_n0000(3)
    );
  MCTX_RP_2_CYINIT_303 : X_BUF
    port map (
      I => MCTX_RP_Madd_n0000_inst_cy_1,
      O => MCTX_RP_2_CYINIT
    );
  FCDI_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCD_IDELAY,
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCD_IFF_RST,
      O => FCDI(0)
    );
  FCD_IFF_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCD_IFF_RST
    );
  EIRQ_RP_0_LOGIC_ZERO_304 : X_ZERO
    port map (
      O => EIRQ_RP_0_LOGIC_ZERO
    );
  EIRQ_RP_Madd_n0000_inst_cy_0_305 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC1_5,
      IB => EIRQ_RP_0_LOGIC_ZERO,
      SEL => EIRQ_RP_Madd_n0000_inst_lut2_0,
      O => EIRQ_RP_Madd_n0000_inst_cy_0
    );
  EIRQ_RP_Madd_n0000_inst_lut2_01 : X_LUT4
    generic map(
      INIT => X"00FF"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1_5,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => EIRQ_RP(0),
      O => EIRQ_RP_Madd_n0000_inst_lut2_0
    );
  EIRQ_RP_0_G : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0_8,
      ADR1 => EIRQ_RP(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => EIRQ_RP_0_GROM
    );
  EIRQ_RP_0_COUTUSED : X_BUF
    port map (
      I => EIRQ_RP_0_CYMUXG,
      O => EIRQ_RP_Madd_n0000_inst_cy_1
    );
  EIRQ_RP_Madd_n0000_inst_cy_1_306 : X_MUX2
    port map (
      IA => GLOBAL_LOGIC0_8,
      IB => EIRQ_RP_Madd_n0000_inst_cy_0,
      SEL => EIRQ_RP_0_GROM,
      O => EIRQ_RP_0_CYMUXG
    );
  EIRQ_RP_Madd_n0000_inst_sum_1 : X_XOR2
    port map (
      I0 => EIRQ_RP_Madd_n0000_inst_cy_0,
      I1 => EIRQ_RP_0_GROM,
      O => EIRQ_RP_n0000(1)
    );
  EIRQ_RP_2_LOGIC_ZERO_307 : X_ZERO
    port map (
      O => EIRQ_RP_2_LOGIC_ZERO
    );
  EIRQ_RP_Madd_n0000_inst_cy_2_308 : X_MUX2
    port map (
      IA => EIRQ_RP_2_LOGIC_ZERO,
      IB => EIRQ_RP_2_CYINIT,
      SEL => EIRQ_RP_2_FROM,
      O => EIRQ_RP_Madd_n0000_inst_cy_2
    );
  EIRQ_RP_Madd_n0000_inst_sum_2 : X_XOR2
    port map (
      I0 => EIRQ_RP_2_CYINIT,
      I1 => EIRQ_RP_2_FROM,
      O => EIRQ_RP_n0000(2)
    );
  EIRQ_RP_2_F : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => EIRQ_RP(2),
      O => EIRQ_RP_2_FROM
    );
  EIRQ_RP_3_rt_309 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => EIRQ_RP(3),
      O => EIRQ_RP_3_rt
    );
  EIRQ_RP_Madd_n0000_inst_sum_3 : X_XOR2
    port map (
      I0 => EIRQ_RP_Madd_n0000_inst_cy_2,
      I1 => EIRQ_RP_3_rt,
      O => EIRQ_RP_n0000(3)
    );
  EIRQ_RP_2_CYINIT_310 : X_BUF
    port map (
      I => EIRQ_RP_Madd_n0000_inst_cy_1,
      O => EIRQ_RP_2_CYINIT
    );
  Ker82071 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CTX_CNT(1),
      ADR1 => CTX_CNT(3),
      ADR2 => CTX_CNT(0),
      ADR3 => CTX_CNT(2),
      O => N8209_FROM
    );
  Q_n01231 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => N8209,
      ADR1 => CTX_CNT(6),
      ADR2 => CTX_CNT(5),
      ADR3 => CTX_CNT(4),
      O => N8209_GROM
    );
  N8209_XUSED : X_BUF
    port map (
      I => N8209_FROM,
      O => N8209
    );
  N8209_YUSED : X_BUF
    port map (
      I => N8209_GROM,
      O => Q_n0123
    );
  Ker82121 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CRX_CNT(0),
      ADR1 => CRX_CNT(1),
      ADR2 => CRX_CNT(3),
      ADR3 => CRX_CNT(2),
      O => N8214_FROM
    );
  Q_n01251 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => CRX_CNT(4),
      ADR1 => CRX_CNT(5),
      ADR2 => CRX_CNT(6),
      ADR3 => N8214,
      O => N8214_GROM
    );
  N8214_XUSED : X_BUF
    port map (
      I => N8214_FROM,
      O => N8214
    );
  N8214_YUSED : X_BUF
    port map (
      I => N8214_GROM,
      O => Q_n0125
    );
  Ker8102 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => CTX_CNT(6),
      ADR1 => N9712,
      ADR2 => CTX_CNT(8),
      ADR3 => N8209,
      O => N8104_FROM
    );
  Q_n00851 : X_LUT4
    generic map(
      INIT => X"1100"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => CTX_CNT(7),
      ADR2 => VCC,
      ADR3 => N8104,
      O => N8104_GROM
    );
  N8104_XUSED : X_BUF
    port map (
      I => N8104_FROM,
      O => N8104
    );
  N8104_YUSED : X_BUF
    port map (
      I => N8104_GROM,
      O => Q_n0085
    );
  Q_n0086_311 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => CRX_CNT(6),
      ADR1 => N10193,
      ADR2 => N8214,
      ADR3 => N7799,
      O => Q_n0086_FROM
    );
  Q_n02741 : X_LUT4
    generic map(
      INIT => X"55FF"
    )
    port map (
      ADR0 => CRX_IBUF,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Q_n0086,
      O => Q_n0086_GROM
    );
  Q_n0086_XUSED : X_BUF
    port map (
      I => Q_n0086_FROM,
      O => Q_n0086
    );
  Q_n0086_YUSED : X_BUF
    port map (
      I => Q_n0086_GROM,
      O => Q_n0274
    );
  Q_n021612 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CNT(1),
      ADR1 => CNT(0),
      ADR2 => CNT(3),
      ADR3 => CNT(2),
      O => CHOICE496_FROM
    );
  Q_n02691 : X_LUT4
    generic map(
      INIT => X"4C00"
    )
    port map (
      ADR0 => Q_n0079,
      ADR1 => CHOICE503,
      ADR2 => MCTXE,
      ADR3 => CHOICE496,
      O => CHOICE496_GROM
    );
  CHOICE496_XUSED : X_BUF
    port map (
      I => CHOICE496_FROM,
      O => CHOICE496
    );
  CHOICE496_YUSED : X_BUF
    port map (
      I => CHOICE496_GROM,
      O => Q_n0269
    );
  Q_n0272_312 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => CTX_CNT(8),
      ADR1 => N9545,
      ADR2 => Q_n0085,
      ADR3 => Q_n0123,
      O => CTX_CNT_10_FROM
    );
  Q_n0039_10_1 : X_LUT4
    generic map(
      INIT => X"0C00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N7697,
      ADR2 => Q_n0085,
      ADR3 => Q_n0067(10),
      O => Q_n0039_10_1_O
    );
  CTX_CNT_10_XUSED : X_BUF
    port map (
      I => CTX_CNT_10_FROM,
      O => Q_n0272
    );
  Q_n00291 : X_LUT4
    generic map(
      INIT => X"0303"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0108,
      ADR2 => RESET_IBUF,
      ADR3 => VCC,
      O => PCM1I_1_GROM
    );
  PCM1I_1_CKINV : X_INV
    port map (
      I => N12117,
      O => PCM1I_1_CKMUXNOT
    );
  PCM1I_1_YUSED : X_BUF
    port map (
      I => PCM1I_1_GROM,
      O => Q_n00291_O
    );
  CTX_CNT_1_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_1_FFY_RST
    );
  CTX_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_0_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_1_FFY_RST,
      O => CTX_CNT(0)
    );
  Q_n0039_1_1 : X_LUT4
    generic map(
      INIT => X"0808"
    )
    port map (
      ADR0 => N7697,
      ADR1 => Q_n0067(1),
      ADR2 => Q_n0085,
      ADR3 => VCC,
      O => Q_n0039_1_1_O
    );
  Q_n0039_0_1 : X_LUT4
    generic map(
      INIT => X"CFCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0085,
      ADR2 => CTX_CNT(0),
      ADR3 => N7697,
      O => Q_n0039_0_1_O
    );
  Q_n0039_3_1 : X_LUT4
    generic map(
      INIT => X"5000"
    )
    port map (
      ADR0 => Q_n0085,
      ADR1 => VCC,
      ADR2 => Q_n0067(3),
      ADR3 => N7697,
      O => Q_n0039_3_1_O
    );
  Q_n0039_2_1 : X_LUT4
    generic map(
      INIT => X"0088"
    )
    port map (
      ADR0 => N7697,
      ADR1 => Q_n0067(2),
      ADR2 => VCC,
      ADR3 => Q_n0085,
      O => Q_n0039_2_1_O
    );
  Q_n0039_5_1 : X_LUT4
    generic map(
      INIT => X"0808"
    )
    port map (
      ADR0 => N7697,
      ADR1 => Q_n0067(5),
      ADR2 => Q_n0085,
      ADR3 => VCC,
      O => Q_n0039_5_1_O
    );
  Q_n0039_4_1 : X_LUT4
    generic map(
      INIT => X"4400"
    )
    port map (
      ADR0 => Q_n0085,
      ADR1 => Q_n0067(4),
      ADR2 => VCC,
      ADR3 => N7697,
      O => Q_n0039_4_1_O
    );
  Q_n0039_7_1 : X_LUT4
    generic map(
      INIT => X"00C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0067(7),
      ADR2 => N7697,
      ADR3 => Q_n0085,
      O => Q_n0039_7_1_O
    );
  Q_n0039_6_1 : X_LUT4
    generic map(
      INIT => X"00C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0067(6),
      ADR2 => N7697,
      ADR3 => Q_n0085,
      O => Q_n0039_6_1_O
    );
  CTX_CNT_9_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_9_FFX_RST
    );
  CTX_CNT_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_9_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_9_FFX_RST,
      O => CTX_CNT(9)
    );
  Q_n0039_9_1 : X_LUT4
    generic map(
      INIT => X"00A0"
    )
    port map (
      ADR0 => Q_n0067(9),
      ADR1 => VCC,
      ADR2 => N7697,
      ADR3 => Q_n0085,
      O => Q_n0039_9_1_O
    );
  Q_n0039_8_1 : X_LUT4
    generic map(
      INIT => X"3000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0085,
      ADR2 => N7697,
      ADR3 => Q_n0067(8),
      O => Q_n0039_8_1_O
    );
  Q_n021625 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CNT(6),
      ADR1 => CNT(7),
      ADR2 => CNT(5),
      ADR3 => CNT(4),
      O => CHOICE503_FROM
    );
  MCTX_RP_ClkEn_INV1 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => Q_n0079,
      ADR1 => MCTXE,
      ADR2 => CHOICE496,
      ADR3 => CHOICE503,
      O => CHOICE503_GROM
    );
  CHOICE503_XUSED : X_BUF
    port map (
      I => CHOICE503_FROM,
      O => CHOICE503
    );
  CHOICE503_YUSED : X_BUF
    port map (
      I => CHOICE503_GROM,
      O => MCTX_RP_0_N1147
    );
  Ker7695_SW0 : X_LUT4
    generic map(
      INIT => X"CC00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0123,
      ADR2 => VCC,
      ADR3 => CTX_CNT(7),
      O => Ker7695_SW0_O_FROM
    );
  Ker7695 : X_LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => CTX_CNT(9),
      ADR2 => CTX_CNT(8),
      ADR3 => Ker7695_SW0_O,
      O => Ker7695_SW0_O_GROM
    );
  Ker7695_SW0_O_XUSED : X_BUF
    port map (
      I => Ker7695_SW0_O_FROM,
      O => Ker7695_SW0_O
    );
  Ker7695_SW0_O_YUSED : X_BUF
    port map (
      I => Ker7695_SW0_O_GROM,
      O => N7697
    );
  MFCD_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MFCD_FFX_RST
    );
  MFCD_313 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0060,
      CE => MFCD_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => MFCD_FFX_RST,
      O => MFCD
    );
  MFCD_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MFCD_FFY_RST
    );
  MFCC_314 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0059,
      CE => MFCD_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => MFCD_FFY_RST,
      O => MFCC
    );
  Mmux_n0060_Result1 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => MFCD,
      ADR1 => Q_n0301,
      ADR2 => VCC,
      ADR3 => N12101,
      O => Q_n0060
    );
  Mmux_n0059_Result1 : X_LUT4
    generic map(
      INIT => X"FC0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N12099,
      ADR2 => Q_n0301,
      ADR3 => MFCC,
      O => Q_n0059
    );
  MFCD_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => MFCD_CEMUXNOT
    );
  CRX_CNT_10_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_10_FFX_RST
    );
  CRX_CNT_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(10),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_10_FFX_RST,
      O => CRX_CNT(10)
    );
  CRX_CNT_10_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_10_FFY_RST
    );
  CRX_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(0),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_10_FFY_RST,
      O => CRX_CNT(0)
    );
  Q_n0042_10_1 : X_LUT4
    generic map(
      INIT => X"5000"
    )
    port map (
      ADR0 => Q_n0086,
      ADR1 => VCC,
      ADR2 => N7683,
      ADR3 => Q_n0068(10),
      O => Q_n0042(10)
    );
  Q_n0042_0_1 : X_LUT4
    generic map(
      INIT => X"AAEE"
    )
    port map (
      ADR0 => Q_n0086,
      ADR1 => N7683,
      ADR2 => VCC,
      ADR3 => CRX_CNT(0),
      O => Q_n0042(0)
    );
  CRX_CNT_3_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_3_FFX_RST
    );
  CRX_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(3),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_3_FFX_RST,
      O => CRX_CNT(3)
    );
  CRX_CNT_3_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_3_FFY_RST
    );
  CRX_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(2),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_3_FFY_RST,
      O => CRX_CNT(2)
    );
  Q_n0042_3_1 : X_LUT4
    generic map(
      INIT => X"0A00"
    )
    port map (
      ADR0 => N7683,
      ADR1 => VCC,
      ADR2 => Q_n0086,
      ADR3 => Q_n0068(3),
      O => Q_n0042(3)
    );
  Q_n0042_2_1 : X_LUT4
    generic map(
      INIT => X"00A0"
    )
    port map (
      ADR0 => N7683,
      ADR1 => VCC,
      ADR2 => Q_n0068(2),
      ADR3 => Q_n0086,
      O => Q_n0042(2)
    );
  CRX_CNT_5_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_5_FFY_RST
    );
  CRX_CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(4),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_5_FFY_RST,
      O => CRX_CNT(4)
    );
  CRX_CNT_5_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_5_FFX_RST
    );
  CRX_CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(5),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_5_FFX_RST,
      O => CRX_CNT(5)
    );
  Q_n0042_5_1 : X_LUT4
    generic map(
      INIT => X"4400"
    )
    port map (
      ADR0 => Q_n0086,
      ADR1 => Q_n0068(5),
      ADR2 => VCC,
      ADR3 => N7683,
      O => Q_n0042(5)
    );
  Q_n0042_4_1 : X_LUT4
    generic map(
      INIT => X"0088"
    )
    port map (
      ADR0 => Q_n0068(4),
      ADR1 => N7683,
      ADR2 => VCC,
      ADR3 => Q_n0086,
      O => Q_n0042(4)
    );
  CRX_CNT_7_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_7_FFY_RST
    );
  CRX_CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(6),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_7_FFY_RST,
      O => CRX_CNT(6)
    );
  Q_n0042_7_1 : X_LUT4
    generic map(
      INIT => X"00A0"
    )
    port map (
      ADR0 => N7683,
      ADR1 => VCC,
      ADR2 => Q_n0068(7),
      ADR3 => Q_n0086,
      O => Q_n0042(7)
    );
  Q_n0042_6_1 : X_LUT4
    generic map(
      INIT => X"00A0"
    )
    port map (
      ADR0 => N7683,
      ADR1 => VCC,
      ADR2 => Q_n0068(6),
      ADR3 => Q_n0086,
      O => Q_n0042(6)
    );
  Q_n0042_9_1 : X_LUT4
    generic map(
      INIT => X"00C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N7683,
      ADR2 => Q_n0068(9),
      ADR3 => Q_n0086,
      O => Q_n0042(9)
    );
  Q_n0042_8_1 : X_LUT4
    generic map(
      INIT => X"4400"
    )
    port map (
      ADR0 => Q_n0086,
      ADR1 => Q_n0068(8),
      ADR2 => VCC,
      ADR3 => N7683,
      O => Q_n0042(8)
    );
  Mmux_n0048_Result1 : X_LUT4
    generic map(
      INIT => X"EFA0"
    )
    port map (
      ADR0 => N8130,
      ADR1 => N7917,
      ADR2 => N12101,
      ADR3 => LED_Y,
      O => Q_n0048
    );
  Mmux_n0047_Result1 : X_LUT4
    generic map(
      INIT => X"FB88"
    )
    port map (
      ADR0 => N8130,
      ADR1 => N12099,
      ADR2 => N7917,
      ADR3 => LED_G,
      O => Q_n0047
    );
  LED_Y_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => LED_Y_CEMUXNOT
    );
  Q_n0034_0_1 : X_LUT4
    generic map(
      INIT => X"0037"
    )
    port map (
      ADR0 => MCTX_CNT(2),
      ADR1 => MCTX_CNT(3),
      ADR2 => MCTX_CNT(1),
      ADR3 => MCTX_CNT(0),
      O => Q_n0034(0)
    );
  Q_n0034_3_1 : X_LUT4
    generic map(
      INIT => X"0CC0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0121(3),
      ADR2 => N7775,
      ADR3 => MCTX_CNT(3),
      O => Q_n0034(3)
    );
  Q_n0034_2_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => Q_n0121(2),
      ADR1 => MCTX_CNT(3),
      ADR2 => N7775,
      ADR3 => VCC,
      O => Q_n0034(2)
    );
  Mmux_n0036_Result_2_1 : X_LUT4
    generic map(
      INIT => X"EE44"
    )
    port map (
      ADR0 => Q_n0079,
      ADR1 => MCTXO(3),
      ADR2 => VCC,
      ADR3 => Q_n0289(11),
      O => Q_n0036(2)
    );
  Mmux_n0036_Result_1_1 : X_LUT4
    generic map(
      INIT => X"AAF0"
    )
    port map (
      ADR0 => Q_n0289(10),
      ADR1 => VCC,
      ADR2 => MCTXO(2),
      ADR3 => Q_n0079,
      O => Q_n0036(1)
    );
  Mmux_n0036_Result_4_1 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => Q_n0289(13),
      ADR1 => Q_n0079,
      ADR2 => VCC,
      ADR3 => MCTXO(5),
      O => Q_n0036(4)
    );
  Mmux_n0036_Result_3_1 : X_LUT4
    generic map(
      INIT => X"DD88"
    )
    port map (
      ADR0 => Q_n0079,
      ADR1 => Q_n0289(12),
      ADR2 => VCC,
      ADR3 => MCTXO(4),
      O => Q_n0036(3)
    );
  Mmux_n0036_Result_0_1 : X_LUT4
    generic map(
      INIT => X"5500"
    )
    port map (
      ADR0 => Q_n0079,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MCTXO(1),
      O => MCTXO_5_FROM
    );
  Mmux_n0036_Result_5_1 : X_LUT4
    generic map(
      INIT => X"EE44"
    )
    port map (
      ADR0 => Q_n0079,
      ADR1 => MCTXO(6),
      ADR2 => VCC,
      ADR3 => Q_n0289(14),
      O => Q_n0036(5)
    );
  MCTXO_5_XUSED : X_BUF
    port map (
      I => MCTXO_5_FROM,
      O => Q_n0036(0)
    );
  Mmux_n0036_Result_8_1 : X_LUT4
    generic map(
      INIT => X"CFCF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0289(17),
      ADR2 => Q_n0079,
      ADR3 => VCC,
      O => Q_n0036(8)
    );
  Mmux_n0036_Result_7_1 : X_LUT4
    generic map(
      INIT => X"CFC0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0289(16),
      ADR2 => Q_n0079,
      ADR3 => MCTXO(8),
      O => Q_n0036(7)
    );
  Mmux_n0051_Result_1_1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Q_n0300,
      ADR1 => PCM1TS(1),
      ADR2 => N12101,
      ADR3 => VCC,
      O => Q_n0051(1)
    );
  Mmux_n0050_Result_1_1 : X_LUT4
    generic map(
      INIT => X"CCF0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PCM1SEL(1),
      ADR2 => N12101,
      ADR3 => Q_n0299,
      O => Q_n0050(1)
    );
  PCM1TS_1_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => PCM1TS_1_CEMUXNOT
    );
  Mmux_n0050_Result_2_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => Q_n0299,
      ADR1 => N12103,
      ADR2 => PCM1SEL(2),
      ADR3 => VCC,
      O => Q_n0050(2)
    );
  PCM1SEL_2_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => PCM1SEL_2_CEMUXNOT
    );
  CRXI_1_LOGIC_ZERO_315 : X_ZERO
    port map (
      O => CRXI_1_LOGIC_ZERO
    );
  Q_n0044_1_1 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => CRXI(2),
      ADR1 => Q_n0086,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_n0044(1)
    );
  Q_n0044_0_1 : X_LUT4
    generic map(
      INIT => X"3300"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0086,
      ADR2 => VCC,
      ADR3 => CRXI(1),
      O => Q_n0044(0)
    );
  CRXI_3_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_3_FFY_RST
    );
  CRXI_3_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_3_LOGIC_ZERO,
      O => CRXI_3_FFY_SET
    );
  CRXI_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(2),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_3_FFY_SET,
      RST => CRXI_3_FFY_RST,
      O => CRXI(2)
    );
  CRXI_3_LOGIC_ZERO_316 : X_ZERO
    port map (
      O => CRXI_3_LOGIC_ZERO
    );
  Q_n0044_3_1 : X_LUT4
    generic map(
      INIT => X"00F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CRXI(4),
      ADR3 => Q_n0086,
      O => Q_n0044(3)
    );
  Q_n0044_2_1 : X_LUT4
    generic map(
      INIT => X"00CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CRXI(3),
      ADR2 => VCC,
      ADR3 => Q_n0086,
      O => Q_n0044(2)
    );
  CRXI_5_LOGIC_ZERO_317 : X_ZERO
    port map (
      O => CRXI_5_LOGIC_ZERO
    );
  Q_n0044_5_1 : X_LUT4
    generic map(
      INIT => X"5500"
    )
    port map (
      ADR0 => Q_n0086,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CRXI(6),
      O => Q_n0044(5)
    );
  Q_n0044_4_1 : X_LUT4
    generic map(
      INIT => X"5050"
    )
    port map (
      ADR0 => Q_n0086,
      ADR1 => VCC,
      ADR2 => CRXI(5),
      ADR3 => VCC,
      O => Q_n0044(4)
    );
  CRXI_7_LOGIC_ZERO_318 : X_ZERO
    port map (
      O => CRXI_7_LOGIC_ZERO
    );
  Q_n0044_7_1 : X_LUT4
    generic map(
      INIT => X"00F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CRX_IBUF,
      ADR3 => Q_n0086,
      O => Q_n0044(7)
    );
  Q_n0044_6_1 : X_LUT4
    generic map(
      INIT => X"00F0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CRXI(7),
      ADR3 => Q_n0086,
      O => Q_n0044(6)
    );
  CTXI_1_LOGIC_ZERO_319 : X_ZERO
    port map (
      O => CTXI_1_LOGIC_ZERO
    );
  Q_n0041_1_1 : X_LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => N8104,
      ADR2 => CTX_CNT(7),
      ADR3 => CTXI(2),
      O => Q_n0041(1)
    );
  Q_n0041_0_1 : X_LUT4
    generic map(
      INIT => X"C8CC"
    )
    port map (
      ADR0 => CTX_CNT(7),
      ADR1 => CTXI(1),
      ADR2 => CTX_CNT(10),
      ADR3 => N8104,
      O => Q_n0041(0)
    );
  CTXI_3_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_3_FFY_RST
    );
  CTXI_3_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_3_LOGIC_ZERO,
      O => CTXI_3_FFY_SET
    );
  CTXI_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(2),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_3_FFY_SET,
      RST => CTXI_3_FFY_RST,
      O => CTXI(2)
    );
  CTXI_3_LOGIC_ZERO_320 : X_ZERO
    port map (
      O => CTXI_3_LOGIC_ZERO
    );
  Q_n0041_3_1 : X_LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      ADR0 => CTXI(4),
      ADR1 => CTX_CNT(10),
      ADR2 => N8104,
      ADR3 => CTX_CNT(7),
      O => Q_n0041(3)
    );
  Q_n0041_2_1 : X_LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      ADR0 => CTXI(3),
      ADR1 => N8104,
      ADR2 => CTX_CNT(7),
      ADR3 => CTX_CNT(10),
      O => Q_n0041(2)
    );
  CTXI_5_LOGIC_ZERO_321 : X_ZERO
    port map (
      O => CTXI_5_LOGIC_ZERO
    );
  Q_n0041_5_1 : X_LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => N8104,
      ADR2 => CTX_CNT(7),
      ADR3 => CTXI(6),
      O => Q_n0041(5)
    );
  Q_n0041_4_1 : X_LUT4
    generic map(
      INIT => X"CCC4"
    )
    port map (
      ADR0 => N8104,
      ADR1 => CTXI(5),
      ADR2 => CTX_CNT(10),
      ADR3 => CTX_CNT(7),
      O => Q_n0041(4)
    );
  CTXI_7_LOGIC_ZERO_322 : X_ZERO
    port map (
      O => CTXI_7_LOGIC_ZERO
    );
  Q_n0041_7_1 : X_LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      ADR0 => N12097,
      ADR1 => CTX_CNT(7),
      ADR2 => N8104,
      ADR3 => CTX_CNT(10),
      O => Q_n0041(7)
    );
  Q_n0041_6_1 : X_LUT4
    generic map(
      INIT => X"EF00"
    )
    port map (
      ADR0 => CTX_CNT(7),
      ADR1 => CTX_CNT(10),
      ADR2 => N8104,
      ADR3 => CTXI(7),
      O => Q_n0041(6)
    );
  Mmux_n0051_Result_3_1 : X_LUT4
    generic map(
      INIT => X"F3C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Q_n0300,
      ADR2 => PCM1TS(3),
      ADR3 => N12105,
      O => Q_n0051(3)
    );
  Mmux_n0051_Result_2_1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Q_n0300,
      ADR1 => PCM1TS(2),
      ADR2 => N12103,
      ADR3 => VCC,
      O => Q_n0051(2)
    );
  PCM1TS_3_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => PCM1TS_3_CEMUXNOT
    );
  Mmux_n0051_Result_5_1 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => N12109,
      ADR1 => VCC,
      ADR2 => PCM1TS(5),
      ADR3 => Q_n0300,
      O => Q_n0051(5)
    );
  Mmux_n0051_Result_4_1 : X_LUT4
    generic map(
      INIT => X"AFA0"
    )
    port map (
      ADR0 => PCM1TS(4),
      ADR1 => VCC,
      ADR2 => Q_n0300,
      ADR3 => N12107,
      O => Q_n0051(4)
    );
  PCM1TS_5_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => PCM1TS_5_CEMUXNOT
    );
  Q_n0077_2_182 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => KA_I_2_IBUF,
      ADR1 => A_3_IBUF,
      ADR2 => N8136,
      ADR3 => A_2_IBUF,
      O => CHOICE547_FROM
    );
  Q_n0077_2_201 : X_LUT4
    generic map(
      INIT => X"0F0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CHOICE542,
      ADR2 => A_5_IBUF,
      ADR3 => CHOICE547,
      O => CHOICE547_GROM
    );
  CHOICE547_XUSED : X_BUF
    port map (
      I => CHOICE547_FROM,
      O => CHOICE547
    );
  CHOICE547_YUSED : X_BUF
    port map (
      I => CHOICE547_GROM,
      O => D_2_IOBUF
    );
  Q_n0077_0_10 : X_LUT4
    generic map(
      INIT => X"1100"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => VCC,
      ADR3 => A_4_IBUF,
      O => CHOICE557_FROM
    );
  Q_n0077_3_104 : X_LUT4
    generic map(
      INIT => X"1111"
    )
    port map (
      ADR0 => A_4_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CHOICE557_GROM
    );
  CHOICE557_XUSED : X_BUF
    port map (
      I => CHOICE557_FROM,
      O => CHOICE557
    );
  CHOICE557_YUSED : X_BUF
    port map (
      I => CHOICE557_GROM,
      O => CHOICE337
    );
  Q_n02711 : X_LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => CTX_CNT(7),
      ADR2 => N12097,
      ADR3 => N8104,
      O => Q_n0271_FROM
    );
  Q_n00241 : X_LUT4
    generic map(
      INIT => X"A000"
    )
    port map (
      ADR0 => CTX_CNT(10),
      ADR1 => VCC,
      ADR2 => N8104,
      ADR3 => CTX_CNT(7),
      O => Q_n0271_GROM
    );
  Q_n0271_XUSED : X_BUF
    port map (
      I => Q_n0271_FROM,
      O => Q_n0271
    );
  Q_n0271_YUSED : X_BUF
    port map (
      I => Q_n0271_GROM,
      O => Q_n0024
    );
  Q_n0077_3_131 : X_LUT4
    generic map(
      INIT => X"0003"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N12336,
      ADR2 => A_2_IBUF,
      ADR3 => A_3_IBUF,
      O => CHOICE345_FROM
    );
  Q_n0077_3_152 : X_LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => CHOICE337,
      ADR2 => CHOICE334,
      ADR3 => CHOICE345,
      O => CHOICE345_GROM
    );
  CHOICE345_XUSED : X_BUF
    port map (
      I => CHOICE345_FROM,
      O => CHOICE345
    );
  CHOICE345_YUSED : X_BUF
    port map (
      I => CHOICE345_GROM,
      O => D_3_IOBUF
    );
  Q_n02801 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => N8095,
      ADR1 => CSn_IBUF,
      ADR2 => N8201,
      ADR3 => A_0_IBUF,
      O => Q_n0280_FROM
    );
  Q_n00271 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => N8095,
      ADR1 => CSn_IBUF,
      ADR2 => N8201,
      ADR3 => A_0_IBUF,
      O => Q_n0280_GROM
    );
  Q_n0280_XUSED : X_BUF
    port map (
      I => Q_n0280_FROM,
      O => Q_n0280
    );
  Q_n0280_YUSED : X_BUF
    port map (
      I => Q_n0280_GROM,
      O => Q_n0027
    );
  Q_n0077_3_128 : X_LUT4
    generic map(
      INIT => X"0033"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_2_IBUF,
      ADR2 => VCC,
      ADR3 => A_3_IBUF,
      O => CHOICE344_FROM
    );
  Q_n0077_0_166 : X_LUT4
    generic map(
      INIT => X"B000"
    )
    port map (
      ADR0 => KA_I_0_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => CHOICE344,
      O => CHOICE344_GROM
    );
  CHOICE344_XUSED : X_BUF
    port map (
      I => CHOICE344_FROM,
      O => CHOICE344
    );
  CHOICE344_YUSED : X_BUF
    port map (
      I => CHOICE344_GROM,
      O => CHOICE595
    );
  Q_n03001 : X_LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => A_2_IBUF,
      ADR3 => N8095,
      O => PCM1TS_0_FROM
    );
  Mmux_n0051_Result_0_1 : X_LUT4
    generic map(
      INIT => X"CCF0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PCM1TS(0),
      ADR2 => N12099,
      ADR3 => Q_n0300,
      O => Q_n0051(0)
    );
  PCM1TS_0_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => PCM1TS_0_CEMUXNOT
    );
  PCM1TS_0_XUSED : X_BUF
    port map (
      I => PCM1TS_0_FROM,
      O => Q_n0300
    );
  RESET_IBUF_1_323 : X_LUT4
    generic map(
      INIT => X"FF00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RESET_IBUF,
      O => RESET_IBUF_1_FROM
    );
  Q_n03101 : X_LUT4
    generic map(
      INIT => X"0055"
    )
    port map (
      ADR0 => LED_R,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RESET_IBUF,
      O => RESET_IBUF_1_GROM
    );
  RESET_IBUF_1_XUSED : X_BUF
    port map (
      I => RESET_IBUF_1_FROM,
      O => RESET_IBUF_1
    );
  RESET_IBUF_1_YUSED : X_BUF
    port map (
      I => RESET_IBUF_1_GROM,
      O => LED_3_OBUF
    );
  Q_n02151 : X_LUT4
    generic map(
      INIT => X"FFF3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_4_IBUF,
      ADR2 => A_2_IBUF,
      ADR3 => A_1_IBUF,
      O => Q_n0215_FROM
    );
  Ker78331 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_3_IBUF,
      ADR2 => A_5_IBUF,
      ADR3 => Q_n0215,
      O => Q_n0215_GROM
    );
  Q_n0215_XUSED : X_BUF
    port map (
      I => Q_n0215_FROM,
      O => Q_n0215
    );
  Q_n0215_YUSED : X_BUF
    port map (
      I => Q_n0215_GROM,
      O => N7835
    );
  SYNC4I_324 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => SYNC4_IDELAY,
      CE => VCC,
      CLK => SYNC4_ICLKNOT,
      SET => GND,
      RST => SYNC4_IFF_RST,
      O => SYNC4I
    );
  SYNC4_IFF_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => SYNC4_IFF_RST
    );
  Q_n0077_4_126 : X_LUT4
    generic map(
      INIT => X"2320"
    )
    port map (
      ADR0 => PCM1O(4),
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => CRXO(4),
      O => CHOICE482_FROM
    );
  Q_n0077_4_129 : X_LUT4
    generic map(
      INIT => X"0A00"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => VCC,
      ADR2 => A_2_IBUF,
      ADR3 => CHOICE482,
      O => CHOICE482_GROM
    );
  CHOICE482_XUSED : X_BUF
    port map (
      I => CHOICE482_FROM,
      O => CHOICE482
    );
  CHOICE482_YUSED : X_BUF
    port map (
      I => CHOICE482_GROM,
      O => CHOICE483
    );
  Q_n03091 : X_LUT4
    generic map(
      INIT => X"0033"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RESET_IBUF,
      ADR2 => VCC,
      ADR3 => LED_Y,
      O => LED_2_OBUF_FROM
    );
  Q_n03081 : X_LUT4
    generic map(
      INIT => X"DDDD"
    )
    port map (
      ADR0 => LED_G,
      ADR1 => RESET_IBUF,
      ADR2 => VCC,
      ADR3 => VCC,
      O => LED_2_OBUF_GROM
    );
  LED_2_OBUF_XUSED : X_BUF
    port map (
      I => LED_2_OBUF_FROM,
      O => LED_2_OBUF
    );
  LED_2_OBUF_YUSED : X_BUF
    port map (
      I => LED_2_OBUF_GROM,
      O => LED_1_OBUF
    );
  Q_n00791 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => MCTX_CNT(1),
      ADR1 => MCTX_CNT(0),
      ADR2 => MCTX_CNT(3),
      ADR3 => MCTX_CNT(2),
      O => MCTXO_6_FROM
    );
  Mmux_n0036_Result_6_1 : X_LUT4
    generic map(
      INIT => X"F0CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => MCTXO(7),
      ADR2 => Q_n0289(15),
      ADR3 => Q_n0079,
      O => Q_n0036(6)
    );
  MCTXO_6_XUSED : X_BUF
    port map (
      I => MCTXO_6_FROM,
      O => Q_n0079
    );
  Q_n0077_4_169 : X_LUT4
    generic map(
      INIT => X"DDDC"
    )
    port map (
      ADR0 => A_4_IBUF,
      ADR1 => CHOICE453,
      ADR2 => CHOICE483,
      ADR3 => CHOICE474,
      O => CHOICE487_FROM
    );
  Q_n0077_4_183 : X_LUT4
    generic map(
      INIT => X"0F00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => A_5_IBUF,
      ADR3 => CHOICE487,
      O => CHOICE487_GROM
    );
  CHOICE487_XUSED : X_BUF
    port map (
      I => CHOICE487_FROM,
      O => CHOICE487
    );
  CHOICE487_YUSED : X_BUF
    port map (
      I => CHOICE487_GROM,
      O => D_4_IOBUF
    );
  Q_n02821 : X_LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => CSn_IBUF,
      ADR3 => N8117,
      O => Q_n0282_FROM
    );
  Q_n02811 : X_LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => N8117,
      ADR2 => A_1_IBUF,
      ADR3 => CSn_IBUF,
      O => Q_n0282_GROM
    );
  Q_n0282_XUSED : X_BUF
    port map (
      I => Q_n0282_FROM,
      O => Q_n0282
    );
  Q_n0282_YUSED : X_BUF
    port map (
      I => Q_n0282_GROM,
      O => Q_n0281
    );
  Q_n0077_7_46 : X_LUT4
    generic map(
      INIT => X"5088"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => PCM1O(7),
      ADR2 => CTXO(7),
      ADR3 => A_2_IBUF,
      O => CHOICE171_FROM
    );
  Q_n0301_SW0 : X_LUT4
    generic map(
      INIT => X"AFFF"
    )
    port map (
      ADR0 => A_4_IBUF,
      ADR1 => VCC,
      ADR2 => A_3_IBUF,
      ADR3 => A_2_IBUF,
      O => CHOICE171_GROM
    );
  CHOICE171_XUSED : X_BUF
    port map (
      I => CHOICE171_FROM,
      O => CHOICE171
    );
  CHOICE171_YUSED : X_BUF
    port map (
      I => CHOICE171_GROM,
      O => N8409
    );
  Q_n0086_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CRX_CNT(4),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => CRX_CNT(5),
      O => N10193_FROM
    );
  Q_n02751 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => Q_n0125,
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(10),
      ADR3 => N7799,
      O => N10193_GROM
    );
  N10193_XUSED : X_BUF
    port map (
      I => N10193_FROM,
      O => N10193
    );
  N10193_YUSED : X_BUF
    port map (
      I => N10193_GROM,
      O => Q_n0275
    );
  Q_n02991 : X_LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => N8095,
      O => PCM1SEL_0_FROM
    );
  Mmux_n0050_Result_0_1 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => N12099,
      ADR1 => VCC,
      ADR2 => PCM1SEL(0),
      ADR3 => Q_n0299,
      O => Q_n0050(0)
    );
  PCM1SEL_0_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => PCM1SEL_0_CEMUXNOT
    );
  PCM1SEL_0_XUSED : X_BUF
    port map (
      I => PCM1SEL_0_FROM,
      O => Q_n0299
    );
  Mxor_n0187_Result1 : X_LUT4
    generic map(
      INIT => X"33CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => EIRQI_Twice,
      ADR2 => VCC,
      ADR3 => EIRQI_Once,
      O => Q_n0187_GROM
    );
  Q_n0187_YUSED : X_BUF
    port map (
      I => Q_n0187_GROM,
      O => Q_n0187
    );
  SENSEO_LOGIC_ONE_325 : X_ONE
    port map (
      O => SENSEO_LOGIC_ONE
    );
  SENSEO_XUSED : X_BUF
    port map (
      I => SENSEO_DPROUT,
      O => SENSEO
    );
  SENSEO_BYMUX : X_INV
    port map (
      I => SENSEn_IBUF,
      O => SENSEO_BYMUXNOT
    );
  MSYNC4_326 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => SYNC4_OD,
      CE => MCPU,
      CLK => N12117,
      SET => GND,
      RST => SYNC4_OFF_RST,
      O => MSYNC4
    );
  SYNC4_OFF_RSTOR : X_BUF
    port map (
      I => GSR,
      O => SYNC4_OFF_RST
    );
  Q_n0272_SW0 : X_LUT4
    generic map(
      INIT => X"FF5F"
    )
    port map (
      ADR0 => CTX_CNT(7),
      ADR1 => VCC,
      ADR2 => CTX_CNT(10),
      ADR3 => CTX_CNT(9),
      O => N9545_FROM
    );
  Ker8102_SW0 : X_LUT4
    generic map(
      INIT => X"FFEE"
    )
    port map (
      ADR0 => CTX_CNT(4),
      ADR1 => CTX_CNT(5),
      ADR2 => VCC,
      ADR3 => CTX_CNT(9),
      O => N9545_GROM
    );
  N9545_XUSED : X_BUF
    port map (
      I => N9545_FROM,
      O => N9545
    );
  N9545_YUSED : X_BUF
    port map (
      I => N9545_GROM,
      O => N9712
    );
  Ker81151 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_4_IBUF,
      ADR2 => A_5_IBUF,
      ADR3 => A_3_IBUF,
      O => N8117_FROM
    );
  Q_n02831 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => CSn_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => N8117,
      O => N8117_GROM
    );
  N8117_XUSED : X_BUF
    port map (
      I => N8117_FROM,
      O => N8117
    );
  N8117_YUSED : X_BUF
    port map (
      I => N8117_GROM,
      O => Q_n0283
    );
  Ker8121_SW0 : X_LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      ADR0 => CNT(10),
      ADR1 => CNT(4),
      ADR2 => CNT(9),
      ADR3 => CNT(8),
      O => N8572_GROM
    );
  N8572_YUSED : X_BUF
    port map (
      I => N8572_GROM,
      O => N8572
    );
  Q_n0077_1_121 : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_4_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => KA_I_1_IBUF,
      O => CHOICE379_FROM
    );
  Ker81341 : X_LUT4
    generic map(
      INIT => X"0808"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => A_4_IBUF,
      ADR3 => VCC,
      O => CHOICE379_GROM
    );
  CHOICE379_XUSED : X_BUF
    port map (
      I => CHOICE379_FROM,
      O => CHOICE379
    );
  CHOICE379_YUSED : X_BUF
    port map (
      I => CHOICE379_GROM,
      O => N8136
    );
  Ker81281 : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => N8095,
      ADR2 => A_2_IBUF,
      ADR3 => A_0_IBUF,
      O => LED_R_FROM
    );
  Mmux_n0049_Result1 : X_LUT4
    generic map(
      INIT => X"EEA2"
    )
    port map (
      ADR0 => LED_R,
      ADR1 => N12103,
      ADR2 => N7917,
      ADR3 => N8130,
      O => Q_n0049
    );
  LED_R_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => LED_R_CEMUXNOT
    );
  LED_R_XUSED : X_BUF
    port map (
      I => LED_R_FROM,
      O => N8130
    );
  Ker81721 : X_LUT4
    generic map(
      INIT => X"1111"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N8174_FROM
    );
  Q_n0077_3_131_SW0 : X_LUT4
    generic map(
      INIT => X"0777"
    )
    port map (
      ADR0 => KA_I_3_IBUF,
      ADR1 => N8136,
      ADR2 => IEN_EIRQ,
      ADR3 => N8174,
      O => N8174_GROM
    );
  N8174_XUSED : X_BUF
    port map (
      I => N8174_FROM,
      O => N8174
    );
  N8174_YUSED : X_BUF
    port map (
      I => N8174_GROM,
      O => N12336
    );
  Ker80931 : X_LUT4
    generic map(
      INIT => X"0011"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => A_4_IBUF,
      ADR2 => VCC,
      ADR3 => A_5_IBUF,
      O => N8095_FROM
    );
  Ker79151 : X_LUT4
    generic map(
      INIT => X"AFFF"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => VCC,
      ADR2 => A_1_IBUF,
      ADR3 => N8095,
      O => N8095_GROM
    );
  N8095_XUSED : X_BUF
    port map (
      I => N8095_FROM,
      O => N8095
    );
  N8095_YUSED : X_BUF
    port map (
      I => N8095_GROM,
      O => N7917
    );
  Q_n0077_0_179 : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => SENSEO,
      ADR2 => A_1_IBUF,
      ADR3 => A_3_IBUF,
      O => CHOICE600_FROM
    );
  Ker81901 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => A_5_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => Q_n0215,
      O => CHOICE600_GROM
    );
  CHOICE600_XUSED : X_BUF
    port map (
      I => CHOICE600_FROM,
      O => CHOICE600
    );
  CHOICE600_YUSED : X_BUF
    port map (
      I => CHOICE600_GROM,
      O => N8192
    );
  Q_n0077_7_76_SW0 : X_LUT4
    generic map(
      INIT => X"D0DC"
    )
    port map (
      ADR0 => CRXO(7),
      ADR1 => A_2_IBUF,
      ADR2 => A_3_IBUF,
      ADR3 => FCEO(7),
      O => N12261_FROM
    );
  Q_n0077_2_116_SW0 : X_LUT4
    generic map(
      INIT => X"08C8"
    )
    port map (
      ADR0 => CTXO(2),
      ADR1 => A_2_IBUF,
      ADR2 => A_3_IBUF,
      ADR3 => N12095,
      O => N12261_GROM
    );
  N12261_XUSED : X_BUF
    port map (
      I => N12261_FROM,
      O => N12261
    );
  N12261_YUSED : X_BUF
    port map (
      I => N12261_GROM,
      O => N12265
    );
  Q_n0077_5_11_SW0 : X_LUT4
    generic map(
      INIT => X"153F"
    )
    port map (
      ADR0 => IEN_CTXE,
      ADR1 => N8136,
      ADR2 => N12081,
      ADR3 => N8174,
      O => N12280_FROM
    );
  Q_n0077_5_11 : X_LUT4
    generic map(
      INIT => X"0011"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => VCC,
      ADR3 => N12280,
      O => N12280_GROM
    );
  N12280_XUSED : X_BUF
    port map (
      I => N12280_FROM,
      O => N12280
    );
  N12280_YUSED : X_BUF
    port map (
      I => N12280_GROM,
      O => CHOICE417
    );
  Q_n0077_3_75_SW1 : X_LUT4
    generic map(
      INIT => X"BF1F"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => CTXO(3),
      ADR2 => A_2_IBUF,
      ADR3 => SENSEn_IBUF,
      O => N12347_FROM
    );
  Q_n0077_3_75 : X_LUT4
    generic map(
      INIT => X"04AE"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => FCEO(3),
      ADR2 => A_3_IBUF,
      ADR3 => N12347,
      O => N12347_GROM
    );
  N12347_XUSED : X_BUF
    port map (
      I => N12347_FROM,
      O => N12347
    );
  N12347_YUSED : X_BUF
    port map (
      I => N12347_GROM,
      O => CHOICE333
    );
  Ker81991 : X_LUT4
    generic map(
      INIT => X"AA00"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => A_2_IBUF,
      O => N8201_FROM
    );
  Q_n0077_1_12 : X_LUT4
    generic map(
      INIT => X"CA00"
    )
    port map (
      ADR0 => CTXO(1),
      ADR1 => N12093,
      ADR2 => A_3_IBUF,
      ADR3 => N8201,
      O => N8201_GROM
    );
  N8201_XUSED : X_BUF
    port map (
      I => N8201_FROM,
      O => N8201
    );
  N8201_YUSED : X_BUF
    port map (
      I => N8201_GROM,
      O => CHOICE353
    );
  Ker76811 : X_LUT4
    generic map(
      INIT => X"15FF"
    )
    port map (
      ADR0 => N7799,
      ADR1 => CRX_CNT(7),
      ADR2 => Q_n0125,
      ADR3 => CRX_CNT(10),
      O => CRX_CNT_1_FROM
    );
  Q_n0042_1_1 : X_LUT4
    generic map(
      INIT => X"0A00"
    )
    port map (
      ADR0 => Q_n0068(1),
      ADR1 => VCC,
      ADR2 => Q_n0086,
      ADR3 => N7683,
      O => Q_n0042(1)
    );
  CRX_CNT_1_XUSED : X_BUF
    port map (
      I => CRX_CNT_1_FROM,
      O => N7683
    );
  Ker77731 : X_LUT4
    generic map(
      INIT => X"FFEE"
    )
    port map (
      ADR0 => MCTX_CNT(1),
      ADR1 => MCTX_CNT(0),
      ADR2 => VCC,
      ADR3 => MCTX_CNT(2),
      O => MCTX_CNT_1_FROM
    );
  Q_n0034_1_1 : X_LUT4
    generic map(
      INIT => X"0AA0"
    )
    port map (
      ADR0 => Q_n0121(1),
      ADR1 => VCC,
      ADR2 => MCTX_CNT(3),
      ADR3 => N7775,
      O => Q_n0034(1)
    );
  MCTX_CNT_1_XUSED : X_BUF
    port map (
      I => MCTX_CNT_1_FROM,
      O => N7775
    );
  Q_n0276_SW0 : X_LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      ADR0 => CRX_CNT(9),
      ADR1 => CRX_CNT(7),
      ADR2 => CRX_CNT(8),
      ADR3 => CRX_CNT(10),
      O => N9591_FROM
    );
  Ker77971 : X_LUT4
    generic map(
      INIT => X"EEEE"
    )
    port map (
      ADR0 => CRX_CNT(8),
      ADR1 => CRX_CNT(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => N9591_GROM
    );
  N9591_XUSED : X_BUF
    port map (
      I => N9591_FROM,
      O => N9591
    );
  N9591_YUSED : X_BUF
    port map (
      I => N9591_GROM,
      O => N7799
    );
  Ker78941 : X_LUT4
    generic map(
      INIT => X"3F3F"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CNT(0),
      ADR2 => CNT(1),
      ADR3 => VCC,
      O => N7896_FROM
    );
  Q_n00841 : X_LUT4
    generic map(
      INIT => X"8020"
    )
    port map (
      ADR0 => N8123,
      ADR1 => N7896,
      ADR2 => CNT(3),
      ADR3 => CNT(2),
      O => N7896_GROM
    );
  N7896_XUSED : X_BUF
    port map (
      I => N7896_FROM,
      O => N7896
    );
  N7896_YUSED : X_BUF
    port map (
      I => N7896_GROM,
      O => Q_n0084
    );
  Q_n0273_SW0 : X_LUT4
    generic map(
      INIT => X"F0E0"
    )
    port map (
      ADR0 => CTX_CNT(9),
      ADR1 => CTX_CNT(7),
      ADR2 => CTX_CNT(10),
      ADR3 => CTX_CNT(8),
      O => N10263_FROM
    );
  Q_n0273_327 : X_LUT4
    generic map(
      INIT => X"4474"
    )
    port map (
      ADR0 => N12097,
      ADR1 => Q_n0085,
      ADR2 => Q_n0123,
      ADR3 => N10263,
      O => N10263_GROM
    );
  N10263_XUSED : X_BUF
    port map (
      I => N10263_FROM,
      O => N10263
    );
  N10263_YUSED : X_BUF
    port map (
      I => N10263_GROM,
      O => Q_n0273
    );
  EIRQI_Once_BYMUX : X_INV
    port map (
      I => EIRQn_IBUF,
      O => EIRQI_Once_BYMUXNOT
    );
  INTn45_SW1 : X_LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      ADR0 => IEN_EIRQ,
      ADR1 => CHOICE195,
      ADR2 => CHOICE190,
      ADR3 => Q_n0072,
      O => N12341_FROM
    );
  INTn45 : X_LUT4
    generic map(
      INIT => X"B300"
    )
    port map (
      ADR0 => CHOICE87,
      ADR1 => IEN_CTX,
      ADR2 => CHOICE76,
      ADR3 => N12341,
      O => N12341_GROM
    );
  N12341_XUSED : X_BUF
    port map (
      I => N12341_FROM,
      O => N12341
    );
  N12341_YUSED : X_BUF
    port map (
      I => N12341_GROM,
      O => INTn_OBUF
    );
  MCTXO_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => CTX_OD,
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => CTX_OFF_SET,
      RST => GND,
      O => MCTXO(0)
    );
  CTX_OFF_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => CTX_OFF_SET
    );
  Q_n0279_SW1 : X_LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      ADR0 => A_4_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => A_5_IBUF,
      ADR3 => A_3_IBUF,
      O => N12330_FROM
    );
  Q_n0279_328 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => CSn_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => N12330,
      O => N12330_GROM
    );
  N12330_XUSED : X_BUF
    port map (
      I => N12330_FROM,
      O => N12330
    );
  N12330_YUSED : X_BUF
    port map (
      I => N12330_GROM,
      O => Q_n0279
    );
  PCM1I_3_CKINV : X_INV
    port map (
      I => N12117,
      O => PCM1I_3_CKMUXNOT
    );
  PCM1I_5_CKINV : X_INV
    port map (
      I => N12117,
      O => PCM1I_5_CKMUXNOT
    );
  PCM1I_7_CKINV : X_INV
    port map (
      I => N12117,
      O => PCM1I_7_CKMUXNOT
    );
  FCDI_4_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_4_FFY_RST
    );
  FCDI_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(2),
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCDI_4_FFY_RST,
      O => FCDI(3)
    );
  FCDI_7_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_7_FFY_RST
    );
  FCDI_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(6),
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCDI_7_FFY_RST,
      O => FCDI(7)
    );
  Mcompar_n0070_AEB26 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => MCTX_WP(1),
      ADR1 => MCTX_WP(0),
      ADR2 => MCTX_RP(0),
      ADR3 => MCTX_RP(1),
      O => CHOICE398_GROM
    );
  CHOICE398_YUSED : X_BUF
    port map (
      I => CHOICE398_GROM,
      O => CHOICE398
    );
  Mcompar_n0070_AEB53 : X_LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      ADR0 => MCTX_WP(2),
      ADR1 => MCTX_RP(2),
      ADR2 => MCTX_WP(3),
      ADR3 => MCTX_RP(3),
      O => CHOICE409_GROM
    );
  CHOICE409_YUSED : X_BUF
    port map (
      I => CHOICE409_GROM,
      O => CHOICE409
    );
  Mcompar_n0070_AEB54 : X_LUT4
    generic map(
      INIT => X"A0A0"
    )
    port map (
      ADR0 => CHOICE409,
      ADR1 => VCC,
      ADR2 => CHOICE398,
      ADR3 => VCC,
      O => MCTXE_FROM
    );
  INTn22 : X_LUT4
    generic map(
      INIT => X"51F3"
    )
    port map (
      ADR0 => IEN_CTXE,
      ADR1 => IEN_FC,
      ADR2 => Q_n0071,
      ADR3 => MCTXE,
      O => MCTXE_GROM
    );
  MCTXE_XUSED : X_BUF
    port map (
      I => MCTXE_FROM,
      O => MCTXE
    );
  MCTXE_YUSED : X_BUF
    port map (
      I => MCTXE_GROM,
      O => CHOICE190
    );
  Mmux_n0053_Result13 : X_LUT4
    generic map(
      INIT => X"F0F4"
    )
    port map (
      ADR0 => N12099,
      ADR1 => A_0_IBUF,
      ADR2 => N7835,
      ADR3 => Q_n0215,
      O => IEN_FC_FROM
    );
  Mmux_n0053_Result21 : X_LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      ADR0 => N12099,
      ADR1 => IEN_FC,
      ADR2 => N8192,
      ADR3 => CHOICE273,
      O => Q_n0053
    );
  IEN_FC_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => IEN_FC_CEMUXNOT
    );
  IEN_FC_XUSED : X_BUF
    port map (
      I => IEN_FC_FROM,
      O => CHOICE273
    );
  Mcompar_n0071_AEB26 : X_LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      ADR0 => FCE_RP(0),
      ADR1 => FCE_RP(1),
      ADR2 => FCE_WP(0),
      ADR3 => FCE_WP(1),
      O => CHOICE122_GROM
    );
  CHOICE122_YUSED : X_BUF
    port map (
      I => CHOICE122_GROM,
      O => CHOICE122
    );
  FCEO_0_LOGIC_ONE_329 : X_ONE
    port map (
      O => FCEO_0_LOGIC_ONE
    );
  FCEO_0_XUSED : X_BUF
    port map (
      I => FCEO_0_DPROUT,
      O => FCEO(0)
    );
  Mcompar_n0071_AEB53 : X_LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      ADR0 => FCE_RP(2),
      ADR1 => FCE_RP(3),
      ADR2 => FCE_WP(2),
      ADR3 => FCE_WP(3),
      O => CHOICE133_FROM
    );
  Mcompar_n0071_AEB54 : X_LUT4
    generic map(
      INIT => X"AA00"
    )
    port map (
      ADR0 => CHOICE122,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CHOICE133,
      O => CHOICE133_GROM
    );
  CHOICE133_XUSED : X_BUF
    port map (
      I => CHOICE133_FROM,
      O => CHOICE133
    );
  CHOICE133_YUSED : X_BUF
    port map (
      I => CHOICE133_GROM,
      O => Q_n0071
    );
  FCEO_1_LOGIC_ONE_330 : X_ONE
    port map (
      O => FCEO_1_LOGIC_ONE
    );
  FCEO_1_XUSED : X_BUF
    port map (
      I => FCEO_1_DPROUT,
      O => FCEO(1)
    );
  FCEO_2_LOGIC_ONE_331 : X_ONE
    port map (
      O => FCEO_2_LOGIC_ONE
    );
  FCEO_2_XUSED : X_BUF
    port map (
      I => FCEO_2_DPROUT,
      O => FCEO(2)
    );
  FCEO_3_LOGIC_ONE_332 : X_ONE
    port map (
      O => FCEO_3_LOGIC_ONE
    );
  FCEO_3_XUSED : X_BUF
    port map (
      I => FCEO_3_DPROUT,
      O => FCEO(3)
    );
  FCEO_4_LOGIC_ONE_333 : X_ONE
    port map (
      O => FCEO_4_LOGIC_ONE
    );
  FCEO_4_XUSED : X_BUF
    port map (
      I => FCEO_4_DPROUT,
      O => FCEO(4)
    );
  Q_n0077_4_34 : X_LUT4
    generic map(
      INIT => X"0C0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_2_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => VCC,
      O => CHOICE459_FROM
    );
  MCPU_ClkEn_INV1 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => CSn_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => N8095,
      ADR3 => N8174,
      O => CHOICE459_GROM
    );
  CHOICE459_XUSED : X_BUF
    port map (
      I => CHOICE459_FROM,
      O => CHOICE459
    );
  CHOICE459_YUSED : X_BUF
    port map (
      I => CHOICE459_GROM,
      O => MCPU_N801
    );
  Q_n0289_16_XUSED : X_BUF
    port map (
      I => Q_n0289_16_DPROUT,
      O => Q_n0289(16)
    );
  Q_n0289_17_XUSED : X_BUF
    port map (
      I => Q_n0289_17_DPROUT,
      O => Q_n0289(17)
    );
  Q_n0077_3_6 : X_LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      ADR0 => CHOICE110,
      ADR1 => A_3_IBUF,
      ADR2 => IEN_EIRQ,
      ADR3 => CHOICE99,
      O => CHOICE312_FROM
    );
  Q_n0077_3_89 : X_LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      ADR0 => CHOICE319,
      ADR1 => A_2_IBUF,
      ADR2 => CHOICE333,
      ADR3 => CHOICE312,
      O => CHOICE312_GROM
    );
  CHOICE312_XUSED : X_BUF
    port map (
      I => CHOICE312_FROM,
      O => CHOICE312
    );
  CHOICE312_YUSED : X_BUF
    port map (
      I => CHOICE312_GROM,
      O => CHOICE334
    );
  CRXO_0_XUSED : X_BUF
    port map (
      I => CRXO_0_DPROUT,
      O => CRXO(0)
    );
  CRXO_1_XUSED : X_BUF
    port map (
      I => CRXO_1_DPROUT,
      O => CRXO(1)
    );
  CRXO_2_XUSED : X_BUF
    port map (
      I => CRXO_2_DPROUT,
      O => CRXO(2)
    );
  CRXO_3_XUSED : X_BUF
    port map (
      I => CRXO_3_DPROUT,
      O => CRXO(3)
    );
  CRXO_4_XUSED : X_BUF
    port map (
      I => CRXO_4_DPROUT,
      O => CRXO(4)
    );
  CRXO_5_XUSED : X_BUF
    port map (
      I => CRXO_5_DPROUT,
      O => CRXO(5)
    );
  CRXO_6_XUSED : X_BUF
    port map (
      I => CRXO_6_DPROUT,
      O => CRXO(6)
    );
  CRXO_7_XUSED : X_BUF
    port map (
      I => CRXO_7_DPROUT,
      O => CRXO(7)
    );
  Test_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE"
    )
    port map (
      ADR0 => HSSC_IBUF,
      ADR1 => TSYNC_IBUF,
      ADR2 => RESET_IBUF_1,
      ADR3 => VCC,
      O => N8453_FROM
    );
  Test_334 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => PA_7_IBUF,
      ADR1 => PA_6_IBUF,
      ADR2 => PA_5_IBUF,
      ADR3 => N8453,
      O => N8453_GROM
    );
  N8453_XUSED : X_BUF
    port map (
      I => N8453_FROM,
      O => N8453
    );
  N8453_YUSED : X_BUF
    port map (
      I => N8453_GROM,
      O => Test_OBUF
    );
  Q_n0077_0_195_SW0 : X_LUT4
    generic map(
      INIT => X"FECC"
    )
    port map (
      ADR0 => CHOICE570,
      ADR1 => CHOICE585,
      ADR2 => CHOICE564,
      ADR3 => A_2_IBUF,
      O => N12285_FROM
    );
  Q_n0077_0_195 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => CHOICE600,
      ADR1 => CHOICE595,
      ADR2 => A_0_IBUF,
      ADR3 => N12285,
      O => N12285_GROM
    );
  N12285_XUSED : X_BUF
    port map (
      I => N12285_FROM,
      O => N12285
    );
  N12285_YUSED : X_BUF
    port map (
      I => N12285_GROM,
      O => CHOICE602
    );
  Mmux_n0054_Result13 : X_LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => Q_n0215,
      ADR2 => N12101,
      ADR3 => N7835,
      O => IEN_EIRQ_FROM
    );
  Mmux_n0054_Result21 : X_LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      ADR0 => IEN_EIRQ,
      ADR1 => N8192,
      ADR2 => N12101,
      ADR3 => CHOICE249,
      O => Q_n0054
    );
  IEN_EIRQ_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => IEN_EIRQ_CEMUXNOT
    );
  IEN_EIRQ_XUSED : X_BUF
    port map (
      I => IEN_EIRQ_FROM,
      O => CHOICE249
    );
  Mmux_n0056_Result13 : X_LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      ADR0 => N7835,
      ADR1 => A_0_IBUF,
      ADR2 => N12105,
      ADR3 => Q_n0215,
      O => IEN_CRX_FROM
    );
  Mmux_n0056_Result21 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N8192,
      ADR1 => N12105,
      ADR2 => IEN_CRX,
      ADR3 => CHOICE241,
      O => Q_n0056
    );
  IEN_CRX_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => IEN_CRX_CEMUXNOT
    );
  IEN_CRX_XUSED : X_BUF
    port map (
      I => IEN_CRX_FROM,
      O => CHOICE241
    );
  Mmux_n0058_Result13 : X_LUT4
    generic map(
      INIT => X"CCDC"
    )
    port map (
      ADR0 => Q_n0215,
      ADR1 => N7835,
      ADR2 => A_0_IBUF,
      ADR3 => N12109,
      O => IEN_CTXE_FROM
    );
  Mmux_n0058_Result21 : X_LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      ADR0 => IEN_CTXE,
      ADR1 => N12109,
      ADR2 => N8192,
      ADR3 => CHOICE257,
      O => Q_n0058
    );
  IEN_CTXE_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => IEN_CTXE_CEMUXNOT
    );
  IEN_CTXE_XUSED : X_BUF
    port map (
      I => IEN_CTXE_FROM,
      O => CHOICE257
    );
  Q_n0077_2_52_SW0 : X_LUT4
    generic map(
      INIT => X"A0FF"
    )
    port map (
      ADR0 => CHOICE53,
      ADR1 => VCC,
      ADR2 => CHOICE64,
      ADR3 => IEN_CRX,
      O => N12253_FROM
    );
  Q_n0077_2_52 : X_LUT4
    generic map(
      INIT => X"4045"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => PCM1O(2),
      ADR2 => A_3_IBUF,
      ADR3 => N12253,
      O => N12253_GROM
    );
  N12253_XUSED : X_BUF
    port map (
      I => N12253_FROM,
      O => N12253
    );
  N12253_YUSED : X_BUF
    port map (
      I => N12253_GROM,
      O => CHOICE525
    );
  Q_n0077_1_131 : X_LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      ADR0 => CHOICE379,
      ADR1 => CHOICE344,
      ADR2 => IEN_CTX,
      ADR3 => N8174,
      O => CHOICE384_GROM
    );
  CHOICE384_YUSED : X_BUF
    port map (
      I => CHOICE384_GROM,
      O => CHOICE384
    );
  Q_n0025_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      ADR0 => CRX_CNT(7),
      ADR1 => CRX_CNT(6),
      ADR2 => CRX_CNT(4),
      ADR3 => CRX_CNT(5),
      O => N8480_GROM
    );
  N8480_YUSED : X_BUF
    port map (
      I => N8480_GROM,
      O => N8480
    );
  Q_n0077_2_116 : X_LUT4
    generic map(
      INIT => X"FACA"
    )
    port map (
      ADR0 => CHOICE534,
      ADR1 => N12265,
      ADR2 => A_1_IBUF,
      ADR3 => CHOICE525,
      O => CHOICE537_FROM
    );
  Q_n0077_2_163 : X_LUT4
    generic map(
      INIT => X"0B0A"
    )
    port map (
      ADR0 => CHOICE511,
      ADR1 => A_4_IBUF,
      ADR2 => A_0_IBUF,
      ADR3 => CHOICE537,
      O => CHOICE537_GROM
    );
  CHOICE537_XUSED : X_BUF
    port map (
      I => CHOICE537_FROM,
      O => CHOICE537
    );
  CHOICE537_YUSED : X_BUF
    port map (
      I => CHOICE537_GROM,
      O => CHOICE542
    );
  Q_n0210_SW0 : X_LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      ADR0 => A_4_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => A_3_IBUF,
      ADR3 => A_2_IBUF,
      O => N8536_FROM
    );
  Q_n0210_335 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => CSn_IBUF,
      ADR1 => RDn_IBUF,
      ADR2 => A_5_IBUF,
      ADR3 => N8536,
      O => N8536_GROM
    );
  N8536_XUSED : X_BUF
    port map (
      I => N8536_FROM,
      O => N8536
    );
  N8536_YUSED : X_BUF
    port map (
      I => N8536_GROM,
      O => Q_n0210
    );
  FCEO_5_LOGIC_ONE_336 : X_ONE
    port map (
      O => FCEO_5_LOGIC_ONE
    );
  FCEO_5_XUSED : X_BUF
    port map (
      I => FCEO_5_DPROUT,
      O => FCEO(5)
    );
  FCEO_6_LOGIC_ONE_337 : X_ONE
    port map (
      O => FCEO_6_LOGIC_ONE
    );
  FCEO_6_XUSED : X_BUF
    port map (
      I => FCEO_6_DPROUT,
      O => FCEO(6)
    );
  Mmux_n0055_Result13 : X_LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      ADR0 => Q_n0215,
      ADR1 => N12103,
      ADR2 => A_0_IBUF,
      ADR3 => N7835,
      O => IEN_CTX_FROM
    );
  Mmux_n0055_Result21 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N12103,
      ADR1 => N8192,
      ADR2 => IEN_CTX,
      ADR3 => CHOICE281,
      O => Q_n0055
    );
  IEN_CTX_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => IEN_CTX_CEMUXNOT
    );
  IEN_CTX_XUSED : X_BUF
    port map (
      I => IEN_CTX_FROM,
      O => CHOICE281
    );
  FCEO_7_LOGIC_ONE_338 : X_ONE
    port map (
      O => FCEO_7_LOGIC_ONE
    );
  FCEO_7_XUSED : X_BUF
    port map (
      I => FCEO_7_DPROUT,
      O => FCEO(7)
    );
  Q_n0077_5_71 : X_LUT4
    generic map(
      INIT => X"E222"
    )
    port map (
      ADR0 => FCEO(5),
      ADR1 => A_1_IBUF,
      ADR2 => A_2_IBUF,
      ADR3 => CTXO(5),
      O => CHOICE434_FROM
    );
  Q_n0077_5_82_SW0 : X_LUT4
    generic map(
      INIT => X"2303"
    )
    port map (
      ADR0 => MCTXE,
      ADR1 => A_2_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => IEN_CTXE,
      O => CHOICE434_GROM
    );
  CHOICE434_XUSED : X_BUF
    port map (
      I => CHOICE434_FROM,
      O => CHOICE434
    );
  CHOICE434_YUSED : X_BUF
    port map (
      I => CHOICE434_GROM,
      O => N12269
    );
  Q_n0077_1_20 : X_LUT4
    generic map(
      INIT => X"0404"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => FCEO(1),
      ADR2 => A_3_IBUF,
      ADR3 => VCC,
      O => CHOICE357_FROM
    );
  Q_n0077_5_82_SW1 : X_LUT4
    generic map(
      INIT => X"ABEF"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => A_1_IBUF,
      ADR2 => CRXO(5),
      ADR3 => PCM1O(5),
      O => CHOICE357_GROM
    );
  CHOICE357_XUSED : X_BUF
    port map (
      I => CHOICE357_FROM,
      O => CHOICE357
    );
  CHOICE357_YUSED : X_BUF
    port map (
      I => CHOICE357_GROM,
      O => N12271
    );
  CTXO_0_XUSED : X_BUF
    port map (
      I => CTXO_0_DPROUT,
      O => CTXO(0)
    );
  CTXO_1_XUSED : X_BUF
    port map (
      I => CTXO_1_DPROUT,
      O => CTXO(1)
    );
  CTXO_2_XUSED : X_BUF
    port map (
      I => CTXO_2_DPROUT,
      O => CTXO(2)
    );
  Mmux_n0057_Result13 : X_LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => N12107,
      ADR2 => Q_n0215,
      ADR3 => N7835,
      O => IEN_PCM1_FROM
    );
  Mmux_n0057_Result21 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => N12107,
      ADR1 => N8192,
      ADR2 => IEN_PCM1,
      ADR3 => CHOICE265,
      O => Q_n0057
    );
  IEN_PCM1_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => IEN_PCM1_CEMUXNOT
    );
  IEN_PCM1_XUSED : X_BUF
    port map (
      I => IEN_PCM1_FROM,
      O => CHOICE265
    );
  CTXO_3_XUSED : X_BUF
    port map (
      I => CTXO_3_DPROUT,
      O => CTXO(3)
    );
  CTXO_4_XUSED : X_BUF
    port map (
      I => CTXO_4_DPROUT,
      O => CTXO(4)
    );
  CTXO_5_XUSED : X_BUF
    port map (
      I => CTXO_5_DPROUT,
      O => CTXO(5)
    );
  CTXO_6_XUSED : X_BUF
    port map (
      I => CTXO_6_DPROUT,
      O => CTXO(6)
    );
  CTXO_7_XUSED : X_BUF
    port map (
      I => CTXO_7_DPROUT,
      O => CTXO(7)
    );
  Q_n0077_0_20 : X_LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => CHOICE557,
      ADR2 => A_3_IBUF,
      ADR3 => IEN_FC,
      O => CHOICE559_FROM
    );
  Q_n0077_0_239 : X_LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => A_4_IBUF,
      ADR2 => CHOICE602,
      ADR3 => CHOICE559,
      O => CHOICE559_GROM
    );
  CHOICE559_XUSED : X_BUF
    port map (
      I => CHOICE559_FROM,
      O => CHOICE559
    );
  CHOICE559_YUSED : X_BUF
    port map (
      I => CHOICE559_GROM,
      O => D_0_IOBUF
    );
  Q_n0077_3_24 : X_LUT4
    generic map(
      INIT => X"A0CF"
    )
    port map (
      ADR0 => PCM1O(3),
      ADR1 => CRXO(3),
      ADR2 => A_3_IBUF,
      ADR3 => A_1_IBUF,
      O => CHOICE319_FROM
    );
  Q_n0077_0_51 : X_LUT4
    generic map(
      INIT => X"2320"
    )
    port map (
      ADR0 => CTXO(0),
      ADR1 => A_3_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => FCEO(0),
      O => CHOICE319_GROM
    );
  CHOICE319_XUSED : X_BUF
    port map (
      I => CHOICE319_FROM,
      O => CHOICE319
    );
  CHOICE319_YUSED : X_BUF
    port map (
      I => CHOICE319_GROM,
      O => CHOICE570
    );
  Q_n0077_6_62_SW0 : X_LUT4
    generic map(
      INIT => X"F2F7"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => CTXO(6),
      ADR2 => A_3_IBUF,
      ADR3 => FCEO(6),
      O => N12257_FROM
    );
  Q_n0077_0_36 : X_LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => N12091,
      ADR2 => A_3_IBUF,
      ADR3 => EIRQO,
      O => N12257_GROM
    );
  N12257_XUSED : X_BUF
    port map (
      I => N12257_FROM,
      O => N12257
    );
  N12257_YUSED : X_BUF
    port map (
      I => N12257_GROM,
      O => CHOICE564
    );
  Q_n0077_2_11 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => A_4_IBUF,
      ADR3 => A_1_IBUF,
      O => CHOICE510_FROM
    );
  Q_n0077_2_12 : X_LUT4
    generic map(
      INIT => X"F000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => IEN_CRX,
      ADR3 => CHOICE510,
      O => CHOICE510_GROM
    );
  CHOICE510_XUSED : X_BUF
    port map (
      I => CHOICE510_FROM,
      O => CHOICE510
    );
  CHOICE510_YUSED : X_BUF
    port map (
      I => CHOICE510_GROM,
      O => CHOICE511
    );
  Q_n0077_1_90 : X_LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      ADR0 => CHOICE353,
      ADR1 => CHOICE357,
      ADR2 => A_2_IBUF,
      ADR3 => CHOICE369,
      O => CHOICE373_FROM
    );
  Q_n0077_1_151 : X_LUT4
    generic map(
      INIT => X"0E0C"
    )
    port map (
      ADR0 => CHOICE337,
      ADR1 => CHOICE384,
      ADR2 => A_5_IBUF,
      ADR3 => CHOICE373,
      O => CHOICE373_GROM
    );
  CHOICE373_XUSED : X_BUF
    port map (
      I => CHOICE373_FROM,
      O => CHOICE373
    );
  CHOICE373_YUSED : X_BUF
    port map (
      I => CHOICE373_GROM,
      O => D_1_IOBUF
    );
  Q_n0025_339 : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => CRX_CNT(10),
      ADR1 => N8214,
      ADR2 => N7799,
      ADR3 => N8480,
      O => Q_n0025_GROM
    );
  Q_n0025_YUSED : X_BUF
    port map (
      I => Q_n0025_GROM,
      O => Q_n0025
    );
  Q_n0301_340 : X_LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => N8409,
      O => MFCE_FROM
    );
  Mmux_n0061_Result1 : X_LUT4
    generic map(
      INIT => X"F0CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N12103,
      ADR2 => MFCE,
      ADR3 => Q_n0301,
      O => Q_n0061
    );
  MFCE_CEMUX : X_INV
    port map (
      I => CSn_IBUF,
      O => MFCE_CEMUXNOT
    );
  MFCE_XUSED : X_BUF
    port map (
      I => MFCE_FROM,
      O => Q_n0301
    );
  Q_n0077_4_10 : X_LUT4
    generic map(
      INIT => X"1010"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_0_IBUF,
      ADR2 => A_4_IBUF,
      ADR3 => VCC,
      O => CHOICE451_FROM
    );
  Q_n0077_4_20 : X_LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      ADR0 => A_2_IBUF,
      ADR1 => IEN_PCM1,
      ADR2 => A_3_IBUF,
      ADR3 => CHOICE451,
      O => CHOICE451_GROM
    );
  CHOICE451_XUSED : X_BUF
    port map (
      I => CHOICE451_FROM,
      O => CHOICE451
    );
  CHOICE451_YUSED : X_BUF
    port map (
      I => CHOICE451_GROM,
      O => CHOICE453
    );
  Mcompar_n0072_AEB26 : X_LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      ADR0 => EIRQ_WP(1),
      ADR1 => EIRQ_WP(0),
      ADR2 => EIRQ_RP(1),
      ADR3 => EIRQ_RP(0),
      O => CHOICE99_GROM
    );
  CHOICE99_YUSED : X_BUF
    port map (
      I => CHOICE99_GROM,
      O => CHOICE99
    );
  Mcompar_n0072_AEB53 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => EIRQ_WP(3),
      ADR1 => EIRQ_WP(2),
      ADR2 => EIRQ_RP(2),
      ADR3 => EIRQ_RP(3),
      O => CHOICE110_FROM
    );
  Mcompar_n0072_AEB54 : X_LUT4
    generic map(
      INIT => X"CC00"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CHOICE99,
      ADR2 => VCC,
      ADR3 => CHOICE110,
      O => CHOICE110_GROM
    );
  CHOICE110_XUSED : X_BUF
    port map (
      I => CHOICE110_FROM,
      O => CHOICE110
    );
  CHOICE110_YUSED : X_BUF
    port map (
      I => CHOICE110_GROM,
      O => Q_n0072
    );
  Q_n0077_4_39 : X_LUT4
    generic map(
      INIT => X"8A80"
    )
    port map (
      ADR0 => CHOICE459,
      ADR1 => CTXO(4),
      ADR2 => A_1_IBUF,
      ADR3 => FCEO(4),
      O => CHOICE460_FROM
    );
  Q_n0077_4_98 : X_LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => CHOICE469,
      ADR3 => CHOICE460,
      O => CHOICE460_GROM
    );
  CHOICE460_XUSED : X_BUF
    port map (
      I => CHOICE460_FROM,
      O => CHOICE460
    );
  CHOICE460_YUSED : X_BUF
    port map (
      I => CHOICE460_GROM,
      O => CHOICE474
    );
  Q_n0276_341 : X_LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      ADR0 => Q_n0086,
      ADR1 => CRX_IBUF,
      ADR2 => N9591,
      ADR3 => Q_n0125,
      O => Q_n0276_GROM
    );
  Q_n0276_YUSED : X_BUF
    port map (
      I => Q_n0276_GROM,
      O => Q_n0276
    );
  Q_n0077_4_58 : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => Q_n0075,
      ADR2 => A_1_IBUF,
      ADR3 => IEN_PCM1,
      O => CHOICE468_FROM
    );
  Q_n0077_4_62 : X_LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      ADR0 => A_0_IBUF,
      ADR1 => N12121,
      ADR2 => A_1_IBUF,
      ADR3 => CHOICE468,
      O => CHOICE468_GROM
    );
  CHOICE468_XUSED : X_BUF
    port map (
      I => CHOICE468_FROM,
      O => CHOICE468
    );
  CHOICE468_YUSED : X_BUF
    port map (
      I => CHOICE468_GROM,
      O => CHOICE469
    );
  Q_n0077_5_82 : X_LUT4
    generic map(
      INIT => X"0EFE"
    )
    port map (
      ADR0 => CHOICE434,
      ADR1 => N12269,
      ADR2 => A_3_IBUF,
      ADR3 => N12271,
      O => CHOICE437_FROM
    );
  Q_n0077_5_131 : X_LUT4
    generic map(
      INIT => X"3230"
    )
    port map (
      ADR0 => CHOICE337,
      ADR1 => A_5_IBUF,
      ADR2 => CHOICE417,
      ADR3 => CHOICE437,
      O => CHOICE437_GROM
    );
  CHOICE437_XUSED : X_BUF
    port map (
      I => CHOICE437_FROM,
      O => CHOICE437
    );
  CHOICE437_YUSED : X_BUF
    port map (
      I => CHOICE437_GROM,
      O => D_5_IOBUF
    );
  Q_n0077_2_103 : X_LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      ADR0 => A_3_IBUF,
      ADR1 => A_2_IBUF,
      ADR2 => FCEO(2),
      ADR3 => CRXO(2),
      O => CHOICE534_FROM
    );
  Q_n0077_6_35 : X_LUT4
    generic map(
      INIT => X"C480"
    )
    port map (
      ADR0 => A_1_IBUF,
      ADR1 => A_3_IBUF,
      ADR2 => PCM1O(6),
      ADR3 => CRXO(6),
      O => CHOICE534_GROM
    );
  CHOICE534_XUSED : X_BUF
    port map (
      I => CHOICE534_FROM,
      O => CHOICE534
    );
  CHOICE534_YUSED : X_BUF
    port map (
      I => CHOICE534_GROM,
      O => CHOICE147
    );
  Q_n0077_6_62 : X_LUT4
    generic map(
      INIT => X"1310"
    )
    port map (
      ADR0 => N12257,
      ADR1 => A_0_IBUF,
      ADR2 => A_2_IBUF,
      ADR3 => CHOICE147,
      O => CHOICE151_FROM
    );
  Q_n0077_6_79 : X_LUT4
    generic map(
      INIT => X"0500"
    )
    port map (
      ADR0 => A_5_IBUF,
      ADR1 => VCC,
      ADR2 => A_4_IBUF,
      ADR3 => CHOICE151,
      O => CHOICE151_GROM
    );
  CHOICE151_XUSED : X_BUF
    port map (
      I => CHOICE151_FROM,
      O => CHOICE151
    );
  CHOICE151_YUSED : X_BUF
    port map (
      I => CHOICE151_GROM,
      O => D_6_IOBUF
    );
  Q_n0077_7_76 : X_LUT4
    generic map(
      INIT => X"2023"
    )
    port map (
      ADR0 => CHOICE171,
      ADR1 => A_0_IBUF,
      ADR2 => A_1_IBUF,
      ADR3 => N12261,
      O => CHOICE175_FROM
    );
  Q_n0077_7_93 : X_LUT4
    generic map(
      INIT => X"0500"
    )
    port map (
      ADR0 => A_4_IBUF,
      ADR1 => VCC,
      ADR2 => A_5_IBUF,
      ADR3 => CHOICE175,
      O => CHOICE175_GROM
    );
  CHOICE175_XUSED : X_BUF
    port map (
      I => CHOICE175_FROM,
      O => CHOICE175
    );
  CHOICE175_YUSED : X_BUF
    port map (
      I => CHOICE175_GROM,
      O => D_7_IOBUF
    );
  Mcompar_n0073_AEB26 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => CTX_WP(1),
      ADR1 => CTX_WP(0),
      ADR2 => CTX_RP(0),
      ADR3 => CTX_RP(1),
      O => CHOICE76_GROM
    );
  CHOICE76_YUSED : X_BUF
    port map (
      I => CHOICE76_GROM,
      O => CHOICE76
    );
  Ker8121 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => CNT(7),
      ADR1 => CNT(5),
      ADR2 => CNT(6),
      ADR3 => N8572,
      O => N8123_FROM
    );
  Q_n00831 : X_LUT4
    generic map(
      INIT => X"3900"
    )
    port map (
      ADR0 => N7896,
      ADR1 => CNT(3),
      ADR2 => CNT(2),
      ADR3 => N8123,
      O => N8123_GROM
    );
  N8123_XUSED : X_BUF
    port map (
      I => N8123_FROM,
      O => N8123
    );
  N8123_YUSED : X_BUF
    port map (
      I => N8123_GROM,
      O => Q_n0083
    );
  Mcompar_n0073_AEB53 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => CTX_WP(3),
      ADR1 => CTX_WP(2),
      ADR2 => CTX_RP(2),
      ADR3 => CTX_RP(3),
      O => CHOICE87_GROM
    );
  CHOICE87_YUSED : X_BUF
    port map (
      I => CHOICE87_GROM,
      O => CHOICE87
    );
  EIRQO_XUSED : X_BUF
    port map (
      I => EIRQO_DPROUT,
      O => EIRQO
    );
  Mcompar_n0074_AEB26 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => CRX_WP(1),
      ADR1 => CRX_RP(0),
      ADR2 => CRX_WP(0),
      ADR3 => CRX_RP(1),
      O => CHOICE53_GROM
    );
  CHOICE53_YUSED : X_BUF
    port map (
      I => CHOICE53_GROM,
      O => CHOICE53
    );
  Mcompar_n0074_AEB53 : X_LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      ADR0 => CRX_WP(3),
      ADR1 => CRX_WP(2),
      ADR2 => CRX_RP(3),
      ADR3 => CRX_RP(2),
      O => CHOICE64_GROM
    );
  CHOICE64_YUSED : X_BUF
    port map (
      I => CHOICE64_GROM,
      O => CHOICE64
    );
  Mcompar_n0074_AEB54 : X_LUT4
    generic map(
      INIT => X"AA00"
    )
    port map (
      ADR0 => CHOICE53,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CHOICE64,
      O => Q_n0074_FROM
    );
  INTn33 : X_LUT4
    generic map(
      INIT => X"F531"
    )
    port map (
      ADR0 => IEN_PCM1,
      ADR1 => IEN_CRX,
      ADR2 => Q_n0075,
      ADR3 => Q_n0074,
      O => Q_n0074_GROM
    );
  Q_n0074_XUSED : X_BUF
    port map (
      I => Q_n0074_FROM,
      O => Q_n0074
    );
  Q_n0074_YUSED : X_BUF
    port map (
      I => Q_n0074_GROM,
      O => CHOICE195
    );
  Q_n0289_10_XUSED : X_BUF
    port map (
      I => Q_n0289_10_DPROUT,
      O => Q_n0289(10)
    );
  Q_n0289_11_XUSED : X_BUF
    port map (
      I => Q_n0289_11_DPROUT,
      O => Q_n0289(11)
    );
  Q_n0289_12_XUSED : X_BUF
    port map (
      I => Q_n0289_12_DPROUT,
      O => Q_n0289(12)
    );
  Q_n0289_13_XUSED : X_BUF
    port map (
      I => Q_n0289_13_DPROUT,
      O => Q_n0289(13)
    );
  Q_n0289_14_XUSED : X_BUF
    port map (
      I => Q_n0289_14_DPROUT,
      O => Q_n0289(14)
    );
  Q_n0289_15_XUSED : X_BUF
    port map (
      I => Q_n0289_15_DPROUT,
      O => Q_n0289(15)
    );
  MCPU_342 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => D_0_IDELAY,
      CE => MCPU_N801,
      CLK => WRn_IBUF,
      SET => GND,
      RST => D_0_IFF_RST,
      O => MCPU
    );
  D_0_IFF_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => D_0_IFF_RST
    );
  PCM1I_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(0),
      CE => Q_n00291_O,
      CLK => PCM1I_1_CKMUXNOT,
      SET => GND,
      RST => PCM1I_1_FFX_RST,
      O => PCM1I(1)
    );
  PCM1I_1_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_1_FFX_RST
    );
  CTX_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_1_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_1_FFX_RST,
      O => CTX_CNT(1)
    );
  CTX_CNT_1_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_1_FFX_RST
    );
  CTX_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_3_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_3_FFX_RST,
      O => CTX_CNT(3)
    );
  CTX_CNT_3_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_3_FFX_RST
    );
  CTX_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_2_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_3_FFY_RST,
      O => CTX_CNT(2)
    );
  CTX_CNT_3_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_3_FFY_RST
    );
  CTX_CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_5_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_5_FFX_RST,
      O => CTX_CNT(5)
    );
  CTX_CNT_5_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_5_FFX_RST
    );
  CTX_CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_4_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_5_FFY_RST,
      O => CTX_CNT(4)
    );
  CTX_CNT_5_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_5_FFY_RST
    );
  CTX_CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_7_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_7_FFX_RST,
      O => CTX_CNT(7)
    );
  CTX_CNT_7_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_7_FFX_RST
    );
  CTX_CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_6_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_7_FFY_RST,
      O => CTX_CNT(6)
    );
  CTX_CNT_7_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_7_FFY_RST
    );
  CTX_CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_8_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_9_FFY_RST,
      O => CTX_CNT(8)
    );
  CTX_CNT_9_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_9_FFY_RST
    );
  TS_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_16,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_1_FFX_RST,
      O => TS_CNT(1)
    );
  TS_CNT_1_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_1_FFX_RST
    );
  TS_CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_19,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_3_FFY_RST,
      O => TS_CNT(4)
    );
  TS_CNT_3_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_3_FFY_RST
    );
  TS_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_18,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_3_FFX_RST,
      O => TS_CNT(3)
    );
  TS_CNT_3_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_3_FFX_RST
    );
  TS_CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_21,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_5_FFY_RST,
      O => TS_CNT(6)
    );
  TS_CNT_5_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_5_FFY_RST
    );
  TS_CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_23,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_7_FFY_RST,
      O => TS_CNT(8)
    );
  TS_CNT_7_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_7_FFY_RST
    );
  PCM1WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(1),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_0_FFY_RST,
      O => PCM1WP(1)
    );
  PCM1WP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_0_FFY_RST
    );
  PCM1WP_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(5),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_4_FFY_RST,
      O => PCM1WP(5)
    );
  PCM1WP_4_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_4_FFY_RST
    );
  PCM1WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_Madd_n0000_inst_lut2_15,
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_0_FFX_RST,
      O => PCM1WP(0)
    );
  PCM1WP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_0_FFX_RST
    );
  PCM1WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(3),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_2_FFY_RST,
      O => PCM1WP(3)
    );
  PCM1WP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_2_FFY_RST
    );
  PCM1WP_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(7),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_6_FFY_RST,
      O => PCM1WP(7)
    );
  PCM1WP_6_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_6_FFY_RST
    );
  MCTX_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_Madd_n0000_inst_lut2_0,
      CE => MCTX_RP_0_N1147,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_RP_0_FFX_RST,
      O => MCTX_RP(0)
    );
  MCTX_RP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_0_FFX_RST
    );
  MCTX_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_n0000(2),
      CE => MCTX_RP_0_N1147,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_RP_2_FFX_RST,
      O => MCTX_RP(2)
    );
  MCTX_RP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_2_FFX_RST
    );
  EIRQ_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_n0000(1),
      CE => Q_n0283,
      CLK => RDn_IBUF,
      SET => GND,
      RST => EIRQ_RP_0_FFY_RST,
      O => EIRQ_RP(1)
    );
  EIRQ_RP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_0_FFY_RST
    );
  EIRQ_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_n0000(3),
      CE => Q_n0283,
      CLK => RDn_IBUF,
      SET => GND,
      RST => EIRQ_RP_2_FFY_RST,
      O => EIRQ_RP(3)
    );
  EIRQ_RP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_2_FFY_RST
    );
  EIRQ_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0283,
      CLK => RDn_IBUF,
      SET => GND,
      RST => EIRQ_RP_0_FFX_RST,
      O => EIRQ_RP(0)
    );
  EIRQ_RP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_0_FFX_RST
    );
  PCM1RP_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(6),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_6_FFX_RST,
      O => PCM1RP(6)
    );
  PCM1RP_6_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_6_FFX_RST
    );
  TS_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_15,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_0_FFY_RST,
      O => TS_CNT(0)
    );
  TS_CNT_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_0_FFY_RST
    );
  TS_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_17,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_1_FFY_RST,
      O => TS_CNT(2)
    );
  TS_CNT_1_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_1_FFY_RST
    );
  CTX_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0280,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CTX_RP_0_FFX_RST,
      O => CTX_RP(0)
    );
  CTX_RP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_0_FFX_RST
    );
  CTX_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CTX_RP_n0000(2),
      CE => Q_n0280,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CTX_RP_2_FFX_RST,
      O => CTX_RP(2)
    );
  CTX_RP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_RP_2_FFX_RST
    );
  CRX_RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_Madd_n0000_inst_lut2_0,
      CE => Q_n0281,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CRX_RP_0_FFX_RST,
      O => CRX_RP(0)
    );
  CRX_RP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_0_FFX_RST
    );
  CRX_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CRX_RP_n0000(2),
      CE => Q_n0281,
      CLK => RDn_IBUF,
      SET => GND,
      RST => CRX_RP_2_FFX_RST,
      O => CRX_RP(2)
    );
  CRX_RP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_RP_2_FFX_RST
    );
  PCM1RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(1),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_0_FFY_RST,
      O => PCM1RP(1)
    );
  PCM1RP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_0_FFY_RST
    );
  PCM1RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(3),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_2_FFY_RST,
      O => PCM1RP(3)
    );
  PCM1RP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_2_FFY_RST
    );
  PCM1RP_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(5),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_4_FFY_RST,
      O => PCM1RP(5)
    );
  PCM1RP_4_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_4_FFY_RST
    );
  PCM1RP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_Madd_n0000_inst_lut2_15,
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_0_FFX_RST,
      O => PCM1RP(0)
    );
  PCM1RP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_0_FFX_RST
    );
  PCM1WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(2),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_2_FFX_RST,
      O => PCM1WP(2)
    );
  PCM1WP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_2_FFX_RST
    );
  PCM1WP_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(4),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_4_FFX_RST,
      O => PCM1WP(4)
    );
  PCM1WP_4_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_4_FFX_RST
    );
  FCE_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_WP_n0000(1),
      CE => VCC,
      CLK => N12095,
      SET => GND,
      RST => FCE_WP_0_FFY_RST,
      O => FCE_WP(1)
    );
  FCE_WP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_WP_0_FFY_RST
    );
  PCM1WP_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(6),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_6_FFX_RST,
      O => PCM1WP(6)
    );
  PCM1WP_6_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_6_FFX_RST
    );
  PCM1WP_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1WP_n0000(8),
      CE => SYNC4I,
      CLK => N12117,
      SET => GND,
      RST => PCM1WP_8_FFX_RST,
      O => PCM1WP(8)
    );
  PCM1WP_8_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1WP_8_FFX_RST
    );
  TS_CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_20,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_5_FFX_RST,
      O => TS_CNT(5)
    );
  TS_CNT_5_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_5_FFX_RST
    );
  TS_CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => TS_CNT_inst_sum_22,
      CE => VCC,
      CLK => N12117,
      SET => GND,
      RST => TS_CNT_7_FFX_RST,
      O => TS_CNT(7)
    );
  TS_CNT_7_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => TS_CNT_7_FFX_RST
    );
  PCM1RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(2),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_2_FFX_RST,
      O => PCM1RP(2)
    );
  PCM1RP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_2_FFX_RST
    );
  PCM1RP_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(4),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_4_FFX_RST,
      O => PCM1RP(4)
    );
  PCM1RP_4_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_4_FFX_RST
    );
  PCM1RP_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(7),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_6_FFY_RST,
      O => PCM1RP(7)
    );
  PCM1RP_6_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_6_FFY_RST
    );
  PCM1RP_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1RP_n0000(8),
      CE => Q_n0282,
      CLK => RDn_IBUF,
      SET => GND,
      RST => PCM1RP_8_FFX_RST,
      O => PCM1RP(8)
    );
  PCM1RP_8_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1RP_8_FFX_RST
    );
  CNT_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(10),
      CE => VCC,
      CLK => CNT_10_CKMUXNOT,
      SET => GND,
      RST => CNT_10_FFX_RST,
      O => CNT(10)
    );
  CNT_10_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_10_FFX_RST
    );
  CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(8),
      CE => VCC,
      CLK => CNT_8_CKMUXNOT,
      SET => GND,
      RST => CNT_8_FFX_RST,
      O => CNT(8)
    );
  CNT_8_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_8_FFX_RST
    );
  MCTX_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_n0000(1),
      CE => Q_n0027,
      CLK => WRn_IBUF,
      SET => GND,
      RST => MCTX_WP_0_FFY_RST,
      O => MCTX_WP(1)
    );
  MCTX_WP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_0_FFY_RST
    );
  EIRQ_WP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_n0000(1),
      CE => Q_n0187,
      CLK => N12119,
      SET => GND,
      RST => EIRQ_WP_0_FFY_RST,
      O => EIRQ_WP(1)
    );
  EIRQ_WP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_0_FFY_RST
    );
  MCTX_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0027,
      CLK => WRn_IBUF,
      SET => GND,
      RST => MCTX_WP_0_FFX_RST,
      O => MCTX_WP(0)
    );
  MCTX_WP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_0_FFX_RST
    );
  MCTX_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_n0000(3),
      CE => Q_n0027,
      CLK => WRn_IBUF,
      SET => GND,
      RST => MCTX_WP_2_FFY_RST,
      O => MCTX_WP(3)
    );
  MCTX_WP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_2_FFY_RST
    );
  CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(1),
      CE => VCC,
      CLK => CNT_0_CKMUXNOT,
      SET => GND,
      RST => CNT_0_FFY_RST,
      O => CNT(1)
    );
  CNT_0_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_0_FFY_RST
    );
  CNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(5),
      CE => VCC,
      CLK => CNT_4_CKMUXNOT,
      SET => GND,
      RST => CNT_4_FFY_RST,
      O => CNT(5)
    );
  CNT_4_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_4_FFY_RST
    );
  CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_Madd_n0000_inst_lut2_4,
      CE => VCC,
      CLK => CNT_0_CKMUXNOT,
      SET => GND,
      RST => CNT_0_FFX_RST,
      O => CNT(0)
    );
  CNT_0_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_0_FFX_RST
    );
  CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(3),
      CE => VCC,
      CLK => CNT_2_CKMUXNOT,
      SET => GND,
      RST => CNT_2_FFY_RST,
      O => CNT(3)
    );
  CNT_2_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_2_FFY_RST
    );
  MCTX_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_WP_n0000(2),
      CE => Q_n0027,
      CLK => WRn_IBUF,
      SET => GND,
      RST => MCTX_WP_2_FFX_RST,
      O => MCTX_WP(2)
    );
  MCTX_WP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_WP_2_FFX_RST
    );
  EIRQ_WP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_n0000(3),
      CE => Q_n0187,
      CLK => N12119,
      SET => GND,
      RST => EIRQ_WP_2_FFY_RST,
      O => EIRQ_WP(3)
    );
  EIRQ_WP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_2_FFY_RST
    );
  EIRQ_WP_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_Madd_n0000_inst_lut2_0,
      CE => Q_n0187,
      CLK => N12119,
      SET => GND,
      RST => EIRQ_WP_0_FFX_RST,
      O => EIRQ_WP(0)
    );
  EIRQ_WP_0_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_0_FFX_RST
    );
  MCTX_RP_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_n0000(3),
      CE => MCTX_RP_0_N1147,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_RP_2_FFY_RST,
      O => MCTX_RP(3)
    );
  MCTX_RP_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_2_FFY_RST
    );
  EIRQ_WP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_WP_n0000(2),
      CE => Q_n0187,
      CLK => N12119,
      SET => GND,
      RST => EIRQ_WP_2_FFX_RST,
      O => EIRQ_WP(2)
    );
  EIRQ_WP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_WP_2_FFX_RST
    );
  MCTX_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => MCTX_RP_n0000(1),
      CE => MCTX_RP_0_N1147,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_RP_0_FFY_RST,
      O => MCTX_RP(1)
    );
  MCTX_RP_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_RP_0_FFY_RST
    );
  CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(2),
      CE => VCC,
      CLK => CNT_2_CKMUXNOT,
      SET => GND,
      RST => CNT_2_FFX_RST,
      O => CNT(2)
    );
  CNT_2_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_2_FFX_RST
    );
  CNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(4),
      CE => VCC,
      CLK => CNT_4_CKMUXNOT,
      SET => GND,
      RST => CNT_4_FFX_RST,
      O => CNT(4)
    );
  CNT_4_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_4_FFX_RST
    );
  CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(7),
      CE => VCC,
      CLK => CNT_6_CKMUXNOT,
      SET => GND,
      RST => CNT_6_FFY_RST,
      O => CNT(7)
    );
  CNT_6_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_6_FFY_RST
    );
  CNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(6),
      CE => VCC,
      CLK => CNT_6_CKMUXNOT,
      SET => GND,
      RST => CNT_6_FFX_RST,
      O => CNT(6)
    );
  CNT_6_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_6_FFX_RST
    );
  CNT_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => CNT_n0000(9),
      CE => VCC,
      CLK => CNT_8_CKMUXNOT,
      SET => GND,
      RST => CNT_8_FFY_RST,
      O => CNT(9)
    );
  CNT_8_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => CNT_8_FFY_RST
    );
  EIRQ_RP_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQ_RP_n0000(2),
      CE => Q_n0283,
      CLK => RDn_IBUF,
      SET => GND,
      RST => EIRQ_RP_2_FFX_RST,
      O => EIRQ_RP(2)
    );
  EIRQ_RP_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQ_RP_2_FFX_RST
    );
  CTX_CNT_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0039_10_1_O,
      CE => Q_n0271,
      CLK => N12119,
      SET => GND,
      RST => CTX_CNT_10_FFY_RST,
      O => CTX_CNT(10)
    );
  CTX_CNT_10_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CTX_CNT_10_FFY_RST
    );
  PCM1I_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1MUX,
      CE => Q_n00291_O,
      CLK => PCM1I_1_CKMUXNOT,
      SET => GND,
      RST => PCM1I_1_FFY_RST,
      O => PCM1I(0)
    );
  PCM1I_1_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_1_FFY_RST
    );
  PCM1TS_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(3),
      CE => PCM1TS_3_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1TS_3_FFX_RST,
      O => PCM1TS(3)
    );
  PCM1TS_3_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_3_FFX_RST
    );
  PCM1TS_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(4),
      CE => PCM1TS_5_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1TS_5_FFY_RST,
      O => PCM1TS(4)
    );
  PCM1TS_5_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_5_FFY_RST
    );
  PCM1TS_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(5),
      CE => PCM1TS_5_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1TS_5_FFX_RST,
      O => PCM1TS(5)
    );
  PCM1TS_5_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_5_FFX_RST
    );
  PCM1TS_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(0),
      CE => PCM1TS_0_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1TS_0_FFY_RST,
      O => PCM1TS(0)
    );
  PCM1TS_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_0_FFY_RST
    );
  Mram_CTX_FIFO_inst_ramx_2_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_2_DPROUT
    );
  IEN_PCM1_343 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0057,
      CE => IEN_PCM1_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => IEN_PCM1_FFY_SET,
      RST => GND,
      O => IEN_PCM1
    );
  IEN_PCM1_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => IEN_PCM1_FFY_SET
    );
  Mram_CTX_FIFO_inst_ramx_3_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_3_DPROUT
    );
  Mram_CTX_FIFO_inst_ramx_4_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_4_DPROUT
    );
  Mram_CTX_FIFO_inst_ramx_5_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_5_DPROUT
    );
  Mram_CTX_FIFO_inst_ramx_6_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_6_DPROUT
    );
  Mram_CTX_FIFO_inst_ramx_7_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_7_DPROUT
    );
  MFCE_344 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0061,
      CE => MFCE_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => MFCE_FFY_RST,
      O => MFCE
    );
  MFCE_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MFCE_FFY_RST
    );
  Mram_FCE_FIFO_inst_ramx_3_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_3_LOGIC_ONE,
      O => FCEO_3_DPROUT
    );
  Mram_FCE_FIFO_inst_ramx_4_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_4_LOGIC_ONE,
      O => FCEO_4_DPROUT
    );
  Mram_FCE_FIFO_inst_ramx_5_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_5_LOGIC_ONE,
      O => FCEO_5_DPROUT
    );
  Mram_FCE_FIFO_inst_ramx_6_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_6_LOGIC_ONE,
      O => FCEO_6_DPROUT
    );
  IEN_CTX_345 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0055,
      CE => IEN_CTX_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => IEN_CTX_FFY_SET,
      RST => GND,
      O => IEN_CTX
    );
  IEN_CTX_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => IEN_CTX_FFY_SET
    );
  Mram_FCE_FIFO_inst_ramx_7_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_7_LOGIC_ONE,
      O => FCEO_7_DPROUT
    );
  Mram_CTX_FIFO_inst_ramx_0_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_0_DPROUT
    );
  Mram_CTX_FIFO_inst_ramx_1_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0024,
      O => CTXO_1_DPROUT
    );
  CRX_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(1),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_1_FFY_RST,
      O => CRX_CNT(1)
    );
  CRX_CNT_1_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_1_FFY_RST
    );
  MCTX_CNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(1),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_CNT_1_FFY_RST,
      O => MCTX_CNT(1)
    );
  MCTX_CNT_1_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_1_FFY_RST
    );
  FCE_RP_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCE_RP_n0000(1),
      CE => Q_n0279,
      CLK => RDn_IBUF,
      SET => GND,
      RST => FCE_RP_1_FFY_RST,
      O => FCE_RP(1)
    );
  FCE_RP_1_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => FCE_RP_1_FFY_RST
    );
  MCTXO_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(6),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_6_FFY_SET,
      RST => GND,
      O => MCTXO(6)
    );
  MCTXO_6_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_6_FFY_SET
    );
  EIRQI_Once_346 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQI_Once_BYMUXNOT,
      CE => VCC,
      CLK => N12119,
      SET => GND,
      RST => EIRQI_Once_FFY_RST,
      O => EIRQI_Once
    );
  EIRQI_Once_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQI_Once_FFY_RST
    );
  PCM1I_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(1),
      CE => Q_n00291_O,
      CLK => PCM1I_3_CKMUXNOT,
      SET => GND,
      RST => PCM1I_3_FFY_RST,
      O => PCM1I(2)
    );
  PCM1I_3_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_3_FFY_RST
    );
  PCM1I_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(2),
      CE => Q_n00291_O,
      CLK => PCM1I_3_CKMUXNOT,
      SET => GND,
      RST => PCM1I_3_FFX_RST,
      O => PCM1I(3)
    );
  PCM1I_3_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_3_FFX_RST
    );
  PCM1I_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(3),
      CE => Q_n00291_O,
      CLK => PCM1I_5_CKMUXNOT,
      SET => GND,
      RST => PCM1I_5_FFY_RST,
      O => PCM1I(4)
    );
  PCM1I_5_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_5_FFY_RST
    );
  PCM1I_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(4),
      CE => Q_n00291_O,
      CLK => PCM1I_5_CKMUXNOT,
      SET => GND,
      RST => PCM1I_5_FFX_RST,
      O => PCM1I(5)
    );
  PCM1I_5_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_5_FFX_RST
    );
  PCM1I_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(5),
      CE => Q_n00291_O,
      CLK => PCM1I_7_CKMUXNOT,
      SET => GND,
      RST => PCM1I_7_FFY_RST,
      O => PCM1I(6)
    );
  PCM1I_7_FFY_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_7_FFY_RST
    );
  PCM1I_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => PCM1I(6),
      CE => Q_n00291_O,
      CLK => PCM1I_7_CKMUXNOT,
      SET => GND,
      RST => PCM1I_7_FFX_RST,
      O => PCM1I(7)
    );
  PCM1I_7_FFX_RSTOR : X_BUF
    port map (
      I => GSR,
      O => PCM1I_7_FFX_RST
    );
  FCDI_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(0),
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCDI_2_FFY_RST,
      O => FCDI(1)
    );
  FCDI_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_2_FFY_RST
    );
  FCDI_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(1),
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCDI_2_FFX_RST,
      O => FCDI(2)
    );
  FCDI_2_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_2_FFX_RST
    );
  FCDI_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(4),
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCDI_6_FFY_RST,
      O => FCDI(5)
    );
  FCDI_6_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_6_FFY_RST
    );
  MCTXO_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(2),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_2_FFX_SET,
      RST => GND,
      O => MCTXO(2)
    );
  MCTXO_2_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_2_FFX_SET
    );
  MCTXO_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(4),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_4_FFX_SET,
      RST => GND,
      O => MCTXO(4)
    );
  MCTXO_4_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_4_FFX_SET
    );
  MCTXO_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(5),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_5_FFY_SET,
      RST => GND,
      O => MCTXO(5)
    );
  MCTXO_5_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_5_FFY_SET
    );
  MCTXO_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(7),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_8_FFY_SET,
      RST => GND,
      O => MCTXO(7)
    );
  MCTXO_8_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_8_FFY_SET
    );
  MCTXO_8 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(8),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_8_FFX_SET,
      RST => GND,
      O => MCTXO(8)
    );
  MCTXO_8_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_8_FFX_SET
    );
  PCM1SEL_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0050(1),
      CE => PCM1TS_1_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1TS_1_FFY_RST,
      O => PCM1SEL(1)
    );
  PCM1TS_1_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_1_FFY_RST
    );
  PCM1TS_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(1),
      CE => PCM1TS_1_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1TS_1_FFX_RST,
      O => PCM1TS(1)
    );
  PCM1TS_1_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_1_FFX_RST
    );
  PCM1SEL_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0050(2),
      CE => PCM1SEL_2_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1SEL_2_FFY_RST,
      O => PCM1SEL(2)
    );
  PCM1SEL_2_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1SEL_2_FFY_RST
    );
  CRXI_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(0),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_1_FFY_SET,
      RST => CRXI_1_FFY_RST,
      O => CRXI(0)
    );
  CRXI_1_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_1_LOGIC_ZERO,
      O => CRXI_1_FFY_SET
    );
  CRXI_1_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_1_FFY_RST
    );
  CRXI_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(1),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_1_FFX_SET,
      RST => CRXI_1_FFX_RST,
      O => CRXI(1)
    );
  CRXI_1_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_1_LOGIC_ZERO,
      O => CRXI_1_FFX_SET
    );
  CRXI_1_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_1_FFX_RST
    );
  CRXI_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(3),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_3_FFX_SET,
      RST => CRXI_3_FFX_RST,
      O => CRXI(3)
    );
  CRXI_3_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_3_LOGIC_ZERO,
      O => CRXI_3_FFX_SET
    );
  CRXI_3_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_3_FFX_RST
    );
  CRXI_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(5),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_5_FFX_SET,
      RST => CRXI_5_FFX_RST,
      O => CRXI(5)
    );
  CRXI_5_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_5_LOGIC_ZERO,
      O => CRXI_5_FFX_SET
    );
  CRXI_5_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_5_FFX_RST
    );
  CRXI_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(4),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_5_FFY_SET,
      RST => CRXI_5_FFY_RST,
      O => CRXI(4)
    );
  CRXI_5_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_5_LOGIC_ZERO,
      O => CRXI_5_FFY_SET
    );
  CRXI_5_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_5_FFY_RST
    );
  CRXI_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(6),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_7_FFY_SET,
      RST => CRXI_7_FFY_RST,
      O => CRXI(6)
    );
  CRXI_7_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_7_LOGIC_ZERO,
      O => CRXI_7_FFY_SET
    );
  CRXI_7_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_7_FFY_RST
    );
  CRXI_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0044(7),
      CE => Q_n0276,
      CLK => N12119,
      SET => CRXI_7_FFX_SET,
      RST => CRXI_7_FFX_RST,
      O => CRXI(7)
    );
  CRXI_7_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CRXI_7_LOGIC_ZERO,
      O => CRXI_7_FFX_SET
    );
  CRXI_7_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CRXI_7_FFX_RST
    );
  CTXI_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(0),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_1_FFY_SET,
      RST => CTXI_1_FFY_RST,
      O => CTXI(0)
    );
  CTXI_1_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_1_LOGIC_ZERO,
      O => CTXI_1_FFY_SET
    );
  CTXI_1_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_1_FFY_RST
    );
  CRX_CNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(7),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_7_FFX_RST,
      O => CRX_CNT(7)
    );
  CRX_CNT_7_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_7_FFX_RST
    );
  CRX_CNT_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(9),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_9_FFX_RST,
      O => CRX_CNT(9)
    );
  CRX_CNT_9_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_9_FFX_RST
    );
  CRX_CNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0042(8),
      CE => Q_n0274,
      CLK => N12119,
      SET => GND,
      RST => CRX_CNT_9_FFY_RST,
      O => CRX_CNT(8)
    );
  CRX_CNT_9_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => CRX_CNT_9_FFY_RST
    );
  LED_Y_347 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0048,
      CE => LED_Y_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => LED_Y_FFX_RST,
      O => LED_Y
    );
  LED_Y_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => LED_Y_FFX_RST
    );
  LED_G_348 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0047,
      CE => LED_Y_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => LED_Y_FFY_RST,
      O => LED_G
    );
  LED_Y_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => LED_Y_FFY_RST
    );
  MCTX_CNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(0),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_CNT_0_FFY_RST,
      O => MCTX_CNT(0)
    );
  MCTX_CNT_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_0_FFY_RST
    );
  MCTX_CNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(2),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_CNT_3_FFY_RST,
      O => MCTX_CNT(2)
    );
  MCTX_CNT_3_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_3_FFY_RST
    );
  MCTX_CNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0034(3),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => GND,
      RST => MCTX_CNT_3_FFX_RST,
      O => MCTX_CNT(3)
    );
  MCTX_CNT_3_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => MCTX_CNT_3_FFX_RST
    );
  MCTXO_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(1),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_2_FFY_SET,
      RST => GND,
      O => MCTXO(1)
    );
  MCTXO_2_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_2_FFY_SET
    );
  MCTXO_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0036(3),
      CE => Q_n0269,
      CLK => CLK16M_BUFGP,
      SET => MCTXO_4_FFY_SET,
      RST => GND,
      O => MCTXO(3)
    );
  MCTXO_4_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => MCTXO_4_FFY_SET
    );
  CTXI_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(1),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_1_FFX_SET,
      RST => CTXI_1_FFX_RST,
      O => CTXI(1)
    );
  CTXI_1_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_1_LOGIC_ZERO,
      O => CTXI_1_FFX_SET
    );
  CTXI_1_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_1_FFX_RST
    );
  CTXI_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(3),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_3_FFX_SET,
      RST => CTXI_3_FFX_RST,
      O => CTXI(3)
    );
  CTXI_3_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_3_LOGIC_ZERO,
      O => CTXI_3_FFX_SET
    );
  CTXI_3_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_3_FFX_RST
    );
  PCM1TS_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0051(2),
      CE => PCM1TS_3_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1TS_3_FFY_RST,
      O => PCM1TS(2)
    );
  PCM1TS_3_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1TS_3_FFY_RST
    );
  CTXI_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(4),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_5_FFY_SET,
      RST => CTXI_5_FFY_RST,
      O => CTXI(4)
    );
  CTXI_5_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_5_LOGIC_ZERO,
      O => CTXI_5_FFY_SET
    );
  CTXI_5_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_5_FFY_RST
    );
  CTXI_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(5),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_5_FFX_SET,
      RST => CTXI_5_FFX_RST,
      O => CTXI(5)
    );
  CTXI_5_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_5_LOGIC_ZERO,
      O => CTXI_5_FFX_SET
    );
  CTXI_5_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_5_FFX_RST
    );
  CTXI_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(6),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_7_FFY_SET,
      RST => CTXI_7_FFY_RST,
      O => CTXI(6)
    );
  CTXI_7_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_7_LOGIC_ZERO,
      O => CTXI_7_FFY_SET
    );
  CTXI_7_FFY_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_7_FFY_RST
    );
  CTXI_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0041(7),
      CE => Q_n0273,
      CLK => N12119,
      SET => CTXI_7_FFX_SET,
      RST => CTXI_7_FFX_RST,
      O => CTXI(7)
    );
  CTXI_7_FFX_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => CTXI_7_LOGIC_ZERO,
      O => CTXI_7_FFX_SET
    );
  CTXI_7_FFX_RSTOR : X_BUF
    port map (
      I => RESET_IBUF,
      O => CTXI_7_FFX_RST
    );
  PCM1SEL_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0050(0),
      CE => PCM1SEL_0_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => PCM1SEL_0_FFY_RST,
      O => PCM1SEL(0)
    );
  PCM1SEL_0_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => PCM1SEL_0_FFY_RST
    );
  Mram_SENSE_FIFO_inst_ramx_9_F : X_RAMD16
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
      I => SENSEO_BYMUXNOT,
      CLK => N12095,
      WE => SENSEO_LOGIC_ONE,
      O => SENSEO_DPROUT
    );
  LED_R_349 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0049,
      CE => LED_R_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => LED_R_FFY_RST,
      O => LED_R
    );
  LED_R_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => LED_R_FFY_RST
    );
  FCDI_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(3),
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCDI_4_FFX_RST,
      O => FCDI(4)
    );
  FCDI_4_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_4_FFX_RST
    );
  FCDI_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => FCDI(5),
      CE => VCC,
      CLK => N12091,
      SET => GND,
      RST => FCDI_6_FFX_RST,
      O => FCDI(6)
    );
  FCDI_6_FFX_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => FCDI_6_FFX_RST
    );
  IEN_FC_350 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0053,
      CE => IEN_FC_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => IEN_FC_FFY_SET,
      RST => GND,
      O => IEN_FC
    );
  IEN_FC_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => IEN_FC_FFY_SET
    );
  Mram_FCE_FIFO_inst_ramx_0_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_0_LOGIC_ONE,
      O => FCEO_0_DPROUT
    );
  Mram_FCE_FIFO_inst_ramx_1_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_1_LOGIC_ONE,
      O => FCEO_1_DPROUT
    );
  Mram_FCE_FIFO_inst_ramx_2_F : X_RAMD16
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
      CLK => N12095,
      WE => FCEO_2_LOGIC_ONE,
      O => FCEO_2_DPROUT
    );
  Mram_EIRQ_FIFO_inst_ramx_8_F : X_RAMD16
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
      I => EIRQI_Once,
      CLK => N12119,
      WE => Q_n0187,
      O => EIRQO_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_0_F : X_RAMD16
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
      I => N12099,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_10_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_1_F : X_RAMD16
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
      I => N12101,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_11_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_2_F : X_RAMD16
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
      I => N12103,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_12_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_3_F : X_RAMD16
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
      I => N12105,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_13_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_4_F : X_RAMD16
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
      I => N12107,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_14_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_5_F : X_RAMD16
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
      I => N12109,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_15_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_6_F : X_RAMD16
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
      I => N12111,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_16_DPROUT
    );
  Mram_MCTX_FIFO_inst_ramx_7_F : X_RAMD16
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
      I => N12115,
      CLK => WRn_IBUF,
      WE => Q_n0027,
      O => Q_n0289_17_DPROUT
    );
  EIRQI_Twice_351 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => EIRQI_Once,
      CE => VCC,
      CLK => N12119,
      SET => GND,
      RST => EIRQI_Twice_FFY_RST,
      O => EIRQI_Twice
    );
  EIRQI_Twice_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF,
      I1 => GSR,
      O => EIRQI_Twice_FFY_RST
    );
  Mram_CRX_FIFO_inst_ramx_0_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_0_DPROUT
    );
  Mram_CRX_FIFO_inst_ramx_1_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_1_DPROUT
    );
  Mram_CRX_FIFO_inst_ramx_2_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_2_DPROUT
    );
  Mram_CRX_FIFO_inst_ramx_3_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_3_DPROUT
    );
  Mram_CRX_FIFO_inst_ramx_4_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_4_DPROUT
    );
  Mram_CRX_FIFO_inst_ramx_5_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_5_DPROUT
    );
  Mram_CRX_FIFO_inst_ramx_6_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_6_DPROUT
    );
  Mram_CRX_FIFO_inst_ramx_7_F : X_RAMD16
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
      CLK => N12119,
      WE => Q_n0025,
      O => CRXO_7_DPROUT
    );
  IEN_EIRQ_352 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0054,
      CE => IEN_EIRQ_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => IEN_EIRQ_FFY_SET,
      RST => GND,
      O => IEN_EIRQ
    );
  IEN_EIRQ_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => IEN_EIRQ_FFY_SET
    );
  IEN_CRX_353 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => Q_n0056,
      CE => IEN_CRX_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => IEN_CRX_FFY_SET,
      RST => GND,
      O => IEN_CRX
    );
  IEN_CRX_FFY_SETOR : X_OR2
    port map (
      I0 => GSR,
      I1 => RESET_IBUF_1,
      O => IEN_CRX_FFY_SET
    );
  IEN_CTXE_354 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => Q_n0058,
      CE => IEN_CTXE_CEMUXNOT,
      CLK => WRn_IBUF,
      SET => GND,
      RST => IEN_CTXE_FFY_RST,
      O => IEN_CTXE
    );
  IEN_CTXE_FFY_RSTOR : X_OR2
    port map (
      I0 => RESET_IBUF_1,
      I1 => GSR,
      O => IEN_CTXE_FFY_RST
    );
  CLK16M_BUF : X_CKBUF
    port map (
      I => CLK16M,
      O => CLK16M_BUFGP_IBUFG
    );
  CLK16M_BUFGP_BUFG_BUF : X_CKBUF
    port map (
      I => CLK16M_BUFGP_IBUFG,
      O => CLK16M_BUFGP
    );
  PWR_VCC_0_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_0_FROM
    );
  PWR_VCC_0_XUSED : X_BUF
    port map (
      I => PWR_VCC_0_FROM,
      O => GLOBAL_LOGIC1
    );
  PWR_VCC_1_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_1_FROM
    );
  PWR_VCC_1_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_1_GROM
    );
  PWR_VCC_1_XUSED : X_BUF
    port map (
      I => PWR_VCC_1_FROM,
      O => GLOBAL_LOGIC1_0
    );
  PWR_VCC_1_YUSED : X_BUF
    port map (
      I => PWR_VCC_1_GROM,
      O => GLOBAL_LOGIC0_14
    );
  PWR_VCC_2_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_2_FROM
    );
  PWR_VCC_2_XUSED : X_BUF
    port map (
      I => PWR_VCC_2_FROM,
      O => GLOBAL_LOGIC1_1
    );
  PWR_VCC_3_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_3_FROM
    );
  PWR_VCC_3_XUSED : X_BUF
    port map (
      I => PWR_VCC_3_FROM,
      O => GLOBAL_LOGIC1_2
    );
  PWR_VCC_4_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_4_FROM
    );
  PWR_VCC_4_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_4_GROM
    );
  PWR_VCC_4_XUSED : X_BUF
    port map (
      I => PWR_VCC_4_FROM,
      O => GLOBAL_LOGIC1_3
    );
  PWR_VCC_4_YUSED : X_BUF
    port map (
      I => PWR_VCC_4_GROM,
      O => GLOBAL_LOGIC0_11
    );
  PWR_VCC_5_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_5_FROM
    );
  PWR_VCC_5_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_5_GROM
    );
  PWR_VCC_5_XUSED : X_BUF
    port map (
      I => PWR_VCC_5_FROM,
      O => GLOBAL_LOGIC1_4
    );
  PWR_VCC_5_YUSED : X_BUF
    port map (
      I => PWR_VCC_5_GROM,
      O => GLOBAL_LOGIC0_10
    );
  PWR_VCC_6_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_6_FROM
    );
  PWR_VCC_6_XUSED : X_BUF
    port map (
      I => PWR_VCC_6_FROM,
      O => GLOBAL_LOGIC1_5
    );
  PWR_VCC_7_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_7_FROM
    );
  PWR_VCC_7_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_7_GROM
    );
  PWR_VCC_7_XUSED : X_BUF
    port map (
      I => PWR_VCC_7_FROM,
      O => GLOBAL_LOGIC1_6
    );
  PWR_VCC_7_YUSED : X_BUF
    port map (
      I => PWR_VCC_7_GROM,
      O => GLOBAL_LOGIC0_9
    );
  PWR_VCC_8_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_8_FROM
    );
  PWR_VCC_8_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_8_GROM
    );
  PWR_VCC_8_XUSED : X_BUF
    port map (
      I => PWR_VCC_8_FROM,
      O => GLOBAL_LOGIC1_7
    );
  PWR_VCC_8_YUSED : X_BUF
    port map (
      I => PWR_VCC_8_GROM,
      O => GLOBAL_LOGIC0_7
    );
  PWR_VCC_9_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_9_FROM
    );
  PWR_VCC_9_XUSED : X_BUF
    port map (
      I => PWR_VCC_9_FROM,
      O => GLOBAL_LOGIC1_8
    );
  PWR_VCC_10_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_10_FROM
    );
  PWR_VCC_10_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_10_GROM
    );
  PWR_VCC_10_XUSED : X_BUF
    port map (
      I => PWR_VCC_10_FROM,
      O => GLOBAL_LOGIC1_9
    );
  PWR_VCC_10_YUSED : X_BUF
    port map (
      I => PWR_VCC_10_GROM,
      O => GLOBAL_LOGIC0_6
    );
  PWR_VCC_11_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_11_FROM
    );
  PWR_VCC_11_XUSED : X_BUF
    port map (
      I => PWR_VCC_11_FROM,
      O => GLOBAL_LOGIC1_10
    );
  PWR_VCC_12_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_12_FROM
    );
  PWR_VCC_12_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_12_GROM
    );
  PWR_VCC_12_XUSED : X_BUF
    port map (
      I => PWR_VCC_12_FROM,
      O => GLOBAL_LOGIC1_11
    );
  PWR_VCC_12_YUSED : X_BUF
    port map (
      I => PWR_VCC_12_GROM,
      O => GLOBAL_LOGIC0_3
    );
  PWR_VCC_13_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_13_FROM
    );
  PWR_VCC_13_XUSED : X_BUF
    port map (
      I => PWR_VCC_13_FROM,
      O => GLOBAL_LOGIC1_12
    );
  PWR_VCC_14_F : X_LUT4
    generic map(
      INIT => X"FFFF"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_VCC_14_FROM
    );
  PWR_VCC_14_XUSED : X_BUF
    port map (
      I => PWR_VCC_14_FROM,
      O => GLOBAL_LOGIC1_13
    );
  PWR_GND_0_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_0_GROM
    );
  PWR_GND_0_YUSED : X_BUF
    port map (
      I => PWR_GND_0_GROM,
      O => GLOBAL_LOGIC0
    );
  PWR_GND_1_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_1_GROM
    );
  PWR_GND_1_YUSED : X_BUF
    port map (
      I => PWR_GND_1_GROM,
      O => GLOBAL_LOGIC0_0
    );
  PWR_GND_2_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_2_GROM
    );
  PWR_GND_2_YUSED : X_BUF
    port map (
      I => PWR_GND_2_GROM,
      O => GLOBAL_LOGIC0_1
    );
  PWR_GND_3_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_3_GROM
    );
  PWR_GND_3_YUSED : X_BUF
    port map (
      I => PWR_GND_3_GROM,
      O => GLOBAL_LOGIC0_2
    );
  PWR_GND_4_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_4_GROM
    );
  PWR_GND_4_YUSED : X_BUF
    port map (
      I => PWR_GND_4_GROM,
      O => GLOBAL_LOGIC0_4
    );
  PWR_GND_5_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_5_GROM
    );
  PWR_GND_5_YUSED : X_BUF
    port map (
      I => PWR_GND_5_GROM,
      O => GLOBAL_LOGIC0_5
    );
  PWR_GND_6_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_6_GROM
    );
  PWR_GND_6_YUSED : X_BUF
    port map (
      I => PWR_GND_6_GROM,
      O => GLOBAL_LOGIC0_8
    );
  PWR_GND_7_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_7_GROM
    );
  PWR_GND_7_YUSED : X_BUF
    port map (
      I => PWR_GND_7_GROM,
      O => GLOBAL_LOGIC0_12
    );
  PWR_GND_8_G : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => PWR_GND_8_GROM
    );
  PWR_GND_8_YUSED : X_BUF
    port map (
      I => PWR_GND_8_GROM,
      O => GLOBAL_LOGIC0_13
    );
  NlwBlock_pub_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_pub_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

