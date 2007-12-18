-- Xilinx Vhdl netlist produced by netgen application (version G.26)
-- Command       : -rpw 100 -ar Structure -xon true -w -ofmt vhdl -sim dasl2p.nga dasl2p_timesim.vhd 
-- Input file    : dasl2p.nga
-- Output file   : dasl2p_timesim.vhd
-- Design name   : dasl2p.nga
-- # of Entities : 1
-- Xilinx        : C:/Xilinx
-- Device        : XC9572XL-10-VQ64 (Speed File: Version 3.0)

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

entity dasl2p is
  port (
    CLK_16M : in STD_LOGIC := 'X'; 
    RESETn : in STD_LOGIC := 'X'; 
    IOSTRn : in STD_LOGIC := 'X'; 
    R_Wn : in STD_LOGIC := 'X'; 
    CINTn : in STD_LOGIC := 'X'; 
    COUT : in STD_LOGIC := 'X'; 
    CCLK : out STD_LOGIC; 
    CIN : out STD_LOGIC; 
    TST_M_Sn : out STD_LOGIC; 
    TST_FS : out STD_LOGIC; 
    DSP_INTn3 : out STD_LOGIC; 
    DSP_A : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    DR : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    BR : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DSP_BX : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DCLK : inout STD_LOGIC_VECTOR ( 1 downto 0 ); 
    LEDG : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    FSb : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    CCSn : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DX : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    LEDY : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    BCLK : inout STD_LOGIC_VECTOR ( 1 downto 0 ); 
    FSa : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    MCLK : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DSP_D : inout STD_LOGIC_VECTOR ( 1 downto 0 ); 
    BX : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DSP_BCLK : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DSP_BFS : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DSP_INTn : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    FSc : inout STD_LOGIC_VECTOR ( 1 downto 0 ); 
    DSP_BR : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end dasl2p;

architecture Structure of dasl2p is
  signal FCLKIO_0 : STD_LOGIC; 
  signal RESETn_IBUF : STD_LOGIC; 
  signal FSR_IO_1 : STD_LOGIC; 
  signal IOSTRn_IBUF : STD_LOGIC; 
  signal R_Wn_IBUF : STD_LOGIC; 
  signal N2918 : STD_LOGIC; 
  signal DSP_A_1_IBUF : STD_LOGIC; 
  signal DSP_A_0_IBUF : STD_LOGIC; 
  signal DSP_A_2_IBUF : STD_LOGIC; 
  signal N2922 : STD_LOGIC; 
  signal N2920 : STD_LOGIC; 
  signal N2910 : STD_LOGIC; 
  signal N2914 : STD_LOGIC; 
  signal DR_0_IBUF : STD_LOGIC; 
  signal DR_1_IBUF : STD_LOGIC; 
  signal N2912 : STD_LOGIC; 
  signal DSP_INTn3_OBUF : STD_LOGIC; 
  signal COUT_IBUF : STD_LOGIC; 
  signal BR_1_IBUF : STD_LOGIC; 
  signal DSP_BX_0_IBUF : STD_LOGIC; 
  signal BR_0_IBUF : STD_LOGIC; 
  signal DSP_BX_1_IBUF : STD_LOGIC; 
  signal N2916 : STD_LOGIC; 
  signal N2924 : STD_LOGIC; 
  signal CNT_9_Q : STD_LOGIC; 
  signal CNT_9_OE : STD_LOGIC; 
  signal i_LEDG_0_Q : STD_LOGIC; 
  signal i_LEDG_0_OE : STD_LOGIC; 
  signal i_LEDG_1_Q : STD_LOGIC; 
  signal i_LEDG_1_OE : STD_LOGIC; 
  signal FSb_1_OBUFE_Q : STD_LOGIC; 
  signal FSb_1_OBUFE_OE : STD_LOGIC; 
  signal CCLK_OBUF_Q : STD_LOGIC; 
  signal CCSn_0_Q : STD_LOGIC; 
  signal CCSn_1_Q : STD_LOGIC; 
  signal CIN_OBUF_Q : STD_LOGIC; 
  signal DX_0_Q : STD_LOGIC; 
  signal DX_1_Q : STD_LOGIC; 
  signal LEDY_0_Q : STD_LOGIC; 
  signal LEDY_1_Q : STD_LOGIC; 
  signal CNT_2_BUF0 : STD_LOGIC; 
  signal CNT_2_BUF0_OE : STD_LOGIC; 
  signal FS_BUF0 : STD_LOGIC; 
  signal FS_BUF0_OE : STD_LOGIC; 
  signal FS_BUF1 : STD_LOGIC; 
  signal FS_BUF1_OE : STD_LOGIC; 
  signal DCLK_1_IOBUFE : STD_LOGIC; 
  signal DCLK_1_IOBUFE_OE : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0 : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_OE : STD_LOGIC; 
  signal TST_M_Sn_OBUF_Q : STD_LOGIC; 
  signal CNT_2_Q : STD_LOGIC; 
  signal FS_Q : STD_LOGIC; 
  signal DSP_D_0_IOBUFE : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_OE : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0 : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_OE : STD_LOGIC; 
  signal BX_0_OBUF : STD_LOGIC; 
  signal BX_1_OBUF : STD_LOGIC; 
  signal DSP_BCLK_0_OBUF : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF : STD_LOGIC; 
  signal DSP_BFS_0_OBUF : STD_LOGIC; 
  signal DSP_BFS_1_OBUF : STD_LOGIC; 
  signal DSP_INTn_0_OBUF : STD_LOGIC; 
  signal DSP_INTn_1_OBUF : STD_LOGIC; 
  signal MCLK_1_OBUF_Q : STD_LOGIC; 
  signal DSP_D_1_IOBUFE : STD_LOGIC; 
  signal DSP_D_1_IOBUFE_OE : STD_LOGIC; 
  signal FSc_1_IOBUFE_Q : STD_LOGIC; 
  signal FSc_1_IOBUFE_OE : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0 : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal BR_0_IBUF_BUF0 : STD_LOGIC; 
  signal BR_1_IBUF_BUF0 : STD_LOGIC; 
  signal DSP_INTn3_OBUF_BUF0 : STD_LOGIC; 
  signal CNT_9_Q_0 : STD_LOGIC; 
  signal CNT_9_BUFOE_OUT : STD_LOGIC; 
  signal CNT_9_TRST : STD_LOGIC; 
  signal CNT_9_D : STD_LOGIC; 
  signal CNT_9_tsimcreated_xor_Q : STD_LOGIC; 
  signal Gnd : STD_LOGIC; 
  signal PRLD : STD_LOGIC; 
  signal Vcc : STD_LOGIC; 
  signal CNT_9_D1 : STD_LOGIC; 
  signal CNT_9_D2 : STD_LOGIC; 
  signal i_LEDG_0_Q_1 : STD_LOGIC; 
  signal i_LEDG_0_BUFOE_OUT : STD_LOGIC; 
  signal i_LEDG_0_TRST : STD_LOGIC; 
  signal i_LEDG_0_D : STD_LOGIC; 
  signal i_LEDG_0_tsimcreated_xor_Q : STD_LOGIC; 
  signal i_LEDG_0_tsimcreated_prld_Q : STD_LOGIC; 
  signal i_LEDG_0_CLKF : STD_LOGIC; 
  signal i_LEDG_0_REG_tsimcreated_inv_i_LEDG_0_CLKF : STD_LOGIC; 
  signal i_LEDG_0_D1 : STD_LOGIC; 
  signal i_LEDG_0_D2 : STD_LOGIC; 
  signal i_LEDG_0_D2_PT_0 : STD_LOGIC; 
  signal i_LEDG_0_D2_PT_1 : STD_LOGIC; 
  signal i_LEDG_1_Q_2 : STD_LOGIC; 
  signal i_LEDG_1_BUFOE_OUT : STD_LOGIC; 
  signal i_LEDG_1_TRST : STD_LOGIC; 
  signal i_LEDG_1_D : STD_LOGIC; 
  signal i_LEDG_1_tsimcreated_xor_Q : STD_LOGIC; 
  signal i_LEDG_1_tsimcreated_prld_Q : STD_LOGIC; 
  signal i_LEDG_1_CLKF : STD_LOGIC; 
  signal i_LEDG_1_REG_tsimcreated_inv_i_LEDG_1_CLKF : STD_LOGIC; 
  signal i_LEDG_1_D1 : STD_LOGIC; 
  signal i_LEDG_1_D2 : STD_LOGIC; 
  signal i_LEDG_1_D2_PT_0 : STD_LOGIC; 
  signal i_LEDG_1_D2_PT_1 : STD_LOGIC; 
  signal FSb_1_OBUFE_Q_3 : STD_LOGIC; 
  signal FSb_1_OBUFE_BUFOE_OUT : STD_LOGIC; 
  signal FSb_1_OBUFE_TRST : STD_LOGIC; 
  signal FSb_1_OBUFE_D : STD_LOGIC; 
  signal FSb_1_OBUFE_D1 : STD_LOGIC; 
  signal FSb_1_OBUFE_D2 : STD_LOGIC; 
  signal FS : STD_LOGIC; 
  signal FSb_1_OBUFE_D2_PT_0 : STD_LOGIC; 
  signal FSb_1_OBUFE_D2_PT_1 : STD_LOGIC; 
  signal FSb_1_OBUFE_D2_PT_2 : STD_LOGIC; 
  signal CCLK_OBUF_Q_4 : STD_LOGIC; 
  signal CCLK_OBUF : STD_LOGIC; 
  signal CCLK_OBUF_D : STD_LOGIC; 
  signal CCLK_OBUF_tsimcreated_xor_Q : STD_LOGIC; 
  signal CCLK_OBUF_tsimcreated_prld_Q : STD_LOGIC; 
  signal CCLK_OBUF_CLKF : STD_LOGIC; 
  signal CCLK_OBUF_REG_tsimcreated_inv_CCLK_OBUF_CLKF : STD_LOGIC; 
  signal CCLK_OBUF_D1 : STD_LOGIC; 
  signal CCLK_OBUF_D2 : STD_LOGIC; 
  signal CCLK_OBUF_D2_PT_0 : STD_LOGIC; 
  signal CCLK_OBUF_D2_PT_1 : STD_LOGIC; 
  signal CCSn_0_Q_5 : STD_LOGIC; 
  signal CCSn_0 : STD_LOGIC; 
  signal CCSn_0_D : STD_LOGIC; 
  signal CCSn_0_tsimcreated_xor_Q : STD_LOGIC; 
  signal CCSn_0_tsimcreated_prld_Q : STD_LOGIC; 
  signal CCSn_0_CLKF : STD_LOGIC; 
  signal CCSn_0_REG_tsimcreated_inv_CCSn_0_CLKF : STD_LOGIC; 
  signal CCSn_0_D1 : STD_LOGIC; 
  signal CCSn_0_D2 : STD_LOGIC; 
  signal CCSn_0_D2_PT_0 : STD_LOGIC; 
  signal CCSn_0_D2_PT_1 : STD_LOGIC; 
  signal CCSn_0_D2_PT_2 : STD_LOGIC; 
  signal CCSn_1_Q_6 : STD_LOGIC; 
  signal CCSn_1 : STD_LOGIC; 
  signal CCSn_1_D : STD_LOGIC; 
  signal CCSn_1_tsimcreated_xor_Q : STD_LOGIC; 
  signal CCSn_1_tsimcreated_prld_Q : STD_LOGIC; 
  signal CCSn_1_CLKF : STD_LOGIC; 
  signal CCSn_1_REG_tsimcreated_inv_CCSn_1_CLKF : STD_LOGIC; 
  signal CCSn_1_D1 : STD_LOGIC; 
  signal CCSn_1_D2 : STD_LOGIC; 
  signal CCSn_1_D2_PT_0 : STD_LOGIC; 
  signal CCSn_1_D2_PT_1 : STD_LOGIC; 
  signal CCSn_1_D2_PT_2 : STD_LOGIC; 
  signal CIN_OBUF_Q_7 : STD_LOGIC; 
  signal CIN_OBUF : STD_LOGIC; 
  signal CIN_OBUF_D : STD_LOGIC; 
  signal CIN_OBUF_tsimcreated_xor_Q : STD_LOGIC; 
  signal CIN_OBUF_tsimcreated_prld_Q : STD_LOGIC; 
  signal CIN_OBUF_CLKF : STD_LOGIC; 
  signal CIN_OBUF_REG_tsimcreated_inv_CIN_OBUF_CLKF : STD_LOGIC; 
  signal CIN_OBUF_D1 : STD_LOGIC; 
  signal CIN_OBUF_D2 : STD_LOGIC; 
  signal CIN_OBUF_D2_PT_0 : STD_LOGIC; 
  signal CIN_OBUF_D2_PT_1 : STD_LOGIC; 
  signal DX_0_Q_8 : STD_LOGIC; 
  signal DX_0 : STD_LOGIC; 
  signal DX_0_D : STD_LOGIC; 
  signal DX_0_tsimcreated_xor_Q : STD_LOGIC; 
  signal DX_0_tsimcreated_prld_Q : STD_LOGIC; 
  signal DX_0_CLKF : STD_LOGIC; 
  signal DX_0_REG_tsimcreated_inv_DX_0_CLKF : STD_LOGIC; 
  signal DX_0_D1 : STD_LOGIC; 
  signal DX_0_D2 : STD_LOGIC; 
  signal DX_0_D2_PT_0 : STD_LOGIC; 
  signal DX_0_D2_PT_1 : STD_LOGIC; 
  signal DX_1_Q_9 : STD_LOGIC; 
  signal DX_1 : STD_LOGIC; 
  signal DX_1_D : STD_LOGIC; 
  signal DX_1_tsimcreated_xor_Q : STD_LOGIC; 
  signal DX_1_tsimcreated_prld_Q : STD_LOGIC; 
  signal DX_1_CLKF : STD_LOGIC; 
  signal DX_1_REG_tsimcreated_inv_DX_1_CLKF : STD_LOGIC; 
  signal DX_1_D1 : STD_LOGIC; 
  signal DX_1_D2 : STD_LOGIC; 
  signal DX_1_D2_PT_0 : STD_LOGIC; 
  signal DX_1_D2_PT_1 : STD_LOGIC; 
  signal LEDY_0_Q_10 : STD_LOGIC; 
  signal LEDY_0 : STD_LOGIC; 
  signal LEDY_0_D : STD_LOGIC; 
  signal LEDY_0_tsimcreated_xor_Q : STD_LOGIC; 
  signal LEDY_0_tsimcreated_prld_Q : STD_LOGIC; 
  signal LEDY_0_CLKF : STD_LOGIC; 
  signal LEDY_0_REG_tsimcreated_inv_LEDY_0_CLKF : STD_LOGIC; 
  signal LEDY_0_D1 : STD_LOGIC; 
  signal LEDY_0_D2 : STD_LOGIC; 
  signal LEDY_0_D2_PT_0 : STD_LOGIC; 
  signal LEDY_0_D2_PT_1 : STD_LOGIC; 
  signal LEDY_1_Q_11 : STD_LOGIC; 
  signal LEDY_1 : STD_LOGIC; 
  signal LEDY_1_D : STD_LOGIC; 
  signal LEDY_1_tsimcreated_xor_Q : STD_LOGIC; 
  signal LEDY_1_tsimcreated_prld_Q : STD_LOGIC; 
  signal LEDY_1_CLKF : STD_LOGIC; 
  signal LEDY_1_REG_tsimcreated_inv_LEDY_1_CLKF : STD_LOGIC; 
  signal LEDY_1_D1 : STD_LOGIC; 
  signal LEDY_1_D2 : STD_LOGIC; 
  signal LEDY_1_D2_PT_0 : STD_LOGIC; 
  signal LEDY_1_D2_PT_1 : STD_LOGIC; 
  signal CNT_2_BUF0_Q : STD_LOGIC; 
  signal CNT_2_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal CNT_2_BUF0_TRST : STD_LOGIC; 
  signal CNT_2_BUF0_D : STD_LOGIC; 
  signal CNT_2_BUF0_D1 : STD_LOGIC; 
  signal CNT_2_BUF0_D2 : STD_LOGIC; 
  signal FS_BUF0_Q : STD_LOGIC; 
  signal FS_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal FS_BUF0_TRST : STD_LOGIC; 
  signal FS_BUF0_D : STD_LOGIC; 
  signal FS_BUF0_D1 : STD_LOGIC; 
  signal FS_BUF0_D2 : STD_LOGIC; 
  signal FS_BUF0_D2_PT_0 : STD_LOGIC; 
  signal FS_BUF0_D2_PT_1 : STD_LOGIC; 
  signal FS_BUF0_D2_PT_2 : STD_LOGIC; 
  signal FS_BUF0_D2_PT_3 : STD_LOGIC; 
  signal FS_BUF1_Q : STD_LOGIC; 
  signal FS_BUF1_BUFOE_OUT : STD_LOGIC; 
  signal FS_BUF1_TRST : STD_LOGIC; 
  signal FS_BUF1_D : STD_LOGIC; 
  signal FS_BUF1_D1 : STD_LOGIC; 
  signal FS_BUF1_D2 : STD_LOGIC; 
  signal FS_BUF1_D2_PT_0 : STD_LOGIC; 
  signal FS_BUF1_D2_PT_1 : STD_LOGIC; 
  signal FS_BUF1_D2_PT_2 : STD_LOGIC; 
  signal FS_BUF1_D2_PT_3 : STD_LOGIC; 
  signal DCLK_1_IOBUFE_Q : STD_LOGIC; 
  signal DCLK_1_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal DCLK_1_IOBUFE_TRST : STD_LOGIC; 
  signal DCLK_1_IOBUFE_D : STD_LOGIC; 
  signal DCLK_1_IOBUFE_D1 : STD_LOGIC; 
  signal DCLK_1_IOBUFE_D2 : STD_LOGIC; 
  signal DCLK_1_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal DCLK_1_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal DCLK_1_IOBUFE_D2_PT_2 : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_Q : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_TRST : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_D : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_D1 : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_D2 : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_D2_PT_0 : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_D2_PT_1 : STD_LOGIC; 
  signal MCLK_1_OBUF_BUF0_D2_PT_2 : STD_LOGIC; 
  signal M_Sn_0_Q : STD_LOGIC; 
  signal M_Sn_0_D : STD_LOGIC; 
  signal M_Sn_0_tsimcreated_xor_Q : STD_LOGIC; 
  signal M_Sn_0_tsimcreated_prld_Q : STD_LOGIC; 
  signal M_Sn_0_CLKF : STD_LOGIC; 
  signal M_Sn_0_REG_tsimcreated_inv_M_Sn_0_CLKF : STD_LOGIC; 
  signal M_Sn_0_D1 : STD_LOGIC; 
  signal M_Sn_0_D2 : STD_LOGIC; 
  signal M_Sn_0_D2_PT_0 : STD_LOGIC; 
  signal M_Sn_0_D2_PT_1 : STD_LOGIC; 
  signal M_Sn_1_Q : STD_LOGIC; 
  signal M_Sn_1_D : STD_LOGIC; 
  signal M_Sn_1_tsimcreated_xor_Q : STD_LOGIC; 
  signal M_Sn_1_tsimcreated_prld_Q : STD_LOGIC; 
  signal M_Sn_1_CLKF : STD_LOGIC; 
  signal M_Sn_1_REG_tsimcreated_inv_M_Sn_1_CLKF : STD_LOGIC; 
  signal M_Sn_1_D1 : STD_LOGIC; 
  signal M_Sn_1_D2 : STD_LOGIC; 
  signal M_Sn_1_D2_PT_0 : STD_LOGIC; 
  signal M_Sn_1_D2_PT_1 : STD_LOGIC; 
  signal i_DR_0_Q : STD_LOGIC; 
  signal i_DR_0_tsimcreated_prld_Q : STD_LOGIC; 
  signal i_DR_0_D : STD_LOGIC; 
  signal i_DR_0_CLKF : STD_LOGIC; 
  signal i_DR_0_D1 : STD_LOGIC; 
  signal i_DR_0_D2 : STD_LOGIC; 
  signal i_DR_1_Q : STD_LOGIC; 
  signal i_DR_1_tsimcreated_prld_Q : STD_LOGIC; 
  signal i_DR_1_D : STD_LOGIC; 
  signal i_DR_1_CLKF : STD_LOGIC; 
  signal i_DR_1_D1 : STD_LOGIC; 
  signal i_DR_1_D2 : STD_LOGIC; 
  signal TST_M_Sn_OBUF_Q_12 : STD_LOGIC; 
  signal TST_M_Sn_OBUF_D : STD_LOGIC; 
  signal TST_M_Sn_OBUF_D1 : STD_LOGIC; 
  signal TST_M_Sn_OBUF_D2 : STD_LOGIC; 
  signal CNT_2_Q_13 : STD_LOGIC; 
  signal CNT_2_D : STD_LOGIC; 
  signal CNT_2_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_2_D1 : STD_LOGIC; 
  signal CNT_2_D2 : STD_LOGIC; 
  signal FS_Q_14 : STD_LOGIC; 
  signal FS_D : STD_LOGIC; 
  signal FS_D1 : STD_LOGIC; 
  signal FS_D2 : STD_LOGIC; 
  signal FS_D2_PT_0 : STD_LOGIC; 
  signal FS_D2_PT_1 : STD_LOGIC; 
  signal FS_D2_PT_2 : STD_LOGIC; 
  signal FS_D2_PT_3 : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_Q : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_TRST : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D1 : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D2 : STD_LOGIC; 
  signal EXP6_EXP : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal EXP7_EXP : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D2_PT_2 : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D2_PT_3 : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D2_PT_4 : STD_LOGIC; 
  signal DSP_D_0_IOBUFE_D2_PT_5 : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_Q : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_TRST : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_D : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_D1 : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_D2 : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_D2_PT_0 : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_D2_PT_1 : STD_LOGIC; 
  signal FSb_1_OBUFE_BUF0_D2_PT_2 : STD_LOGIC; 
  signal CNT_0_Q : STD_LOGIC; 
  signal CNT_0_D : STD_LOGIC; 
  signal CNT_0_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_0_D1 : STD_LOGIC; 
  signal CNT_0_D2 : STD_LOGIC; 
  signal CNT_1_Q : STD_LOGIC; 
  signal CNT_1_D : STD_LOGIC; 
  signal CNT_1_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_1_D1 : STD_LOGIC; 
  signal CNT_1_D2 : STD_LOGIC; 
  signal CNT_3_Q : STD_LOGIC; 
  signal CNT_3_D : STD_LOGIC; 
  signal CNT_3_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_3_D1 : STD_LOGIC; 
  signal CNT_3_D2 : STD_LOGIC; 
  signal CNT_4_Q : STD_LOGIC; 
  signal CNT_4_D : STD_LOGIC; 
  signal CNT_4_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_4_D1 : STD_LOGIC; 
  signal CNT_4_D2 : STD_LOGIC; 
  signal CNT_5_Q : STD_LOGIC; 
  signal CNT_5_D : STD_LOGIC; 
  signal CNT_5_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_5_D1 : STD_LOGIC; 
  signal CNT_5_D2 : STD_LOGIC; 
  signal CNT_6_Q : STD_LOGIC; 
  signal CNT_6_D : STD_LOGIC; 
  signal CNT_6_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_6_D1 : STD_LOGIC; 
  signal CNT_6_D2 : STD_LOGIC; 
  signal CNT_7_Q : STD_LOGIC; 
  signal CNT_7_D : STD_LOGIC; 
  signal CNT_7_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_7_D1 : STD_LOGIC; 
  signal CNT_7_D2 : STD_LOGIC; 
  signal CNT_8_Q : STD_LOGIC; 
  signal CNT_8_D : STD_LOGIC; 
  signal CNT_8_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_8_D1 : STD_LOGIC; 
  signal CNT_8_D2 : STD_LOGIC; 
  signal CNT_10_Q : STD_LOGIC; 
  signal CNT_10_D : STD_LOGIC; 
  signal CNT_10_tsimcreated_xor_Q : STD_LOGIC; 
  signal CNT_10_D1 : STD_LOGIC; 
  signal CNT_10_D2 : STD_LOGIC; 
  signal BX_0_OBUF_Q : STD_LOGIC; 
  signal BX_0_OBUF_D : STD_LOGIC; 
  signal BX_0_OBUF_D1 : STD_LOGIC; 
  signal BX_0_OBUF_D2 : STD_LOGIC; 
  signal BX_0_OBUF_D2_PT_0 : STD_LOGIC; 
  signal BX_0_OBUF_D2_PT_1 : STD_LOGIC; 
  signal BX_0_OBUF_D2_PT_2 : STD_LOGIC; 
  signal BX_1_OBUF_Q : STD_LOGIC; 
  signal BX_1_OBUF_D : STD_LOGIC; 
  signal BX_1_OBUF_D1 : STD_LOGIC; 
  signal BX_1_OBUF_D2 : STD_LOGIC; 
  signal BX_1_OBUF_D2_PT_0 : STD_LOGIC; 
  signal BX_1_OBUF_D2_PT_1 : STD_LOGIC; 
  signal BX_1_OBUF_D2_PT_2 : STD_LOGIC; 
  signal DSP_BCLK_0_OBUF_Q : STD_LOGIC; 
  signal DSP_BCLK_0_OBUF_D : STD_LOGIC; 
  signal DSP_BCLK_0_OBUF_D1 : STD_LOGIC; 
  signal DSP_BCLK_0_OBUF_D2 : STD_LOGIC; 
  signal DSP_BCLK_0_OBUF_D2_PT_0 : STD_LOGIC; 
  signal DSP_BCLK_0_OBUF_D2_PT_1 : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF_Q : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF_D : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF_D1 : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF_D2 : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF_D2_PT_0 : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF_D2_PT_1 : STD_LOGIC; 
  signal DSP_BCLK_1_OBUF_D2_PT_2 : STD_LOGIC; 
  signal DSP_BFS_0_OBUF_Q : STD_LOGIC; 
  signal DSP_BFS_0_OBUF_D : STD_LOGIC; 
  signal DSP_BFS_0_OBUF_D1 : STD_LOGIC; 
  signal DSP_BFS_0_OBUF_D2 : STD_LOGIC; 
  signal DSP_BFS_0_OBUF_D2_PT_0 : STD_LOGIC; 
  signal DSP_BFS_0_OBUF_D2_PT_1 : STD_LOGIC; 
  signal DSP_BFS_1_OBUF_Q : STD_LOGIC; 
  signal DSP_BFS_1_OBUF_D : STD_LOGIC; 
  signal DSP_BFS_1_OBUF_D1 : STD_LOGIC; 
  signal DSP_BFS_1_OBUF_D2 : STD_LOGIC; 
  signal DSP_BFS_1_OBUF_D2_PT_0 : STD_LOGIC; 
  signal DSP_BFS_1_OBUF_D2_PT_1 : STD_LOGIC; 
  signal DSP_BFS_1_OBUF_D2_PT_2 : STD_LOGIC; 
  signal DSP_INTn_0_OBUF_Q : STD_LOGIC; 
  signal DSP_INTn_0_OBUF_D : STD_LOGIC; 
  signal DSP_INTn_0_OBUF_D1 : STD_LOGIC; 
  signal DSP_INTn_0_OBUF_D2 : STD_LOGIC; 
  signal DSP_INTn_0_OBUF_D2_PT_0 : STD_LOGIC; 
  signal DSP_INTn_0_OBUF_D2_PT_1 : STD_LOGIC; 
  signal DSP_INTn_1_OBUF_Q : STD_LOGIC; 
  signal DSP_INTn_1_OBUF_D : STD_LOGIC; 
  signal DSP_INTn_1_OBUF_D1 : STD_LOGIC; 
  signal DSP_INTn_1_OBUF_D2 : STD_LOGIC; 
  signal DSP_INTn_1_OBUF_D2_PT_0 : STD_LOGIC; 
  signal DSP_INTn_1_OBUF_D2_PT_1 : STD_LOGIC; 
  signal DSP_INTn_1_OBUF_D2_PT_2 : STD_LOGIC; 
  signal MCLK_1_OBUF_Q_15 : STD_LOGIC; 
  signal MCLK_1_OBUF_D : STD_LOGIC; 
  signal MCLK_1_OBUF_D1 : STD_LOGIC; 
  signal MCLK_1_OBUF_D2 : STD_LOGIC; 
  signal MCLK_1_OBUF_D2_PT_0 : STD_LOGIC; 
  signal MCLK_1_OBUF_D2_PT_1 : STD_LOGIC; 
  signal MCLK_1_OBUF_D2_PT_2 : STD_LOGIC; 
  signal DSP_D_1_IOBUFE_Q : STD_LOGIC; 
  signal DSP_D_1_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal DSP_D_1_IOBUFE_TRST : STD_LOGIC; 
  signal DSP_D_1_IOBUFE_D : STD_LOGIC; 
  signal DSP_D_1_IOBUFE_D1 : STD_LOGIC; 
  signal DSP_D_1_IOBUFE_D2 : STD_LOGIC; 
  signal FSc_1_IOBUFE_Q_16 : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal FSc_1_IOBUFE_TRST : STD_LOGIC; 
  signal FSc_1_IOBUFE_D : STD_LOGIC; 
  signal FSc_1_IOBUFE_D1 : STD_LOGIC; 
  signal FSc_1_IOBUFE_D2 : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0_D : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal FSc_1_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal BR_0_IBUF_BUF0_Q : STD_LOGIC; 
  signal BR_0_IBUF_BUF0_D : STD_LOGIC; 
  signal BR_0_IBUF_BUF0_D1 : STD_LOGIC; 
  signal BR_0_IBUF_BUF0_D2 : STD_LOGIC; 
  signal BR_1_IBUF_BUF0_Q : STD_LOGIC; 
  signal BR_1_IBUF_BUF0_D : STD_LOGIC; 
  signal BR_1_IBUF_BUF0_D1 : STD_LOGIC; 
  signal BR_1_IBUF_BUF0_D2 : STD_LOGIC; 
  signal DSP_INTn3_OBUF_BUF0_Q : STD_LOGIC; 
  signal DSP_INTn3_OBUF_BUF0_D : STD_LOGIC; 
  signal DSP_INTn3_OBUF_BUF0_D1 : STD_LOGIC; 
  signal DSP_INTn3_OBUF_BUF0_D2 : STD_LOGIC; 
  signal EXP6_EXP_tsimrenamed_net_Q : STD_LOGIC; 
  signal EXP7_EXP_tsimrenamed_net_Q : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_0_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_1_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_1_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_i_LEDG_1_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FSb_1_OBUFE_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FSb_1_OBUFE_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCLK_OBUF_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_0_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CCSn_1_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CIN_OBUF_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DX_0_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_DX_0_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DX_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DX_0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_DX_0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DX_0_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DX_1_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_DX_1_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DX_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DX_1_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_DX_1_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DX_1_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_0_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_1_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_1_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_1_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LEDY_1_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF0_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_BUF1_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DCLK_1_IOBUFE_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DCLK_1_IOBUFE_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_MCLK_1_OBUF_BUF0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_MCLK_1_OBUF_BUF0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_0_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_1_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_1_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_1_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_M_Sn_1_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_i_DR_0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_i_DR_0_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_i_DR_1_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_i_DR_1_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_TST_M_Sn_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_FS_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_0_IOBUFE_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_FSb_1_OBUFE_BUF0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_FSb_1_OBUFE_BUF0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_BX_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_BX_0_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_BX_1_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_BX_1_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_BCLK_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_BCLK_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_BCLK_1_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_BFS_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_BFS_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_BFS_1_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_MCLK_1_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_MCLK_1_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_DSP_D_1_IOBUFE_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP6_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP6_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP7_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP7_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal CNT : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal M_Sn : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal i_LEDG : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal i_DR : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  FCLKIO_0_17 : X_BUF
    port map (
      I => CLK_16M,
      O => FCLKIO_0
    );
  RESETn_IBUF_18 : X_BUF
    port map (
      I => RESETn,
      O => RESETn_IBUF
    );
  FSR_IO_1_19 : X_INV
    port map (
      I => RESETn,
      O => FSR_IO_1
    );
  IOSTRn_IBUF_20 : X_BUF
    port map (
      I => IOSTRn,
      O => IOSTRn_IBUF
    );
  R_Wn_IBUF_21 : X_BUF
    port map (
      I => R_Wn,
      O => R_Wn_IBUF
    );
  N2918_22 : X_BUF
    port map (
      I => DSP_D(0),
      O => N2918
    );
  DSP_A_1_IBUF_23 : X_BUF
    port map (
      I => DSP_A(1),
      O => DSP_A_1_IBUF
    );
  DSP_A_0_IBUF_24 : X_BUF
    port map (
      I => DSP_A(0),
      O => DSP_A_0_IBUF
    );
  DSP_A_2_IBUF_25 : X_BUF
    port map (
      I => DSP_A(2),
      O => DSP_A_2_IBUF
    );
  N2922_26 : X_BUF
    port map (
      I => FSc(0),
      O => N2922
    );
  N2920_27 : X_BUF
    port map (
      I => DSP_D(1),
      O => N2920
    );
  N2910_28 : X_BUF
    port map (
      I => DCLK(0),
      O => N2910
    );
  N2914_29 : X_BUF
    port map (
      I => BCLK(0),
      O => N2914
    );
  DR_0_IBUF_30 : X_BUF
    port map (
      I => DR(0),
      O => DR_0_IBUF
    );
  DR_1_IBUF_31 : X_BUF
    port map (
      I => DR(1),
      O => DR_1_IBUF
    );
  N2912_32 : X_BUF
    port map (
      I => DCLK(1),
      O => N2912
    );
  DSP_INTn3_OBUF_33 : X_BUF
    port map (
      I => CINTn,
      O => DSP_INTn3_OBUF
    );
  COUT_IBUF_34 : X_BUF
    port map (
      I => COUT,
      O => COUT_IBUF
    );
  BR_1_IBUF_35 : X_BUF
    port map (
      I => BR(1),
      O => BR_1_IBUF
    );
  DSP_BX_0_IBUF_36 : X_BUF
    port map (
      I => DSP_BX(0),
      O => DSP_BX_0_IBUF
    );
  BR_0_IBUF_37 : X_BUF
    port map (
      I => BR(0),
      O => BR_0_IBUF
    );
  DSP_BX_1_IBUF_38 : X_BUF
    port map (
      I => DSP_BX(1),
      O => DSP_BX_1_IBUF
    );
  N2916_39 : X_BUF
    port map (
      I => BCLK(1),
      O => N2916
    );
  N2924_40 : X_BUF
    port map (
      I => FSc(1),
      O => N2924
    );
  DCLK_0_Q : X_TRI
    port map (
      I => CNT_9_Q,
      CTL => CNT_9_OE,
      O => DCLK(0)
    );
  LEDG_0_Q : X_TRI
    port map (
      I => i_LEDG_0_Q,
      CTL => i_LEDG_0_OE,
      O => LEDG(0)
    );
  LEDG_1_Q : X_TRI
    port map (
      I => i_LEDG_1_Q,
      CTL => i_LEDG_1_OE,
      O => LEDG(1)
    );
  FSb_1_Q : X_TRI
    port map (
      I => FSb_1_OBUFE_Q,
      CTL => FSb_1_OBUFE_OE,
      O => FSb(1)
    );
  CCLK_41 : X_BUF
    port map (
      I => CCLK_OBUF_Q,
      O => CCLK
    );
  CCSn_0_Q_42 : X_BUF
    port map (
      I => CCSn_0_Q,
      O => CCSn(0)
    );
  CCSn_1_Q_43 : X_BUF
    port map (
      I => CCSn_1_Q,
      O => CCSn(1)
    );
  CIN_44 : X_BUF
    port map (
      I => CIN_OBUF_Q,
      O => CIN
    );
  DX_0_Q_45 : X_BUF
    port map (
      I => DX_0_Q,
      O => DX(0)
    );
  DX_1_Q_46 : X_BUF
    port map (
      I => DX_1_Q,
      O => DX(1)
    );
  LEDY_0_Q_47 : X_BUF
    port map (
      I => LEDY_0_Q,
      O => LEDY(0)
    );
  LEDY_1_Q_48 : X_BUF
    port map (
      I => LEDY_1_Q,
      O => LEDY(1)
    );
  BCLK_0_Q : X_TRI
    port map (
      I => CNT_2_BUF0,
      CTL => CNT_2_BUF0_OE,
      O => BCLK(0)
    );
  FSb_0_Q : X_TRI
    port map (
      I => FS_BUF0,
      CTL => FS_BUF0_OE,
      O => FSb(0)
    );
  FSa_0_Q : X_TRI
    port map (
      I => FS_BUF1,
      CTL => FS_BUF1_OE,
      O => FSa(0)
    );
  DCLK_1_Q : X_TRI
    port map (
      I => DCLK_1_IOBUFE,
      CTL => DCLK_1_IOBUFE_OE,
      O => DCLK(1)
    );
  BCLK_1_Q : X_TRI
    port map (
      I => MCLK_1_OBUF_BUF0,
      CTL => MCLK_1_OBUF_BUF0_OE,
      O => BCLK(1)
    );
  TST_M_Sn_49 : X_BUF
    port map (
      I => TST_M_Sn_OBUF_Q,
      O => TST_M_Sn
    );
  MCLK_0_Q : X_BUF
    port map (
      I => CNT_2_Q,
      O => MCLK(0)
    );
  TST_FS_50 : X_BUF
    port map (
      I => FS_Q,
      O => TST_FS
    );
  DSP_D_0_Q : X_TRI
    port map (
      I => DSP_D_0_IOBUFE,
      CTL => DSP_D_0_IOBUFE_OE,
      O => DSP_D(0)
    );
  FSa_1_Q : X_TRI
    port map (
      I => FSb_1_OBUFE_BUF0,
      CTL => FSb_1_OBUFE_BUF0_OE,
      O => FSa(1)
    );
  BX_0_Q : X_BUF
    port map (
      I => BX_0_OBUF,
      O => BX(0)
    );
  BX_1_Q : X_BUF
    port map (
      I => BX_1_OBUF,
      O => BX(1)
    );
  DSP_BCLK_0_Q : X_BUF
    port map (
      I => DSP_BCLK_0_OBUF,
      O => DSP_BCLK(0)
    );
  DSP_BCLK_1_Q : X_BUF
    port map (
      I => DSP_BCLK_1_OBUF,
      O => DSP_BCLK(1)
    );
  DSP_BFS_0_Q : X_BUF
    port map (
      I => DSP_BFS_0_OBUF,
      O => DSP_BFS(0)
    );
  DSP_BFS_1_Q : X_BUF
    port map (
      I => DSP_BFS_1_OBUF,
      O => DSP_BFS(1)
    );
  DSP_INTn_0_Q : X_BUF
    port map (
      I => DSP_INTn_0_OBUF,
      O => DSP_INTn(0)
    );
  DSP_INTn_1_Q : X_BUF
    port map (
      I => DSP_INTn_1_OBUF,
      O => DSP_INTn(1)
    );
  MCLK_1_Q : X_BUF
    port map (
      I => MCLK_1_OBUF_Q,
      O => MCLK(1)
    );
  DSP_D_1_Q : X_TRI
    port map (
      I => DSP_D_1_IOBUFE,
      CTL => DSP_D_1_IOBUFE_OE,
      O => DSP_D(1)
    );
  FSc_1_Q : X_TRI
    port map (
      I => FSc_1_IOBUFE_Q,
      CTL => FSc_1_IOBUFE_OE,
      O => FSc(1)
    );
  FSc_0_Q : X_TRI
    port map (
      I => FSc_1_IOBUFE_BUF0,
      CTL => FSc_1_IOBUFE_BUF0_OE,
      O => FSc(0)
    );
  DSP_BR_0_Q : X_BUF
    port map (
      I => BR_0_IBUF_BUF0,
      O => DSP_BR(0)
    );
  DSP_BR_1_Q : X_BUF
    port map (
      I => BR_1_IBUF_BUF0,
      O => DSP_BR(1)
    );
  DSP_INTn3_51 : X_BUF
    port map (
      I => DSP_INTn3_OBUF_BUF0,
      O => DSP_INTn3
    );
  CNT_9_Q_52 : X_BUF
    port map (
      I => CNT_9_Q_0,
      O => CNT_9_Q
    );
  CNT_9_Q_53 : X_BUF
    port map (
      I => CNT_9_Q_0,
      O => CNT(9)
    );
  CNT_9_OE_54 : X_BUF
    port map (
      I => CNT_9_BUFOE_OUT,
      O => CNT_9_OE
    );
  CNT_9_BUFOE_OUT_55 : X_BUF
    port map (
      I => CNT_9_TRST,
      O => CNT_9_BUFOE_OUT
    );
  CNT_9_tsimcreated_xor_Q_56 : X_XOR2
    port map (
      I0 => CNT_9_D,
      I1 => CNT_9_Q_0,
      O => CNT_9_tsimcreated_xor_Q
    );
  CNT_9_REG : X_FF
    port map (
      I => CNT_9_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_9_Q_0
    );
  Gnd_57 : X_ZERO
    port map (
      O => Gnd
    );
  Vcc_58 : X_ONE
    port map (
      O => Vcc
    );
  CNT_9_D_59 : X_XOR2
    port map (
      I0 => CNT_9_D1,
      I1 => CNT_9_D2,
      O => CNT_9_D
    );
  CNT_9_D1_60 : X_ZERO
    port map (
      O => CNT_9_D1
    );
  CNT_9_D2_61 : X_AND16
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      I3 => CNT(3),
      I4 => CNT(4),
      I5 => CNT(5),
      I6 => CNT(6),
      I7 => CNT(7),
      I8 => CNT(8),
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => CNT_9_D2
    );
  CNT_9_TRST_62 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => M_Sn(0),
      O => CNT_9_TRST
    );
  i_LEDG_0_Q_63 : X_BUF
    port map (
      I => i_LEDG_0_Q_1,
      O => i_LEDG_0_Q
    );
  i_LEDG_0_Q_64 : X_BUF
    port map (
      I => i_LEDG_0_Q_1,
      O => i_LEDG(0)
    );
  i_LEDG_0_OE_65 : X_BUF
    port map (
      I => i_LEDG_0_BUFOE_OUT,
      O => i_LEDG_0_OE
    );
  i_LEDG_0_BUFOE_OUT_66 : X_BUF
    port map (
      I => i_LEDG_0_TRST,
      O => i_LEDG_0_BUFOE_OUT
    );
  i_LEDG_0_tsimcreated_xor_Q_67 : X_XOR2
    port map (
      I0 => i_LEDG_0_D,
      I1 => i_LEDG_0_Q_1,
      O => i_LEDG_0_tsimcreated_xor_Q
    );
  i_LEDG_0_tsimcreated_prld_Q_68 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => i_LEDG_0_tsimcreated_prld_Q
    );
  i_LEDG_0_REG : X_FF
    port map (
      I => i_LEDG_0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => i_LEDG_0_REG_tsimcreated_inv_i_LEDG_0_CLKF,
      SET => Gnd,
      RST => i_LEDG_0_tsimcreated_prld_Q,
      O => i_LEDG_0_Q_1
    );
  i_LEDG_0_REG_tsimcreated_inv_i_LEDG_0_CLKF_69 : X_INV
    port map (
      I => i_LEDG_0_CLKF,
      O => i_LEDG_0_REG_tsimcreated_inv_i_LEDG_0_CLKF
    );
  i_LEDG_0_D_70 : X_XOR2
    port map (
      I0 => i_LEDG_0_D1,
      I1 => i_LEDG_0_D2,
      O => i_LEDG_0_D
    );
  i_LEDG_0_D1_71 : X_ZERO
    port map (
      O => i_LEDG_0_D1
    );
  i_LEDG_0_D2_PT_0_72 : X_AND5
    port map (
      I0 => N2918,
      I1 => NlwInverterSignal_i_LEDG_0_D2_PT_0_IN1,
      I2 => NlwInverterSignal_i_LEDG_0_D2_PT_0_IN2,
      I3 => DSP_A_2_IBUF,
      I4 => NlwInverterSignal_i_LEDG_0_D2_PT_0_IN4,
      O => i_LEDG_0_D2_PT_0
    );
  i_LEDG_0_D2_PT_1_73 : X_AND5
    port map (
      I0 => NlwInverterSignal_i_LEDG_0_D2_PT_1_IN0,
      I1 => NlwInverterSignal_i_LEDG_0_D2_PT_1_IN1,
      I2 => NlwInverterSignal_i_LEDG_0_D2_PT_1_IN2,
      I3 => DSP_A_2_IBUF,
      I4 => i_LEDG(0),
      O => i_LEDG_0_D2_PT_1
    );
  i_LEDG_0_D2_74 : X_OR2
    port map (
      I0 => i_LEDG_0_D2_PT_0,
      I1 => i_LEDG_0_D2_PT_1,
      O => i_LEDG_0_D2
    );
  i_LEDG_0_CLKF_75 : X_AND2
    port map (
      I0 => NlwInverterSignal_i_LEDG_0_CLKF_IN0,
      I1 => NlwInverterSignal_i_LEDG_0_CLKF_IN1,
      O => i_LEDG_0_CLKF
    );
  i_LEDG_0_TRST_76 : X_AND2
    port map (
      I0 => RESETn_IBUF,
      I1 => RESETn_IBUF,
      O => i_LEDG_0_TRST
    );
  i_LEDG_1_Q_77 : X_BUF
    port map (
      I => i_LEDG_1_Q_2,
      O => i_LEDG_1_Q
    );
  i_LEDG_1_Q_78 : X_BUF
    port map (
      I => i_LEDG_1_Q_2,
      O => i_LEDG(1)
    );
  i_LEDG_1_OE_79 : X_BUF
    port map (
      I => i_LEDG_1_BUFOE_OUT,
      O => i_LEDG_1_OE
    );
  i_LEDG_1_BUFOE_OUT_80 : X_BUF
    port map (
      I => i_LEDG_1_TRST,
      O => i_LEDG_1_BUFOE_OUT
    );
  i_LEDG_1_tsimcreated_xor_Q_81 : X_XOR2
    port map (
      I0 => i_LEDG_1_D,
      I1 => i_LEDG_1_Q_2,
      O => i_LEDG_1_tsimcreated_xor_Q
    );
  i_LEDG_1_tsimcreated_prld_Q_82 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => i_LEDG_1_tsimcreated_prld_Q
    );
  i_LEDG_1_REG : X_FF
    port map (
      I => i_LEDG_1_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => i_LEDG_1_REG_tsimcreated_inv_i_LEDG_1_CLKF,
      SET => Gnd,
      RST => i_LEDG_1_tsimcreated_prld_Q,
      O => i_LEDG_1_Q_2
    );
  i_LEDG_1_REG_tsimcreated_inv_i_LEDG_1_CLKF_83 : X_INV
    port map (
      I => i_LEDG_1_CLKF,
      O => i_LEDG_1_REG_tsimcreated_inv_i_LEDG_1_CLKF
    );
  i_LEDG_1_D_84 : X_XOR2
    port map (
      I0 => i_LEDG_1_D1,
      I1 => i_LEDG_1_D2,
      O => i_LEDG_1_D
    );
  i_LEDG_1_D1_85 : X_ZERO
    port map (
      O => i_LEDG_1_D1
    );
  i_LEDG_1_D2_PT_0_86 : X_AND5
    port map (
      I0 => N2918,
      I1 => DSP_A_1_IBUF,
      I2 => DSP_A_0_IBUF,
      I3 => DSP_A_2_IBUF,
      I4 => NlwInverterSignal_i_LEDG_1_D2_PT_0_IN4,
      O => i_LEDG_1_D2_PT_0
    );
  i_LEDG_1_D2_PT_1_87 : X_AND5
    port map (
      I0 => NlwInverterSignal_i_LEDG_1_D2_PT_1_IN0,
      I1 => DSP_A_1_IBUF,
      I2 => DSP_A_0_IBUF,
      I3 => DSP_A_2_IBUF,
      I4 => i_LEDG(1),
      O => i_LEDG_1_D2_PT_1
    );
  i_LEDG_1_D2_88 : X_OR2
    port map (
      I0 => i_LEDG_1_D2_PT_0,
      I1 => i_LEDG_1_D2_PT_1,
      O => i_LEDG_1_D2
    );
  i_LEDG_1_CLKF_89 : X_AND2
    port map (
      I0 => NlwInverterSignal_i_LEDG_1_CLKF_IN0,
      I1 => NlwInverterSignal_i_LEDG_1_CLKF_IN1,
      O => i_LEDG_1_CLKF
    );
  i_LEDG_1_TRST_90 : X_AND2
    port map (
      I0 => RESETn_IBUF,
      I1 => RESETn_IBUF,
      O => i_LEDG_1_TRST
    );
  FSb_1_OBUFE_Q_91 : X_BUF
    port map (
      I => FSb_1_OBUFE_Q_3,
      O => FSb_1_OBUFE_Q
    );
  FSb_1_OBUFE_OE_92 : X_BUF
    port map (
      I => FSb_1_OBUFE_BUFOE_OUT,
      O => FSb_1_OBUFE_OE
    );
  FSb_1_OBUFE_BUFOE_OUT_93 : X_BUF
    port map (
      I => FSb_1_OBUFE_TRST,
      O => FSb_1_OBUFE_BUFOE_OUT
    );
  FSb_1_OBUFE_Q_94 : X_BUF
    port map (
      I => FSb_1_OBUFE_D,
      O => FSb_1_OBUFE_Q_3
    );
  FSb_1_OBUFE_D_95 : X_XOR2
    port map (
      I0 => FSb_1_OBUFE_D1,
      I1 => FSb_1_OBUFE_D2,
      O => FSb_1_OBUFE_D
    );
  FSb_1_OBUFE_D1_96 : X_ZERO
    port map (
      O => FSb_1_OBUFE_D1
    );
  FSb_1_OBUFE_D2_PT_0_97 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => FS,
      O => FSb_1_OBUFE_D2_PT_0
    );
  FSb_1_OBUFE_D2_PT_1_98 : X_AND2
    port map (
      I0 => FS,
      I1 => NlwInverterSignal_FSb_1_OBUFE_D2_PT_1_IN1,
      O => FSb_1_OBUFE_D2_PT_1
    );
  FSb_1_OBUFE_D2_PT_2_99 : X_AND3
    port map (
      I0 => NlwInverterSignal_FSb_1_OBUFE_D2_PT_2_IN0,
      I1 => N2922,
      I2 => M_Sn(1),
      O => FSb_1_OBUFE_D2_PT_2
    );
  FSb_1_OBUFE_D2_100 : X_OR3
    port map (
      I0 => FSb_1_OBUFE_D2_PT_0,
      I1 => FSb_1_OBUFE_D2_PT_1,
      I2 => FSb_1_OBUFE_D2_PT_2,
      O => FSb_1_OBUFE_D2
    );
  FSb_1_OBUFE_TRST_101 : X_AND2
    port map (
      I0 => M_Sn(1),
      I1 => M_Sn(1),
      O => FSb_1_OBUFE_TRST
    );
  CCLK_OBUF_Q_102 : X_BUF
    port map (
      I => CCLK_OBUF_Q_4,
      O => CCLK_OBUF_Q
    );
  CCLK_OBUF_103 : X_BUF
    port map (
      I => CCLK_OBUF_Q_4,
      O => CCLK_OBUF
    );
  CCLK_OBUF_tsimcreated_xor_Q_104 : X_XOR2
    port map (
      I0 => CCLK_OBUF_D,
      I1 => CCLK_OBUF_Q_4,
      O => CCLK_OBUF_tsimcreated_xor_Q
    );
  CCLK_OBUF_tsimcreated_prld_Q_105 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => CCLK_OBUF_tsimcreated_prld_Q
    );
  CCLK_OBUF_REG : X_FF
    port map (
      I => CCLK_OBUF_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => CCLK_OBUF_REG_tsimcreated_inv_CCLK_OBUF_CLKF,
      SET => Gnd,
      RST => CCLK_OBUF_tsimcreated_prld_Q,
      O => CCLK_OBUF_Q_4
    );
  CCLK_OBUF_REG_tsimcreated_inv_CCLK_OBUF_CLKF_106 : X_INV
    port map (
      I => CCLK_OBUF_CLKF,
      O => CCLK_OBUF_REG_tsimcreated_inv_CCLK_OBUF_CLKF
    );
  CCLK_OBUF_D_107 : X_XOR2
    port map (
      I0 => CCLK_OBUF_D1,
      I1 => CCLK_OBUF_D2,
      O => CCLK_OBUF_D
    );
  CCLK_OBUF_D1_108 : X_ZERO
    port map (
      O => CCLK_OBUF_D1
    );
  CCLK_OBUF_D2_PT_0_109 : X_AND5
    port map (
      I0 => NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN0,
      I1 => DSP_A_0_IBUF,
      I2 => NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN2,
      I3 => N2920,
      I4 => NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN4,
      O => CCLK_OBUF_D2_PT_0
    );
  CCLK_OBUF_D2_PT_1_110 : X_AND5
    port map (
      I0 => NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN0,
      I1 => DSP_A_0_IBUF,
      I2 => NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN2,
      I3 => NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN3,
      I4 => CCLK_OBUF,
      O => CCLK_OBUF_D2_PT_1
    );
  CCLK_OBUF_D2_111 : X_OR2
    port map (
      I0 => CCLK_OBUF_D2_PT_0,
      I1 => CCLK_OBUF_D2_PT_1,
      O => CCLK_OBUF_D2
    );
  CCLK_OBUF_CLKF_112 : X_AND2
    port map (
      I0 => NlwInverterSignal_CCLK_OBUF_CLKF_IN0,
      I1 => NlwInverterSignal_CCLK_OBUF_CLKF_IN1,
      O => CCLK_OBUF_CLKF
    );
  CCSn_0_Q_113 : X_BUF
    port map (
      I => CCSn_0_Q_5,
      O => CCSn_0_Q
    );
  CCSn_0_114 : X_BUF
    port map (
      I => CCSn_0_Q_5,
      O => CCSn_0
    );
  CCSn_0_tsimcreated_xor_Q_115 : X_XOR2
    port map (
      I0 => CCSn_0_D,
      I1 => CCSn_0_Q_5,
      O => CCSn_0_tsimcreated_xor_Q
    );
  CCSn_0_tsimcreated_prld_Q_116 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => CCSn_0_tsimcreated_prld_Q
    );
  CCSn_0_REG : X_FF
    port map (
      I => CCSn_0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => CCSn_0_REG_tsimcreated_inv_CCSn_0_CLKF,
      SET => CCSn_0_tsimcreated_prld_Q,
      RST => Gnd,
      O => CCSn_0_Q_5
    );
  CCSn_0_REG_tsimcreated_inv_CCSn_0_CLKF_117 : X_INV
    port map (
      I => CCSn_0_CLKF,
      O => CCSn_0_REG_tsimcreated_inv_CCSn_0_CLKF
    );
  CCSn_0_D_118 : X_XOR2
    port map (
      I0 => CCSn_0_D1,
      I1 => CCSn_0_D2,
      O => CCSn_0_D
    );
  CCSn_0_D1_119 : X_ZERO
    port map (
      O => CCSn_0_D1
    );
  CCSn_0_D2_PT_0_120 : X_AND5
    port map (
      I0 => N2918,
      I1 => NlwInverterSignal_CCSn_0_D2_PT_0_IN1,
      I2 => NlwInverterSignal_CCSn_0_D2_PT_0_IN2,
      I3 => NlwInverterSignal_CCSn_0_D2_PT_0_IN3,
      I4 => NlwInverterSignal_CCSn_0_D2_PT_0_IN4,
      O => CCSn_0_D2_PT_0
    );
  CCSn_0_D2_PT_1_121 : X_AND5
    port map (
      I0 => NlwInverterSignal_CCSn_0_D2_PT_1_IN0,
      I1 => NlwInverterSignal_CCSn_0_D2_PT_1_IN1,
      I2 => NlwInverterSignal_CCSn_0_D2_PT_1_IN2,
      I3 => NlwInverterSignal_CCSn_0_D2_PT_1_IN3,
      I4 => NlwInverterSignal_CCSn_0_D2_PT_1_IN4,
      O => CCSn_0_D2_PT_1
    );
  CCSn_0_D2_PT_2_122 : X_AND6
    port map (
      I0 => NlwInverterSignal_CCSn_0_D2_PT_2_IN0,
      I1 => NlwInverterSignal_CCSn_0_D2_PT_2_IN1,
      I2 => NlwInverterSignal_CCSn_0_D2_PT_2_IN2,
      I3 => NlwInverterSignal_CCSn_0_D2_PT_2_IN3,
      I4 => N2920,
      I5 => CCSn_0,
      O => CCSn_0_D2_PT_2
    );
  CCSn_0_D2_123 : X_OR3
    port map (
      I0 => CCSn_0_D2_PT_0,
      I1 => CCSn_0_D2_PT_1,
      I2 => CCSn_0_D2_PT_2,
      O => CCSn_0_D2
    );
  CCSn_0_CLKF_124 : X_AND2
    port map (
      I0 => NlwInverterSignal_CCSn_0_CLKF_IN0,
      I1 => NlwInverterSignal_CCSn_0_CLKF_IN1,
      O => CCSn_0_CLKF
    );
  CCSn_1_Q_125 : X_BUF
    port map (
      I => CCSn_1_Q_6,
      O => CCSn_1_Q
    );
  CCSn_1_126 : X_BUF
    port map (
      I => CCSn_1_Q_6,
      O => CCSn_1
    );
  CCSn_1_tsimcreated_xor_Q_127 : X_XOR2
    port map (
      I0 => CCSn_1_D,
      I1 => CCSn_1_Q_6,
      O => CCSn_1_tsimcreated_xor_Q
    );
  CCSn_1_tsimcreated_prld_Q_128 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => CCSn_1_tsimcreated_prld_Q
    );
  CCSn_1_REG : X_FF
    port map (
      I => CCSn_1_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => CCSn_1_REG_tsimcreated_inv_CCSn_1_CLKF,
      SET => CCSn_1_tsimcreated_prld_Q,
      RST => Gnd,
      O => CCSn_1_Q_6
    );
  CCSn_1_REG_tsimcreated_inv_CCSn_1_CLKF_129 : X_INV
    port map (
      I => CCSn_1_CLKF,
      O => CCSn_1_REG_tsimcreated_inv_CCSn_1_CLKF
    );
  CCSn_1_D_130 : X_XOR2
    port map (
      I0 => CCSn_1_D1,
      I1 => CCSn_1_D2,
      O => CCSn_1_D
    );
  CCSn_1_D1_131 : X_ZERO
    port map (
      O => CCSn_1_D1
    );
  CCSn_1_D2_PT_0_132 : X_AND5
    port map (
      I0 => NlwInverterSignal_CCSn_1_D2_PT_0_IN0,
      I1 => NlwInverterSignal_CCSn_1_D2_PT_0_IN1,
      I2 => NlwInverterSignal_CCSn_1_D2_PT_0_IN2,
      I3 => NlwInverterSignal_CCSn_1_D2_PT_0_IN3,
      I4 => NlwInverterSignal_CCSn_1_D2_PT_0_IN4,
      O => CCSn_1_D2_PT_0
    );
  CCSn_1_D2_PT_1_133 : X_AND5
    port map (
      I0 => NlwInverterSignal_CCSn_1_D2_PT_1_IN0,
      I1 => NlwInverterSignal_CCSn_1_D2_PT_1_IN1,
      I2 => NlwInverterSignal_CCSn_1_D2_PT_1_IN2,
      I3 => NlwInverterSignal_CCSn_1_D2_PT_1_IN3,
      I4 => NlwInverterSignal_CCSn_1_D2_PT_1_IN4,
      O => CCSn_1_D2_PT_1
    );
  CCSn_1_D2_PT_2_134 : X_AND6
    port map (
      I0 => N2918,
      I1 => NlwInverterSignal_CCSn_1_D2_PT_2_IN1,
      I2 => NlwInverterSignal_CCSn_1_D2_PT_2_IN2,
      I3 => NlwInverterSignal_CCSn_1_D2_PT_2_IN3,
      I4 => N2920,
      I5 => CCSn_1,
      O => CCSn_1_D2_PT_2
    );
  CCSn_1_D2_135 : X_OR3
    port map (
      I0 => CCSn_1_D2_PT_0,
      I1 => CCSn_1_D2_PT_1,
      I2 => CCSn_1_D2_PT_2,
      O => CCSn_1_D2
    );
  CCSn_1_CLKF_136 : X_AND2
    port map (
      I0 => NlwInverterSignal_CCSn_1_CLKF_IN0,
      I1 => NlwInverterSignal_CCSn_1_CLKF_IN1,
      O => CCSn_1_CLKF
    );
  CIN_OBUF_Q_137 : X_BUF
    port map (
      I => CIN_OBUF_Q_7,
      O => CIN_OBUF_Q
    );
  CIN_OBUF_138 : X_BUF
    port map (
      I => CIN_OBUF_Q_7,
      O => CIN_OBUF
    );
  CIN_OBUF_tsimcreated_xor_Q_139 : X_XOR2
    port map (
      I0 => CIN_OBUF_D,
      I1 => CIN_OBUF_Q_7,
      O => CIN_OBUF_tsimcreated_xor_Q
    );
  CIN_OBUF_tsimcreated_prld_Q_140 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => CIN_OBUF_tsimcreated_prld_Q
    );
  CIN_OBUF_REG : X_FF
    port map (
      I => CIN_OBUF_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => CIN_OBUF_REG_tsimcreated_inv_CIN_OBUF_CLKF,
      SET => Gnd,
      RST => CIN_OBUF_tsimcreated_prld_Q,
      O => CIN_OBUF_Q_7
    );
  CIN_OBUF_REG_tsimcreated_inv_CIN_OBUF_CLKF_141 : X_INV
    port map (
      I => CIN_OBUF_CLKF,
      O => CIN_OBUF_REG_tsimcreated_inv_CIN_OBUF_CLKF
    );
  CIN_OBUF_D_142 : X_XOR2
    port map (
      I0 => CIN_OBUF_D1,
      I1 => CIN_OBUF_D2,
      O => CIN_OBUF_D
    );
  CIN_OBUF_D1_143 : X_ZERO
    port map (
      O => CIN_OBUF_D1
    );
  CIN_OBUF_D2_PT_0_144 : X_AND5
    port map (
      I0 => N2918,
      I1 => NlwInverterSignal_CIN_OBUF_D2_PT_0_IN1,
      I2 => DSP_A_0_IBUF,
      I3 => NlwInverterSignal_CIN_OBUF_D2_PT_0_IN3,
      I4 => NlwInverterSignal_CIN_OBUF_D2_PT_0_IN4,
      O => CIN_OBUF_D2_PT_0
    );
  CIN_OBUF_D2_PT_1_145 : X_AND5
    port map (
      I0 => NlwInverterSignal_CIN_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_CIN_OBUF_D2_PT_1_IN1,
      I2 => DSP_A_0_IBUF,
      I3 => NlwInverterSignal_CIN_OBUF_D2_PT_1_IN3,
      I4 => CIN_OBUF,
      O => CIN_OBUF_D2_PT_1
    );
  CIN_OBUF_D2_146 : X_OR2
    port map (
      I0 => CIN_OBUF_D2_PT_0,
      I1 => CIN_OBUF_D2_PT_1,
      O => CIN_OBUF_D2
    );
  CIN_OBUF_CLKF_147 : X_AND2
    port map (
      I0 => NlwInverterSignal_CIN_OBUF_CLKF_IN0,
      I1 => NlwInverterSignal_CIN_OBUF_CLKF_IN1,
      O => CIN_OBUF_CLKF
    );
  DX_0_Q_148 : X_BUF
    port map (
      I => DX_0_Q_8,
      O => DX_0_Q
    );
  DX_0_149 : X_BUF
    port map (
      I => DX_0_Q_8,
      O => DX_0
    );
  DX_0_tsimcreated_xor_Q_150 : X_XOR2
    port map (
      I0 => DX_0_D,
      I1 => DX_0_Q_8,
      O => DX_0_tsimcreated_xor_Q
    );
  DX_0_tsimcreated_prld_Q_151 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => DX_0_tsimcreated_prld_Q
    );
  DX_0_REG : X_FF
    port map (
      I => DX_0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => DX_0_REG_tsimcreated_inv_DX_0_CLKF,
      SET => Gnd,
      RST => DX_0_tsimcreated_prld_Q,
      O => DX_0_Q_8
    );
  DX_0_REG_tsimcreated_inv_DX_0_CLKF_152 : X_INV
    port map (
      I => DX_0_CLKF,
      O => DX_0_REG_tsimcreated_inv_DX_0_CLKF
    );
  DX_0_D_153 : X_XOR2
    port map (
      I0 => DX_0_D1,
      I1 => DX_0_D2,
      O => DX_0_D
    );
  DX_0_D1_154 : X_ZERO
    port map (
      O => DX_0_D1
    );
  DX_0_D2_PT_0_155 : X_AND5
    port map (
      I0 => N2918,
      I1 => DSP_A_1_IBUF,
      I2 => DSP_A_0_IBUF,
      I3 => NlwInverterSignal_DX_0_D2_PT_0_IN3,
      I4 => NlwInverterSignal_DX_0_D2_PT_0_IN4,
      O => DX_0_D2_PT_0
    );
  DX_0_D2_PT_1_156 : X_AND5
    port map (
      I0 => NlwInverterSignal_DX_0_D2_PT_1_IN0,
      I1 => DSP_A_1_IBUF,
      I2 => DSP_A_0_IBUF,
      I3 => NlwInverterSignal_DX_0_D2_PT_1_IN3,
      I4 => DX_0,
      O => DX_0_D2_PT_1
    );
  DX_0_D2_157 : X_OR2
    port map (
      I0 => DX_0_D2_PT_0,
      I1 => DX_0_D2_PT_1,
      O => DX_0_D2
    );
  DX_0_CLKF_158 : X_AND2
    port map (
      I0 => NlwInverterSignal_DX_0_CLKF_IN0,
      I1 => NlwInverterSignal_DX_0_CLKF_IN1,
      O => DX_0_CLKF
    );
  DX_1_Q_159 : X_BUF
    port map (
      I => DX_1_Q_9,
      O => DX_1_Q
    );
  DX_1_160 : X_BUF
    port map (
      I => DX_1_Q_9,
      O => DX_1
    );
  DX_1_tsimcreated_xor_Q_161 : X_XOR2
    port map (
      I0 => DX_1_D,
      I1 => DX_1_Q_9,
      O => DX_1_tsimcreated_xor_Q
    );
  DX_1_tsimcreated_prld_Q_162 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => DX_1_tsimcreated_prld_Q
    );
  DX_1_REG : X_FF
    port map (
      I => DX_1_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => DX_1_REG_tsimcreated_inv_DX_1_CLKF,
      SET => Gnd,
      RST => DX_1_tsimcreated_prld_Q,
      O => DX_1_Q_9
    );
  DX_1_REG_tsimcreated_inv_DX_1_CLKF_163 : X_INV
    port map (
      I => DX_1_CLKF,
      O => DX_1_REG_tsimcreated_inv_DX_1_CLKF
    );
  DX_1_D_164 : X_XOR2
    port map (
      I0 => DX_1_D1,
      I1 => DX_1_D2,
      O => DX_1_D
    );
  DX_1_D1_165 : X_ZERO
    port map (
      O => DX_1_D1
    );
  DX_1_D2_PT_0_166 : X_AND5
    port map (
      I0 => N2918,
      I1 => DSP_A_1_IBUF,
      I2 => NlwInverterSignal_DX_1_D2_PT_0_IN2,
      I3 => DSP_A_2_IBUF,
      I4 => NlwInverterSignal_DX_1_D2_PT_0_IN4,
      O => DX_1_D2_PT_0
    );
  DX_1_D2_PT_1_167 : X_AND5
    port map (
      I0 => NlwInverterSignal_DX_1_D2_PT_1_IN0,
      I1 => DSP_A_1_IBUF,
      I2 => NlwInverterSignal_DX_1_D2_PT_1_IN2,
      I3 => DSP_A_2_IBUF,
      I4 => DX_1,
      O => DX_1_D2_PT_1
    );
  DX_1_D2_168 : X_OR2
    port map (
      I0 => DX_1_D2_PT_0,
      I1 => DX_1_D2_PT_1,
      O => DX_1_D2
    );
  DX_1_CLKF_169 : X_AND2
    port map (
      I0 => NlwInverterSignal_DX_1_CLKF_IN0,
      I1 => NlwInverterSignal_DX_1_CLKF_IN1,
      O => DX_1_CLKF
    );
  LEDY_0_Q_170 : X_BUF
    port map (
      I => LEDY_0_Q_10,
      O => LEDY_0_Q
    );
  LEDY_0_171 : X_BUF
    port map (
      I => LEDY_0_Q_10,
      O => LEDY_0
    );
  LEDY_0_tsimcreated_xor_Q_172 : X_XOR2
    port map (
      I0 => LEDY_0_D,
      I1 => LEDY_0_Q_10,
      O => LEDY_0_tsimcreated_xor_Q
    );
  LEDY_0_tsimcreated_prld_Q_173 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => LEDY_0_tsimcreated_prld_Q
    );
  LEDY_0_REG : X_FF
    port map (
      I => LEDY_0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => LEDY_0_REG_tsimcreated_inv_LEDY_0_CLKF,
      SET => Gnd,
      RST => LEDY_0_tsimcreated_prld_Q,
      O => LEDY_0_Q_10
    );
  LEDY_0_REG_tsimcreated_inv_LEDY_0_CLKF_174 : X_INV
    port map (
      I => LEDY_0_CLKF,
      O => LEDY_0_REG_tsimcreated_inv_LEDY_0_CLKF
    );
  LEDY_0_D_175 : X_XOR2
    port map (
      I0 => LEDY_0_D1,
      I1 => LEDY_0_D2,
      O => LEDY_0_D
    );
  LEDY_0_D1_176 : X_ZERO
    port map (
      O => LEDY_0_D1
    );
  LEDY_0_D2_PT_0_177 : X_AND5
    port map (
      I0 => NlwInverterSignal_LEDY_0_D2_PT_0_IN0,
      I1 => NlwInverterSignal_LEDY_0_D2_PT_0_IN1,
      I2 => DSP_A_2_IBUF,
      I3 => N2920,
      I4 => NlwInverterSignal_LEDY_0_D2_PT_0_IN4,
      O => LEDY_0_D2_PT_0
    );
  LEDY_0_D2_PT_1_178 : X_AND5
    port map (
      I0 => NlwInverterSignal_LEDY_0_D2_PT_1_IN0,
      I1 => NlwInverterSignal_LEDY_0_D2_PT_1_IN1,
      I2 => DSP_A_2_IBUF,
      I3 => NlwInverterSignal_LEDY_0_D2_PT_1_IN3,
      I4 => LEDY_0,
      O => LEDY_0_D2_PT_1
    );
  LEDY_0_D2_179 : X_OR2
    port map (
      I0 => LEDY_0_D2_PT_0,
      I1 => LEDY_0_D2_PT_1,
      O => LEDY_0_D2
    );
  LEDY_0_CLKF_180 : X_AND2
    port map (
      I0 => NlwInverterSignal_LEDY_0_CLKF_IN0,
      I1 => NlwInverterSignal_LEDY_0_CLKF_IN1,
      O => LEDY_0_CLKF
    );
  LEDY_1_Q_181 : X_BUF
    port map (
      I => LEDY_1_Q_11,
      O => LEDY_1_Q
    );
  LEDY_1_182 : X_BUF
    port map (
      I => LEDY_1_Q_11,
      O => LEDY_1
    );
  LEDY_1_tsimcreated_xor_Q_183 : X_XOR2
    port map (
      I0 => LEDY_1_D,
      I1 => LEDY_1_Q_11,
      O => LEDY_1_tsimcreated_xor_Q
    );
  LEDY_1_tsimcreated_prld_Q_184 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => LEDY_1_tsimcreated_prld_Q
    );
  LEDY_1_REG : X_FF
    port map (
      I => LEDY_1_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => LEDY_1_REG_tsimcreated_inv_LEDY_1_CLKF,
      SET => Gnd,
      RST => LEDY_1_tsimcreated_prld_Q,
      O => LEDY_1_Q_11
    );
  LEDY_1_REG_tsimcreated_inv_LEDY_1_CLKF_185 : X_INV
    port map (
      I => LEDY_1_CLKF,
      O => LEDY_1_REG_tsimcreated_inv_LEDY_1_CLKF
    );
  LEDY_1_D_186 : X_XOR2
    port map (
      I0 => LEDY_1_D1,
      I1 => LEDY_1_D2,
      O => LEDY_1_D
    );
  LEDY_1_D1_187 : X_ZERO
    port map (
      O => LEDY_1_D1
    );
  LEDY_1_D2_PT_0_188 : X_AND5
    port map (
      I0 => DSP_A_1_IBUF,
      I1 => DSP_A_0_IBUF,
      I2 => DSP_A_2_IBUF,
      I3 => N2920,
      I4 => NlwInverterSignal_LEDY_1_D2_PT_0_IN4,
      O => LEDY_1_D2_PT_0
    );
  LEDY_1_D2_PT_1_189 : X_AND5
    port map (
      I0 => DSP_A_1_IBUF,
      I1 => DSP_A_0_IBUF,
      I2 => DSP_A_2_IBUF,
      I3 => NlwInverterSignal_LEDY_1_D2_PT_1_IN3,
      I4 => LEDY_1,
      O => LEDY_1_D2_PT_1
    );
  LEDY_1_D2_190 : X_OR2
    port map (
      I0 => LEDY_1_D2_PT_0,
      I1 => LEDY_1_D2_PT_1,
      O => LEDY_1_D2
    );
  LEDY_1_CLKF_191 : X_AND2
    port map (
      I0 => NlwInverterSignal_LEDY_1_CLKF_IN0,
      I1 => NlwInverterSignal_LEDY_1_CLKF_IN1,
      O => LEDY_1_CLKF
    );
  CNT_2_BUF0_192 : X_BUF
    port map (
      I => CNT_2_BUF0_Q,
      O => CNT_2_BUF0
    );
  CNT_2_BUF0_OE_193 : X_BUF
    port map (
      I => CNT_2_BUF0_BUFOE_OUT,
      O => CNT_2_BUF0_OE
    );
  CNT_2_BUF0_BUFOE_OUT_194 : X_BUF
    port map (
      I => CNT_2_BUF0_TRST,
      O => CNT_2_BUF0_BUFOE_OUT
    );
  CNT_2_BUF0_REG : X_FF
    port map (
      I => CNT_2_BUF0_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_2_BUF0_Q
    );
  CNT_2_BUF0_D_195 : X_XOR2
    port map (
      I0 => CNT_2_BUF0_D1,
      I1 => CNT_2_BUF0_D2,
      O => CNT_2_BUF0_D
    );
  CNT_2_BUF0_D1_196 : X_AND2
    port map (
      I0 => CNT(0),
      I1 => CNT(1),
      O => CNT_2_BUF0_D1
    );
  CNT_2_BUF0_D2_197 : X_AND2
    port map (
      I0 => CNT(2),
      I1 => CNT(2),
      O => CNT_2_BUF0_D2
    );
  CNT_2_BUF0_TRST_198 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => M_Sn(0),
      O => CNT_2_BUF0_TRST
    );
  FS_BUF0_199 : X_BUF
    port map (
      I => FS_BUF0_Q,
      O => FS_BUF0
    );
  FS_BUF0_OE_200 : X_BUF
    port map (
      I => FS_BUF0_BUFOE_OUT,
      O => FS_BUF0_OE
    );
  FS_BUF0_BUFOE_OUT_201 : X_BUF
    port map (
      I => FS_BUF0_TRST,
      O => FS_BUF0_BUFOE_OUT
    );
  FS_BUF0_REG : X_FF
    port map (
      I => FS_BUF0_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => FS_BUF0_Q
    );
  FS_BUF0_D_202 : X_XOR2
    port map (
      I0 => FS_BUF0_D1,
      I1 => FS_BUF0_D2,
      O => FS_BUF0_D
    );
  FS_BUF0_D1_203 : X_ZERO
    port map (
      O => FS_BUF0_D1
    );
  FS_BUF0_D2_PT_0_204 : X_AND16
    port map (
      I0 => CNT(2),
      I1 => NlwInverterSignal_FS_BUF0_D2_PT_0_IN1,
      I2 => NlwInverterSignal_FS_BUF0_D2_PT_0_IN2,
      I3 => NlwInverterSignal_FS_BUF0_D2_PT_0_IN3,
      I4 => CNT(6),
      I5 => CNT(7),
      I6 => CNT(8),
      I7 => CNT(9),
      I8 => CNT(10),
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF0_D2_PT_0
    );
  FS_BUF0_D2_PT_1_205 : X_AND16
    port map (
      I0 => NlwInverterSignal_FS_BUF0_D2_PT_1_IN0,
      I1 => NlwInverterSignal_FS_BUF0_D2_PT_1_IN1,
      I2 => CNT(3),
      I3 => NlwInverterSignal_FS_BUF0_D2_PT_1_IN3,
      I4 => NlwInverterSignal_FS_BUF0_D2_PT_1_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF0_D2_PT_1
    );
  FS_BUF0_D2_PT_2_206 : X_AND16
    port map (
      I0 => NlwInverterSignal_FS_BUF0_D2_PT_2_IN0,
      I1 => NlwInverterSignal_FS_BUF0_D2_PT_2_IN1,
      I2 => CNT(3),
      I3 => NlwInverterSignal_FS_BUF0_D2_PT_2_IN3,
      I4 => NlwInverterSignal_FS_BUF0_D2_PT_2_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF0_D2_PT_2
    );
  FS_BUF0_D2_PT_3_207 : X_AND16
    port map (
      I0 => CNT(0),
      I1 => CNT(1),
      I2 => NlwInverterSignal_FS_BUF0_D2_PT_3_IN2,
      I3 => NlwInverterSignal_FS_BUF0_D2_PT_3_IN3,
      I4 => NlwInverterSignal_FS_BUF0_D2_PT_3_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF0_D2_PT_3
    );
  FS_BUF0_D2_208 : X_OR4
    port map (
      I0 => FS_BUF0_D2_PT_0,
      I1 => FS_BUF0_D2_PT_1,
      I2 => FS_BUF0_D2_PT_2,
      I3 => FS_BUF0_D2_PT_3,
      O => FS_BUF0_D2
    );
  FS_BUF0_TRST_209 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => M_Sn(0),
      O => FS_BUF0_TRST
    );
  FS_BUF1_210 : X_BUF
    port map (
      I => FS_BUF1_Q,
      O => FS_BUF1
    );
  FS_BUF1_OE_211 : X_BUF
    port map (
      I => FS_BUF1_BUFOE_OUT,
      O => FS_BUF1_OE
    );
  FS_BUF1_BUFOE_OUT_212 : X_BUF
    port map (
      I => FS_BUF1_TRST,
      O => FS_BUF1_BUFOE_OUT
    );
  FS_BUF1_REG : X_FF
    port map (
      I => FS_BUF1_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => FS_BUF1_Q
    );
  FS_BUF1_D_213 : X_XOR2
    port map (
      I0 => FS_BUF1_D1,
      I1 => FS_BUF1_D2,
      O => FS_BUF1_D
    );
  FS_BUF1_D1_214 : X_ZERO
    port map (
      O => FS_BUF1_D1
    );
  FS_BUF1_D2_PT_0_215 : X_AND16
    port map (
      I0 => CNT(2),
      I1 => NlwInverterSignal_FS_BUF1_D2_PT_0_IN1,
      I2 => NlwInverterSignal_FS_BUF1_D2_PT_0_IN2,
      I3 => NlwInverterSignal_FS_BUF1_D2_PT_0_IN3,
      I4 => CNT(6),
      I5 => CNT(7),
      I6 => CNT(8),
      I7 => CNT(9),
      I8 => CNT(10),
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF1_D2_PT_0
    );
  FS_BUF1_D2_PT_1_216 : X_AND16
    port map (
      I0 => NlwInverterSignal_FS_BUF1_D2_PT_1_IN0,
      I1 => NlwInverterSignal_FS_BUF1_D2_PT_1_IN1,
      I2 => CNT(3),
      I3 => NlwInverterSignal_FS_BUF1_D2_PT_1_IN3,
      I4 => NlwInverterSignal_FS_BUF1_D2_PT_1_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF1_D2_PT_1
    );
  FS_BUF1_D2_PT_2_217 : X_AND16
    port map (
      I0 => NlwInverterSignal_FS_BUF1_D2_PT_2_IN0,
      I1 => NlwInverterSignal_FS_BUF1_D2_PT_2_IN1,
      I2 => CNT(3),
      I3 => NlwInverterSignal_FS_BUF1_D2_PT_2_IN3,
      I4 => NlwInverterSignal_FS_BUF1_D2_PT_2_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF1_D2_PT_2
    );
  FS_BUF1_D2_PT_3_218 : X_AND16
    port map (
      I0 => CNT(0),
      I1 => CNT(1),
      I2 => NlwInverterSignal_FS_BUF1_D2_PT_3_IN2,
      I3 => NlwInverterSignal_FS_BUF1_D2_PT_3_IN3,
      I4 => NlwInverterSignal_FS_BUF1_D2_PT_3_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_BUF1_D2_PT_3
    );
  FS_BUF1_D2_219 : X_OR4
    port map (
      I0 => FS_BUF1_D2_PT_0,
      I1 => FS_BUF1_D2_PT_1,
      I2 => FS_BUF1_D2_PT_2,
      I3 => FS_BUF1_D2_PT_3,
      O => FS_BUF1_D2
    );
  FS_BUF1_TRST_220 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => M_Sn(0),
      O => FS_BUF1_TRST
    );
  DCLK_1_IOBUFE_221 : X_BUF
    port map (
      I => DCLK_1_IOBUFE_Q,
      O => DCLK_1_IOBUFE
    );
  DCLK_1_IOBUFE_OE_222 : X_BUF
    port map (
      I => DCLK_1_IOBUFE_BUFOE_OUT,
      O => DCLK_1_IOBUFE_OE
    );
  DCLK_1_IOBUFE_BUFOE_OUT_223 : X_BUF
    port map (
      I => DCLK_1_IOBUFE_TRST,
      O => DCLK_1_IOBUFE_BUFOE_OUT
    );
  DCLK_1_IOBUFE_Q_224 : X_BUF
    port map (
      I => DCLK_1_IOBUFE_D,
      O => DCLK_1_IOBUFE_Q
    );
  DCLK_1_IOBUFE_D_225 : X_XOR2
    port map (
      I0 => DCLK_1_IOBUFE_D1,
      I1 => DCLK_1_IOBUFE_D2,
      O => DCLK_1_IOBUFE_D
    );
  DCLK_1_IOBUFE_D1_226 : X_ZERO
    port map (
      O => DCLK_1_IOBUFE_D1
    );
  DCLK_1_IOBUFE_D2_PT_0_227 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => CNT(9),
      O => DCLK_1_IOBUFE_D2_PT_0
    );
  DCLK_1_IOBUFE_D2_PT_1_228 : X_AND2
    port map (
      I0 => CNT(9),
      I1 => NlwInverterSignal_DCLK_1_IOBUFE_D2_PT_1_IN1,
      O => DCLK_1_IOBUFE_D2_PT_1
    );
  DCLK_1_IOBUFE_D2_PT_2_229 : X_AND3
    port map (
      I0 => NlwInverterSignal_DCLK_1_IOBUFE_D2_PT_2_IN0,
      I1 => M_Sn(1),
      I2 => N2910,
      O => DCLK_1_IOBUFE_D2_PT_2
    );
  DCLK_1_IOBUFE_D2_230 : X_OR3
    port map (
      I0 => DCLK_1_IOBUFE_D2_PT_0,
      I1 => DCLK_1_IOBUFE_D2_PT_1,
      I2 => DCLK_1_IOBUFE_D2_PT_2,
      O => DCLK_1_IOBUFE_D2
    );
  DCLK_1_IOBUFE_TRST_231 : X_AND2
    port map (
      I0 => M_Sn(1),
      I1 => M_Sn(1),
      O => DCLK_1_IOBUFE_TRST
    );
  MCLK_1_OBUF_BUF0_232 : X_BUF
    port map (
      I => MCLK_1_OBUF_BUF0_Q,
      O => MCLK_1_OBUF_BUF0
    );
  MCLK_1_OBUF_BUF0_OE_233 : X_BUF
    port map (
      I => MCLK_1_OBUF_BUF0_BUFOE_OUT,
      O => MCLK_1_OBUF_BUF0_OE
    );
  MCLK_1_OBUF_BUF0_BUFOE_OUT_234 : X_BUF
    port map (
      I => MCLK_1_OBUF_BUF0_TRST,
      O => MCLK_1_OBUF_BUF0_BUFOE_OUT
    );
  MCLK_1_OBUF_BUF0_Q_235 : X_BUF
    port map (
      I => MCLK_1_OBUF_BUF0_D,
      O => MCLK_1_OBUF_BUF0_Q
    );
  MCLK_1_OBUF_BUF0_D_236 : X_XOR2
    port map (
      I0 => MCLK_1_OBUF_BUF0_D1,
      I1 => MCLK_1_OBUF_BUF0_D2,
      O => MCLK_1_OBUF_BUF0_D
    );
  MCLK_1_OBUF_BUF0_D1_237 : X_ZERO
    port map (
      O => MCLK_1_OBUF_BUF0_D1
    );
  MCLK_1_OBUF_BUF0_D2_PT_0_238 : X_AND2
    port map (
      I0 => CNT(2),
      I1 => M_Sn(0),
      O => MCLK_1_OBUF_BUF0_D2_PT_0
    );
  MCLK_1_OBUF_BUF0_D2_PT_1_239 : X_AND2
    port map (
      I0 => CNT(2),
      I1 => NlwInverterSignal_MCLK_1_OBUF_BUF0_D2_PT_1_IN1,
      O => MCLK_1_OBUF_BUF0_D2_PT_1
    );
  MCLK_1_OBUF_BUF0_D2_PT_2_240 : X_AND3
    port map (
      I0 => NlwInverterSignal_MCLK_1_OBUF_BUF0_D2_PT_2_IN0,
      I1 => M_Sn(1),
      I2 => N2914,
      O => MCLK_1_OBUF_BUF0_D2_PT_2
    );
  MCLK_1_OBUF_BUF0_D2_241 : X_OR3
    port map (
      I0 => MCLK_1_OBUF_BUF0_D2_PT_0,
      I1 => MCLK_1_OBUF_BUF0_D2_PT_1,
      I2 => MCLK_1_OBUF_BUF0_D2_PT_2,
      O => MCLK_1_OBUF_BUF0_D2
    );
  MCLK_1_OBUF_BUF0_TRST_242 : X_AND2
    port map (
      I0 => M_Sn(1),
      I1 => M_Sn(1),
      O => MCLK_1_OBUF_BUF0_TRST
    );
  M_Sn_0_Q_243 : X_BUF
    port map (
      I => M_Sn_0_Q,
      O => M_Sn(0)
    );
  M_Sn_0_tsimcreated_xor_Q_244 : X_XOR2
    port map (
      I0 => M_Sn_0_D,
      I1 => M_Sn_0_Q,
      O => M_Sn_0_tsimcreated_xor_Q
    );
  M_Sn_0_tsimcreated_prld_Q_245 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => M_Sn_0_tsimcreated_prld_Q
    );
  M_Sn_0_REG : X_FF
    port map (
      I => M_Sn_0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => M_Sn_0_REG_tsimcreated_inv_M_Sn_0_CLKF,
      SET => Gnd,
      RST => M_Sn_0_tsimcreated_prld_Q,
      O => M_Sn_0_Q
    );
  M_Sn_0_REG_tsimcreated_inv_M_Sn_0_CLKF_246 : X_INV
    port map (
      I => M_Sn_0_CLKF,
      O => M_Sn_0_REG_tsimcreated_inv_M_Sn_0_CLKF
    );
  M_Sn_0_D_247 : X_XOR2
    port map (
      I0 => M_Sn_0_D1,
      I1 => M_Sn_0_D2,
      O => M_Sn_0_D
    );
  M_Sn_0_D1_248 : X_ZERO
    port map (
      O => M_Sn_0_D1
    );
  M_Sn_0_D2_PT_0_249 : X_AND5
    port map (
      I0 => M_Sn(0),
      I1 => NlwInverterSignal_M_Sn_0_D2_PT_0_IN1,
      I2 => DSP_A_1_IBUF,
      I3 => NlwInverterSignal_M_Sn_0_D2_PT_0_IN3,
      I4 => NlwInverterSignal_M_Sn_0_D2_PT_0_IN4,
      O => M_Sn_0_D2_PT_0
    );
  M_Sn_0_D2_PT_1_250 : X_AND5
    port map (
      I0 => NlwInverterSignal_M_Sn_0_D2_PT_1_IN0,
      I1 => N2918,
      I2 => DSP_A_1_IBUF,
      I3 => NlwInverterSignal_M_Sn_0_D2_PT_1_IN3,
      I4 => NlwInverterSignal_M_Sn_0_D2_PT_1_IN4,
      O => M_Sn_0_D2_PT_1
    );
  M_Sn_0_D2_251 : X_OR2
    port map (
      I0 => M_Sn_0_D2_PT_0,
      I1 => M_Sn_0_D2_PT_1,
      O => M_Sn_0_D2
    );
  M_Sn_0_CLKF_252 : X_AND2
    port map (
      I0 => NlwInverterSignal_M_Sn_0_CLKF_IN0,
      I1 => NlwInverterSignal_M_Sn_0_CLKF_IN1,
      O => M_Sn_0_CLKF
    );
  M_Sn_1_Q_253 : X_BUF
    port map (
      I => M_Sn_1_Q,
      O => M_Sn(1)
    );
  M_Sn_1_tsimcreated_xor_Q_254 : X_XOR2
    port map (
      I0 => M_Sn_1_D,
      I1 => M_Sn_1_Q,
      O => M_Sn_1_tsimcreated_xor_Q
    );
  M_Sn_1_tsimcreated_prld_Q_255 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => M_Sn_1_tsimcreated_prld_Q
    );
  M_Sn_1_REG : X_FF
    port map (
      I => M_Sn_1_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => M_Sn_1_REG_tsimcreated_inv_M_Sn_1_CLKF,
      SET => Gnd,
      RST => M_Sn_1_tsimcreated_prld_Q,
      O => M_Sn_1_Q
    );
  M_Sn_1_REG_tsimcreated_inv_M_Sn_1_CLKF_256 : X_INV
    port map (
      I => M_Sn_1_CLKF,
      O => M_Sn_1_REG_tsimcreated_inv_M_Sn_1_CLKF
    );
  M_Sn_1_D_257 : X_XOR2
    port map (
      I0 => M_Sn_1_D1,
      I1 => M_Sn_1_D2,
      O => M_Sn_1_D
    );
  M_Sn_1_D1_258 : X_ZERO
    port map (
      O => M_Sn_1_D1
    );
  M_Sn_1_D2_PT_0_259 : X_AND5
    port map (
      I0 => N2918,
      I1 => NlwInverterSignal_M_Sn_1_D2_PT_0_IN1,
      I2 => DSP_A_0_IBUF,
      I3 => DSP_A_2_IBUF,
      I4 => NlwInverterSignal_M_Sn_1_D2_PT_0_IN4,
      O => M_Sn_1_D2_PT_0
    );
  M_Sn_1_D2_PT_1_260 : X_AND5
    port map (
      I0 => NlwInverterSignal_M_Sn_1_D2_PT_1_IN0,
      I1 => NlwInverterSignal_M_Sn_1_D2_PT_1_IN1,
      I2 => DSP_A_0_IBUF,
      I3 => DSP_A_2_IBUF,
      I4 => M_Sn(1),
      O => M_Sn_1_D2_PT_1
    );
  M_Sn_1_D2_261 : X_OR2
    port map (
      I0 => M_Sn_1_D2_PT_0,
      I1 => M_Sn_1_D2_PT_1,
      O => M_Sn_1_D2
    );
  M_Sn_1_CLKF_262 : X_AND2
    port map (
      I0 => NlwInverterSignal_M_Sn_1_CLKF_IN0,
      I1 => NlwInverterSignal_M_Sn_1_CLKF_IN1,
      O => M_Sn_1_CLKF
    );
  i_DR_0_Q_263 : X_BUF
    port map (
      I => i_DR_0_Q,
      O => i_DR(0)
    );
  i_DR_0_tsimcreated_prld_Q_264 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => i_DR_0_tsimcreated_prld_Q
    );
  i_DR_0_REG : X_FF
    port map (
      I => i_DR_0_D,
      CE => Vcc,
      CLK => i_DR_0_CLKF,
      SET => Gnd,
      RST => i_DR_0_tsimcreated_prld_Q,
      O => i_DR_0_Q
    );
  i_DR_0_D_265 : X_XOR2
    port map (
      I0 => i_DR_0_D1,
      I1 => i_DR_0_D2,
      O => i_DR_0_D
    );
  i_DR_0_D1_266 : X_ZERO
    port map (
      O => i_DR_0_D1
    );
  i_DR_0_D2_267 : X_AND2
    port map (
      I0 => DR_0_IBUF,
      I1 => DR_0_IBUF,
      O => i_DR_0_D2
    );
  i_DR_0_CLKF_268 : X_AND2
    port map (
      I0 => NlwInverterSignal_i_DR_0_CLKF_IN0,
      I1 => NlwInverterSignal_i_DR_0_CLKF_IN1,
      O => i_DR_0_CLKF
    );
  i_DR_1_Q_269 : X_BUF
    port map (
      I => i_DR_1_Q,
      O => i_DR(1)
    );
  i_DR_1_tsimcreated_prld_Q_270 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => i_DR_1_tsimcreated_prld_Q
    );
  i_DR_1_REG : X_FF
    port map (
      I => i_DR_1_D,
      CE => Vcc,
      CLK => i_DR_1_CLKF,
      SET => Gnd,
      RST => i_DR_1_tsimcreated_prld_Q,
      O => i_DR_1_Q
    );
  i_DR_1_D_271 : X_XOR2
    port map (
      I0 => i_DR_1_D1,
      I1 => i_DR_1_D2,
      O => i_DR_1_D
    );
  i_DR_1_D1_272 : X_ZERO
    port map (
      O => i_DR_1_D1
    );
  i_DR_1_D2_273 : X_AND2
    port map (
      I0 => DR_1_IBUF,
      I1 => DR_1_IBUF,
      O => i_DR_1_D2
    );
  i_DR_1_CLKF_274 : X_AND2
    port map (
      I0 => NlwInverterSignal_i_DR_1_CLKF_IN0,
      I1 => NlwInverterSignal_i_DR_1_CLKF_IN1,
      O => i_DR_1_CLKF
    );
  TST_M_Sn_OBUF_Q_275 : X_BUF
    port map (
      I => TST_M_Sn_OBUF_Q_12,
      O => TST_M_Sn_OBUF_Q
    );
  TST_M_Sn_OBUF_Q_276 : X_BUF
    port map (
      I => TST_M_Sn_OBUF_D,
      O => TST_M_Sn_OBUF_Q_12
    );
  TST_M_Sn_OBUF_D_277 : X_XOR2
    port map (
      I0 => TST_M_Sn_OBUF_D1,
      I1 => TST_M_Sn_OBUF_D2,
      O => TST_M_Sn_OBUF_D
    );
  TST_M_Sn_OBUF_D1_278 : X_ZERO
    port map (
      O => TST_M_Sn_OBUF_D1
    );
  TST_M_Sn_OBUF_D2_279 : X_AND2
    port map (
      I0 => NlwInverterSignal_TST_M_Sn_OBUF_D2_IN0,
      I1 => M_Sn(1),
      O => TST_M_Sn_OBUF_D2
    );
  CNT_2_Q_280 : X_BUF
    port map (
      I => CNT_2_Q_13,
      O => CNT_2_Q
    );
  CNT_2_Q_281 : X_BUF
    port map (
      I => CNT_2_Q_13,
      O => CNT(2)
    );
  CNT_2_tsimcreated_xor_Q_282 : X_XOR2
    port map (
      I0 => CNT_2_D,
      I1 => CNT_2_Q_13,
      O => CNT_2_tsimcreated_xor_Q
    );
  CNT_2_REG : X_FF
    port map (
      I => CNT_2_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_2_Q_13
    );
  CNT_2_D_283 : X_XOR2
    port map (
      I0 => CNT_2_D1,
      I1 => CNT_2_D2,
      O => CNT_2_D
    );
  CNT_2_D1_284 : X_ZERO
    port map (
      O => CNT_2_D1
    );
  CNT_2_D2_285 : X_AND2
    port map (
      I0 => CNT(0),
      I1 => CNT(1),
      O => CNT_2_D2
    );
  FS_Q_286 : X_BUF
    port map (
      I => FS_Q_14,
      O => FS_Q
    );
  FS_287 : X_BUF
    port map (
      I => FS_Q_14,
      O => FS
    );
  FS_REG : X_FF
    port map (
      I => FS_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => FS_Q_14
    );
  FS_D_288 : X_XOR2
    port map (
      I0 => FS_D1,
      I1 => FS_D2,
      O => FS_D
    );
  FS_D1_289 : X_ZERO
    port map (
      O => FS_D1
    );
  FS_D2_PT_0_290 : X_AND16
    port map (
      I0 => CNT(2),
      I1 => NlwInverterSignal_FS_D2_PT_0_IN1,
      I2 => NlwInverterSignal_FS_D2_PT_0_IN2,
      I3 => NlwInverterSignal_FS_D2_PT_0_IN3,
      I4 => CNT(6),
      I5 => CNT(7),
      I6 => CNT(8),
      I7 => CNT(9),
      I8 => CNT(10),
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_D2_PT_0
    );
  FS_D2_PT_1_291 : X_AND16
    port map (
      I0 => NlwInverterSignal_FS_D2_PT_1_IN0,
      I1 => NlwInverterSignal_FS_D2_PT_1_IN1,
      I2 => CNT(3),
      I3 => NlwInverterSignal_FS_D2_PT_1_IN3,
      I4 => NlwInverterSignal_FS_D2_PT_1_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_D2_PT_1
    );
  FS_D2_PT_2_292 : X_AND16
    port map (
      I0 => NlwInverterSignal_FS_D2_PT_2_IN0,
      I1 => NlwInverterSignal_FS_D2_PT_2_IN1,
      I2 => CNT(3),
      I3 => NlwInverterSignal_FS_D2_PT_2_IN3,
      I4 => NlwInverterSignal_FS_D2_PT_2_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_D2_PT_2
    );
  FS_D2_PT_3_293 : X_AND16
    port map (
      I0 => CNT(0),
      I1 => CNT(1),
      I2 => NlwInverterSignal_FS_D2_PT_3_IN2,
      I3 => NlwInverterSignal_FS_D2_PT_3_IN3,
      I4 => NlwInverterSignal_FS_D2_PT_3_IN4,
      I5 => CNT(6),
      I6 => CNT(7),
      I7 => CNT(8),
      I8 => CNT(9),
      I9 => CNT(10),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => FS_D2_PT_3
    );
  FS_D2_294 : X_OR4
    port map (
      I0 => FS_D2_PT_0,
      I1 => FS_D2_PT_1,
      I2 => FS_D2_PT_2,
      I3 => FS_D2_PT_3,
      O => FS_D2
    );
  DSP_D_0_IOBUFE_295 : X_BUF
    port map (
      I => DSP_D_0_IOBUFE_Q,
      O => DSP_D_0_IOBUFE
    );
  DSP_D_0_IOBUFE_OE_296 : X_BUF
    port map (
      I => DSP_D_0_IOBUFE_BUFOE_OUT,
      O => DSP_D_0_IOBUFE_OE
    );
  DSP_D_0_IOBUFE_BUFOE_OUT_297 : X_BUF
    port map (
      I => DSP_D_0_IOBUFE_TRST,
      O => DSP_D_0_IOBUFE_BUFOE_OUT
    );
  DSP_D_0_IOBUFE_Q_298 : X_BUF
    port map (
      I => DSP_D_0_IOBUFE_D,
      O => DSP_D_0_IOBUFE_Q
    );
  DSP_D_0_IOBUFE_D_299 : X_XOR2
    port map (
      I0 => DSP_D_0_IOBUFE_D1,
      I1 => DSP_D_0_IOBUFE_D2,
      O => DSP_D_0_IOBUFE_D
    );
  DSP_D_0_IOBUFE_D1_300 : X_ZERO
    port map (
      O => DSP_D_0_IOBUFE_D1
    );
  DSP_D_0_IOBUFE_D2_PT_0_301 : X_AND2
    port map (
      I0 => EXP6_EXP,
      I1 => EXP6_EXP,
      O => DSP_D_0_IOBUFE_D2_PT_0
    );
  DSP_D_0_IOBUFE_D2_PT_1_302 : X_AND2
    port map (
      I0 => EXP7_EXP,
      I1 => EXP7_EXP,
      O => DSP_D_0_IOBUFE_D2_PT_1
    );
  DSP_D_0_IOBUFE_D2_PT_2_303 : X_AND6
    port map (
      I0 => M_Sn(0),
      I1 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN1,
      I2 => R_Wn_IBUF,
      I3 => DSP_A_1_IBUF,
      I4 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN4,
      I5 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN5,
      O => DSP_D_0_IOBUFE_D2_PT_2
    );
  DSP_D_0_IOBUFE_D2_PT_3_304 : X_AND6
    port map (
      I0 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_3_IN0,
      I1 => R_Wn_IBUF,
      I2 => DSP_A_1_IBUF,
      I3 => DSP_A_0_IBUF,
      I4 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_3_IN4,
      I5 => i_DR(0),
      O => DSP_D_0_IOBUFE_D2_PT_3
    );
  DSP_D_0_IOBUFE_D2_PT_4_305 : X_AND6
    port map (
      I0 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN0,
      I1 => R_Wn_IBUF,
      I2 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN2,
      I3 => DSP_A_0_IBUF,
      I4 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN4,
      I5 => COUT_IBUF,
      O => DSP_D_0_IOBUFE_D2_PT_4
    );
  DSP_D_0_IOBUFE_D2_PT_5_306 : X_AND6
    port map (
      I0 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN0,
      I1 => R_Wn_IBUF,
      I2 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN2,
      I3 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN3,
      I4 => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN4,
      I5 => DSP_INTn3_OBUF,
      O => DSP_D_0_IOBUFE_D2_PT_5
    );
  DSP_D_0_IOBUFE_D2_307 : X_OR6
    port map (
      I0 => DSP_D_0_IOBUFE_D2_PT_0,
      I1 => DSP_D_0_IOBUFE_D2_PT_1,
      I2 => DSP_D_0_IOBUFE_D2_PT_2,
      I3 => DSP_D_0_IOBUFE_D2_PT_3,
      I4 => DSP_D_0_IOBUFE_D2_PT_4,
      I5 => DSP_D_0_IOBUFE_D2_PT_5,
      O => DSP_D_0_IOBUFE_D2
    );
  DSP_D_0_IOBUFE_TRST_308 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_D_0_IOBUFE_TRST_IN0,
      I1 => R_Wn_IBUF,
      O => DSP_D_0_IOBUFE_TRST
    );
  FSb_1_OBUFE_BUF0_309 : X_BUF
    port map (
      I => FSb_1_OBUFE_BUF0_Q,
      O => FSb_1_OBUFE_BUF0
    );
  FSb_1_OBUFE_BUF0_OE_310 : X_BUF
    port map (
      I => FSb_1_OBUFE_BUF0_BUFOE_OUT,
      O => FSb_1_OBUFE_BUF0_OE
    );
  FSb_1_OBUFE_BUF0_BUFOE_OUT_311 : X_BUF
    port map (
      I => FSb_1_OBUFE_BUF0_TRST,
      O => FSb_1_OBUFE_BUF0_BUFOE_OUT
    );
  FSb_1_OBUFE_BUF0_Q_312 : X_BUF
    port map (
      I => FSb_1_OBUFE_BUF0_D,
      O => FSb_1_OBUFE_BUF0_Q
    );
  FSb_1_OBUFE_BUF0_D_313 : X_XOR2
    port map (
      I0 => FSb_1_OBUFE_BUF0_D1,
      I1 => FSb_1_OBUFE_BUF0_D2,
      O => FSb_1_OBUFE_BUF0_D
    );
  FSb_1_OBUFE_BUF0_D1_314 : X_ZERO
    port map (
      O => FSb_1_OBUFE_BUF0_D1
    );
  FSb_1_OBUFE_BUF0_D2_PT_0_315 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => FS,
      O => FSb_1_OBUFE_BUF0_D2_PT_0
    );
  FSb_1_OBUFE_BUF0_D2_PT_1_316 : X_AND2
    port map (
      I0 => FS,
      I1 => NlwInverterSignal_FSb_1_OBUFE_BUF0_D2_PT_1_IN1,
      O => FSb_1_OBUFE_BUF0_D2_PT_1
    );
  FSb_1_OBUFE_BUF0_D2_PT_2_317 : X_AND3
    port map (
      I0 => NlwInverterSignal_FSb_1_OBUFE_BUF0_D2_PT_2_IN0,
      I1 => N2922,
      I2 => M_Sn(1),
      O => FSb_1_OBUFE_BUF0_D2_PT_2
    );
  FSb_1_OBUFE_BUF0_D2_318 : X_OR3
    port map (
      I0 => FSb_1_OBUFE_BUF0_D2_PT_0,
      I1 => FSb_1_OBUFE_BUF0_D2_PT_1,
      I2 => FSb_1_OBUFE_BUF0_D2_PT_2,
      O => FSb_1_OBUFE_BUF0_D2
    );
  FSb_1_OBUFE_BUF0_TRST_319 : X_AND2
    port map (
      I0 => M_Sn(1),
      I1 => M_Sn(1),
      O => FSb_1_OBUFE_BUF0_TRST
    );
  CNT_0_Q_320 : X_BUF
    port map (
      I => CNT_0_Q,
      O => CNT(0)
    );
  CNT_0_tsimcreated_xor_Q_321 : X_XOR2
    port map (
      I0 => CNT_0_D,
      I1 => CNT_0_Q,
      O => CNT_0_tsimcreated_xor_Q
    );
  CNT_0_REG : X_FF
    port map (
      I => CNT_0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_0_Q
    );
  CNT_0_D_322 : X_XOR2
    port map (
      I0 => CNT_0_D1,
      I1 => CNT_0_D2,
      O => CNT_0_D
    );
  CNT_0_D1_323 : X_ZERO
    port map (
      O => CNT_0_D1
    );
  CNT_0_D2_324 : X_ONE
    port map (
      O => CNT_0_D2
    );
  CNT_1_Q_325 : X_BUF
    port map (
      I => CNT_1_Q,
      O => CNT(1)
    );
  CNT_1_tsimcreated_xor_Q_326 : X_XOR2
    port map (
      I0 => CNT_1_D,
      I1 => CNT_1_Q,
      O => CNT_1_tsimcreated_xor_Q
    );
  CNT_1_REG : X_FF
    port map (
      I => CNT_1_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_1_Q
    );
  CNT_1_D_327 : X_XOR2
    port map (
      I0 => CNT_1_D1,
      I1 => CNT_1_D2,
      O => CNT_1_D
    );
  CNT_1_D1_328 : X_ZERO
    port map (
      O => CNT_1_D1
    );
  CNT_1_D2_329 : X_AND2
    port map (
      I0 => CNT(0),
      I1 => CNT(0),
      O => CNT_1_D2
    );
  CNT_3_Q_330 : X_BUF
    port map (
      I => CNT_3_Q,
      O => CNT(3)
    );
  CNT_3_tsimcreated_xor_Q_331 : X_XOR2
    port map (
      I0 => CNT_3_D,
      I1 => CNT_3_Q,
      O => CNT_3_tsimcreated_xor_Q
    );
  CNT_3_REG : X_FF
    port map (
      I => CNT_3_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_3_Q
    );
  CNT_3_D_332 : X_XOR2
    port map (
      I0 => CNT_3_D1,
      I1 => CNT_3_D2,
      O => CNT_3_D
    );
  CNT_3_D1_333 : X_ZERO
    port map (
      O => CNT_3_D1
    );
  CNT_3_D2_334 : X_AND3
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      O => CNT_3_D2
    );
  CNT_4_Q_335 : X_BUF
    port map (
      I => CNT_4_Q,
      O => CNT(4)
    );
  CNT_4_tsimcreated_xor_Q_336 : X_XOR2
    port map (
      I0 => CNT_4_D,
      I1 => CNT_4_Q,
      O => CNT_4_tsimcreated_xor_Q
    );
  CNT_4_REG : X_FF
    port map (
      I => CNT_4_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_4_Q
    );
  CNT_4_D_337 : X_XOR2
    port map (
      I0 => CNT_4_D1,
      I1 => CNT_4_D2,
      O => CNT_4_D
    );
  CNT_4_D1_338 : X_ZERO
    port map (
      O => CNT_4_D1
    );
  CNT_4_D2_339 : X_AND4
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      I3 => CNT(3),
      O => CNT_4_D2
    );
  CNT_5_Q_340 : X_BUF
    port map (
      I => CNT_5_Q,
      O => CNT(5)
    );
  CNT_5_tsimcreated_xor_Q_341 : X_XOR2
    port map (
      I0 => CNT_5_D,
      I1 => CNT_5_Q,
      O => CNT_5_tsimcreated_xor_Q
    );
  CNT_5_REG : X_FF
    port map (
      I => CNT_5_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_5_Q
    );
  CNT_5_D_342 : X_XOR2
    port map (
      I0 => CNT_5_D1,
      I1 => CNT_5_D2,
      O => CNT_5_D
    );
  CNT_5_D1_343 : X_ZERO
    port map (
      O => CNT_5_D1
    );
  CNT_5_D2_344 : X_AND5
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      I3 => CNT(3),
      I4 => CNT(4),
      O => CNT_5_D2
    );
  CNT_6_Q_345 : X_BUF
    port map (
      I => CNT_6_Q,
      O => CNT(6)
    );
  CNT_6_tsimcreated_xor_Q_346 : X_XOR2
    port map (
      I0 => CNT_6_D,
      I1 => CNT_6_Q,
      O => CNT_6_tsimcreated_xor_Q
    );
  CNT_6_REG : X_FF
    port map (
      I => CNT_6_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_6_Q
    );
  CNT_6_D_347 : X_XOR2
    port map (
      I0 => CNT_6_D1,
      I1 => CNT_6_D2,
      O => CNT_6_D
    );
  CNT_6_D1_348 : X_ZERO
    port map (
      O => CNT_6_D1
    );
  CNT_6_D2_349 : X_AND6
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      I3 => CNT(3),
      I4 => CNT(4),
      I5 => CNT(5),
      O => CNT_6_D2
    );
  CNT_7_Q_350 : X_BUF
    port map (
      I => CNT_7_Q,
      O => CNT(7)
    );
  CNT_7_tsimcreated_xor_Q_351 : X_XOR2
    port map (
      I0 => CNT_7_D,
      I1 => CNT_7_Q,
      O => CNT_7_tsimcreated_xor_Q
    );
  CNT_7_REG : X_FF
    port map (
      I => CNT_7_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_7_Q
    );
  CNT_7_D_352 : X_XOR2
    port map (
      I0 => CNT_7_D1,
      I1 => CNT_7_D2,
      O => CNT_7_D
    );
  CNT_7_D1_353 : X_ZERO
    port map (
      O => CNT_7_D1
    );
  CNT_7_D2_354 : X_AND7
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      I3 => CNT(3),
      I4 => CNT(4),
      I5 => CNT(5),
      I6 => CNT(6),
      O => CNT_7_D2
    );
  CNT_8_Q_355 : X_BUF
    port map (
      I => CNT_8_Q,
      O => CNT(8)
    );
  CNT_8_tsimcreated_xor_Q_356 : X_XOR2
    port map (
      I0 => CNT_8_D,
      I1 => CNT_8_Q,
      O => CNT_8_tsimcreated_xor_Q
    );
  CNT_8_REG : X_FF
    port map (
      I => CNT_8_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_8_Q
    );
  CNT_8_D_357 : X_XOR2
    port map (
      I0 => CNT_8_D1,
      I1 => CNT_8_D2,
      O => CNT_8_D
    );
  CNT_8_D1_358 : X_ZERO
    port map (
      O => CNT_8_D1
    );
  CNT_8_D2_359 : X_AND8
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      I3 => CNT(3),
      I4 => CNT(4),
      I5 => CNT(5),
      I6 => CNT(6),
      I7 => CNT(7),
      O => CNT_8_D2
    );
  CNT_10_Q_360 : X_BUF
    port map (
      I => CNT_10_Q,
      O => CNT(10)
    );
  CNT_10_tsimcreated_xor_Q_361 : X_XOR2
    port map (
      I0 => CNT_10_D,
      I1 => CNT_10_Q,
      O => CNT_10_tsimcreated_xor_Q
    );
  CNT_10_REG : X_FF
    port map (
      I => CNT_10_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => CNT_10_Q
    );
  CNT_10_D_362 : X_XOR2
    port map (
      I0 => CNT_10_D1,
      I1 => CNT_10_D2,
      O => CNT_10_D
    );
  CNT_10_D1_363 : X_ZERO
    port map (
      O => CNT_10_D1
    );
  CNT_10_D2_364 : X_AND16
    port map (
      I0 => CNT(2),
      I1 => CNT(0),
      I2 => CNT(1),
      I3 => CNT(3),
      I4 => CNT(4),
      I5 => CNT(5),
      I6 => CNT(6),
      I7 => CNT(7),
      I8 => CNT(8),
      I9 => CNT(9),
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => CNT_10_D2
    );
  BX_0_OBUF_365 : X_BUF
    port map (
      I => BX_0_OBUF_Q,
      O => BX_0_OBUF
    );
  BX_0_OBUF_Q_366 : X_BUF
    port map (
      I => BX_0_OBUF_D,
      O => BX_0_OBUF_Q
    );
  BX_0_OBUF_D_367 : X_XOR2
    port map (
      I0 => BX_0_OBUF_D1,
      I1 => BX_0_OBUF_D2,
      O => BX_0_OBUF_D
    );
  BX_0_OBUF_D1_368 : X_ZERO
    port map (
      O => BX_0_OBUF_D1
    );
  BX_0_OBUF_D2_PT_0_369 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => DSP_BX_0_IBUF,
      O => BX_0_OBUF_D2_PT_0
    );
  BX_0_OBUF_D2_PT_1_370 : X_AND2
    port map (
      I0 => NlwInverterSignal_BX_0_OBUF_D2_PT_1_IN0,
      I1 => DSP_BX_0_IBUF,
      O => BX_0_OBUF_D2_PT_1
    );
  BX_0_OBUF_D2_PT_2_371 : X_AND3
    port map (
      I0 => NlwInverterSignal_BX_0_OBUF_D2_PT_2_IN0,
      I1 => M_Sn(1),
      I2 => BR_1_IBUF,
      O => BX_0_OBUF_D2_PT_2
    );
  BX_0_OBUF_D2_372 : X_OR3
    port map (
      I0 => BX_0_OBUF_D2_PT_0,
      I1 => BX_0_OBUF_D2_PT_1,
      I2 => BX_0_OBUF_D2_PT_2,
      O => BX_0_OBUF_D2
    );
  BX_1_OBUF_373 : X_BUF
    port map (
      I => BX_1_OBUF_Q,
      O => BX_1_OBUF
    );
  BX_1_OBUF_Q_374 : X_BUF
    port map (
      I => BX_1_OBUF_D,
      O => BX_1_OBUF_Q
    );
  BX_1_OBUF_D_375 : X_XOR2
    port map (
      I0 => BX_1_OBUF_D1,
      I1 => BX_1_OBUF_D2,
      O => BX_1_OBUF_D
    );
  BX_1_OBUF_D1_376 : X_ZERO
    port map (
      O => BX_1_OBUF_D1
    );
  BX_1_OBUF_D2_PT_0_377 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => DSP_BX_1_IBUF,
      O => BX_1_OBUF_D2_PT_0
    );
  BX_1_OBUF_D2_PT_1_378 : X_AND2
    port map (
      I0 => NlwInverterSignal_BX_1_OBUF_D2_PT_1_IN0,
      I1 => DSP_BX_1_IBUF,
      O => BX_1_OBUF_D2_PT_1
    );
  BX_1_OBUF_D2_PT_2_379 : X_AND3
    port map (
      I0 => NlwInverterSignal_BX_1_OBUF_D2_PT_2_IN0,
      I1 => M_Sn(1),
      I2 => BR_0_IBUF,
      O => BX_1_OBUF_D2_PT_2
    );
  BX_1_OBUF_D2_380 : X_OR3
    port map (
      I0 => BX_1_OBUF_D2_PT_0,
      I1 => BX_1_OBUF_D2_PT_1,
      I2 => BX_1_OBUF_D2_PT_2,
      O => BX_1_OBUF_D2
    );
  DSP_BCLK_0_OBUF_381 : X_BUF
    port map (
      I => DSP_BCLK_0_OBUF_Q,
      O => DSP_BCLK_0_OBUF
    );
  DSP_BCLK_0_OBUF_Q_382 : X_BUF
    port map (
      I => DSP_BCLK_0_OBUF_D,
      O => DSP_BCLK_0_OBUF_Q
    );
  DSP_BCLK_0_OBUF_D_383 : X_XOR2
    port map (
      I0 => DSP_BCLK_0_OBUF_D1,
      I1 => DSP_BCLK_0_OBUF_D2,
      O => DSP_BCLK_0_OBUF_D
    );
  DSP_BCLK_0_OBUF_D1_384 : X_ZERO
    port map (
      O => DSP_BCLK_0_OBUF_D1
    );
  DSP_BCLK_0_OBUF_D2_PT_0_385 : X_AND2
    port map (
      I0 => CNT(2),
      I1 => M_Sn(0),
      O => DSP_BCLK_0_OBUF_D2_PT_0
    );
  DSP_BCLK_0_OBUF_D2_PT_1_386 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_BCLK_0_OBUF_D2_PT_1_IN0,
      I1 => N2914,
      O => DSP_BCLK_0_OBUF_D2_PT_1
    );
  DSP_BCLK_0_OBUF_D2_387 : X_OR2
    port map (
      I0 => DSP_BCLK_0_OBUF_D2_PT_0,
      I1 => DSP_BCLK_0_OBUF_D2_PT_1,
      O => DSP_BCLK_0_OBUF_D2
    );
  DSP_BCLK_1_OBUF_388 : X_BUF
    port map (
      I => DSP_BCLK_1_OBUF_Q,
      O => DSP_BCLK_1_OBUF
    );
  DSP_BCLK_1_OBUF_Q_389 : X_BUF
    port map (
      I => DSP_BCLK_1_OBUF_D,
      O => DSP_BCLK_1_OBUF_Q
    );
  DSP_BCLK_1_OBUF_D_390 : X_XOR2
    port map (
      I0 => DSP_BCLK_1_OBUF_D1,
      I1 => DSP_BCLK_1_OBUF_D2,
      O => DSP_BCLK_1_OBUF_D
    );
  DSP_BCLK_1_OBUF_D1_391 : X_ZERO
    port map (
      O => DSP_BCLK_1_OBUF_D1
    );
  DSP_BCLK_1_OBUF_D2_PT_0_392 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_BCLK_1_OBUF_D2_PT_0_IN0,
      I1 => N2916,
      O => DSP_BCLK_1_OBUF_D2_PT_0
    );
  DSP_BCLK_1_OBUF_D2_PT_1_393 : X_AND3
    port map (
      I0 => CNT(2),
      I1 => M_Sn(0),
      I2 => M_Sn(1),
      O => DSP_BCLK_1_OBUF_D2_PT_1
    );
  DSP_BCLK_1_OBUF_D2_PT_2_394 : X_AND3
    port map (
      I0 => NlwInverterSignal_DSP_BCLK_1_OBUF_D2_PT_2_IN0,
      I1 => M_Sn(1),
      I2 => N2914,
      O => DSP_BCLK_1_OBUF_D2_PT_2
    );
  DSP_BCLK_1_OBUF_D2_395 : X_OR3
    port map (
      I0 => DSP_BCLK_1_OBUF_D2_PT_0,
      I1 => DSP_BCLK_1_OBUF_D2_PT_1,
      I2 => DSP_BCLK_1_OBUF_D2_PT_2,
      O => DSP_BCLK_1_OBUF_D2
    );
  DSP_BFS_0_OBUF_396 : X_BUF
    port map (
      I => DSP_BFS_0_OBUF_Q,
      O => DSP_BFS_0_OBUF
    );
  DSP_BFS_0_OBUF_Q_397 : X_BUF
    port map (
      I => DSP_BFS_0_OBUF_D,
      O => DSP_BFS_0_OBUF_Q
    );
  DSP_BFS_0_OBUF_D_398 : X_XOR2
    port map (
      I0 => DSP_BFS_0_OBUF_D1,
      I1 => DSP_BFS_0_OBUF_D2,
      O => DSP_BFS_0_OBUF_D
    );
  DSP_BFS_0_OBUF_D1_399 : X_ZERO
    port map (
      O => DSP_BFS_0_OBUF_D1
    );
  DSP_BFS_0_OBUF_D2_PT_0_400 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => FS,
      O => DSP_BFS_0_OBUF_D2_PT_0
    );
  DSP_BFS_0_OBUF_D2_PT_1_401 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_BFS_0_OBUF_D2_PT_1_IN0,
      I1 => N2922,
      O => DSP_BFS_0_OBUF_D2_PT_1
    );
  DSP_BFS_0_OBUF_D2_402 : X_OR2
    port map (
      I0 => DSP_BFS_0_OBUF_D2_PT_0,
      I1 => DSP_BFS_0_OBUF_D2_PT_1,
      O => DSP_BFS_0_OBUF_D2
    );
  DSP_BFS_1_OBUF_403 : X_BUF
    port map (
      I => DSP_BFS_1_OBUF_Q,
      O => DSP_BFS_1_OBUF
    );
  DSP_BFS_1_OBUF_Q_404 : X_BUF
    port map (
      I => DSP_BFS_1_OBUF_D,
      O => DSP_BFS_1_OBUF_Q
    );
  DSP_BFS_1_OBUF_D_405 : X_XOR2
    port map (
      I0 => DSP_BFS_1_OBUF_D1,
      I1 => DSP_BFS_1_OBUF_D2,
      O => DSP_BFS_1_OBUF_D
    );
  DSP_BFS_1_OBUF_D1_406 : X_ZERO
    port map (
      O => DSP_BFS_1_OBUF_D1
    );
  DSP_BFS_1_OBUF_D2_PT_0_407 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_BFS_1_OBUF_D2_PT_0_IN0,
      I1 => N2924,
      O => DSP_BFS_1_OBUF_D2_PT_0
    );
  DSP_BFS_1_OBUF_D2_PT_1_408 : X_AND3
    port map (
      I0 => M_Sn(0),
      I1 => FS,
      I2 => M_Sn(1),
      O => DSP_BFS_1_OBUF_D2_PT_1
    );
  DSP_BFS_1_OBUF_D2_PT_2_409 : X_AND3
    port map (
      I0 => NlwInverterSignal_DSP_BFS_1_OBUF_D2_PT_2_IN0,
      I1 => N2922,
      I2 => M_Sn(1),
      O => DSP_BFS_1_OBUF_D2_PT_2
    );
  DSP_BFS_1_OBUF_D2_410 : X_OR3
    port map (
      I0 => DSP_BFS_1_OBUF_D2_PT_0,
      I1 => DSP_BFS_1_OBUF_D2_PT_1,
      I2 => DSP_BFS_1_OBUF_D2_PT_2,
      O => DSP_BFS_1_OBUF_D2
    );
  DSP_INTn_0_OBUF_411 : X_BUF
    port map (
      I => DSP_INTn_0_OBUF_Q,
      O => DSP_INTn_0_OBUF
    );
  DSP_INTn_0_OBUF_Q_412 : X_BUF
    port map (
      I => DSP_INTn_0_OBUF_D,
      O => DSP_INTn_0_OBUF_Q
    );
  DSP_INTn_0_OBUF_D_413 : X_XOR2
    port map (
      I0 => DSP_INTn_0_OBUF_D1,
      I1 => DSP_INTn_0_OBUF_D2,
      O => DSP_INTn_0_OBUF_D
    );
  DSP_INTn_0_OBUF_D1_414 : X_ZERO
    port map (
      O => DSP_INTn_0_OBUF_D1
    );
  DSP_INTn_0_OBUF_D2_PT_0_415 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_0_IN1,
      O => DSP_INTn_0_OBUF_D2_PT_0
    );
  DSP_INTn_0_OBUF_D2_PT_1_416 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_1_IN1,
      O => DSP_INTn_0_OBUF_D2_PT_1
    );
  DSP_INTn_0_OBUF_D2_417 : X_OR2
    port map (
      I0 => DSP_INTn_0_OBUF_D2_PT_0,
      I1 => DSP_INTn_0_OBUF_D2_PT_1,
      O => DSP_INTn_0_OBUF_D2
    );
  DSP_INTn_1_OBUF_418 : X_BUF
    port map (
      I => DSP_INTn_1_OBUF_Q,
      O => DSP_INTn_1_OBUF
    );
  DSP_INTn_1_OBUF_Q_419 : X_BUF
    port map (
      I => DSP_INTn_1_OBUF_D,
      O => DSP_INTn_1_OBUF_Q
    );
  DSP_INTn_1_OBUF_D_420 : X_XOR2
    port map (
      I0 => DSP_INTn_1_OBUF_D1,
      I1 => DSP_INTn_1_OBUF_D2,
      O => DSP_INTn_1_OBUF_D
    );
  DSP_INTn_1_OBUF_D1_421 : X_ZERO
    port map (
      O => DSP_INTn_1_OBUF_D1
    );
  DSP_INTn_1_OBUF_D2_PT_0_422 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_0_IN1,
      O => DSP_INTn_1_OBUF_D2_PT_0
    );
  DSP_INTn_1_OBUF_D2_PT_1_423 : X_AND3
    port map (
      I0 => M_Sn(0),
      I1 => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_1_IN1,
      I2 => M_Sn(1),
      O => DSP_INTn_1_OBUF_D2_PT_1
    );
  DSP_INTn_1_OBUF_D2_PT_2_424 : X_AND3
    port map (
      I0 => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_2_IN0,
      I1 => M_Sn(1),
      I2 => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_2_IN2,
      O => DSP_INTn_1_OBUF_D2_PT_2
    );
  DSP_INTn_1_OBUF_D2_425 : X_OR3
    port map (
      I0 => DSP_INTn_1_OBUF_D2_PT_0,
      I1 => DSP_INTn_1_OBUF_D2_PT_1,
      I2 => DSP_INTn_1_OBUF_D2_PT_2,
      O => DSP_INTn_1_OBUF_D2
    );
  MCLK_1_OBUF_Q_426 : X_BUF
    port map (
      I => MCLK_1_OBUF_Q_15,
      O => MCLK_1_OBUF_Q
    );
  MCLK_1_OBUF_Q_427 : X_BUF
    port map (
      I => MCLK_1_OBUF_D,
      O => MCLK_1_OBUF_Q_15
    );
  MCLK_1_OBUF_D_428 : X_XOR2
    port map (
      I0 => MCLK_1_OBUF_D1,
      I1 => MCLK_1_OBUF_D2,
      O => MCLK_1_OBUF_D
    );
  MCLK_1_OBUF_D1_429 : X_ZERO
    port map (
      O => MCLK_1_OBUF_D1
    );
  MCLK_1_OBUF_D2_PT_0_430 : X_AND2
    port map (
      I0 => CNT(2),
      I1 => M_Sn(0),
      O => MCLK_1_OBUF_D2_PT_0
    );
  MCLK_1_OBUF_D2_PT_1_431 : X_AND2
    port map (
      I0 => CNT(2),
      I1 => NlwInverterSignal_MCLK_1_OBUF_D2_PT_1_IN1,
      O => MCLK_1_OBUF_D2_PT_1
    );
  MCLK_1_OBUF_D2_PT_2_432 : X_AND3
    port map (
      I0 => NlwInverterSignal_MCLK_1_OBUF_D2_PT_2_IN0,
      I1 => M_Sn(1),
      I2 => N2914,
      O => MCLK_1_OBUF_D2_PT_2
    );
  MCLK_1_OBUF_D2_433 : X_OR3
    port map (
      I0 => MCLK_1_OBUF_D2_PT_0,
      I1 => MCLK_1_OBUF_D2_PT_1,
      I2 => MCLK_1_OBUF_D2_PT_2,
      O => MCLK_1_OBUF_D2
    );
  DSP_D_1_IOBUFE_434 : X_BUF
    port map (
      I => DSP_D_1_IOBUFE_Q,
      O => DSP_D_1_IOBUFE
    );
  DSP_D_1_IOBUFE_OE_435 : X_BUF
    port map (
      I => DSP_D_1_IOBUFE_BUFOE_OUT,
      O => DSP_D_1_IOBUFE_OE
    );
  DSP_D_1_IOBUFE_BUFOE_OUT_436 : X_BUF
    port map (
      I => DSP_D_1_IOBUFE_TRST,
      O => DSP_D_1_IOBUFE_BUFOE_OUT
    );
  DSP_D_1_IOBUFE_Q_437 : X_BUF
    port map (
      I => DSP_D_1_IOBUFE_D,
      O => DSP_D_1_IOBUFE_Q
    );
  DSP_D_1_IOBUFE_D_438 : X_XOR2
    port map (
      I0 => DSP_D_1_IOBUFE_D1,
      I1 => DSP_D_1_IOBUFE_D2,
      O => DSP_D_1_IOBUFE_D
    );
  DSP_D_1_IOBUFE_D1_439 : X_ZERO
    port map (
      O => DSP_D_1_IOBUFE_D1
    );
  DSP_D_1_IOBUFE_D2_440 : X_ZERO
    port map (
      O => DSP_D_1_IOBUFE_D2
    );
  DSP_D_1_IOBUFE_TRST_441 : X_AND2
    port map (
      I0 => NlwInverterSignal_DSP_D_1_IOBUFE_TRST_IN0,
      I1 => R_Wn_IBUF,
      O => DSP_D_1_IOBUFE_TRST
    );
  FSc_1_IOBUFE_Q_442 : X_BUF
    port map (
      I => FSc_1_IOBUFE_Q_16,
      O => FSc_1_IOBUFE_Q
    );
  FSc_1_IOBUFE_OE_443 : X_BUF
    port map (
      I => FSc_1_IOBUFE_BUFOE_OUT,
      O => FSc_1_IOBUFE_OE
    );
  FSc_1_IOBUFE_BUFOE_OUT_444 : X_BUF
    port map (
      I => FSc_1_IOBUFE_TRST,
      O => FSc_1_IOBUFE_BUFOE_OUT
    );
  FSc_1_IOBUFE_Q_445 : X_BUF
    port map (
      I => FSc_1_IOBUFE_D,
      O => FSc_1_IOBUFE_Q_16
    );
  FSc_1_IOBUFE_D_446 : X_XOR2
    port map (
      I0 => FSc_1_IOBUFE_D1,
      I1 => FSc_1_IOBUFE_D2,
      O => FSc_1_IOBUFE_D
    );
  FSc_1_IOBUFE_D1_447 : X_ZERO
    port map (
      O => FSc_1_IOBUFE_D1
    );
  FSc_1_IOBUFE_D2_448 : X_ONE
    port map (
      O => FSc_1_IOBUFE_D2
    );
  FSc_1_IOBUFE_TRST_449 : X_AND2
    port map (
      I0 => M_Sn(1),
      I1 => M_Sn(1),
      O => FSc_1_IOBUFE_TRST
    );
  FSc_1_IOBUFE_BUF0_450 : X_BUF
    port map (
      I => FSc_1_IOBUFE_BUF0_Q,
      O => FSc_1_IOBUFE_BUF0
    );
  FSc_1_IOBUFE_BUF0_OE_451 : X_BUF
    port map (
      I => FSc_1_IOBUFE_BUF0_BUFOE_OUT,
      O => FSc_1_IOBUFE_BUF0_OE
    );
  FSc_1_IOBUFE_BUF0_BUFOE_OUT_452 : X_BUF
    port map (
      I => FSc_1_IOBUFE_BUF0_TRST,
      O => FSc_1_IOBUFE_BUF0_BUFOE_OUT
    );
  FSc_1_IOBUFE_BUF0_Q_453 : X_BUF
    port map (
      I => FSc_1_IOBUFE_BUF0_D,
      O => FSc_1_IOBUFE_BUF0_Q
    );
  FSc_1_IOBUFE_BUF0_D_454 : X_XOR2
    port map (
      I0 => FSc_1_IOBUFE_BUF0_D1,
      I1 => FSc_1_IOBUFE_BUF0_D2,
      O => FSc_1_IOBUFE_BUF0_D
    );
  FSc_1_IOBUFE_BUF0_D1_455 : X_ZERO
    port map (
      O => FSc_1_IOBUFE_BUF0_D1
    );
  FSc_1_IOBUFE_BUF0_D2_456 : X_ONE
    port map (
      O => FSc_1_IOBUFE_BUF0_D2
    );
  FSc_1_IOBUFE_BUF0_TRST_457 : X_AND2
    port map (
      I0 => M_Sn(0),
      I1 => M_Sn(0),
      O => FSc_1_IOBUFE_BUF0_TRST
    );
  BR_0_IBUF_BUF0_458 : X_BUF
    port map (
      I => BR_0_IBUF_BUF0_Q,
      O => BR_0_IBUF_BUF0
    );
  BR_0_IBUF_BUF0_Q_459 : X_BUF
    port map (
      I => BR_0_IBUF_BUF0_D,
      O => BR_0_IBUF_BUF0_Q
    );
  BR_0_IBUF_BUF0_D_460 : X_XOR2
    port map (
      I0 => BR_0_IBUF_BUF0_D1,
      I1 => BR_0_IBUF_BUF0_D2,
      O => BR_0_IBUF_BUF0_D
    );
  BR_0_IBUF_BUF0_D1_461 : X_ZERO
    port map (
      O => BR_0_IBUF_BUF0_D1
    );
  BR_0_IBUF_BUF0_D2_462 : X_AND2
    port map (
      I0 => BR_0_IBUF,
      I1 => BR_0_IBUF,
      O => BR_0_IBUF_BUF0_D2
    );
  BR_1_IBUF_BUF0_463 : X_BUF
    port map (
      I => BR_1_IBUF_BUF0_Q,
      O => BR_1_IBUF_BUF0
    );
  BR_1_IBUF_BUF0_Q_464 : X_BUF
    port map (
      I => BR_1_IBUF_BUF0_D,
      O => BR_1_IBUF_BUF0_Q
    );
  BR_1_IBUF_BUF0_D_465 : X_XOR2
    port map (
      I0 => BR_1_IBUF_BUF0_D1,
      I1 => BR_1_IBUF_BUF0_D2,
      O => BR_1_IBUF_BUF0_D
    );
  BR_1_IBUF_BUF0_D1_466 : X_ZERO
    port map (
      O => BR_1_IBUF_BUF0_D1
    );
  BR_1_IBUF_BUF0_D2_467 : X_AND2
    port map (
      I0 => BR_1_IBUF,
      I1 => BR_1_IBUF,
      O => BR_1_IBUF_BUF0_D2
    );
  DSP_INTn3_OBUF_BUF0_468 : X_BUF
    port map (
      I => DSP_INTn3_OBUF_BUF0_Q,
      O => DSP_INTn3_OBUF_BUF0
    );
  DSP_INTn3_OBUF_BUF0_Q_469 : X_BUF
    port map (
      I => DSP_INTn3_OBUF_BUF0_D,
      O => DSP_INTn3_OBUF_BUF0_Q
    );
  DSP_INTn3_OBUF_BUF0_D_470 : X_XOR2
    port map (
      I0 => DSP_INTn3_OBUF_BUF0_D1,
      I1 => DSP_INTn3_OBUF_BUF0_D2,
      O => DSP_INTn3_OBUF_BUF0_D
    );
  DSP_INTn3_OBUF_BUF0_D1_471 : X_ZERO
    port map (
      O => DSP_INTn3_OBUF_BUF0_D1
    );
  DSP_INTn3_OBUF_BUF0_D2_472 : X_AND2
    port map (
      I0 => DSP_INTn3_OBUF,
      I1 => DSP_INTn3_OBUF,
      O => DSP_INTn3_OBUF_BUF0_D2
    );
  EXP6_EXP_473 : X_BUF
    port map (
      I => EXP6_EXP_tsimrenamed_net_Q,
      O => EXP6_EXP
    );
  EXP6_EXP_tsimrenamed_net_Q_474 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP6_EXP_tsimrenamed_net_IN0,
      I1 => R_Wn_IBUF,
      I2 => DSP_A_1_IBUF,
      I3 => NlwInverterSignal_EXP6_EXP_tsimrenamed_net_IN3,
      I4 => DSP_A_2_IBUF,
      I5 => i_DR(1),
      O => EXP6_EXP_tsimrenamed_net_Q
    );
  EXP7_EXP_475 : X_BUF
    port map (
      I => EXP7_EXP_tsimrenamed_net_Q,
      O => EXP7_EXP
    );
  EXP7_EXP_tsimrenamed_net_Q_476 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP7_EXP_tsimrenamed_net_IN0,
      I1 => R_Wn_IBUF,
      I2 => NlwInverterSignal_EXP7_EXP_tsimrenamed_net_IN2,
      I3 => DSP_A_0_IBUF,
      I4 => DSP_A_2_IBUF,
      I5 => M_Sn(1),
      O => EXP7_EXP_tsimrenamed_net_Q
    );
  NlwInverterBlock_i_LEDG_0_D2_PT_0_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_i_LEDG_0_D2_PT_0_IN1
    );
  NlwInverterBlock_i_LEDG_0_D2_PT_0_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_i_LEDG_0_D2_PT_0_IN2
    );
  NlwInverterBlock_i_LEDG_0_D2_PT_0_IN4 : X_INV
    port map (
      I => i_LEDG(0),
      O => NlwInverterSignal_i_LEDG_0_D2_PT_0_IN4
    );
  NlwInverterBlock_i_LEDG_0_D2_PT_1_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_i_LEDG_0_D2_PT_1_IN0
    );
  NlwInverterBlock_i_LEDG_0_D2_PT_1_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_i_LEDG_0_D2_PT_1_IN1
    );
  NlwInverterBlock_i_LEDG_0_D2_PT_1_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_i_LEDG_0_D2_PT_1_IN2
    );
  NlwInverterBlock_i_LEDG_0_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_i_LEDG_0_CLKF_IN0
    );
  NlwInverterBlock_i_LEDG_0_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_i_LEDG_0_CLKF_IN1
    );
  NlwInverterBlock_i_LEDG_1_D2_PT_0_IN4 : X_INV
    port map (
      I => i_LEDG(1),
      O => NlwInverterSignal_i_LEDG_1_D2_PT_0_IN4
    );
  NlwInverterBlock_i_LEDG_1_D2_PT_1_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_i_LEDG_1_D2_PT_1_IN0
    );
  NlwInverterBlock_i_LEDG_1_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_i_LEDG_1_CLKF_IN0
    );
  NlwInverterBlock_i_LEDG_1_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_i_LEDG_1_CLKF_IN1
    );
  NlwInverterBlock_FSb_1_OBUFE_D2_PT_1_IN1 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_FSb_1_OBUFE_D2_PT_1_IN1
    );
  NlwInverterBlock_FSb_1_OBUFE_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_FSb_1_OBUFE_D2_PT_2_IN0
    );
  NlwInverterBlock_CCLK_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_CCLK_OBUF_D2_PT_0_IN2 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN2
    );
  NlwInverterBlock_CCLK_OBUF_D2_PT_0_IN4 : X_INV
    port map (
      I => CCLK_OBUF,
      O => NlwInverterSignal_CCLK_OBUF_D2_PT_0_IN4
    );
  NlwInverterBlock_CCLK_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_CCLK_OBUF_D2_PT_1_IN2 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN2
    );
  NlwInverterBlock_CCLK_OBUF_D2_PT_1_IN3 : X_INV
    port map (
      I => N2920,
      O => NlwInverterSignal_CCLK_OBUF_D2_PT_1_IN3
    );
  NlwInverterBlock_CCLK_OBUF_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_CCLK_OBUF_CLKF_IN0
    );
  NlwInverterBlock_CCLK_OBUF_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_CCLK_OBUF_CLKF_IN1
    );
  NlwInverterBlock_CCSn_0_D2_PT_0_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_0_IN1
    );
  NlwInverterBlock_CCSn_0_D2_PT_0_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_0_IN2
    );
  NlwInverterBlock_CCSn_0_D2_PT_0_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_0_IN3
    );
  NlwInverterBlock_CCSn_0_D2_PT_0_IN4 : X_INV
    port map (
      I => CCSn_0,
      O => NlwInverterSignal_CCSn_0_D2_PT_0_IN4
    );
  NlwInverterBlock_CCSn_0_D2_PT_1_IN0 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_1_IN0
    );
  NlwInverterBlock_CCSn_0_D2_PT_1_IN1 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_1_IN1
    );
  NlwInverterBlock_CCSn_0_D2_PT_1_IN2 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_1_IN2
    );
  NlwInverterBlock_CCSn_0_D2_PT_1_IN3 : X_INV
    port map (
      I => N2920,
      O => NlwInverterSignal_CCSn_0_D2_PT_1_IN3
    );
  NlwInverterBlock_CCSn_0_D2_PT_1_IN4 : X_INV
    port map (
      I => CCSn_0,
      O => NlwInverterSignal_CCSn_0_D2_PT_1_IN4
    );
  NlwInverterBlock_CCSn_0_D2_PT_2_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_CCSn_0_D2_PT_2_IN0
    );
  NlwInverterBlock_CCSn_0_D2_PT_2_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_2_IN1
    );
  NlwInverterBlock_CCSn_0_D2_PT_2_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_2_IN2
    );
  NlwInverterBlock_CCSn_0_D2_PT_2_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCSn_0_D2_PT_2_IN3
    );
  NlwInverterBlock_CCSn_0_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_CCSn_0_CLKF_IN0
    );
  NlwInverterBlock_CCSn_0_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_CCSn_0_CLKF_IN1
    );
  NlwInverterBlock_CCSn_1_D2_PT_0_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_CCSn_1_D2_PT_0_IN0
    );
  NlwInverterBlock_CCSn_1_D2_PT_0_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_0_IN1
    );
  NlwInverterBlock_CCSn_1_D2_PT_0_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_0_IN2
    );
  NlwInverterBlock_CCSn_1_D2_PT_0_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_0_IN3
    );
  NlwInverterBlock_CCSn_1_D2_PT_0_IN4 : X_INV
    port map (
      I => CCSn_1,
      O => NlwInverterSignal_CCSn_1_D2_PT_0_IN4
    );
  NlwInverterBlock_CCSn_1_D2_PT_1_IN0 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_1_IN0
    );
  NlwInverterBlock_CCSn_1_D2_PT_1_IN1 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_1_IN1
    );
  NlwInverterBlock_CCSn_1_D2_PT_1_IN2 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_1_IN2
    );
  NlwInverterBlock_CCSn_1_D2_PT_1_IN3 : X_INV
    port map (
      I => N2920,
      O => NlwInverterSignal_CCSn_1_D2_PT_1_IN3
    );
  NlwInverterBlock_CCSn_1_D2_PT_1_IN4 : X_INV
    port map (
      I => CCSn_1,
      O => NlwInverterSignal_CCSn_1_D2_PT_1_IN4
    );
  NlwInverterBlock_CCSn_1_D2_PT_2_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_2_IN1
    );
  NlwInverterBlock_CCSn_1_D2_PT_2_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_2_IN2
    );
  NlwInverterBlock_CCSn_1_D2_PT_2_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CCSn_1_D2_PT_2_IN3
    );
  NlwInverterBlock_CCSn_1_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_CCSn_1_CLKF_IN0
    );
  NlwInverterBlock_CCSn_1_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_CCSn_1_CLKF_IN1
    );
  NlwInverterBlock_CIN_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CIN_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_CIN_OBUF_D2_PT_0_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CIN_OBUF_D2_PT_0_IN3
    );
  NlwInverterBlock_CIN_OBUF_D2_PT_0_IN4 : X_INV
    port map (
      I => CIN_OBUF,
      O => NlwInverterSignal_CIN_OBUF_D2_PT_0_IN4
    );
  NlwInverterBlock_CIN_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_CIN_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_CIN_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_CIN_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_CIN_OBUF_D2_PT_1_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_CIN_OBUF_D2_PT_1_IN3
    );
  NlwInverterBlock_CIN_OBUF_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_CIN_OBUF_CLKF_IN0
    );
  NlwInverterBlock_CIN_OBUF_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_CIN_OBUF_CLKF_IN1
    );
  NlwInverterBlock_DX_0_D2_PT_0_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_DX_0_D2_PT_0_IN3
    );
  NlwInverterBlock_DX_0_D2_PT_0_IN4 : X_INV
    port map (
      I => DX_0,
      O => NlwInverterSignal_DX_0_D2_PT_0_IN4
    );
  NlwInverterBlock_DX_0_D2_PT_1_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_DX_0_D2_PT_1_IN0
    );
  NlwInverterBlock_DX_0_D2_PT_1_IN3 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_DX_0_D2_PT_1_IN3
    );
  NlwInverterBlock_DX_0_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DX_0_CLKF_IN0
    );
  NlwInverterBlock_DX_0_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_DX_0_CLKF_IN1
    );
  NlwInverterBlock_DX_1_D2_PT_0_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_DX_1_D2_PT_0_IN2
    );
  NlwInverterBlock_DX_1_D2_PT_0_IN4 : X_INV
    port map (
      I => DX_1,
      O => NlwInverterSignal_DX_1_D2_PT_0_IN4
    );
  NlwInverterBlock_DX_1_D2_PT_1_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_DX_1_D2_PT_1_IN0
    );
  NlwInverterBlock_DX_1_D2_PT_1_IN2 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_DX_1_D2_PT_1_IN2
    );
  NlwInverterBlock_DX_1_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DX_1_CLKF_IN0
    );
  NlwInverterBlock_DX_1_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_DX_1_CLKF_IN1
    );
  NlwInverterBlock_LEDY_0_D2_PT_0_IN0 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_LEDY_0_D2_PT_0_IN0
    );
  NlwInverterBlock_LEDY_0_D2_PT_0_IN1 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_LEDY_0_D2_PT_0_IN1
    );
  NlwInverterBlock_LEDY_0_D2_PT_0_IN4 : X_INV
    port map (
      I => LEDY_0,
      O => NlwInverterSignal_LEDY_0_D2_PT_0_IN4
    );
  NlwInverterBlock_LEDY_0_D2_PT_1_IN0 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_LEDY_0_D2_PT_1_IN0
    );
  NlwInverterBlock_LEDY_0_D2_PT_1_IN1 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_LEDY_0_D2_PT_1_IN1
    );
  NlwInverterBlock_LEDY_0_D2_PT_1_IN3 : X_INV
    port map (
      I => N2920,
      O => NlwInverterSignal_LEDY_0_D2_PT_1_IN3
    );
  NlwInverterBlock_LEDY_0_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_LEDY_0_CLKF_IN0
    );
  NlwInverterBlock_LEDY_0_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_LEDY_0_CLKF_IN1
    );
  NlwInverterBlock_LEDY_1_D2_PT_0_IN4 : X_INV
    port map (
      I => LEDY_1,
      O => NlwInverterSignal_LEDY_1_D2_PT_0_IN4
    );
  NlwInverterBlock_LEDY_1_D2_PT_1_IN3 : X_INV
    port map (
      I => N2920,
      O => NlwInverterSignal_LEDY_1_D2_PT_1_IN3
    );
  NlwInverterBlock_LEDY_1_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_LEDY_1_CLKF_IN0
    );
  NlwInverterBlock_LEDY_1_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_LEDY_1_CLKF_IN1
    );
  NlwInverterBlock_FS_BUF0_D2_PT_0_IN1 : X_INV
    port map (
      I => CNT(3),
      O => NlwInverterSignal_FS_BUF0_D2_PT_0_IN1
    );
  NlwInverterBlock_FS_BUF0_D2_PT_0_IN2 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF0_D2_PT_0_IN2
    );
  NlwInverterBlock_FS_BUF0_D2_PT_0_IN3 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF0_D2_PT_0_IN3
    );
  NlwInverterBlock_FS_BUF0_D2_PT_1_IN0 : X_INV
    port map (
      I => CNT(2),
      O => NlwInverterSignal_FS_BUF0_D2_PT_1_IN0
    );
  NlwInverterBlock_FS_BUF0_D2_PT_1_IN1 : X_INV
    port map (
      I => CNT(0),
      O => NlwInverterSignal_FS_BUF0_D2_PT_1_IN1
    );
  NlwInverterBlock_FS_BUF0_D2_PT_1_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF0_D2_PT_1_IN3
    );
  NlwInverterBlock_FS_BUF0_D2_PT_1_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF0_D2_PT_1_IN4
    );
  NlwInverterBlock_FS_BUF0_D2_PT_2_IN0 : X_INV
    port map (
      I => CNT(2),
      O => NlwInverterSignal_FS_BUF0_D2_PT_2_IN0
    );
  NlwInverterBlock_FS_BUF0_D2_PT_2_IN1 : X_INV
    port map (
      I => CNT(1),
      O => NlwInverterSignal_FS_BUF0_D2_PT_2_IN1
    );
  NlwInverterBlock_FS_BUF0_D2_PT_2_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF0_D2_PT_2_IN3
    );
  NlwInverterBlock_FS_BUF0_D2_PT_2_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF0_D2_PT_2_IN4
    );
  NlwInverterBlock_FS_BUF0_D2_PT_3_IN2 : X_INV
    port map (
      I => CNT(3),
      O => NlwInverterSignal_FS_BUF0_D2_PT_3_IN2
    );
  NlwInverterBlock_FS_BUF0_D2_PT_3_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF0_D2_PT_3_IN3
    );
  NlwInverterBlock_FS_BUF0_D2_PT_3_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF0_D2_PT_3_IN4
    );
  NlwInverterBlock_FS_BUF1_D2_PT_0_IN1 : X_INV
    port map (
      I => CNT(3),
      O => NlwInverterSignal_FS_BUF1_D2_PT_0_IN1
    );
  NlwInverterBlock_FS_BUF1_D2_PT_0_IN2 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF1_D2_PT_0_IN2
    );
  NlwInverterBlock_FS_BUF1_D2_PT_0_IN3 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF1_D2_PT_0_IN3
    );
  NlwInverterBlock_FS_BUF1_D2_PT_1_IN0 : X_INV
    port map (
      I => CNT(2),
      O => NlwInverterSignal_FS_BUF1_D2_PT_1_IN0
    );
  NlwInverterBlock_FS_BUF1_D2_PT_1_IN1 : X_INV
    port map (
      I => CNT(0),
      O => NlwInverterSignal_FS_BUF1_D2_PT_1_IN1
    );
  NlwInverterBlock_FS_BUF1_D2_PT_1_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF1_D2_PT_1_IN3
    );
  NlwInverterBlock_FS_BUF1_D2_PT_1_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF1_D2_PT_1_IN4
    );
  NlwInverterBlock_FS_BUF1_D2_PT_2_IN0 : X_INV
    port map (
      I => CNT(2),
      O => NlwInverterSignal_FS_BUF1_D2_PT_2_IN0
    );
  NlwInverterBlock_FS_BUF1_D2_PT_2_IN1 : X_INV
    port map (
      I => CNT(1),
      O => NlwInverterSignal_FS_BUF1_D2_PT_2_IN1
    );
  NlwInverterBlock_FS_BUF1_D2_PT_2_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF1_D2_PT_2_IN3
    );
  NlwInverterBlock_FS_BUF1_D2_PT_2_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF1_D2_PT_2_IN4
    );
  NlwInverterBlock_FS_BUF1_D2_PT_3_IN2 : X_INV
    port map (
      I => CNT(3),
      O => NlwInverterSignal_FS_BUF1_D2_PT_3_IN2
    );
  NlwInverterBlock_FS_BUF1_D2_PT_3_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_BUF1_D2_PT_3_IN3
    );
  NlwInverterBlock_FS_BUF1_D2_PT_3_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_BUF1_D2_PT_3_IN4
    );
  NlwInverterBlock_DCLK_1_IOBUFE_D2_PT_1_IN1 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_DCLK_1_IOBUFE_D2_PT_1_IN1
    );
  NlwInverterBlock_DCLK_1_IOBUFE_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_DCLK_1_IOBUFE_D2_PT_2_IN0
    );
  NlwInverterBlock_MCLK_1_OBUF_BUF0_D2_PT_1_IN1 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_MCLK_1_OBUF_BUF0_D2_PT_1_IN1
    );
  NlwInverterBlock_MCLK_1_OBUF_BUF0_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_MCLK_1_OBUF_BUF0_D2_PT_2_IN0
    );
  NlwInverterBlock_M_Sn_0_D2_PT_0_IN1 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_M_Sn_0_D2_PT_0_IN1
    );
  NlwInverterBlock_M_Sn_0_D2_PT_0_IN3 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_M_Sn_0_D2_PT_0_IN3
    );
  NlwInverterBlock_M_Sn_0_D2_PT_0_IN4 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_M_Sn_0_D2_PT_0_IN4
    );
  NlwInverterBlock_M_Sn_0_D2_PT_1_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_M_Sn_0_D2_PT_1_IN0
    );
  NlwInverterBlock_M_Sn_0_D2_PT_1_IN3 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_M_Sn_0_D2_PT_1_IN3
    );
  NlwInverterBlock_M_Sn_0_D2_PT_1_IN4 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_M_Sn_0_D2_PT_1_IN4
    );
  NlwInverterBlock_M_Sn_0_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_M_Sn_0_CLKF_IN0
    );
  NlwInverterBlock_M_Sn_0_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_M_Sn_0_CLKF_IN1
    );
  NlwInverterBlock_M_Sn_1_D2_PT_0_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_M_Sn_1_D2_PT_0_IN1
    );
  NlwInverterBlock_M_Sn_1_D2_PT_0_IN4 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_M_Sn_1_D2_PT_0_IN4
    );
  NlwInverterBlock_M_Sn_1_D2_PT_1_IN0 : X_INV
    port map (
      I => N2918,
      O => NlwInverterSignal_M_Sn_1_D2_PT_1_IN0
    );
  NlwInverterBlock_M_Sn_1_D2_PT_1_IN1 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_M_Sn_1_D2_PT_1_IN1
    );
  NlwInverterBlock_M_Sn_1_CLKF_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_M_Sn_1_CLKF_IN0
    );
  NlwInverterBlock_M_Sn_1_CLKF_IN1 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_M_Sn_1_CLKF_IN1
    );
  NlwInverterBlock_i_DR_0_CLKF_IN0 : X_INV
    port map (
      I => N2910,
      O => NlwInverterSignal_i_DR_0_CLKF_IN0
    );
  NlwInverterBlock_i_DR_0_CLKF_IN1 : X_INV
    port map (
      I => N2910,
      O => NlwInverterSignal_i_DR_0_CLKF_IN1
    );
  NlwInverterBlock_i_DR_1_CLKF_IN0 : X_INV
    port map (
      I => N2912,
      O => NlwInverterSignal_i_DR_1_CLKF_IN0
    );
  NlwInverterBlock_i_DR_1_CLKF_IN1 : X_INV
    port map (
      I => N2912,
      O => NlwInverterSignal_i_DR_1_CLKF_IN1
    );
  NlwInverterBlock_TST_M_Sn_OBUF_D2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_TST_M_Sn_OBUF_D2_IN0
    );
  NlwInverterBlock_FS_D2_PT_0_IN1 : X_INV
    port map (
      I => CNT(3),
      O => NlwInverterSignal_FS_D2_PT_0_IN1
    );
  NlwInverterBlock_FS_D2_PT_0_IN2 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_D2_PT_0_IN2
    );
  NlwInverterBlock_FS_D2_PT_0_IN3 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_D2_PT_0_IN3
    );
  NlwInverterBlock_FS_D2_PT_1_IN0 : X_INV
    port map (
      I => CNT(2),
      O => NlwInverterSignal_FS_D2_PT_1_IN0
    );
  NlwInverterBlock_FS_D2_PT_1_IN1 : X_INV
    port map (
      I => CNT(0),
      O => NlwInverterSignal_FS_D2_PT_1_IN1
    );
  NlwInverterBlock_FS_D2_PT_1_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_D2_PT_1_IN3
    );
  NlwInverterBlock_FS_D2_PT_1_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_D2_PT_1_IN4
    );
  NlwInverterBlock_FS_D2_PT_2_IN0 : X_INV
    port map (
      I => CNT(2),
      O => NlwInverterSignal_FS_D2_PT_2_IN0
    );
  NlwInverterBlock_FS_D2_PT_2_IN1 : X_INV
    port map (
      I => CNT(1),
      O => NlwInverterSignal_FS_D2_PT_2_IN1
    );
  NlwInverterBlock_FS_D2_PT_2_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_D2_PT_2_IN3
    );
  NlwInverterBlock_FS_D2_PT_2_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_D2_PT_2_IN4
    );
  NlwInverterBlock_FS_D2_PT_3_IN2 : X_INV
    port map (
      I => CNT(3),
      O => NlwInverterSignal_FS_D2_PT_3_IN2
    );
  NlwInverterBlock_FS_D2_PT_3_IN3 : X_INV
    port map (
      I => CNT(4),
      O => NlwInverterSignal_FS_D2_PT_3_IN3
    );
  NlwInverterBlock_FS_D2_PT_3_IN4 : X_INV
    port map (
      I => CNT(5),
      O => NlwInverterSignal_FS_D2_PT_3_IN4
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_2_IN1 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN1
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_2_IN4 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN4
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_2_IN5 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_2_IN5
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_3_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_3_IN0
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_3_IN4 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_3_IN4
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_4_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN0
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_4_IN2 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN2
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_4_IN4 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_4_IN4
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_5_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN0
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_5_IN2 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN2
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_5_IN3 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN3
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_D2_PT_5_IN4 : X_INV
    port map (
      I => DSP_A_2_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_D2_PT_5_IN4
    );
  NlwInverterBlock_DSP_D_0_IOBUFE_TRST_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DSP_D_0_IOBUFE_TRST_IN0
    );
  NlwInverterBlock_FSb_1_OBUFE_BUF0_D2_PT_1_IN1 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_FSb_1_OBUFE_BUF0_D2_PT_1_IN1
    );
  NlwInverterBlock_FSb_1_OBUFE_BUF0_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_FSb_1_OBUFE_BUF0_D2_PT_2_IN0
    );
  NlwInverterBlock_BX_0_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_BX_0_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_BX_0_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_BX_0_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_BX_1_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_BX_1_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_BX_1_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_BX_1_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_DSP_BCLK_0_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_DSP_BCLK_0_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_DSP_BCLK_1_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_DSP_BCLK_1_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_DSP_BCLK_1_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_DSP_BCLK_1_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_DSP_BFS_0_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_DSP_BFS_0_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_DSP_BFS_1_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_DSP_BFS_1_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_DSP_BFS_1_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_DSP_BFS_1_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_DSP_INTn_0_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => CNT(9),
      O => NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_DSP_INTn_0_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_DSP_INTn_0_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => N2910,
      O => NlwInverterSignal_DSP_INTn_0_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_DSP_INTn_1_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_DSP_INTn_1_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => N2912,
      O => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_DSP_INTn_1_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => CNT(9),
      O => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_DSP_INTn_1_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_DSP_INTn_1_OBUF_D2_PT_2_IN2 : X_INV
    port map (
      I => N2910,
      O => NlwInverterSignal_DSP_INTn_1_OBUF_D2_PT_2_IN2
    );
  NlwInverterBlock_MCLK_1_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => M_Sn(1),
      O => NlwInverterSignal_MCLK_1_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_MCLK_1_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => M_Sn(0),
      O => NlwInverterSignal_MCLK_1_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_DSP_D_1_IOBUFE_TRST_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_DSP_D_1_IOBUFE_TRST_IN0
    );
  NlwInverterBlock_EXP6_EXP_tsimrenamed_net_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_EXP6_EXP_tsimrenamed_net_IN0
    );
  NlwInverterBlock_EXP6_EXP_tsimrenamed_net_IN3 : X_INV
    port map (
      I => DSP_A_0_IBUF,
      O => NlwInverterSignal_EXP6_EXP_tsimrenamed_net_IN3
    );
  NlwInverterBlock_EXP7_EXP_tsimrenamed_net_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_EXP7_EXP_tsimrenamed_net_IN0
    );
  NlwInverterBlock_EXP7_EXP_tsimrenamed_net_IN2 : X_INV
    port map (
      I => DSP_A_1_IBUF,
      O => NlwInverterSignal_EXP7_EXP_tsimrenamed_net_IN2
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

