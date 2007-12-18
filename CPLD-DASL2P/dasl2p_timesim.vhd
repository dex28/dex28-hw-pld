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
    CLK : in STD_LOGIC := 'X'; 
    DSP_A2 : in STD_LOGIC := 'X'; 
    DSP_A1 : in STD_LOGIC := 'X'; 
    DSP_A0 : in STD_LOGIC := 'X'; 
    RESETn : in STD_LOGIC := 'X'; 
    IOSTRn : in STD_LOGIC := 'X'; 
    R_Wn : in STD_LOGIC := 'X'; 
    DR0 : in STD_LOGIC := 'X'; 
    COUT : in STD_LOGIC := 'X'; 
    CINTn : in STD_LOGIC := 'X'; 
    DR1 : in STD_LOGIC := 'X'; 
    DSP_BX0 : in STD_LOGIC := 'X'; 
    BR0 : in STD_LOGIC := 'X'; 
    DSP_BX1 : in STD_LOGIC := 'X'; 
    BR1 : in STD_LOGIC := 'X'; 
    FSa1 : out STD_LOGIC; 
    BCLK1 : inout STD_LOGIC; 
    DCLK1 : inout STD_LOGIC; 
    FSc1 : inout STD_LOGIC; 
    LED0a : out STD_LOGIC; 
    LED0b : out STD_LOGIC; 
    DSP_D0 : inout STD_LOGIC; 
    DX0 : out STD_LOGIC; 
    DX1 : out STD_LOGIC; 
    LED1a : out STD_LOGIC; 
    LED1b : out STD_LOGIC; 
    CIN : out STD_LOGIC; 
    CCLK : out STD_LOGIC; 
    FSc0 : inout STD_LOGIC; 
    DCLK0 : inout STD_LOGIC; 
    BCLK0 : inout STD_LOGIC; 
    FSb1 : out STD_LOGIC; 
    FSa0 : out STD_LOGIC; 
    FSb0 : out STD_LOGIC; 
    DSP_BFS0 : out STD_LOGIC; 
    DSP_BCLK0 : out STD_LOGIC; 
    DSP_BFS1 : out STD_LOGIC; 
    DSP_BCLK1 : out STD_LOGIC; 
    CCS0n : out STD_LOGIC; 
    CCS1n : out STD_LOGIC; 
    DSP_D1 : inout STD_LOGIC; 
    DSP_INT0n : out STD_LOGIC; 
    DSP_INT1n : out STD_LOGIC; 
    TST_M_Sn : out STD_LOGIC; 
    MCLK0 : out STD_LOGIC; 
    MCLK1 : out STD_LOGIC; 
    DSP_INT3n : out STD_LOGIC; 
    BX0 : out STD_LOGIC; 
    DSP_BR0 : out STD_LOGIC; 
    BX1 : out STD_LOGIC; 
    DSP_BR1 : out STD_LOGIC; 
    TST_FS : out STD_LOGIC 
  );
end dasl2p;

architecture Structure of dasl2p is
  signal FCLKIO_0 : STD_LOGIC; 
  signal DSP_A2_IBUF : STD_LOGIC; 
  signal DSP_A1_IBUF : STD_LOGIC; 
  signal DSP_A0_IBUF : STD_LOGIC; 
  signal RESETn_IBUF : STD_LOGIC; 
  signal FSR_IO_1 : STD_LOGIC; 
  signal IOSTRn_IBUF : STD_LOGIC; 
  signal R_Wn_IBUF : STD_LOGIC; 
  signal XLXN_2391 : STD_LOGIC; 
  signal XLXN_2392 : STD_LOGIC; 
  signal XLXN_2393 : STD_LOGIC; 
  signal XLXN_2390 : STD_LOGIC; 
  signal U40_XLXN_78 : STD_LOGIC; 
  signal U40_XLXN_82 : STD_LOGIC; 
  signal U41_XLXN_78 : STD_LOGIC; 
  signal U41_XLXN_82 : STD_LOGIC; 
  signal U40_XLXN_38 : STD_LOGIC; 
  signal U41_XLXN_38 : STD_LOGIC; 
  signal XLXN_589 : STD_LOGIC; 
  signal XLXN_590 : STD_LOGIC; 
  signal XLXN_591 : STD_LOGIC; 
  signal XLXN_592 : STD_LOGIC; 
  signal XLXN_9_Q : STD_LOGIC; 
  signal XLXN_9_OE : STD_LOGIC; 
  signal XLXN_2025_BUF0 : STD_LOGIC; 
  signal XLXN_2025_BUF0_OE : STD_LOGIC; 
  signal XLXN_143_BUF0 : STD_LOGIC; 
  signal XLXN_143_BUF0_OE : STD_LOGIC; 
  signal XLXN_142_Q : STD_LOGIC; 
  signal XLXN_142_OE : STD_LOGIC; 
  signal XLXN_2212 : STD_LOGIC; 
  signal XLXN_2212_OE : STD_LOGIC; 
  signal XLXN_2214 : STD_LOGIC; 
  signal XLXN_2214_OE : STD_LOGIC; 
  signal D_IN0 : STD_LOGIC; 
  signal D_IN0_OE : STD_LOGIC; 
  signal XLXN_1973 : STD_LOGIC; 
  signal XLXN_1974 : STD_LOGIC; 
  signal XLXN_2213 : STD_LOGIC; 
  signal XLXN_2215 : STD_LOGIC; 
  signal XLXN_2362 : STD_LOGIC; 
  signal XLXN_2363 : STD_LOGIC; 
  signal XLXN_142_BUF0 : STD_LOGIC; 
  signal XLXN_142_BUF0_OE : STD_LOGIC; 
  signal XLXN_143_BUF1 : STD_LOGIC; 
  signal XLXN_143_BUF1_OE : STD_LOGIC; 
  signal XLXN_2025_BUF1 : STD_LOGIC; 
  signal XLXN_2025_BUF1_OE : STD_LOGIC; 
  signal XLXN_9_BUF0 : STD_LOGIC; 
  signal XLXN_9_BUF0_OE : STD_LOGIC; 
  signal XLXN_9_BUF1 : STD_LOGIC; 
  signal XLXN_9_BUF1_OE : STD_LOGIC; 
  signal XLXN_9_BUF2 : STD_LOGIC; 
  signal XLXN_9_BUF2_OE : STD_LOGIC; 
  signal U40_XLXN_36 : STD_LOGIC; 
  signal U40_XLXN_39 : STD_LOGIC; 
  signal U41_XLXN_36 : STD_LOGIC; 
  signal U41_XLXN_39 : STD_LOGIC; 
  signal XLXN_285 : STD_LOGIC; 
  signal XLXN_286 : STD_LOGIC; 
  signal XLXN_2020 : STD_LOGIC; 
  signal XLXN_2020_OE : STD_LOGIC; 
  signal U40_XLXN_37 : STD_LOGIC; 
  signal U41_XLXN_37 : STD_LOGIC; 
  signal XLXN_143_Q : STD_LOGIC; 
  signal XLXN_2025_Q : STD_LOGIC; 
  signal XLXN_2025_BUF2 : STD_LOGIC; 
  signal XLXN_2393_BUF0 : STD_LOGIC; 
  signal XLXN_589_BUF0 : STD_LOGIC; 
  signal XLXN_590_BUF0 : STD_LOGIC; 
  signal XLXN_591_BUF0 : STD_LOGIC; 
  signal XLXN_592_BUF0 : STD_LOGIC; 
  signal XLXN_9_BUF3 : STD_LOGIC; 
  signal XLXN_9_Q_0 : STD_LOGIC; 
  signal XLXN_9 : STD_LOGIC; 
  signal XLXN_9_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_9_TRST : STD_LOGIC; 
  signal XLXN_9_D : STD_LOGIC; 
  signal Gnd : STD_LOGIC; 
  signal PRLD : STD_LOGIC; 
  signal Vcc : STD_LOGIC; 
  signal XLXN_9_D1 : STD_LOGIC; 
  signal XLXN_9_D2 : STD_LOGIC; 
  signal U43_Q2 : STD_LOGIC; 
  signal U43_Q9 : STD_LOGIC; 
  signal U43_Q4 : STD_LOGIC; 
  signal U43_Q5 : STD_LOGIC; 
  signal U43_Q8 : STD_LOGIC; 
  signal U43_Q6 : STD_LOGIC; 
  signal U43_Q10 : STD_LOGIC; 
  signal U43_Q7 : STD_LOGIC; 
  signal U43_Q3 : STD_LOGIC; 
  signal XLXN_9_D2_PT_0 : STD_LOGIC; 
  signal U43_Q0 : STD_LOGIC; 
  signal XLXN_9_D2_PT_1 : STD_LOGIC; 
  signal U43_Q1 : STD_LOGIC; 
  signal XLXN_9_D2_PT_2 : STD_LOGIC; 
  signal XLXN_9_D2_PT_3 : STD_LOGIC; 
  signal MnS1 : STD_LOGIC; 
  signal XLXN_2025_BUF0_Q : STD_LOGIC; 
  signal XLXN_2025_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_2025_BUF0_TRST : STD_LOGIC; 
  signal XLXN_2025_BUF0_D : STD_LOGIC; 
  signal XLXN_2025_BUF0_tsimcreated_xor_Q : STD_LOGIC; 
  signal XLXN_2025_BUF0_D1 : STD_LOGIC; 
  signal XLXN_2025_BUF0_D2 : STD_LOGIC; 
  signal XLXN_143_BUF0_Q : STD_LOGIC; 
  signal XLXN_143_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_143_BUF0_TRST : STD_LOGIC; 
  signal XLXN_143_BUF0_D : STD_LOGIC; 
  signal XLXN_143_BUF0_tsimcreated_xor_Q : STD_LOGIC; 
  signal XLXN_143_BUF0_D1 : STD_LOGIC; 
  signal XLXN_143_BUF0_D2 : STD_LOGIC; 
  signal XLXN_142_Q_1 : STD_LOGIC; 
  signal U43_Q11 : STD_LOGIC; 
  signal XLXN_142_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_142_TRST : STD_LOGIC; 
  signal XLXN_142_D : STD_LOGIC; 
  signal XLXN_142_tsimcreated_xor_Q : STD_LOGIC; 
  signal XLXN_142_D1 : STD_LOGIC; 
  signal XLXN_142_D2 : STD_LOGIC; 
  signal XLXN_2212_Q : STD_LOGIC; 
  signal XLXN_2212_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_2212_TRST : STD_LOGIC; 
  signal XLXN_2212_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_2212_D : STD_LOGIC; 
  signal XLXN_2212_CLKF : STD_LOGIC; 
  signal XLXN_2212_REG_tsimcreated_inv_XLXN_2212_CLKF : STD_LOGIC; 
  signal XLXN_2212_D1 : STD_LOGIC; 
  signal XLXN_2212_D2 : STD_LOGIC; 
  signal XLXN_2214_Q : STD_LOGIC; 
  signal XLXN_2214_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_2214_TRST : STD_LOGIC; 
  signal XLXN_2214_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_2214_D : STD_LOGIC; 
  signal XLXN_2214_CLKF : STD_LOGIC; 
  signal XLXN_2214_REG_tsimcreated_inv_XLXN_2214_CLKF : STD_LOGIC; 
  signal XLXN_2214_D1 : STD_LOGIC; 
  signal XLXN_2214_D2 : STD_LOGIC; 
  signal D_IN0_Q : STD_LOGIC; 
  signal D_IN0_BUFOE_OUT : STD_LOGIC; 
  signal D_IN0_TRST : STD_LOGIC; 
  signal D_IN0_D : STD_LOGIC; 
  signal D_IN0_D1 : STD_LOGIC; 
  signal D_IN0_D2 : STD_LOGIC; 
  signal EXP8_EXP : STD_LOGIC; 
  signal D_IN0_D2_PT_0 : STD_LOGIC; 
  signal D_IN0_D2_PT_1 : STD_LOGIC; 
  signal MnS0 : STD_LOGIC; 
  signal D_IN0_D2_PT_2 : STD_LOGIC; 
  signal D_IN0_D2_PT_3 : STD_LOGIC; 
  signal D_IN0_D2_PT_4 : STD_LOGIC; 
  signal MnS0_Q : STD_LOGIC; 
  signal MnS0_tsimcreated_prld_Q : STD_LOGIC; 
  signal MnS0_D : STD_LOGIC; 
  signal MnS0_CLKF : STD_LOGIC; 
  signal MnS0_REG_tsimcreated_inv_MnS0_CLKF : STD_LOGIC; 
  signal MnS0_D1 : STD_LOGIC; 
  signal MnS0_D2 : STD_LOGIC; 
  signal MnS1_Q : STD_LOGIC; 
  signal MnS1_tsimcreated_prld_Q : STD_LOGIC; 
  signal MnS1_D : STD_LOGIC; 
  signal MnS1_CLKF : STD_LOGIC; 
  signal MnS1_REG_tsimcreated_inv_MnS1_CLKF : STD_LOGIC; 
  signal MnS1_D1 : STD_LOGIC; 
  signal MnS1_D2 : STD_LOGIC; 
  signal CA0_Q : STD_LOGIC; 
  signal CA0 : STD_LOGIC; 
  signal CA0_tsimcreated_prld_Q : STD_LOGIC; 
  signal CA0_D : STD_LOGIC; 
  signal CA0_CLKF : STD_LOGIC; 
  signal CA0_REG_tsimcreated_inv_CA0_CLKF : STD_LOGIC; 
  signal CA0_D1 : STD_LOGIC; 
  signal CA0_D2 : STD_LOGIC; 
  signal CEN_Q : STD_LOGIC; 
  signal CEN : STD_LOGIC; 
  signal CEN_tsimcreated_prld_Q : STD_LOGIC; 
  signal CEN_D : STD_LOGIC; 
  signal CEN_CLKF : STD_LOGIC; 
  signal CEN_REG_tsimcreated_inv_CEN_CLKF : STD_LOGIC; 
  signal CEN_D1 : STD_LOGIC; 
  signal CEN_D2 : STD_LOGIC; 
  signal XLXN_1973_Q : STD_LOGIC; 
  signal XLXN_1973_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_1973_D : STD_LOGIC; 
  signal XLXN_1973_CLKF : STD_LOGIC; 
  signal XLXN_1973_REG_tsimcreated_inv_XLXN_1973_CLKF : STD_LOGIC; 
  signal XLXN_1973_D1 : STD_LOGIC; 
  signal XLXN_1973_D2 : STD_LOGIC; 
  signal XLXN_1974_Q : STD_LOGIC; 
  signal XLXN_1974_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_1974_D : STD_LOGIC; 
  signal XLXN_1974_CLKF : STD_LOGIC; 
  signal XLXN_1974_REG_tsimcreated_inv_XLXN_1974_CLKF : STD_LOGIC; 
  signal XLXN_1974_D1 : STD_LOGIC; 
  signal XLXN_1974_D2 : STD_LOGIC; 
  signal XLXN_2213_Q : STD_LOGIC; 
  signal XLXN_2213_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_2213_D : STD_LOGIC; 
  signal XLXN_2213_CLKF : STD_LOGIC; 
  signal XLXN_2213_REG_tsimcreated_inv_XLXN_2213_CLKF : STD_LOGIC; 
  signal XLXN_2213_D1 : STD_LOGIC; 
  signal XLXN_2213_D2 : STD_LOGIC; 
  signal XLXN_2215_Q : STD_LOGIC; 
  signal XLXN_2215_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_2215_D : STD_LOGIC; 
  signal XLXN_2215_CLKF : STD_LOGIC; 
  signal XLXN_2215_REG_tsimcreated_inv_XLXN_2215_CLKF : STD_LOGIC; 
  signal XLXN_2215_D1 : STD_LOGIC; 
  signal XLXN_2215_D2 : STD_LOGIC; 
  signal XLXN_2362_Q : STD_LOGIC; 
  signal XLXN_2362_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_2362_D : STD_LOGIC; 
  signal XLXN_2362_CLKF : STD_LOGIC; 
  signal XLXN_2362_REG_tsimcreated_inv_XLXN_2362_CLKF : STD_LOGIC; 
  signal XLXN_2362_D1 : STD_LOGIC; 
  signal XLXN_2362_D2 : STD_LOGIC; 
  signal XLXN_2363_Q : STD_LOGIC; 
  signal XLXN_2363_tsimcreated_prld_Q : STD_LOGIC; 
  signal XLXN_2363_D : STD_LOGIC; 
  signal XLXN_2363_CLKF : STD_LOGIC; 
  signal XLXN_2363_REG_tsimcreated_inv_XLXN_2363_CLKF : STD_LOGIC; 
  signal XLXN_2363_D1 : STD_LOGIC; 
  signal XLXN_2363_D2 : STD_LOGIC; 
  signal XLXN_142_BUF0_Q : STD_LOGIC; 
  signal XLXN_142_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_142_BUF0_TRST : STD_LOGIC; 
  signal XLXN_142_BUF0_D : STD_LOGIC; 
  signal XLXN_142_BUF0_D1 : STD_LOGIC; 
  signal XLXN_142_BUF0_D2 : STD_LOGIC; 
  signal XLXN_143_BUF1_Q : STD_LOGIC; 
  signal XLXN_143_BUF1_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_143_BUF1_TRST : STD_LOGIC; 
  signal XLXN_143_BUF1_D : STD_LOGIC; 
  signal XLXN_143_BUF1_D1 : STD_LOGIC; 
  signal XLXN_143_BUF1_D2 : STD_LOGIC; 
  signal XLXN_2025_BUF1_Q : STD_LOGIC; 
  signal XLXN_2025_BUF1_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_2025_BUF1_TRST : STD_LOGIC; 
  signal XLXN_2025_BUF1_D : STD_LOGIC; 
  signal XLXN_2025_BUF1_D1 : STD_LOGIC; 
  signal XLXN_2025_BUF1_D2 : STD_LOGIC; 
  signal XLXN_9_BUF0_Q : STD_LOGIC; 
  signal XLXN_9_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_9_BUF0_TRST : STD_LOGIC; 
  signal XLXN_9_BUF0_D : STD_LOGIC; 
  signal XLXN_9_BUF0_D1 : STD_LOGIC; 
  signal XLXN_9_BUF0_D2 : STD_LOGIC; 
  signal XLXN_9_BUF1_Q : STD_LOGIC; 
  signal XLXN_9_BUF1_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_9_BUF1_TRST : STD_LOGIC; 
  signal XLXN_9_BUF1_D : STD_LOGIC; 
  signal XLXN_9_BUF1_D1 : STD_LOGIC; 
  signal XLXN_9_BUF1_D2 : STD_LOGIC; 
  signal XLXN_9_BUF2_Q : STD_LOGIC; 
  signal XLXN_9_BUF2_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_9_BUF2_TRST : STD_LOGIC; 
  signal XLXN_9_BUF2_D : STD_LOGIC; 
  signal XLXN_9_BUF2_D1 : STD_LOGIC; 
  signal XLXN_9_BUF2_D2 : STD_LOGIC; 
  signal U43_Q4_Q : STD_LOGIC; 
  signal U43_Q4_D : STD_LOGIC; 
  signal U43_Q4_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q4_D1 : STD_LOGIC; 
  signal U43_Q4_D2 : STD_LOGIC; 
  signal U43_Q0_Q : STD_LOGIC; 
  signal U43_Q0_D : STD_LOGIC; 
  signal U43_Q0_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q0_D1 : STD_LOGIC; 
  signal U43_Q0_D2 : STD_LOGIC; 
  signal U43_Q5_Q : STD_LOGIC; 
  signal U43_Q5_D : STD_LOGIC; 
  signal U43_Q5_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q5_D1 : STD_LOGIC; 
  signal U43_Q5_D2 : STD_LOGIC; 
  signal U43_Q8_Q : STD_LOGIC; 
  signal U43_Q8_D : STD_LOGIC; 
  signal U43_Q8_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q8_D1 : STD_LOGIC; 
  signal U43_Q8_D2 : STD_LOGIC; 
  signal U43_Q1_Q : STD_LOGIC; 
  signal U43_Q1_D : STD_LOGIC; 
  signal U43_Q1_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q1_D1 : STD_LOGIC; 
  signal U43_Q1_D2 : STD_LOGIC; 
  signal U43_Q6_Q : STD_LOGIC; 
  signal U43_Q6_D : STD_LOGIC; 
  signal U43_Q6_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q6_D1 : STD_LOGIC; 
  signal U43_Q6_D2 : STD_LOGIC; 
  signal U43_Q10_Q : STD_LOGIC; 
  signal U43_Q10_D : STD_LOGIC; 
  signal U43_Q10_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q10_D1 : STD_LOGIC; 
  signal U43_Q10_D2 : STD_LOGIC; 
  signal U43_Q7_Q : STD_LOGIC; 
  signal U43_Q7_D : STD_LOGIC; 
  signal U43_Q7_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q7_D1 : STD_LOGIC; 
  signal U43_Q7_D2 : STD_LOGIC; 
  signal U43_Q3_Q : STD_LOGIC; 
  signal U43_Q3_D : STD_LOGIC; 
  signal U43_Q3_tsimcreated_xor_Q : STD_LOGIC; 
  signal U43_Q3_D1 : STD_LOGIC; 
  signal U43_Q3_D2 : STD_LOGIC; 
  signal U40_XLXN_36_Q : STD_LOGIC; 
  signal U40_XLXN_36_D : STD_LOGIC; 
  signal U40_XLXN_36_D1 : STD_LOGIC; 
  signal U40_XLXN_36_D2 : STD_LOGIC; 
  signal U40_XLXN_36_D2_PT_0 : STD_LOGIC; 
  signal U40_XLXN_36_D2_PT_1 : STD_LOGIC; 
  signal U40_XLXN_39_Q : STD_LOGIC; 
  signal U40_XLXN_39_D : STD_LOGIC; 
  signal U40_XLXN_39_D1 : STD_LOGIC; 
  signal U40_XLXN_39_D2 : STD_LOGIC; 
  signal U40_XLXN_39_D2_PT_0 : STD_LOGIC; 
  signal U40_XLXN_39_D2_PT_1 : STD_LOGIC; 
  signal U41_XLXN_36_Q : STD_LOGIC; 
  signal U41_XLXN_36_D : STD_LOGIC; 
  signal U41_XLXN_36_D1 : STD_LOGIC; 
  signal U41_XLXN_36_D2 : STD_LOGIC; 
  signal U41_XLXN_36_D2_PT_0 : STD_LOGIC; 
  signal U41_XLXN_36_D2_PT_1 : STD_LOGIC; 
  signal U41_XLXN_39_Q : STD_LOGIC; 
  signal U41_XLXN_39_D : STD_LOGIC; 
  signal U41_XLXN_39_D1 : STD_LOGIC; 
  signal U41_XLXN_39_D2 : STD_LOGIC; 
  signal U41_XLXN_39_D2_PT_0 : STD_LOGIC; 
  signal U41_XLXN_39_D2_PT_1 : STD_LOGIC; 
  signal XLXN_285_Q : STD_LOGIC; 
  signal XLXN_285_D : STD_LOGIC; 
  signal XLXN_285_D1 : STD_LOGIC; 
  signal XLXN_285_D2 : STD_LOGIC; 
  signal XLXN_286_Q : STD_LOGIC; 
  signal XLXN_286_D : STD_LOGIC; 
  signal XLXN_286_D1 : STD_LOGIC; 
  signal XLXN_286_D2 : STD_LOGIC; 
  signal XLXN_2020_Q : STD_LOGIC; 
  signal XLXN_2020_BUFOE_OUT : STD_LOGIC; 
  signal XLXN_2020_TRST : STD_LOGIC; 
  signal XLXN_2020_D : STD_LOGIC; 
  signal XLXN_2020_D1 : STD_LOGIC; 
  signal XLXN_2020_D2 : STD_LOGIC; 
  signal U40_XLXN_37_Q : STD_LOGIC; 
  signal U40_XLXN_37_D : STD_LOGIC; 
  signal U40_XLXN_37_D1 : STD_LOGIC; 
  signal U40_XLXN_37_D2 : STD_LOGIC; 
  signal U41_XLXN_37_Q : STD_LOGIC; 
  signal U41_XLXN_37_D : STD_LOGIC; 
  signal U41_XLXN_37_D1 : STD_LOGIC; 
  signal U41_XLXN_37_D2 : STD_LOGIC; 
  signal XLXN_143_Q_2 : STD_LOGIC; 
  signal XLXN_143_D : STD_LOGIC; 
  signal XLXN_143_D1 : STD_LOGIC; 
  signal XLXN_143_D2 : STD_LOGIC; 
  signal EXP6_EXP : STD_LOGIC; 
  signal XLXN_143_D2_PT_0 : STD_LOGIC; 
  signal EXP7_EXP : STD_LOGIC; 
  signal XLXN_143_D2_PT_1 : STD_LOGIC; 
  signal XLXN_143_D2_PT_2 : STD_LOGIC; 
  signal XLXN_143_D2_PT_3 : STD_LOGIC; 
  signal XLXN_143_D2_PT_4 : STD_LOGIC; 
  signal XLXN_143_D2_PT_5 : STD_LOGIC; 
  signal XLXN_143_D2_PT_6 : STD_LOGIC; 
  signal XLXN_2025_Q_3 : STD_LOGIC; 
  signal XLXN_2025_D : STD_LOGIC; 
  signal XLXN_2025_D1 : STD_LOGIC; 
  signal XLXN_2025_D2 : STD_LOGIC; 
  signal XLXN_2025_BUF2_Q : STD_LOGIC; 
  signal XLXN_2025_BUF2_D : STD_LOGIC; 
  signal XLXN_2025_BUF2_D1 : STD_LOGIC; 
  signal XLXN_2025_BUF2_D2 : STD_LOGIC; 
  signal XLXN_2393_BUF0_Q : STD_LOGIC; 
  signal XLXN_2393_BUF0_D : STD_LOGIC; 
  signal XLXN_2393_BUF0_D1 : STD_LOGIC; 
  signal XLXN_2393_BUF0_D2 : STD_LOGIC; 
  signal XLXN_589_BUF0_Q : STD_LOGIC; 
  signal XLXN_589_BUF0_D : STD_LOGIC; 
  signal XLXN_589_BUF0_D1 : STD_LOGIC; 
  signal XLXN_589_BUF0_D2 : STD_LOGIC; 
  signal XLXN_590_BUF0_Q : STD_LOGIC; 
  signal XLXN_590_BUF0_D : STD_LOGIC; 
  signal XLXN_590_BUF0_D1 : STD_LOGIC; 
  signal XLXN_590_BUF0_D2 : STD_LOGIC; 
  signal XLXN_591_BUF0_Q : STD_LOGIC; 
  signal XLXN_591_BUF0_D : STD_LOGIC; 
  signal XLXN_591_BUF0_D1 : STD_LOGIC; 
  signal XLXN_591_BUF0_D2 : STD_LOGIC; 
  signal XLXN_592_BUF0_Q : STD_LOGIC; 
  signal XLXN_592_BUF0_D : STD_LOGIC; 
  signal XLXN_592_BUF0_D1 : STD_LOGIC; 
  signal XLXN_592_BUF0_D2 : STD_LOGIC; 
  signal XLXN_9_BUF3_Q : STD_LOGIC; 
  signal XLXN_9_BUF3_D : STD_LOGIC; 
  signal XLXN_9_BUF3_D1 : STD_LOGIC; 
  signal XLXN_9_BUF3_D2 : STD_LOGIC; 
  signal XLXN_9_BUF3_D2_PT_0 : STD_LOGIC; 
  signal XLXN_9_BUF3_D2_PT_1 : STD_LOGIC; 
  signal XLXN_9_BUF3_D2_PT_2 : STD_LOGIC; 
  signal XLXN_9_BUF3_D2_PT_3 : STD_LOGIC; 
  signal EXP6_EXP_tsimrenamed_net_Q : STD_LOGIC; 
  signal EXP6_EXP_PT_0 : STD_LOGIC; 
  signal EXP6_EXP_PT_1 : STD_LOGIC; 
  signal EXP6_EXP_PT_2 : STD_LOGIC; 
  signal EXP7_EXP_tsimrenamed_net_Q : STD_LOGIC; 
  signal EXP7_EXP_PT_0 : STD_LOGIC; 
  signal EXP7_EXP_PT_1 : STD_LOGIC; 
  signal EXP8_EXP_tsimrenamed_net_Q : STD_LOGIC; 
  signal EXP8_EXP_PT_0 : STD_LOGIC; 
  signal EXP8_EXP_PT_1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_D2_PT_3_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_143_BUF0_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_142_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_142_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2212_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2212_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2212_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2212_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2214_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2214_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_IN0_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_MnS0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_MnS0_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_MnS0_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_MnS0_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_MnS1_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_MnS1_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_MnS1_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CA0_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CA0_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CA0_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CA0_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CA0_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_CEN_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_CEN_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_CEN_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_CEN_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_CEN_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_1973_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_1973_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_1973_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_1974_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_1974_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_1974_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2213_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2213_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2213_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2213_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2215_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2215_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2362_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2362_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2362_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2362_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2363_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2363_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2363_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2363_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q4_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q5_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q8_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q6_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q10_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q10_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q7_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U43_Q3_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U40_XLXN_36_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U40_XLXN_39_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U41_XLXN_36_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U41_XLXN_39_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_285_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_285_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_286_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_2020_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U40_XLXN_37_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U40_XLXN_37_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_U41_XLXN_37_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U41_XLXN_37_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_143_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_143_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_143_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_143_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_EXP6_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP6_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP6_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP7_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP7_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP7_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP8_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP8_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP8_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP8_EXP_PT_1_IN3 : STD_LOGIC; 
  signal D_OUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  FCLKIO_0_4 : X_BUF
    port map (
      I => CLK,
      O => FCLKIO_0
    );
  DSP_A2_IBUF_5 : X_BUF
    port map (
      I => DSP_A2,
      O => DSP_A2_IBUF
    );
  DSP_A1_IBUF_6 : X_BUF
    port map (
      I => DSP_A1,
      O => DSP_A1_IBUF
    );
  DSP_A0_IBUF_7 : X_BUF
    port map (
      I => DSP_A0,
      O => DSP_A0_IBUF
    );
  D_OUT_0_Q : X_BUF
    port map (
      I => DSP_D0,
      O => D_OUT(0)
    );
  RESETn_IBUF_8 : X_BUF
    port map (
      I => RESETn,
      O => RESETn_IBUF
    );
  FSR_IO_1_9 : X_INV
    port map (
      I => RESETn,
      O => FSR_IO_1
    );
  IOSTRn_IBUF_10 : X_BUF
    port map (
      I => IOSTRn,
      O => IOSTRn_IBUF
    );
  R_Wn_IBUF_11 : X_BUF
    port map (
      I => R_Wn,
      O => R_Wn_IBUF
    );
  XLXN_2391_12 : X_BUF
    port map (
      I => DR0,
      O => XLXN_2391
    );
  XLXN_2392_13 : X_BUF
    port map (
      I => COUT,
      O => XLXN_2392
    );
  XLXN_2393_14 : X_BUF
    port map (
      I => CINTn,
      O => XLXN_2393
    );
  XLXN_2390_15 : X_BUF
    port map (
      I => DR1,
      O => XLXN_2390
    );
  D_OUT_1_Q : X_BUF
    port map (
      I => DSP_D1,
      O => D_OUT(1)
    );
  U40_XLXN_78_16 : X_BUF
    port map (
      I => FSc0,
      O => U40_XLXN_78
    );
  U40_XLXN_82_17 : X_BUF
    port map (
      I => BCLK0,
      O => U40_XLXN_82
    );
  U41_XLXN_78_18 : X_BUF
    port map (
      I => FSc1,
      O => U41_XLXN_78
    );
  U41_XLXN_82_19 : X_BUF
    port map (
      I => BCLK1,
      O => U41_XLXN_82
    );
  U40_XLXN_38_20 : X_BUF
    port map (
      I => DCLK0,
      O => U40_XLXN_38
    );
  U41_XLXN_38_21 : X_BUF
    port map (
      I => DCLK1,
      O => U41_XLXN_38
    );
  XLXN_589_22 : X_BUF
    port map (
      I => DSP_BX0,
      O => XLXN_589
    );
  XLXN_590_23 : X_BUF
    port map (
      I => BR0,
      O => XLXN_590
    );
  XLXN_591_24 : X_BUF
    port map (
      I => DSP_BX1,
      O => XLXN_591
    );
  XLXN_592_25 : X_BUF
    port map (
      I => BR1,
      O => XLXN_592
    );
  FSa1_26 : X_TRI
    port map (
      I => XLXN_9_Q,
      CTL => XLXN_9_OE,
      O => FSa1
    );
  BCLK1_27 : X_TRI
    port map (
      I => XLXN_2025_BUF0,
      CTL => XLXN_2025_BUF0_OE,
      O => BCLK1
    );
  DCLK1_28 : X_TRI
    port map (
      I => XLXN_143_BUF0,
      CTL => XLXN_143_BUF0_OE,
      O => DCLK1
    );
  FSc1_29 : X_TRI
    port map (
      I => XLXN_142_Q,
      CTL => XLXN_142_OE,
      O => FSc1
    );
  LED0a_30 : X_TRI
    port map (
      I => XLXN_2212,
      CTL => XLXN_2212_OE,
      O => LED0a
    );
  LED0b_31 : X_TRI
    port map (
      I => XLXN_2214,
      CTL => XLXN_2214_OE,
      O => LED0b
    );
  DSP_D0_32 : X_TRI
    port map (
      I => D_IN0,
      CTL => D_IN0_OE,
      O => DSP_D0
    );
  DX0_33 : X_BUF
    port map (
      I => XLXN_1973,
      O => DX0
    );
  DX1_34 : X_BUF
    port map (
      I => XLXN_1974,
      O => DX1
    );
  LED1a_35 : X_BUF
    port map (
      I => XLXN_2213,
      O => LED1a
    );
  LED1b_36 : X_BUF
    port map (
      I => XLXN_2215,
      O => LED1b
    );
  CIN_37 : X_BUF
    port map (
      I => XLXN_2362,
      O => CIN
    );
  CCLK_38 : X_BUF
    port map (
      I => XLXN_2363,
      O => CCLK
    );
  FSc0_39 : X_TRI
    port map (
      I => XLXN_142_BUF0,
      CTL => XLXN_142_BUF0_OE,
      O => FSc0
    );
  DCLK0_40 : X_TRI
    port map (
      I => XLXN_143_BUF1,
      CTL => XLXN_143_BUF1_OE,
      O => DCLK0
    );
  BCLK0_41 : X_TRI
    port map (
      I => XLXN_2025_BUF1,
      CTL => XLXN_2025_BUF1_OE,
      O => BCLK0
    );
  FSb1_42 : X_TRI
    port map (
      I => XLXN_9_BUF0,
      CTL => XLXN_9_BUF0_OE,
      O => FSb1
    );
  FSa0_43 : X_TRI
    port map (
      I => XLXN_9_BUF1,
      CTL => XLXN_9_BUF1_OE,
      O => FSa0
    );
  FSb0_44 : X_TRI
    port map (
      I => XLXN_9_BUF2,
      CTL => XLXN_9_BUF2_OE,
      O => FSb0
    );
  DSP_BFS0_45 : X_BUF
    port map (
      I => U40_XLXN_36,
      O => DSP_BFS0
    );
  DSP_BCLK0_46 : X_BUF
    port map (
      I => U40_XLXN_39,
      O => DSP_BCLK0
    );
  DSP_BFS1_47 : X_BUF
    port map (
      I => U41_XLXN_36,
      O => DSP_BFS1
    );
  DSP_BCLK1_48 : X_BUF
    port map (
      I => U41_XLXN_39,
      O => DSP_BCLK1
    );
  CCS0n_49 : X_BUF
    port map (
      I => XLXN_285,
      O => CCS0n
    );
  CCS1n_50 : X_BUF
    port map (
      I => XLXN_286,
      O => CCS1n
    );
  DSP_D1_51 : X_TRI
    port map (
      I => XLXN_2020,
      CTL => XLXN_2020_OE,
      O => DSP_D1
    );
  DSP_INT0n_52 : X_BUF
    port map (
      I => U40_XLXN_37,
      O => DSP_INT0n
    );
  DSP_INT1n_53 : X_BUF
    port map (
      I => U41_XLXN_37,
      O => DSP_INT1n
    );
  TST_M_Sn_54 : X_BUF
    port map (
      I => XLXN_143_Q,
      O => TST_M_Sn
    );
  MCLK0_55 : X_BUF
    port map (
      I => XLXN_2025_Q,
      O => MCLK0
    );
  MCLK1_56 : X_BUF
    port map (
      I => XLXN_2025_BUF2,
      O => MCLK1
    );
  DSP_INT3n_57 : X_BUF
    port map (
      I => XLXN_2393_BUF0,
      O => DSP_INT3n
    );
  BX0_58 : X_BUF
    port map (
      I => XLXN_589_BUF0,
      O => BX0
    );
  DSP_BR0_59 : X_BUF
    port map (
      I => XLXN_590_BUF0,
      O => DSP_BR0
    );
  BX1_60 : X_BUF
    port map (
      I => XLXN_591_BUF0,
      O => BX1
    );
  DSP_BR1_61 : X_BUF
    port map (
      I => XLXN_592_BUF0,
      O => DSP_BR1
    );
  TST_FS_62 : X_BUF
    port map (
      I => XLXN_9_BUF3,
      O => TST_FS
    );
  XLXN_9_Q_63 : X_BUF
    port map (
      I => XLXN_9_Q_0,
      O => XLXN_9_Q
    );
  XLXN_9_64 : X_BUF
    port map (
      I => XLXN_9_Q_0,
      O => XLXN_9
    );
  XLXN_9_OE_65 : X_BUF
    port map (
      I => XLXN_9_BUFOE_OUT,
      O => XLXN_9_OE
    );
  XLXN_9_BUFOE_OUT_66 : X_BUF
    port map (
      I => XLXN_9_TRST,
      O => XLXN_9_BUFOE_OUT
    );
  XLXN_9_REG : X_FF
    port map (
      I => XLXN_9_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => XLXN_9_Q_0
    );
  Gnd_67 : X_ZERO
    port map (
      O => Gnd
    );
  Vcc_68 : X_ONE
    port map (
      O => Vcc
    );
  XLXN_9_D_69 : X_XOR2
    port map (
      I0 => XLXN_9_D1,
      I1 => XLXN_9_D2,
      O => XLXN_9_D
    );
  XLXN_9_D1_70 : X_ZERO
    port map (
      O => XLXN_9_D1
    );
  XLXN_9_D2_PT_0_71 : X_AND16
    port map (
      I0 => U43_Q2,
      I1 => NlwInverterSignal_XLXN_9_D2_PT_0_IN1,
      I2 => NlwInverterSignal_XLXN_9_D2_PT_0_IN2,
      I3 => U43_Q5,
      I4 => U43_Q8,
      I5 => U43_Q6,
      I6 => U43_Q10,
      I7 => NlwInverterSignal_XLXN_9_D2_PT_0_IN7,
      I8 => U43_Q3,
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_D2_PT_0
    );
  XLXN_9_D2_PT_1_72 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_9_D2_PT_1_IN0,
      I1 => NlwInverterSignal_XLXN_9_D2_PT_1_IN1,
      I2 => U43_Q5,
      I3 => U43_Q8,
      I4 => U43_Q6,
      I5 => U43_Q10,
      I6 => NlwInverterSignal_XLXN_9_D2_PT_1_IN6,
      I7 => U43_Q3,
      I8 => NlwInverterSignal_XLXN_9_D2_PT_1_IN8,
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_D2_PT_1
    );
  XLXN_9_D2_PT_2_73 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_9_D2_PT_2_IN0,
      I1 => NlwInverterSignal_XLXN_9_D2_PT_2_IN1,
      I2 => U43_Q5,
      I3 => U43_Q8,
      I4 => U43_Q6,
      I5 => U43_Q10,
      I6 => NlwInverterSignal_XLXN_9_D2_PT_2_IN6,
      I7 => U43_Q3,
      I8 => NlwInverterSignal_XLXN_9_D2_PT_2_IN8,
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_D2_PT_2
    );
  XLXN_9_D2_PT_3_74 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_9_D2_PT_3_IN0,
      I1 => NlwInverterSignal_XLXN_9_D2_PT_3_IN1,
      I2 => NlwInverterSignal_XLXN_9_D2_PT_3_IN2,
      I3 => U43_Q5,
      I4 => U43_Q8,
      I5 => U43_Q6,
      I6 => U43_Q10,
      I7 => NlwInverterSignal_XLXN_9_D2_PT_3_IN7,
      I8 => NlwInverterSignal_XLXN_9_D2_PT_3_IN8,
      I9 => U43_Q0,
      I10 => U43_Q1,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_D2_PT_3
    );
  XLXN_9_D2_75 : X_OR4
    port map (
      I0 => XLXN_9_D2_PT_0,
      I1 => XLXN_9_D2_PT_1,
      I2 => XLXN_9_D2_PT_2,
      I3 => XLXN_9_D2_PT_3,
      O => XLXN_9_D2
    );
  XLXN_9_TRST_76 : X_AND2
    port map (
      I0 => MnS1,
      I1 => MnS1,
      O => XLXN_9_TRST
    );
  XLXN_2025_BUF0_77 : X_BUF
    port map (
      I => XLXN_2025_BUF0_Q,
      O => XLXN_2025_BUF0
    );
  U43_Q2_78 : X_BUF
    port map (
      I => XLXN_2025_BUF0_Q,
      O => U43_Q2
    );
  XLXN_2025_BUF0_OE_79 : X_BUF
    port map (
      I => XLXN_2025_BUF0_BUFOE_OUT,
      O => XLXN_2025_BUF0_OE
    );
  XLXN_2025_BUF0_BUFOE_OUT_80 : X_BUF
    port map (
      I => XLXN_2025_BUF0_TRST,
      O => XLXN_2025_BUF0_BUFOE_OUT
    );
  XLXN_2025_BUF0_tsimcreated_xor_Q_81 : X_XOR2
    port map (
      I0 => XLXN_2025_BUF0_D,
      I1 => XLXN_2025_BUF0_Q,
      O => XLXN_2025_BUF0_tsimcreated_xor_Q
    );
  XLXN_2025_BUF0_REG : X_FF
    port map (
      I => XLXN_2025_BUF0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => PRLD,
      RST => Gnd,
      O => XLXN_2025_BUF0_Q
    );
  XLXN_2025_BUF0_D_82 : X_XOR2
    port map (
      I0 => XLXN_2025_BUF0_D1,
      I1 => XLXN_2025_BUF0_D2,
      O => XLXN_2025_BUF0_D
    );
  XLXN_2025_BUF0_D1_83 : X_ZERO
    port map (
      O => XLXN_2025_BUF0_D1
    );
  XLXN_2025_BUF0_D2_84 : X_AND2
    port map (
      I0 => U43_Q0,
      I1 => U43_Q1,
      O => XLXN_2025_BUF0_D2
    );
  XLXN_2025_BUF0_TRST_85 : X_AND2
    port map (
      I0 => MnS1,
      I1 => MnS1,
      O => XLXN_2025_BUF0_TRST
    );
  XLXN_143_BUF0_86 : X_BUF
    port map (
      I => XLXN_143_BUF0_Q,
      O => XLXN_143_BUF0
    );
  U43_Q9_87 : X_BUF
    port map (
      I => XLXN_143_BUF0_Q,
      O => U43_Q9
    );
  XLXN_143_BUF0_OE_88 : X_BUF
    port map (
      I => XLXN_143_BUF0_BUFOE_OUT,
      O => XLXN_143_BUF0_OE
    );
  XLXN_143_BUF0_BUFOE_OUT_89 : X_BUF
    port map (
      I => XLXN_143_BUF0_TRST,
      O => XLXN_143_BUF0_BUFOE_OUT
    );
  XLXN_143_BUF0_tsimcreated_xor_Q_90 : X_XOR2
    port map (
      I0 => XLXN_143_BUF0_D,
      I1 => XLXN_143_BUF0_Q,
      O => XLXN_143_BUF0_tsimcreated_xor_Q
    );
  XLXN_143_BUF0_REG : X_FF
    port map (
      I => XLXN_143_BUF0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => PRLD,
      RST => Gnd,
      O => XLXN_143_BUF0_Q
    );
  XLXN_143_BUF0_D_91 : X_XOR2
    port map (
      I0 => XLXN_143_BUF0_D1,
      I1 => XLXN_143_BUF0_D2,
      O => XLXN_143_BUF0_D
    );
  XLXN_143_BUF0_D1_92 : X_ZERO
    port map (
      O => XLXN_143_BUF0_D1
    );
  XLXN_143_BUF0_D2_93 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_143_BUF0_D2_IN0,
      I1 => U43_Q4,
      I2 => U43_Q5,
      I3 => U43_Q8,
      I4 => U43_Q6,
      I5 => U43_Q7,
      I6 => U43_Q3,
      I7 => U43_Q0,
      I8 => U43_Q1,
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_143_BUF0_D2
    );
  XLXN_143_BUF0_TRST_94 : X_AND2
    port map (
      I0 => MnS1,
      I1 => MnS1,
      O => XLXN_143_BUF0_TRST
    );
  XLXN_142_Q_95 : X_BUF
    port map (
      I => XLXN_142_Q_1,
      O => XLXN_142_Q
    );
  U43_Q11_96 : X_BUF
    port map (
      I => XLXN_142_Q_1,
      O => U43_Q11
    );
  XLXN_142_OE_97 : X_BUF
    port map (
      I => XLXN_142_BUFOE_OUT,
      O => XLXN_142_OE
    );
  XLXN_142_BUFOE_OUT_98 : X_BUF
    port map (
      I => XLXN_142_TRST,
      O => XLXN_142_BUFOE_OUT
    );
  XLXN_142_tsimcreated_xor_Q_99 : X_XOR2
    port map (
      I0 => XLXN_142_D,
      I1 => XLXN_142_Q_1,
      O => XLXN_142_tsimcreated_xor_Q
    );
  XLXN_142_REG : X_FF
    port map (
      I => XLXN_142_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => PRLD,
      RST => Gnd,
      O => XLXN_142_Q_1
    );
  XLXN_142_D_100 : X_XOR2
    port map (
      I0 => XLXN_142_D1,
      I1 => XLXN_142_D2,
      O => XLXN_142_D
    );
  XLXN_142_D1_101 : X_ZERO
    port map (
      O => XLXN_142_D1
    );
  XLXN_142_D2_102 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_142_D2_IN0,
      I1 => NlwInverterSignal_XLXN_142_D2_IN1,
      I2 => U43_Q4,
      I3 => U43_Q5,
      I4 => U43_Q8,
      I5 => U43_Q6,
      I6 => U43_Q10,
      I7 => U43_Q7,
      I8 => U43_Q3,
      I9 => U43_Q0,
      I10 => U43_Q1,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_142_D2
    );
  XLXN_142_TRST_103 : X_AND2
    port map (
      I0 => MnS1,
      I1 => MnS1,
      O => XLXN_142_TRST
    );
  XLXN_2212_104 : X_BUF
    port map (
      I => XLXN_2212_Q,
      O => XLXN_2212
    );
  XLXN_2212_OE_105 : X_BUF
    port map (
      I => XLXN_2212_BUFOE_OUT,
      O => XLXN_2212_OE
    );
  XLXN_2212_BUFOE_OUT_106 : X_BUF
    port map (
      I => XLXN_2212_TRST,
      O => XLXN_2212_BUFOE_OUT
    );
  XLXN_2212_tsimcreated_prld_Q_107 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_2212_tsimcreated_prld_Q
    );
  XLXN_2212_REG : X_FF
    port map (
      I => XLXN_2212_D,
      CE => Vcc,
      CLK => XLXN_2212_REG_tsimcreated_inv_XLXN_2212_CLKF,
      SET => Gnd,
      RST => XLXN_2212_tsimcreated_prld_Q,
      O => XLXN_2212_Q
    );
  XLXN_2212_REG_tsimcreated_inv_XLXN_2212_CLKF_108 : X_INV
    port map (
      I => XLXN_2212_CLKF,
      O => XLXN_2212_REG_tsimcreated_inv_XLXN_2212_CLKF
    );
  XLXN_2212_D_109 : X_XOR2
    port map (
      I0 => XLXN_2212_D1,
      I1 => XLXN_2212_D2,
      O => XLXN_2212_D
    );
  XLXN_2212_D1_110 : X_ZERO
    port map (
      O => XLXN_2212_D1
    );
  XLXN_2212_D2_111 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => XLXN_2212_D2
    );
  XLXN_2212_CLKF_112 : X_AND5
    port map (
      I0 => DSP_A2_IBUF,
      I1 => NlwInverterSignal_XLXN_2212_CLKF_IN1,
      I2 => NlwInverterSignal_XLXN_2212_CLKF_IN2,
      I3 => NlwInverterSignal_XLXN_2212_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_2212_CLKF_IN4,
      O => XLXN_2212_CLKF
    );
  XLXN_2212_TRST_113 : X_AND2
    port map (
      I0 => RESETn_IBUF,
      I1 => RESETn_IBUF,
      O => XLXN_2212_TRST
    );
  XLXN_2214_114 : X_BUF
    port map (
      I => XLXN_2214_Q,
      O => XLXN_2214
    );
  XLXN_2214_OE_115 : X_BUF
    port map (
      I => XLXN_2214_BUFOE_OUT,
      O => XLXN_2214_OE
    );
  XLXN_2214_BUFOE_OUT_116 : X_BUF
    port map (
      I => XLXN_2214_TRST,
      O => XLXN_2214_BUFOE_OUT
    );
  XLXN_2214_tsimcreated_prld_Q_117 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_2214_tsimcreated_prld_Q
    );
  XLXN_2214_REG : X_FF
    port map (
      I => XLXN_2214_D,
      CE => Vcc,
      CLK => XLXN_2214_REG_tsimcreated_inv_XLXN_2214_CLKF,
      SET => Gnd,
      RST => XLXN_2214_tsimcreated_prld_Q,
      O => XLXN_2214_Q
    );
  XLXN_2214_REG_tsimcreated_inv_XLXN_2214_CLKF_118 : X_INV
    port map (
      I => XLXN_2214_CLKF,
      O => XLXN_2214_REG_tsimcreated_inv_XLXN_2214_CLKF
    );
  XLXN_2214_D_119 : X_XOR2
    port map (
      I0 => XLXN_2214_D1,
      I1 => XLXN_2214_D2,
      O => XLXN_2214_D
    );
  XLXN_2214_D1_120 : X_ZERO
    port map (
      O => XLXN_2214_D1
    );
  XLXN_2214_D2_121 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => XLXN_2214_D2
    );
  XLXN_2214_CLKF_122 : X_AND5
    port map (
      I0 => DSP_A2_IBUF,
      I1 => DSP_A1_IBUF,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_XLXN_2214_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_2214_CLKF_IN4,
      O => XLXN_2214_CLKF
    );
  XLXN_2214_TRST_123 : X_AND2
    port map (
      I0 => RESETn_IBUF,
      I1 => RESETn_IBUF,
      O => XLXN_2214_TRST
    );
  D_IN0_124 : X_BUF
    port map (
      I => D_IN0_Q,
      O => D_IN0
    );
  D_IN0_OE_125 : X_BUF
    port map (
      I => D_IN0_BUFOE_OUT,
      O => D_IN0_OE
    );
  D_IN0_BUFOE_OUT_126 : X_BUF
    port map (
      I => D_IN0_TRST,
      O => D_IN0_BUFOE_OUT
    );
  D_IN0_Q_127 : X_BUF
    port map (
      I => D_IN0_D,
      O => D_IN0_Q
    );
  D_IN0_D_128 : X_XOR2
    port map (
      I0 => D_IN0_D1,
      I1 => D_IN0_D2,
      O => D_IN0_D
    );
  D_IN0_D1_129 : X_ZERO
    port map (
      O => D_IN0_D1
    );
  D_IN0_D2_PT_0_130 : X_AND2
    port map (
      I0 => EXP8_EXP,
      I1 => EXP8_EXP,
      O => D_IN0_D2_PT_0
    );
  D_IN0_D2_PT_1_131 : X_AND6
    port map (
      I0 => NlwInverterSignal_D_IN0_D2_PT_1_IN0,
      I1 => DSP_A1_IBUF,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_D_IN0_D2_PT_1_IN3,
      I4 => R_Wn_IBUF,
      I5 => XLXN_2391,
      O => D_IN0_D2_PT_1
    );
  D_IN0_D2_PT_2_132 : X_AND6
    port map (
      I0 => NlwInverterSignal_D_IN0_D2_PT_2_IN0,
      I1 => DSP_A1_IBUF,
      I2 => NlwInverterSignal_D_IN0_D2_PT_2_IN2,
      I3 => NlwInverterSignal_D_IN0_D2_PT_2_IN3,
      I4 => R_Wn_IBUF,
      I5 => MnS0,
      O => D_IN0_D2_PT_2
    );
  D_IN0_D2_PT_3_133 : X_AND6
    port map (
      I0 => NlwInverterSignal_D_IN0_D2_PT_3_IN0,
      I1 => NlwInverterSignal_D_IN0_D2_PT_3_IN1,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_D_IN0_D2_PT_3_IN3,
      I4 => R_Wn_IBUF,
      I5 => XLXN_2392,
      O => D_IN0_D2_PT_3
    );
  D_IN0_D2_PT_4_134 : X_AND6
    port map (
      I0 => NlwInverterSignal_D_IN0_D2_PT_4_IN0,
      I1 => NlwInverterSignal_D_IN0_D2_PT_4_IN1,
      I2 => NlwInverterSignal_D_IN0_D2_PT_4_IN2,
      I3 => NlwInverterSignal_D_IN0_D2_PT_4_IN3,
      I4 => R_Wn_IBUF,
      I5 => XLXN_2393,
      O => D_IN0_D2_PT_4
    );
  D_IN0_D2_135 : X_OR5
    port map (
      I0 => D_IN0_D2_PT_0,
      I1 => D_IN0_D2_PT_1,
      I2 => D_IN0_D2_PT_2,
      I3 => D_IN0_D2_PT_3,
      I4 => D_IN0_D2_PT_4,
      O => D_IN0_D2
    );
  D_IN0_TRST_136 : X_AND2
    port map (
      I0 => NlwInverterSignal_D_IN0_TRST_IN0,
      I1 => R_Wn_IBUF,
      O => D_IN0_TRST
    );
  MnS0_137 : X_BUF
    port map (
      I => MnS0_Q,
      O => MnS0
    );
  MnS0_tsimcreated_prld_Q_138 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => MnS0_tsimcreated_prld_Q
    );
  MnS0_REG : X_FF
    port map (
      I => MnS0_D,
      CE => Vcc,
      CLK => MnS0_REG_tsimcreated_inv_MnS0_CLKF,
      SET => Gnd,
      RST => MnS0_tsimcreated_prld_Q,
      O => MnS0_Q
    );
  MnS0_REG_tsimcreated_inv_MnS0_CLKF_139 : X_INV
    port map (
      I => MnS0_CLKF,
      O => MnS0_REG_tsimcreated_inv_MnS0_CLKF
    );
  MnS0_D_140 : X_XOR2
    port map (
      I0 => MnS0_D1,
      I1 => MnS0_D2,
      O => MnS0_D
    );
  MnS0_D1_141 : X_ZERO
    port map (
      O => MnS0_D1
    );
  MnS0_D2_142 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => MnS0_D2
    );
  MnS0_CLKF_143 : X_AND5
    port map (
      I0 => NlwInverterSignal_MnS0_CLKF_IN0,
      I1 => DSP_A1_IBUF,
      I2 => NlwInverterSignal_MnS0_CLKF_IN2,
      I3 => NlwInverterSignal_MnS0_CLKF_IN3,
      I4 => NlwInverterSignal_MnS0_CLKF_IN4,
      O => MnS0_CLKF
    );
  MnS1_144 : X_BUF
    port map (
      I => MnS1_Q,
      O => MnS1
    );
  MnS1_tsimcreated_prld_Q_145 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => MnS1_tsimcreated_prld_Q
    );
  MnS1_REG : X_FF
    port map (
      I => MnS1_D,
      CE => Vcc,
      CLK => MnS1_REG_tsimcreated_inv_MnS1_CLKF,
      SET => Gnd,
      RST => MnS1_tsimcreated_prld_Q,
      O => MnS1_Q
    );
  MnS1_REG_tsimcreated_inv_MnS1_CLKF_146 : X_INV
    port map (
      I => MnS1_CLKF,
      O => MnS1_REG_tsimcreated_inv_MnS1_CLKF
    );
  MnS1_D_147 : X_XOR2
    port map (
      I0 => MnS1_D1,
      I1 => MnS1_D2,
      O => MnS1_D
    );
  MnS1_D1_148 : X_ZERO
    port map (
      O => MnS1_D1
    );
  MnS1_D2_149 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => MnS1_D2
    );
  MnS1_CLKF_150 : X_AND5
    port map (
      I0 => DSP_A2_IBUF,
      I1 => NlwInverterSignal_MnS1_CLKF_IN1,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_MnS1_CLKF_IN3,
      I4 => NlwInverterSignal_MnS1_CLKF_IN4,
      O => MnS1_CLKF
    );
  CA0_151 : X_BUF
    port map (
      I => CA0_Q,
      O => CA0
    );
  CA0_tsimcreated_prld_Q_152 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => CA0_tsimcreated_prld_Q
    );
  CA0_REG : X_FF
    port map (
      I => CA0_D,
      CE => Vcc,
      CLK => CA0_REG_tsimcreated_inv_CA0_CLKF,
      SET => Gnd,
      RST => CA0_tsimcreated_prld_Q,
      O => CA0_Q
    );
  CA0_REG_tsimcreated_inv_CA0_CLKF_153 : X_INV
    port map (
      I => CA0_CLKF,
      O => CA0_REG_tsimcreated_inv_CA0_CLKF
    );
  CA0_D_154 : X_XOR2
    port map (
      I0 => CA0_D1,
      I1 => CA0_D2,
      O => CA0_D
    );
  CA0_D1_155 : X_ZERO
    port map (
      O => CA0_D1
    );
  CA0_D2_156 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => CA0_D2
    );
  CA0_CLKF_157 : X_AND5
    port map (
      I0 => NlwInverterSignal_CA0_CLKF_IN0,
      I1 => NlwInverterSignal_CA0_CLKF_IN1,
      I2 => NlwInverterSignal_CA0_CLKF_IN2,
      I3 => NlwInverterSignal_CA0_CLKF_IN3,
      I4 => NlwInverterSignal_CA0_CLKF_IN4,
      O => CA0_CLKF
    );
  CEN_158 : X_BUF
    port map (
      I => CEN_Q,
      O => CEN
    );
  CEN_tsimcreated_prld_Q_159 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => CEN_tsimcreated_prld_Q
    );
  CEN_REG : X_FF
    port map (
      I => CEN_D,
      CE => Vcc,
      CLK => CEN_REG_tsimcreated_inv_CEN_CLKF,
      SET => Gnd,
      RST => CEN_tsimcreated_prld_Q,
      O => CEN_Q
    );
  CEN_REG_tsimcreated_inv_CEN_CLKF_160 : X_INV
    port map (
      I => CEN_CLKF,
      O => CEN_REG_tsimcreated_inv_CEN_CLKF
    );
  CEN_D_161 : X_XOR2
    port map (
      I0 => CEN_D1,
      I1 => CEN_D2,
      O => CEN_D
    );
  CEN_D1_162 : X_ZERO
    port map (
      O => CEN_D1
    );
  CEN_D2_163 : X_AND2
    port map (
      I0 => D_OUT(1),
      I1 => D_OUT(1),
      O => CEN_D2
    );
  CEN_CLKF_164 : X_AND5
    port map (
      I0 => NlwInverterSignal_CEN_CLKF_IN0,
      I1 => NlwInverterSignal_CEN_CLKF_IN1,
      I2 => NlwInverterSignal_CEN_CLKF_IN2,
      I3 => NlwInverterSignal_CEN_CLKF_IN3,
      I4 => NlwInverterSignal_CEN_CLKF_IN4,
      O => CEN_CLKF
    );
  XLXN_1973_165 : X_BUF
    port map (
      I => XLXN_1973_Q,
      O => XLXN_1973
    );
  XLXN_1973_tsimcreated_prld_Q_166 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_1973_tsimcreated_prld_Q
    );
  XLXN_1973_REG : X_FF
    port map (
      I => XLXN_1973_D,
      CE => Vcc,
      CLK => XLXN_1973_REG_tsimcreated_inv_XLXN_1973_CLKF,
      SET => Gnd,
      RST => XLXN_1973_tsimcreated_prld_Q,
      O => XLXN_1973_Q
    );
  XLXN_1973_REG_tsimcreated_inv_XLXN_1973_CLKF_167 : X_INV
    port map (
      I => XLXN_1973_CLKF,
      O => XLXN_1973_REG_tsimcreated_inv_XLXN_1973_CLKF
    );
  XLXN_1973_D_168 : X_XOR2
    port map (
      I0 => XLXN_1973_D1,
      I1 => XLXN_1973_D2,
      O => XLXN_1973_D
    );
  XLXN_1973_D1_169 : X_ZERO
    port map (
      O => XLXN_1973_D1
    );
  XLXN_1973_D2_170 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => XLXN_1973_D2
    );
  XLXN_1973_CLKF_171 : X_AND5
    port map (
      I0 => NlwInverterSignal_XLXN_1973_CLKF_IN0,
      I1 => DSP_A1_IBUF,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_XLXN_1973_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_1973_CLKF_IN4,
      O => XLXN_1973_CLKF
    );
  XLXN_1974_172 : X_BUF
    port map (
      I => XLXN_1974_Q,
      O => XLXN_1974
    );
  XLXN_1974_tsimcreated_prld_Q_173 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_1974_tsimcreated_prld_Q
    );
  XLXN_1974_REG : X_FF
    port map (
      I => XLXN_1974_D,
      CE => Vcc,
      CLK => XLXN_1974_REG_tsimcreated_inv_XLXN_1974_CLKF,
      SET => Gnd,
      RST => XLXN_1974_tsimcreated_prld_Q,
      O => XLXN_1974_Q
    );
  XLXN_1974_REG_tsimcreated_inv_XLXN_1974_CLKF_174 : X_INV
    port map (
      I => XLXN_1974_CLKF,
      O => XLXN_1974_REG_tsimcreated_inv_XLXN_1974_CLKF
    );
  XLXN_1974_D_175 : X_XOR2
    port map (
      I0 => XLXN_1974_D1,
      I1 => XLXN_1974_D2,
      O => XLXN_1974_D
    );
  XLXN_1974_D1_176 : X_ZERO
    port map (
      O => XLXN_1974_D1
    );
  XLXN_1974_D2_177 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => XLXN_1974_D2
    );
  XLXN_1974_CLKF_178 : X_AND5
    port map (
      I0 => DSP_A2_IBUF,
      I1 => DSP_A1_IBUF,
      I2 => NlwInverterSignal_XLXN_1974_CLKF_IN2,
      I3 => NlwInverterSignal_XLXN_1974_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_1974_CLKF_IN4,
      O => XLXN_1974_CLKF
    );
  XLXN_2213_179 : X_BUF
    port map (
      I => XLXN_2213_Q,
      O => XLXN_2213
    );
  XLXN_2213_tsimcreated_prld_Q_180 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_2213_tsimcreated_prld_Q
    );
  XLXN_2213_REG : X_FF
    port map (
      I => XLXN_2213_D,
      CE => Vcc,
      CLK => XLXN_2213_REG_tsimcreated_inv_XLXN_2213_CLKF,
      SET => Gnd,
      RST => XLXN_2213_tsimcreated_prld_Q,
      O => XLXN_2213_Q
    );
  XLXN_2213_REG_tsimcreated_inv_XLXN_2213_CLKF_181 : X_INV
    port map (
      I => XLXN_2213_CLKF,
      O => XLXN_2213_REG_tsimcreated_inv_XLXN_2213_CLKF
    );
  XLXN_2213_D_182 : X_XOR2
    port map (
      I0 => XLXN_2213_D1,
      I1 => XLXN_2213_D2,
      O => XLXN_2213_D
    );
  XLXN_2213_D1_183 : X_ZERO
    port map (
      O => XLXN_2213_D1
    );
  XLXN_2213_D2_184 : X_AND2
    port map (
      I0 => D_OUT(1),
      I1 => D_OUT(1),
      O => XLXN_2213_D2
    );
  XLXN_2213_CLKF_185 : X_AND5
    port map (
      I0 => DSP_A2_IBUF,
      I1 => NlwInverterSignal_XLXN_2213_CLKF_IN1,
      I2 => NlwInverterSignal_XLXN_2213_CLKF_IN2,
      I3 => NlwInverterSignal_XLXN_2213_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_2213_CLKF_IN4,
      O => XLXN_2213_CLKF
    );
  XLXN_2215_186 : X_BUF
    port map (
      I => XLXN_2215_Q,
      O => XLXN_2215
    );
  XLXN_2215_tsimcreated_prld_Q_187 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_2215_tsimcreated_prld_Q
    );
  XLXN_2215_REG : X_FF
    port map (
      I => XLXN_2215_D,
      CE => Vcc,
      CLK => XLXN_2215_REG_tsimcreated_inv_XLXN_2215_CLKF,
      SET => Gnd,
      RST => XLXN_2215_tsimcreated_prld_Q,
      O => XLXN_2215_Q
    );
  XLXN_2215_REG_tsimcreated_inv_XLXN_2215_CLKF_188 : X_INV
    port map (
      I => XLXN_2215_CLKF,
      O => XLXN_2215_REG_tsimcreated_inv_XLXN_2215_CLKF
    );
  XLXN_2215_D_189 : X_XOR2
    port map (
      I0 => XLXN_2215_D1,
      I1 => XLXN_2215_D2,
      O => XLXN_2215_D
    );
  XLXN_2215_D1_190 : X_ZERO
    port map (
      O => XLXN_2215_D1
    );
  XLXN_2215_D2_191 : X_AND2
    port map (
      I0 => D_OUT(1),
      I1 => D_OUT(1),
      O => XLXN_2215_D2
    );
  XLXN_2215_CLKF_192 : X_AND5
    port map (
      I0 => DSP_A2_IBUF,
      I1 => DSP_A1_IBUF,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_XLXN_2215_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_2215_CLKF_IN4,
      O => XLXN_2215_CLKF
    );
  XLXN_2362_193 : X_BUF
    port map (
      I => XLXN_2362_Q,
      O => XLXN_2362
    );
  XLXN_2362_tsimcreated_prld_Q_194 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_2362_tsimcreated_prld_Q
    );
  XLXN_2362_REG : X_FF
    port map (
      I => XLXN_2362_D,
      CE => Vcc,
      CLK => XLXN_2362_REG_tsimcreated_inv_XLXN_2362_CLKF,
      SET => Gnd,
      RST => XLXN_2362_tsimcreated_prld_Q,
      O => XLXN_2362_Q
    );
  XLXN_2362_REG_tsimcreated_inv_XLXN_2362_CLKF_195 : X_INV
    port map (
      I => XLXN_2362_CLKF,
      O => XLXN_2362_REG_tsimcreated_inv_XLXN_2362_CLKF
    );
  XLXN_2362_D_196 : X_XOR2
    port map (
      I0 => XLXN_2362_D1,
      I1 => XLXN_2362_D2,
      O => XLXN_2362_D
    );
  XLXN_2362_D1_197 : X_ZERO
    port map (
      O => XLXN_2362_D1
    );
  XLXN_2362_D2_198 : X_AND2
    port map (
      I0 => D_OUT(0),
      I1 => D_OUT(0),
      O => XLXN_2362_D2
    );
  XLXN_2362_CLKF_199 : X_AND5
    port map (
      I0 => NlwInverterSignal_XLXN_2362_CLKF_IN0,
      I1 => NlwInverterSignal_XLXN_2362_CLKF_IN1,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_XLXN_2362_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_2362_CLKF_IN4,
      O => XLXN_2362_CLKF
    );
  XLXN_2363_200 : X_BUF
    port map (
      I => XLXN_2363_Q,
      O => XLXN_2363
    );
  XLXN_2363_tsimcreated_prld_Q_201 : X_OR2
    port map (
      I0 => FSR_IO_1,
      I1 => PRLD,
      O => XLXN_2363_tsimcreated_prld_Q
    );
  XLXN_2363_REG : X_FF
    port map (
      I => XLXN_2363_D,
      CE => Vcc,
      CLK => XLXN_2363_REG_tsimcreated_inv_XLXN_2363_CLKF,
      SET => Gnd,
      RST => XLXN_2363_tsimcreated_prld_Q,
      O => XLXN_2363_Q
    );
  XLXN_2363_REG_tsimcreated_inv_XLXN_2363_CLKF_202 : X_INV
    port map (
      I => XLXN_2363_CLKF,
      O => XLXN_2363_REG_tsimcreated_inv_XLXN_2363_CLKF
    );
  XLXN_2363_D_203 : X_XOR2
    port map (
      I0 => XLXN_2363_D1,
      I1 => XLXN_2363_D2,
      O => XLXN_2363_D
    );
  XLXN_2363_D1_204 : X_ZERO
    port map (
      O => XLXN_2363_D1
    );
  XLXN_2363_D2_205 : X_AND2
    port map (
      I0 => D_OUT(1),
      I1 => D_OUT(1),
      O => XLXN_2363_D2
    );
  XLXN_2363_CLKF_206 : X_AND5
    port map (
      I0 => NlwInverterSignal_XLXN_2363_CLKF_IN0,
      I1 => NlwInverterSignal_XLXN_2363_CLKF_IN1,
      I2 => DSP_A0_IBUF,
      I3 => NlwInverterSignal_XLXN_2363_CLKF_IN3,
      I4 => NlwInverterSignal_XLXN_2363_CLKF_IN4,
      O => XLXN_2363_CLKF
    );
  XLXN_142_BUF0_207 : X_BUF
    port map (
      I => XLXN_142_BUF0_Q,
      O => XLXN_142_BUF0
    );
  XLXN_142_BUF0_OE_208 : X_BUF
    port map (
      I => XLXN_142_BUF0_BUFOE_OUT,
      O => XLXN_142_BUF0_OE
    );
  XLXN_142_BUF0_BUFOE_OUT_209 : X_BUF
    port map (
      I => XLXN_142_BUF0_TRST,
      O => XLXN_142_BUF0_BUFOE_OUT
    );
  XLXN_142_BUF0_Q_210 : X_BUF
    port map (
      I => XLXN_142_BUF0_D,
      O => XLXN_142_BUF0_Q
    );
  XLXN_142_BUF0_D_211 : X_XOR2
    port map (
      I0 => XLXN_142_BUF0_D1,
      I1 => XLXN_142_BUF0_D2,
      O => XLXN_142_BUF0_D
    );
  XLXN_142_BUF0_D1_212 : X_ZERO
    port map (
      O => XLXN_142_BUF0_D1
    );
  XLXN_142_BUF0_D2_213 : X_AND2
    port map (
      I0 => U43_Q11,
      I1 => U43_Q11,
      O => XLXN_142_BUF0_D2
    );
  XLXN_142_BUF0_TRST_214 : X_AND2
    port map (
      I0 => MnS0,
      I1 => MnS0,
      O => XLXN_142_BUF0_TRST
    );
  XLXN_143_BUF1_215 : X_BUF
    port map (
      I => XLXN_143_BUF1_Q,
      O => XLXN_143_BUF1
    );
  XLXN_143_BUF1_OE_216 : X_BUF
    port map (
      I => XLXN_143_BUF1_BUFOE_OUT,
      O => XLXN_143_BUF1_OE
    );
  XLXN_143_BUF1_BUFOE_OUT_217 : X_BUF
    port map (
      I => XLXN_143_BUF1_TRST,
      O => XLXN_143_BUF1_BUFOE_OUT
    );
  XLXN_143_BUF1_Q_218 : X_BUF
    port map (
      I => XLXN_143_BUF1_D,
      O => XLXN_143_BUF1_Q
    );
  XLXN_143_BUF1_D_219 : X_XOR2
    port map (
      I0 => XLXN_143_BUF1_D1,
      I1 => XLXN_143_BUF1_D2,
      O => XLXN_143_BUF1_D
    );
  XLXN_143_BUF1_D1_220 : X_ZERO
    port map (
      O => XLXN_143_BUF1_D1
    );
  XLXN_143_BUF1_D2_221 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => U43_Q9,
      O => XLXN_143_BUF1_D2
    );
  XLXN_143_BUF1_TRST_222 : X_AND2
    port map (
      I0 => MnS0,
      I1 => MnS0,
      O => XLXN_143_BUF1_TRST
    );
  XLXN_2025_BUF1_223 : X_BUF
    port map (
      I => XLXN_2025_BUF1_Q,
      O => XLXN_2025_BUF1
    );
  XLXN_2025_BUF1_OE_224 : X_BUF
    port map (
      I => XLXN_2025_BUF1_BUFOE_OUT,
      O => XLXN_2025_BUF1_OE
    );
  XLXN_2025_BUF1_BUFOE_OUT_225 : X_BUF
    port map (
      I => XLXN_2025_BUF1_TRST,
      O => XLXN_2025_BUF1_BUFOE_OUT
    );
  XLXN_2025_BUF1_Q_226 : X_BUF
    port map (
      I => XLXN_2025_BUF1_D,
      O => XLXN_2025_BUF1_Q
    );
  XLXN_2025_BUF1_D_227 : X_XOR2
    port map (
      I0 => XLXN_2025_BUF1_D1,
      I1 => XLXN_2025_BUF1_D2,
      O => XLXN_2025_BUF1_D
    );
  XLXN_2025_BUF1_D1_228 : X_ZERO
    port map (
      O => XLXN_2025_BUF1_D1
    );
  XLXN_2025_BUF1_D2_229 : X_AND2
    port map (
      I0 => U43_Q2,
      I1 => U43_Q2,
      O => XLXN_2025_BUF1_D2
    );
  XLXN_2025_BUF1_TRST_230 : X_AND2
    port map (
      I0 => MnS0,
      I1 => MnS0,
      O => XLXN_2025_BUF1_TRST
    );
  XLXN_9_BUF0_231 : X_BUF
    port map (
      I => XLXN_9_BUF0_Q,
      O => XLXN_9_BUF0
    );
  XLXN_9_BUF0_OE_232 : X_BUF
    port map (
      I => XLXN_9_BUF0_BUFOE_OUT,
      O => XLXN_9_BUF0_OE
    );
  XLXN_9_BUF0_BUFOE_OUT_233 : X_BUF
    port map (
      I => XLXN_9_BUF0_TRST,
      O => XLXN_9_BUF0_BUFOE_OUT
    );
  XLXN_9_BUF0_Q_234 : X_BUF
    port map (
      I => XLXN_9_BUF0_D,
      O => XLXN_9_BUF0_Q
    );
  XLXN_9_BUF0_D_235 : X_XOR2
    port map (
      I0 => XLXN_9_BUF0_D1,
      I1 => XLXN_9_BUF0_D2,
      O => XLXN_9_BUF0_D
    );
  XLXN_9_BUF0_D1_236 : X_ZERO
    port map (
      O => XLXN_9_BUF0_D1
    );
  XLXN_9_BUF0_D2_237 : X_AND2
    port map (
      I0 => XLXN_9,
      I1 => XLXN_9,
      O => XLXN_9_BUF0_D2
    );
  XLXN_9_BUF0_TRST_238 : X_AND2
    port map (
      I0 => MnS1,
      I1 => MnS1,
      O => XLXN_9_BUF0_TRST
    );
  XLXN_9_BUF1_239 : X_BUF
    port map (
      I => XLXN_9_BUF1_Q,
      O => XLXN_9_BUF1
    );
  XLXN_9_BUF1_OE_240 : X_BUF
    port map (
      I => XLXN_9_BUF1_BUFOE_OUT,
      O => XLXN_9_BUF1_OE
    );
  XLXN_9_BUF1_BUFOE_OUT_241 : X_BUF
    port map (
      I => XLXN_9_BUF1_TRST,
      O => XLXN_9_BUF1_BUFOE_OUT
    );
  XLXN_9_BUF1_Q_242 : X_BUF
    port map (
      I => XLXN_9_BUF1_D,
      O => XLXN_9_BUF1_Q
    );
  XLXN_9_BUF1_D_243 : X_XOR2
    port map (
      I0 => XLXN_9_BUF1_D1,
      I1 => XLXN_9_BUF1_D2,
      O => XLXN_9_BUF1_D
    );
  XLXN_9_BUF1_D1_244 : X_ZERO
    port map (
      O => XLXN_9_BUF1_D1
    );
  XLXN_9_BUF1_D2_245 : X_AND2
    port map (
      I0 => XLXN_9,
      I1 => XLXN_9,
      O => XLXN_9_BUF1_D2
    );
  XLXN_9_BUF1_TRST_246 : X_AND2
    port map (
      I0 => MnS0,
      I1 => MnS0,
      O => XLXN_9_BUF1_TRST
    );
  XLXN_9_BUF2_247 : X_BUF
    port map (
      I => XLXN_9_BUF2_Q,
      O => XLXN_9_BUF2
    );
  XLXN_9_BUF2_OE_248 : X_BUF
    port map (
      I => XLXN_9_BUF2_BUFOE_OUT,
      O => XLXN_9_BUF2_OE
    );
  XLXN_9_BUF2_BUFOE_OUT_249 : X_BUF
    port map (
      I => XLXN_9_BUF2_TRST,
      O => XLXN_9_BUF2_BUFOE_OUT
    );
  XLXN_9_BUF2_Q_250 : X_BUF
    port map (
      I => XLXN_9_BUF2_D,
      O => XLXN_9_BUF2_Q
    );
  XLXN_9_BUF2_D_251 : X_XOR2
    port map (
      I0 => XLXN_9_BUF2_D1,
      I1 => XLXN_9_BUF2_D2,
      O => XLXN_9_BUF2_D
    );
  XLXN_9_BUF2_D1_252 : X_ZERO
    port map (
      O => XLXN_9_BUF2_D1
    );
  XLXN_9_BUF2_D2_253 : X_AND2
    port map (
      I0 => XLXN_9,
      I1 => XLXN_9,
      O => XLXN_9_BUF2_D2
    );
  XLXN_9_BUF2_TRST_254 : X_AND2
    port map (
      I0 => MnS0,
      I1 => MnS0,
      O => XLXN_9_BUF2_TRST
    );
  U43_Q4_255 : X_BUF
    port map (
      I => U43_Q4_Q,
      O => U43_Q4
    );
  U43_Q4_tsimcreated_xor_Q_256 : X_XOR2
    port map (
      I0 => U43_Q4_D,
      I1 => U43_Q4_Q,
      O => U43_Q4_tsimcreated_xor_Q
    );
  U43_Q4_REG : X_FF
    port map (
      I => U43_Q4_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q4_Q
    );
  U43_Q4_D_257 : X_XOR2
    port map (
      I0 => U43_Q4_D1,
      I1 => U43_Q4_D2,
      O => U43_Q4_D
    );
  U43_Q4_D1_258 : X_ZERO
    port map (
      O => U43_Q4_D1
    );
  U43_Q4_D2_259 : X_AND4
    port map (
      I0 => NlwInverterSignal_U43_Q4_D2_IN0,
      I1 => U43_Q3,
      I2 => U43_Q0,
      I3 => U43_Q1,
      O => U43_Q4_D2
    );
  U43_Q0_260 : X_BUF
    port map (
      I => U43_Q0_Q,
      O => U43_Q0
    );
  U43_Q0_tsimcreated_xor_Q_261 : X_XOR2
    port map (
      I0 => U43_Q0_D,
      I1 => U43_Q0_Q,
      O => U43_Q0_tsimcreated_xor_Q
    );
  U43_Q0_REG : X_FF
    port map (
      I => U43_Q0_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q0_Q
    );
  U43_Q0_D_262 : X_XOR2
    port map (
      I0 => U43_Q0_D1,
      I1 => U43_Q0_D2,
      O => U43_Q0_D
    );
  U43_Q0_D1_263 : X_ZERO
    port map (
      O => U43_Q0_D1
    );
  U43_Q0_D2_264 : X_ONE
    port map (
      O => U43_Q0_D2
    );
  U43_Q5_265 : X_BUF
    port map (
      I => U43_Q5_Q,
      O => U43_Q5
    );
  U43_Q5_tsimcreated_xor_Q_266 : X_XOR2
    port map (
      I0 => U43_Q5_D,
      I1 => U43_Q5_Q,
      O => U43_Q5_tsimcreated_xor_Q
    );
  U43_Q5_REG : X_FF
    port map (
      I => U43_Q5_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q5_Q
    );
  U43_Q5_D_267 : X_XOR2
    port map (
      I0 => U43_Q5_D1,
      I1 => U43_Q5_D2,
      O => U43_Q5_D
    );
  U43_Q5_D1_268 : X_ZERO
    port map (
      O => U43_Q5_D1
    );
  U43_Q5_D2_269 : X_AND5
    port map (
      I0 => NlwInverterSignal_U43_Q5_D2_IN0,
      I1 => U43_Q4,
      I2 => U43_Q3,
      I3 => U43_Q0,
      I4 => U43_Q1,
      O => U43_Q5_D2
    );
  U43_Q8_270 : X_BUF
    port map (
      I => U43_Q8_Q,
      O => U43_Q8
    );
  U43_Q8_tsimcreated_xor_Q_271 : X_XOR2
    port map (
      I0 => U43_Q8_D,
      I1 => U43_Q8_Q,
      O => U43_Q8_tsimcreated_xor_Q
    );
  U43_Q8_REG : X_FF
    port map (
      I => U43_Q8_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q8_Q
    );
  U43_Q8_D_272 : X_XOR2
    port map (
      I0 => U43_Q8_D1,
      I1 => U43_Q8_D2,
      O => U43_Q8_D
    );
  U43_Q8_D1_273 : X_ZERO
    port map (
      O => U43_Q8_D1
    );
  U43_Q8_D2_274 : X_AND8
    port map (
      I0 => NlwInverterSignal_U43_Q8_D2_IN0,
      I1 => U43_Q4,
      I2 => U43_Q5,
      I3 => U43_Q6,
      I4 => U43_Q7,
      I5 => U43_Q3,
      I6 => U43_Q0,
      I7 => U43_Q1,
      O => U43_Q8_D2
    );
  U43_Q1_275 : X_BUF
    port map (
      I => U43_Q1_Q,
      O => U43_Q1
    );
  U43_Q1_tsimcreated_xor_Q_276 : X_XOR2
    port map (
      I0 => U43_Q1_D,
      I1 => U43_Q1_Q,
      O => U43_Q1_tsimcreated_xor_Q
    );
  U43_Q1_REG : X_FF
    port map (
      I => U43_Q1_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q1_Q
    );
  U43_Q1_D_277 : X_XOR2
    port map (
      I0 => U43_Q1_D1,
      I1 => U43_Q1_D2,
      O => U43_Q1_D
    );
  U43_Q1_D1_278 : X_ZERO
    port map (
      O => U43_Q1_D1
    );
  U43_Q1_D2_279 : X_AND2
    port map (
      I0 => U43_Q0,
      I1 => U43_Q0,
      O => U43_Q1_D2
    );
  U43_Q6_280 : X_BUF
    port map (
      I => U43_Q6_Q,
      O => U43_Q6
    );
  U43_Q6_tsimcreated_xor_Q_281 : X_XOR2
    port map (
      I0 => U43_Q6_D,
      I1 => U43_Q6_Q,
      O => U43_Q6_tsimcreated_xor_Q
    );
  U43_Q6_REG : X_FF
    port map (
      I => U43_Q6_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q6_Q
    );
  U43_Q6_D_282 : X_XOR2
    port map (
      I0 => U43_Q6_D1,
      I1 => U43_Q6_D2,
      O => U43_Q6_D
    );
  U43_Q6_D1_283 : X_ZERO
    port map (
      O => U43_Q6_D1
    );
  U43_Q6_D2_284 : X_AND6
    port map (
      I0 => NlwInverterSignal_U43_Q6_D2_IN0,
      I1 => U43_Q4,
      I2 => U43_Q5,
      I3 => U43_Q3,
      I4 => U43_Q0,
      I5 => U43_Q1,
      O => U43_Q6_D2
    );
  U43_Q10_285 : X_BUF
    port map (
      I => U43_Q10_Q,
      O => U43_Q10
    );
  U43_Q10_tsimcreated_xor_Q_286 : X_XOR2
    port map (
      I0 => U43_Q10_D,
      I1 => U43_Q10_Q,
      O => U43_Q10_tsimcreated_xor_Q
    );
  U43_Q10_REG : X_FF
    port map (
      I => U43_Q10_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q10_Q
    );
  U43_Q10_D_287 : X_XOR2
    port map (
      I0 => U43_Q10_D1,
      I1 => U43_Q10_D2,
      O => U43_Q10_D
    );
  U43_Q10_D1_288 : X_ZERO
    port map (
      O => U43_Q10_D1
    );
  U43_Q10_D2_289 : X_AND16
    port map (
      I0 => NlwInverterSignal_U43_Q10_D2_IN0,
      I1 => NlwInverterSignal_U43_Q10_D2_IN1,
      I2 => U43_Q4,
      I3 => U43_Q5,
      I4 => U43_Q8,
      I5 => U43_Q6,
      I6 => U43_Q7,
      I7 => U43_Q3,
      I8 => U43_Q0,
      I9 => U43_Q1,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => U43_Q10_D2
    );
  U43_Q7_290 : X_BUF
    port map (
      I => U43_Q7_Q,
      O => U43_Q7
    );
  U43_Q7_tsimcreated_xor_Q_291 : X_XOR2
    port map (
      I0 => U43_Q7_D,
      I1 => U43_Q7_Q,
      O => U43_Q7_tsimcreated_xor_Q
    );
  U43_Q7_REG : X_FF
    port map (
      I => U43_Q7_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q7_Q
    );
  U43_Q7_D_292 : X_XOR2
    port map (
      I0 => U43_Q7_D1,
      I1 => U43_Q7_D2,
      O => U43_Q7_D
    );
  U43_Q7_D1_293 : X_ZERO
    port map (
      O => U43_Q7_D1
    );
  U43_Q7_D2_294 : X_AND7
    port map (
      I0 => NlwInverterSignal_U43_Q7_D2_IN0,
      I1 => U43_Q4,
      I2 => U43_Q5,
      I3 => U43_Q6,
      I4 => U43_Q3,
      I5 => U43_Q0,
      I6 => U43_Q1,
      O => U43_Q7_D2
    );
  U43_Q3_295 : X_BUF
    port map (
      I => U43_Q3_Q,
      O => U43_Q3
    );
  U43_Q3_tsimcreated_xor_Q_296 : X_XOR2
    port map (
      I0 => U43_Q3_D,
      I1 => U43_Q3_Q,
      O => U43_Q3_tsimcreated_xor_Q
    );
  U43_Q3_REG : X_FF
    port map (
      I => U43_Q3_tsimcreated_xor_Q,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => U43_Q3_Q
    );
  U43_Q3_D_297 : X_XOR2
    port map (
      I0 => U43_Q3_D1,
      I1 => U43_Q3_D2,
      O => U43_Q3_D
    );
  U43_Q3_D1_298 : X_ZERO
    port map (
      O => U43_Q3_D1
    );
  U43_Q3_D2_299 : X_AND3
    port map (
      I0 => NlwInverterSignal_U43_Q3_D2_IN0,
      I1 => U43_Q0,
      I2 => U43_Q1,
      O => U43_Q3_D2
    );
  U40_XLXN_36_300 : X_BUF
    port map (
      I => U40_XLXN_36_Q,
      O => U40_XLXN_36
    );
  U40_XLXN_36_Q_301 : X_BUF
    port map (
      I => U40_XLXN_36_D,
      O => U40_XLXN_36_Q
    );
  U40_XLXN_36_D_302 : X_XOR2
    port map (
      I0 => U40_XLXN_36_D1,
      I1 => U40_XLXN_36_D2,
      O => U40_XLXN_36_D
    );
  U40_XLXN_36_D1_303 : X_ZERO
    port map (
      O => U40_XLXN_36_D1
    );
  U40_XLXN_36_D2_PT_0_304 : X_AND2
    port map (
      I0 => XLXN_9,
      I1 => MnS0,
      O => U40_XLXN_36_D2_PT_0
    );
  U40_XLXN_36_D2_PT_1_305 : X_AND2
    port map (
      I0 => NlwInverterSignal_U40_XLXN_36_D2_PT_1_IN0,
      I1 => U40_XLXN_78,
      O => U40_XLXN_36_D2_PT_1
    );
  U40_XLXN_36_D2_306 : X_OR2
    port map (
      I0 => U40_XLXN_36_D2_PT_0,
      I1 => U40_XLXN_36_D2_PT_1,
      O => U40_XLXN_36_D2
    );
  U40_XLXN_39_307 : X_BUF
    port map (
      I => U40_XLXN_39_Q,
      O => U40_XLXN_39
    );
  U40_XLXN_39_Q_308 : X_BUF
    port map (
      I => U40_XLXN_39_D,
      O => U40_XLXN_39_Q
    );
  U40_XLXN_39_D_309 : X_XOR2
    port map (
      I0 => U40_XLXN_39_D1,
      I1 => U40_XLXN_39_D2,
      O => U40_XLXN_39_D
    );
  U40_XLXN_39_D1_310 : X_ZERO
    port map (
      O => U40_XLXN_39_D1
    );
  U40_XLXN_39_D2_PT_0_311 : X_AND2
    port map (
      I0 => U43_Q2,
      I1 => MnS0,
      O => U40_XLXN_39_D2_PT_0
    );
  U40_XLXN_39_D2_PT_1_312 : X_AND2
    port map (
      I0 => NlwInverterSignal_U40_XLXN_39_D2_PT_1_IN0,
      I1 => U40_XLXN_82,
      O => U40_XLXN_39_D2_PT_1
    );
  U40_XLXN_39_D2_313 : X_OR2
    port map (
      I0 => U40_XLXN_39_D2_PT_0,
      I1 => U40_XLXN_39_D2_PT_1,
      O => U40_XLXN_39_D2
    );
  U41_XLXN_36_314 : X_BUF
    port map (
      I => U41_XLXN_36_Q,
      O => U41_XLXN_36
    );
  U41_XLXN_36_Q_315 : X_BUF
    port map (
      I => U41_XLXN_36_D,
      O => U41_XLXN_36_Q
    );
  U41_XLXN_36_D_316 : X_XOR2
    port map (
      I0 => U41_XLXN_36_D1,
      I1 => U41_XLXN_36_D2,
      O => U41_XLXN_36_D
    );
  U41_XLXN_36_D1_317 : X_ZERO
    port map (
      O => U41_XLXN_36_D1
    );
  U41_XLXN_36_D2_PT_0_318 : X_AND2
    port map (
      I0 => MnS1,
      I1 => XLXN_9,
      O => U41_XLXN_36_D2_PT_0
    );
  U41_XLXN_36_D2_PT_1_319 : X_AND2
    port map (
      I0 => NlwInverterSignal_U41_XLXN_36_D2_PT_1_IN0,
      I1 => U41_XLXN_78,
      O => U41_XLXN_36_D2_PT_1
    );
  U41_XLXN_36_D2_320 : X_OR2
    port map (
      I0 => U41_XLXN_36_D2_PT_0,
      I1 => U41_XLXN_36_D2_PT_1,
      O => U41_XLXN_36_D2
    );
  U41_XLXN_39_321 : X_BUF
    port map (
      I => U41_XLXN_39_Q,
      O => U41_XLXN_39
    );
  U41_XLXN_39_Q_322 : X_BUF
    port map (
      I => U41_XLXN_39_D,
      O => U41_XLXN_39_Q
    );
  U41_XLXN_39_D_323 : X_XOR2
    port map (
      I0 => U41_XLXN_39_D1,
      I1 => U41_XLXN_39_D2,
      O => U41_XLXN_39_D
    );
  U41_XLXN_39_D1_324 : X_ZERO
    port map (
      O => U41_XLXN_39_D1
    );
  U41_XLXN_39_D2_PT_0_325 : X_AND2
    port map (
      I0 => U43_Q2,
      I1 => MnS1,
      O => U41_XLXN_39_D2_PT_0
    );
  U41_XLXN_39_D2_PT_1_326 : X_AND2
    port map (
      I0 => NlwInverterSignal_U41_XLXN_39_D2_PT_1_IN0,
      I1 => U41_XLXN_82,
      O => U41_XLXN_39_D2_PT_1
    );
  U41_XLXN_39_D2_327 : X_OR2
    port map (
      I0 => U41_XLXN_39_D2_PT_0,
      I1 => U41_XLXN_39_D2_PT_1,
      O => U41_XLXN_39_D2
    );
  XLXN_285_328 : X_BUF
    port map (
      I => XLXN_285_Q,
      O => XLXN_285
    );
  XLXN_285_Q_329 : X_BUF
    port map (
      I => XLXN_285_D,
      O => XLXN_285_Q
    );
  XLXN_285_D_330 : X_XOR2
    port map (
      I0 => NlwInverterSignal_XLXN_285_D_IN0,
      I1 => XLXN_285_D2,
      O => XLXN_285_D
    );
  XLXN_285_D1_331 : X_ZERO
    port map (
      O => XLXN_285_D1
    );
  XLXN_285_D2_332 : X_AND2
    port map (
      I0 => NlwInverterSignal_XLXN_285_D2_IN0,
      I1 => CEN,
      O => XLXN_285_D2
    );
  XLXN_286_333 : X_BUF
    port map (
      I => XLXN_286_Q,
      O => XLXN_286
    );
  XLXN_286_Q_334 : X_BUF
    port map (
      I => XLXN_286_D,
      O => XLXN_286_Q
    );
  XLXN_286_D_335 : X_XOR2
    port map (
      I0 => NlwInverterSignal_XLXN_286_D_IN0,
      I1 => XLXN_286_D2,
      O => XLXN_286_D
    );
  XLXN_286_D1_336 : X_ZERO
    port map (
      O => XLXN_286_D1
    );
  XLXN_286_D2_337 : X_AND2
    port map (
      I0 => CA0,
      I1 => CEN,
      O => XLXN_286_D2
    );
  XLXN_2020_338 : X_BUF
    port map (
      I => XLXN_2020_Q,
      O => XLXN_2020
    );
  XLXN_2020_OE_339 : X_BUF
    port map (
      I => XLXN_2020_BUFOE_OUT,
      O => XLXN_2020_OE
    );
  XLXN_2020_BUFOE_OUT_340 : X_BUF
    port map (
      I => XLXN_2020_TRST,
      O => XLXN_2020_BUFOE_OUT
    );
  XLXN_2020_Q_341 : X_BUF
    port map (
      I => XLXN_2020_D,
      O => XLXN_2020_Q
    );
  XLXN_2020_D_342 : X_XOR2
    port map (
      I0 => XLXN_2020_D1,
      I1 => XLXN_2020_D2,
      O => XLXN_2020_D
    );
  XLXN_2020_D1_343 : X_ZERO
    port map (
      O => XLXN_2020_D1
    );
  XLXN_2020_D2_344 : X_ZERO
    port map (
      O => XLXN_2020_D2
    );
  XLXN_2020_TRST_345 : X_AND2
    port map (
      I0 => NlwInverterSignal_XLXN_2020_TRST_IN0,
      I1 => R_Wn_IBUF,
      O => XLXN_2020_TRST
    );
  U40_XLXN_37_346 : X_BUF
    port map (
      I => U40_XLXN_37_Q,
      O => U40_XLXN_37
    );
  U40_XLXN_37_Q_347 : X_BUF
    port map (
      I => U40_XLXN_37_D,
      O => U40_XLXN_37_Q
    );
  U40_XLXN_37_D_348 : X_XOR2
    port map (
      I0 => U40_XLXN_37_D1,
      I1 => U40_XLXN_37_D2,
      O => U40_XLXN_37_D
    );
  U40_XLXN_37_D1_349 : X_ZERO
    port map (
      O => U40_XLXN_37_D1
    );
  U40_XLXN_37_D2_350 : X_AND2
    port map (
      I0 => NlwInverterSignal_U40_XLXN_37_D2_IN0,
      I1 => NlwInverterSignal_U40_XLXN_37_D2_IN1,
      O => U40_XLXN_37_D2
    );
  U41_XLXN_37_351 : X_BUF
    port map (
      I => U41_XLXN_37_Q,
      O => U41_XLXN_37
    );
  U41_XLXN_37_Q_352 : X_BUF
    port map (
      I => U41_XLXN_37_D,
      O => U41_XLXN_37_Q
    );
  U41_XLXN_37_D_353 : X_XOR2
    port map (
      I0 => U41_XLXN_37_D1,
      I1 => U41_XLXN_37_D2,
      O => U41_XLXN_37_D
    );
  U41_XLXN_37_D1_354 : X_ZERO
    port map (
      O => U41_XLXN_37_D1
    );
  U41_XLXN_37_D2_355 : X_AND2
    port map (
      I0 => NlwInverterSignal_U41_XLXN_37_D2_IN0,
      I1 => NlwInverterSignal_U41_XLXN_37_D2_IN1,
      O => U41_XLXN_37_D2
    );
  XLXN_143_Q_356 : X_BUF
    port map (
      I => XLXN_143_Q_2,
      O => XLXN_143_Q
    );
  XLXN_143_REG : X_FF
    port map (
      I => XLXN_143_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => PRLD,
      RST => Gnd,
      O => XLXN_143_Q_2
    );
  XLXN_143_D_357 : X_XOR2
    port map (
      I0 => XLXN_143_D1,
      I1 => XLXN_143_D2,
      O => XLXN_143_D
    );
  XLXN_143_D1_358 : X_ZERO
    port map (
      O => XLXN_143_D1
    );
  XLXN_143_D2_PT_0_359 : X_AND2
    port map (
      I0 => EXP6_EXP,
      I1 => EXP6_EXP,
      O => XLXN_143_D2_PT_0
    );
  XLXN_143_D2_PT_1_360 : X_AND2
    port map (
      I0 => EXP7_EXP,
      I1 => EXP7_EXP,
      O => XLXN_143_D2_PT_1
    );
  XLXN_143_D2_PT_2_361 : X_AND2
    port map (
      I0 => U43_Q2,
      I1 => U43_Q9,
      O => XLXN_143_D2_PT_2
    );
  XLXN_143_D2_PT_3_362 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_XLXN_143_D2_PT_3_IN1,
      O => XLXN_143_D2_PT_3
    );
  XLXN_143_D2_PT_4_363 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_XLXN_143_D2_PT_4_IN1,
      O => XLXN_143_D2_PT_4
    );
  XLXN_143_D2_PT_5_364 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_XLXN_143_D2_PT_5_IN1,
      O => XLXN_143_D2_PT_5
    );
  XLXN_143_D2_PT_6_365 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_XLXN_143_D2_PT_6_IN1,
      O => XLXN_143_D2_PT_6
    );
  XLXN_143_D2_366 : X_OR7
    port map (
      I0 => XLXN_143_D2_PT_0,
      I1 => XLXN_143_D2_PT_1,
      I2 => XLXN_143_D2_PT_2,
      I3 => XLXN_143_D2_PT_3,
      I4 => XLXN_143_D2_PT_4,
      I5 => XLXN_143_D2_PT_5,
      I6 => XLXN_143_D2_PT_6,
      O => XLXN_143_D2
    );
  XLXN_2025_Q_367 : X_BUF
    port map (
      I => XLXN_2025_Q_3,
      O => XLXN_2025_Q
    );
  XLXN_2025_REG : X_FF
    port map (
      I => XLXN_2025_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => PRLD,
      RST => Gnd,
      O => XLXN_2025_Q_3
    );
  XLXN_2025_D_368 : X_XOR2
    port map (
      I0 => XLXN_2025_D1,
      I1 => XLXN_2025_D2,
      O => XLXN_2025_D
    );
  XLXN_2025_D1_369 : X_AND2
    port map (
      I0 => U43_Q0,
      I1 => U43_Q1,
      O => XLXN_2025_D1
    );
  XLXN_2025_D2_370 : X_AND2
    port map (
      I0 => U43_Q2,
      I1 => U43_Q2,
      O => XLXN_2025_D2
    );
  XLXN_2025_BUF2_371 : X_BUF
    port map (
      I => XLXN_2025_BUF2_Q,
      O => XLXN_2025_BUF2
    );
  XLXN_2025_BUF2_REG : X_FF
    port map (
      I => XLXN_2025_BUF2_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => PRLD,
      RST => Gnd,
      O => XLXN_2025_BUF2_Q
    );
  XLXN_2025_BUF2_D_372 : X_XOR2
    port map (
      I0 => XLXN_2025_BUF2_D1,
      I1 => XLXN_2025_BUF2_D2,
      O => XLXN_2025_BUF2_D
    );
  XLXN_2025_BUF2_D1_373 : X_AND2
    port map (
      I0 => U43_Q0,
      I1 => U43_Q1,
      O => XLXN_2025_BUF2_D1
    );
  XLXN_2025_BUF2_D2_374 : X_AND2
    port map (
      I0 => U43_Q2,
      I1 => U43_Q2,
      O => XLXN_2025_BUF2_D2
    );
  XLXN_2393_BUF0_375 : X_BUF
    port map (
      I => XLXN_2393_BUF0_Q,
      O => XLXN_2393_BUF0
    );
  XLXN_2393_BUF0_Q_376 : X_BUF
    port map (
      I => XLXN_2393_BUF0_D,
      O => XLXN_2393_BUF0_Q
    );
  XLXN_2393_BUF0_D_377 : X_XOR2
    port map (
      I0 => XLXN_2393_BUF0_D1,
      I1 => XLXN_2393_BUF0_D2,
      O => XLXN_2393_BUF0_D
    );
  XLXN_2393_BUF0_D1_378 : X_ZERO
    port map (
      O => XLXN_2393_BUF0_D1
    );
  XLXN_2393_BUF0_D2_379 : X_AND2
    port map (
      I0 => XLXN_2393,
      I1 => XLXN_2393,
      O => XLXN_2393_BUF0_D2
    );
  XLXN_589_BUF0_380 : X_BUF
    port map (
      I => XLXN_589_BUF0_Q,
      O => XLXN_589_BUF0
    );
  XLXN_589_BUF0_Q_381 : X_BUF
    port map (
      I => XLXN_589_BUF0_D,
      O => XLXN_589_BUF0_Q
    );
  XLXN_589_BUF0_D_382 : X_XOR2
    port map (
      I0 => XLXN_589_BUF0_D1,
      I1 => XLXN_589_BUF0_D2,
      O => XLXN_589_BUF0_D
    );
  XLXN_589_BUF0_D1_383 : X_ZERO
    port map (
      O => XLXN_589_BUF0_D1
    );
  XLXN_589_BUF0_D2_384 : X_AND2
    port map (
      I0 => XLXN_589,
      I1 => XLXN_589,
      O => XLXN_589_BUF0_D2
    );
  XLXN_590_BUF0_385 : X_BUF
    port map (
      I => XLXN_590_BUF0_Q,
      O => XLXN_590_BUF0
    );
  XLXN_590_BUF0_Q_386 : X_BUF
    port map (
      I => XLXN_590_BUF0_D,
      O => XLXN_590_BUF0_Q
    );
  XLXN_590_BUF0_D_387 : X_XOR2
    port map (
      I0 => XLXN_590_BUF0_D1,
      I1 => XLXN_590_BUF0_D2,
      O => XLXN_590_BUF0_D
    );
  XLXN_590_BUF0_D1_388 : X_ZERO
    port map (
      O => XLXN_590_BUF0_D1
    );
  XLXN_590_BUF0_D2_389 : X_AND2
    port map (
      I0 => XLXN_590,
      I1 => XLXN_590,
      O => XLXN_590_BUF0_D2
    );
  XLXN_591_BUF0_390 : X_BUF
    port map (
      I => XLXN_591_BUF0_Q,
      O => XLXN_591_BUF0
    );
  XLXN_591_BUF0_Q_391 : X_BUF
    port map (
      I => XLXN_591_BUF0_D,
      O => XLXN_591_BUF0_Q
    );
  XLXN_591_BUF0_D_392 : X_XOR2
    port map (
      I0 => XLXN_591_BUF0_D1,
      I1 => XLXN_591_BUF0_D2,
      O => XLXN_591_BUF0_D
    );
  XLXN_591_BUF0_D1_393 : X_ZERO
    port map (
      O => XLXN_591_BUF0_D1
    );
  XLXN_591_BUF0_D2_394 : X_AND2
    port map (
      I0 => XLXN_591,
      I1 => XLXN_591,
      O => XLXN_591_BUF0_D2
    );
  XLXN_592_BUF0_395 : X_BUF
    port map (
      I => XLXN_592_BUF0_Q,
      O => XLXN_592_BUF0
    );
  XLXN_592_BUF0_Q_396 : X_BUF
    port map (
      I => XLXN_592_BUF0_D,
      O => XLXN_592_BUF0_Q
    );
  XLXN_592_BUF0_D_397 : X_XOR2
    port map (
      I0 => XLXN_592_BUF0_D1,
      I1 => XLXN_592_BUF0_D2,
      O => XLXN_592_BUF0_D
    );
  XLXN_592_BUF0_D1_398 : X_ZERO
    port map (
      O => XLXN_592_BUF0_D1
    );
  XLXN_592_BUF0_D2_399 : X_AND2
    port map (
      I0 => XLXN_592,
      I1 => XLXN_592,
      O => XLXN_592_BUF0_D2
    );
  XLXN_9_BUF3_400 : X_BUF
    port map (
      I => XLXN_9_BUF3_Q,
      O => XLXN_9_BUF3
    );
  XLXN_9_BUF3_REG : X_FF
    port map (
      I => XLXN_9_BUF3_D,
      CE => Vcc,
      CLK => FCLKIO_0,
      SET => Gnd,
      RST => PRLD,
      O => XLXN_9_BUF3_Q
    );
  XLXN_9_BUF3_D_401 : X_XOR2
    port map (
      I0 => XLXN_9_BUF3_D1,
      I1 => XLXN_9_BUF3_D2,
      O => XLXN_9_BUF3_D
    );
  XLXN_9_BUF3_D1_402 : X_ZERO
    port map (
      O => XLXN_9_BUF3_D1
    );
  XLXN_9_BUF3_D2_PT_0_403 : X_AND16
    port map (
      I0 => U43_Q2,
      I1 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN1,
      I2 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN2,
      I3 => U43_Q5,
      I4 => U43_Q8,
      I5 => U43_Q6,
      I6 => U43_Q10,
      I7 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN7,
      I8 => U43_Q3,
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_BUF3_D2_PT_0
    );
  XLXN_9_BUF3_D2_PT_1_404 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN0,
      I1 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN1,
      I2 => U43_Q5,
      I3 => U43_Q8,
      I4 => U43_Q6,
      I5 => U43_Q10,
      I6 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN6,
      I7 => U43_Q3,
      I8 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN8,
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_BUF3_D2_PT_1
    );
  XLXN_9_BUF3_D2_PT_2_405 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN0,
      I1 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN1,
      I2 => U43_Q5,
      I3 => U43_Q8,
      I4 => U43_Q6,
      I5 => U43_Q10,
      I6 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN6,
      I7 => U43_Q3,
      I8 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN8,
      I9 => Vcc,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_BUF3_D2_PT_2
    );
  XLXN_9_BUF3_D2_PT_3_406 : X_AND16
    port map (
      I0 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN0,
      I1 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN1,
      I2 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN2,
      I3 => U43_Q5,
      I4 => U43_Q8,
      I5 => U43_Q6,
      I6 => U43_Q10,
      I7 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN7,
      I8 => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN8,
      I9 => U43_Q0,
      I10 => U43_Q1,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => XLXN_9_BUF3_D2_PT_3
    );
  XLXN_9_BUF3_D2_407 : X_OR4
    port map (
      I0 => XLXN_9_BUF3_D2_PT_0,
      I1 => XLXN_9_BUF3_D2_PT_1,
      I2 => XLXN_9_BUF3_D2_PT_2,
      I3 => XLXN_9_BUF3_D2_PT_3,
      O => XLXN_9_BUF3_D2
    );
  EXP6_EXP_408 : X_BUF
    port map (
      I => EXP6_EXP_tsimrenamed_net_Q,
      O => EXP6_EXP
    );
  EXP6_EXP_PT_0_409 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_EXP6_EXP_PT_0_IN1,
      O => EXP6_EXP_PT_0
    );
  EXP6_EXP_PT_1_410 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_EXP6_EXP_PT_1_IN1,
      O => EXP6_EXP_PT_1
    );
  EXP6_EXP_PT_2_411 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_EXP6_EXP_PT_2_IN1,
      O => EXP6_EXP_PT_2
    );
  EXP6_EXP_tsimrenamed_net_Q_412 : X_OR3
    port map (
      I0 => EXP6_EXP_PT_0,
      I1 => EXP6_EXP_PT_1,
      I2 => EXP6_EXP_PT_2,
      O => EXP6_EXP_tsimrenamed_net_Q
    );
  EXP7_EXP_413 : X_BUF
    port map (
      I => EXP7_EXP_tsimrenamed_net_Q,
      O => EXP7_EXP
    );
  EXP7_EXP_PT_0_414 : X_AND2
    port map (
      I0 => U43_Q9,
      I1 => NlwInverterSignal_EXP7_EXP_PT_0_IN1,
      O => EXP7_EXP_PT_0
    );
  EXP7_EXP_PT_1_415 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP7_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP7_EXP_PT_1_IN1,
      I2 => U43_Q4,
      I3 => U43_Q5,
      I4 => U43_Q8,
      I5 => U43_Q6,
      I6 => U43_Q7,
      I7 => U43_Q3,
      I8 => U43_Q0,
      I9 => U43_Q1,
      I10 => Vcc,
      I11 => Vcc,
      I12 => Vcc,
      I13 => Vcc,
      I14 => Vcc,
      I15 => Vcc,
      O => EXP7_EXP_PT_1
    );
  EXP7_EXP_tsimrenamed_net_Q_416 : X_OR2
    port map (
      I0 => EXP7_EXP_PT_0,
      I1 => EXP7_EXP_PT_1,
      O => EXP7_EXP_tsimrenamed_net_Q
    );
  EXP8_EXP_417 : X_BUF
    port map (
      I => EXP8_EXP_tsimrenamed_net_Q,
      O => EXP8_EXP
    );
  EXP8_EXP_PT_0_418 : X_AND6
    port map (
      I0 => MnS1,
      I1 => DSP_A2_IBUF,
      I2 => NlwInverterSignal_EXP8_EXP_PT_0_IN2,
      I3 => DSP_A0_IBUF,
      I4 => NlwInverterSignal_EXP8_EXP_PT_0_IN4,
      I5 => R_Wn_IBUF,
      O => EXP8_EXP_PT_0
    );
  EXP8_EXP_PT_1_419 : X_AND6
    port map (
      I0 => DSP_A2_IBUF,
      I1 => DSP_A1_IBUF,
      I2 => NlwInverterSignal_EXP8_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_EXP8_EXP_PT_1_IN3,
      I4 => R_Wn_IBUF,
      I5 => XLXN_2390,
      O => EXP8_EXP_PT_1
    );
  EXP8_EXP_tsimrenamed_net_Q_420 : X_OR2
    port map (
      I0 => EXP8_EXP_PT_0,
      I1 => EXP8_EXP_PT_1,
      O => EXP8_EXP_tsimrenamed_net_Q
    );
  NlwInverterBlock_XLXN_9_D2_PT_0_IN1 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_D2_PT_0_IN1
    );
  NlwInverterBlock_XLXN_9_D2_PT_0_IN2 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_D2_PT_0_IN2
    );
  NlwInverterBlock_XLXN_9_D2_PT_0_IN7 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_D2_PT_0_IN7
    );
  NlwInverterBlock_XLXN_9_D2_PT_1_IN0 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_D2_PT_1_IN0
    );
  NlwInverterBlock_XLXN_9_D2_PT_1_IN1 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_D2_PT_1_IN1
    );
  NlwInverterBlock_XLXN_9_D2_PT_1_IN6 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_D2_PT_1_IN6
    );
  NlwInverterBlock_XLXN_9_D2_PT_1_IN8 : X_INV
    port map (
      I => U43_Q0,
      O => NlwInverterSignal_XLXN_9_D2_PT_1_IN8
    );
  NlwInverterBlock_XLXN_9_D2_PT_2_IN0 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_D2_PT_2_IN0
    );
  NlwInverterBlock_XLXN_9_D2_PT_2_IN1 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_D2_PT_2_IN1
    );
  NlwInverterBlock_XLXN_9_D2_PT_2_IN6 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_D2_PT_2_IN6
    );
  NlwInverterBlock_XLXN_9_D2_PT_2_IN8 : X_INV
    port map (
      I => U43_Q1,
      O => NlwInverterSignal_XLXN_9_D2_PT_2_IN8
    );
  NlwInverterBlock_XLXN_9_D2_PT_3_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_XLXN_9_D2_PT_3_IN0
    );
  NlwInverterBlock_XLXN_9_D2_PT_3_IN1 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_D2_PT_3_IN1
    );
  NlwInverterBlock_XLXN_9_D2_PT_3_IN2 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_D2_PT_3_IN2
    );
  NlwInverterBlock_XLXN_9_D2_PT_3_IN7 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_D2_PT_3_IN7
    );
  NlwInverterBlock_XLXN_9_D2_PT_3_IN8 : X_INV
    port map (
      I => U43_Q3,
      O => NlwInverterSignal_XLXN_9_D2_PT_3_IN8
    );
  NlwInverterBlock_XLXN_143_BUF0_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_XLXN_143_BUF0_D2_IN0
    );
  NlwInverterBlock_XLXN_142_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_XLXN_142_D2_IN0
    );
  NlwInverterBlock_XLXN_142_D2_IN1 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_142_D2_IN1
    );
  NlwInverterBlock_XLXN_2212_CLKF_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_XLXN_2212_CLKF_IN1
    );
  NlwInverterBlock_XLXN_2212_CLKF_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_XLXN_2212_CLKF_IN2
    );
  NlwInverterBlock_XLXN_2212_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_2212_CLKF_IN3
    );
  NlwInverterBlock_XLXN_2212_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_2212_CLKF_IN4
    );
  NlwInverterBlock_XLXN_2214_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_2214_CLKF_IN3
    );
  NlwInverterBlock_XLXN_2214_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_2214_CLKF_IN4
    );
  NlwInverterBlock_D_IN0_D2_PT_1_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_1_IN0
    );
  NlwInverterBlock_D_IN0_D2_PT_1_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_1_IN3
    );
  NlwInverterBlock_D_IN0_D2_PT_2_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_2_IN0
    );
  NlwInverterBlock_D_IN0_D2_PT_2_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_2_IN2
    );
  NlwInverterBlock_D_IN0_D2_PT_2_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_2_IN3
    );
  NlwInverterBlock_D_IN0_D2_PT_3_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_3_IN0
    );
  NlwInverterBlock_D_IN0_D2_PT_3_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_3_IN1
    );
  NlwInverterBlock_D_IN0_D2_PT_3_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_3_IN3
    );
  NlwInverterBlock_D_IN0_D2_PT_4_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_4_IN0
    );
  NlwInverterBlock_D_IN0_D2_PT_4_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_4_IN1
    );
  NlwInverterBlock_D_IN0_D2_PT_4_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_4_IN2
    );
  NlwInverterBlock_D_IN0_D2_PT_4_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_D_IN0_D2_PT_4_IN3
    );
  NlwInverterBlock_D_IN0_TRST_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_D_IN0_TRST_IN0
    );
  NlwInverterBlock_MnS0_CLKF_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_MnS0_CLKF_IN0
    );
  NlwInverterBlock_MnS0_CLKF_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_MnS0_CLKF_IN2
    );
  NlwInverterBlock_MnS0_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_MnS0_CLKF_IN3
    );
  NlwInverterBlock_MnS0_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_MnS0_CLKF_IN4
    );
  NlwInverterBlock_MnS1_CLKF_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_MnS1_CLKF_IN1
    );
  NlwInverterBlock_MnS1_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_MnS1_CLKF_IN3
    );
  NlwInverterBlock_MnS1_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_MnS1_CLKF_IN4
    );
  NlwInverterBlock_CA0_CLKF_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_CA0_CLKF_IN0
    );
  NlwInverterBlock_CA0_CLKF_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_CA0_CLKF_IN1
    );
  NlwInverterBlock_CA0_CLKF_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_CA0_CLKF_IN2
    );
  NlwInverterBlock_CA0_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_CA0_CLKF_IN3
    );
  NlwInverterBlock_CA0_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_CA0_CLKF_IN4
    );
  NlwInverterBlock_CEN_CLKF_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_CEN_CLKF_IN0
    );
  NlwInverterBlock_CEN_CLKF_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_CEN_CLKF_IN1
    );
  NlwInverterBlock_CEN_CLKF_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_CEN_CLKF_IN2
    );
  NlwInverterBlock_CEN_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_CEN_CLKF_IN3
    );
  NlwInverterBlock_CEN_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_CEN_CLKF_IN4
    );
  NlwInverterBlock_XLXN_1973_CLKF_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_XLXN_1973_CLKF_IN0
    );
  NlwInverterBlock_XLXN_1973_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_1973_CLKF_IN3
    );
  NlwInverterBlock_XLXN_1973_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_1973_CLKF_IN4
    );
  NlwInverterBlock_XLXN_1974_CLKF_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_XLXN_1974_CLKF_IN2
    );
  NlwInverterBlock_XLXN_1974_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_1974_CLKF_IN3
    );
  NlwInverterBlock_XLXN_1974_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_1974_CLKF_IN4
    );
  NlwInverterBlock_XLXN_2213_CLKF_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_XLXN_2213_CLKF_IN1
    );
  NlwInverterBlock_XLXN_2213_CLKF_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_XLXN_2213_CLKF_IN2
    );
  NlwInverterBlock_XLXN_2213_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_2213_CLKF_IN3
    );
  NlwInverterBlock_XLXN_2213_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_2213_CLKF_IN4
    );
  NlwInverterBlock_XLXN_2215_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_2215_CLKF_IN3
    );
  NlwInverterBlock_XLXN_2215_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_2215_CLKF_IN4
    );
  NlwInverterBlock_XLXN_2362_CLKF_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_XLXN_2362_CLKF_IN0
    );
  NlwInverterBlock_XLXN_2362_CLKF_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_XLXN_2362_CLKF_IN1
    );
  NlwInverterBlock_XLXN_2362_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_2362_CLKF_IN3
    );
  NlwInverterBlock_XLXN_2362_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_2362_CLKF_IN4
    );
  NlwInverterBlock_XLXN_2363_CLKF_IN0 : X_INV
    port map (
      I => DSP_A2_IBUF,
      O => NlwInverterSignal_XLXN_2363_CLKF_IN0
    );
  NlwInverterBlock_XLXN_2363_CLKF_IN1 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_XLXN_2363_CLKF_IN1
    );
  NlwInverterBlock_XLXN_2363_CLKF_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_2363_CLKF_IN3
    );
  NlwInverterBlock_XLXN_2363_CLKF_IN4 : X_INV
    port map (
      I => R_Wn_IBUF,
      O => NlwInverterSignal_XLXN_2363_CLKF_IN4
    );
  NlwInverterBlock_U43_Q4_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_U43_Q4_D2_IN0
    );
  NlwInverterBlock_U43_Q5_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_U43_Q5_D2_IN0
    );
  NlwInverterBlock_U43_Q8_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_U43_Q8_D2_IN0
    );
  NlwInverterBlock_U43_Q6_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_U43_Q6_D2_IN0
    );
  NlwInverterBlock_U43_Q10_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_U43_Q10_D2_IN0
    );
  NlwInverterBlock_U43_Q10_D2_IN1 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_U43_Q10_D2_IN1
    );
  NlwInverterBlock_U43_Q7_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_U43_Q7_D2_IN0
    );
  NlwInverterBlock_U43_Q3_D2_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_U43_Q3_D2_IN0
    );
  NlwInverterBlock_U40_XLXN_36_D2_PT_1_IN0 : X_INV
    port map (
      I => MnS0,
      O => NlwInverterSignal_U40_XLXN_36_D2_PT_1_IN0
    );
  NlwInverterBlock_U40_XLXN_39_D2_PT_1_IN0 : X_INV
    port map (
      I => MnS0,
      O => NlwInverterSignal_U40_XLXN_39_D2_PT_1_IN0
    );
  NlwInverterBlock_U41_XLXN_36_D2_PT_1_IN0 : X_INV
    port map (
      I => MnS1,
      O => NlwInverterSignal_U41_XLXN_36_D2_PT_1_IN0
    );
  NlwInverterBlock_U41_XLXN_39_D2_PT_1_IN0 : X_INV
    port map (
      I => MnS1,
      O => NlwInverterSignal_U41_XLXN_39_D2_PT_1_IN0
    );
  NlwInverterBlock_XLXN_285_D_IN0 : X_INV
    port map (
      I => XLXN_285_D1,
      O => NlwInverterSignal_XLXN_285_D_IN0
    );
  NlwInverterBlock_XLXN_285_D2_IN0 : X_INV
    port map (
      I => CA0,
      O => NlwInverterSignal_XLXN_285_D2_IN0
    );
  NlwInverterBlock_XLXN_286_D_IN0 : X_INV
    port map (
      I => XLXN_286_D1,
      O => NlwInverterSignal_XLXN_286_D_IN0
    );
  NlwInverterBlock_XLXN_2020_TRST_IN0 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_XLXN_2020_TRST_IN0
    );
  NlwInverterBlock_U40_XLXN_37_D2_IN0 : X_INV
    port map (
      I => U40_XLXN_38,
      O => NlwInverterSignal_U40_XLXN_37_D2_IN0
    );
  NlwInverterBlock_U40_XLXN_37_D2_IN1 : X_INV
    port map (
      I => U40_XLXN_38,
      O => NlwInverterSignal_U40_XLXN_37_D2_IN1
    );
  NlwInverterBlock_U41_XLXN_37_D2_IN0 : X_INV
    port map (
      I => U41_XLXN_38,
      O => NlwInverterSignal_U41_XLXN_37_D2_IN0
    );
  NlwInverterBlock_U41_XLXN_37_D2_IN1 : X_INV
    port map (
      I => U41_XLXN_38,
      O => NlwInverterSignal_U41_XLXN_37_D2_IN1
    );
  NlwInverterBlock_XLXN_143_D2_PT_3_IN1 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_143_D2_PT_3_IN1
    );
  NlwInverterBlock_XLXN_143_D2_PT_4_IN1 : X_INV
    port map (
      I => U43_Q3,
      O => NlwInverterSignal_XLXN_143_D2_PT_4_IN1
    );
  NlwInverterBlock_XLXN_143_D2_PT_5_IN1 : X_INV
    port map (
      I => U43_Q0,
      O => NlwInverterSignal_XLXN_143_D2_PT_5_IN1
    );
  NlwInverterBlock_XLXN_143_D2_PT_6_IN1 : X_INV
    port map (
      I => U43_Q1,
      O => NlwInverterSignal_XLXN_143_D2_PT_6_IN1
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_0_IN1 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN1
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_0_IN2 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN2
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_0_IN7 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_0_IN7
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_1_IN0 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN0
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_1_IN1 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN1
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_1_IN6 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN6
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_1_IN8 : X_INV
    port map (
      I => U43_Q0,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_1_IN8
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_2_IN0 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN0
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_2_IN1 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN1
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_2_IN6 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN6
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_2_IN8 : X_INV
    port map (
      I => U43_Q1,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_2_IN8
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_3_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN0
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_3_IN1 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN1
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_3_IN2 : X_INV
    port map (
      I => U43_Q4,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN2
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_3_IN7 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN7
    );
  NlwInverterBlock_XLXN_9_BUF3_D2_PT_3_IN8 : X_INV
    port map (
      I => U43_Q3,
      O => NlwInverterSignal_XLXN_9_BUF3_D2_PT_3_IN8
    );
  NlwInverterBlock_EXP6_EXP_PT_0_IN1 : X_INV
    port map (
      I => U43_Q5,
      O => NlwInverterSignal_EXP6_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP6_EXP_PT_1_IN1 : X_INV
    port map (
      I => U43_Q6,
      O => NlwInverterSignal_EXP6_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP6_EXP_PT_2_IN1 : X_INV
    port map (
      I => U43_Q7,
      O => NlwInverterSignal_EXP6_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP7_EXP_PT_0_IN1 : X_INV
    port map (
      I => U43_Q8,
      O => NlwInverterSignal_EXP7_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP7_EXP_PT_1_IN0 : X_INV
    port map (
      I => U43_Q2,
      O => NlwInverterSignal_EXP7_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP7_EXP_PT_1_IN1 : X_INV
    port map (
      I => U43_Q9,
      O => NlwInverterSignal_EXP7_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP8_EXP_PT_0_IN2 : X_INV
    port map (
      I => DSP_A1_IBUF,
      O => NlwInverterSignal_EXP8_EXP_PT_0_IN2
    );
  NlwInverterBlock_EXP8_EXP_PT_0_IN4 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_EXP8_EXP_PT_0_IN4
    );
  NlwInverterBlock_EXP8_EXP_PT_1_IN2 : X_INV
    port map (
      I => DSP_A0_IBUF,
      O => NlwInverterSignal_EXP8_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP8_EXP_PT_1_IN3 : X_INV
    port map (
      I => IOSTRn_IBUF,
      O => NlwInverterSignal_EXP8_EXP_PT_1_IN3
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

