-- Xilinx Vhdl netlist produced by netgen application (version G.26)
-- Command       : -rpw 100 -ar Structure -xon true -w -ofmt vhdl -sim ebi2hpi.nga ebi2hpi_timesim.vhd 
-- Input file    : ebi2hpi.nga
-- Output file   : ebi2hpi_timesim.vhd
-- Design name   : ebi2hpi.nga
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

entity ebi2hpi is
  port (
    WRn : in STD_LOGIC := 'X'; 
    RDn : in STD_LOGIC := 'X'; 
    CSn : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    INTn : out STD_LOGIC; 
    HBIL : out STD_LOGIC; 
    HCNTL0 : out STD_LOGIC; 
    HCNTL1 : out STD_LOGIC; 
    HDSn : out STD_LOGIC; 
    HR_Wn : out STD_LOGIC; 
    WAITn : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 5 downto 0 ); 
    HINTn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    HRSTn : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    HD : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    D : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    HCSn : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    CLKMD : out STD_LOGIC_VECTOR ( 3 downto 1 ) 
  );
end ebi2hpi;

architecture Structure of ebi2hpi is
  signal HR_Wn_OBUF : STD_LOGIC; 
  signal RDn_IBUF : STD_LOGIC; 
  signal HDSn_OBUF : STD_LOGIC; 
  signal A_3_IBUF : STD_LOGIC; 
  signal RESET_IBUF : STD_LOGIC; 
  signal FSRIO_0 : STD_LOGIC; 
  signal N890 : STD_LOGIC; 
  signal A_4_IBUF : STD_LOGIC; 
  signal A_5_IBUF : STD_LOGIC; 
  signal HINTn_3_IBUF : STD_LOGIC; 
  signal HINTn_2_IBUF : STD_LOGIC; 
  signal HINTn_1_IBUF : STD_LOGIC; 
  signal HINTn_0_IBUF : STD_LOGIC; 
  signal N892 : STD_LOGIC; 
  signal N894 : STD_LOGIC; 
  signal N896 : STD_LOGIC; 
  signal N898 : STD_LOGIC; 
  signal N900 : STD_LOGIC; 
  signal N902 : STD_LOGIC; 
  signal N908 : STD_LOGIC; 
  signal D_0_IOBUFE : STD_LOGIC; 
  signal D_1_IOBUFE : STD_LOGIC; 
  signal D_2_IOBUFE : STD_LOGIC; 
  signal D_3_IOBUFE : STD_LOGIC; 
  signal D_4_IOBUFE : STD_LOGIC; 
  signal D_5_IOBUFE : STD_LOGIC; 
  signal D_6_IOBUFE : STD_LOGIC; 
  signal D_7_IOBUFE : STD_LOGIC; 
  signal A_0_IBUF : STD_LOGIC; 
  signal A_1_IBUF : STD_LOGIC; 
  signal A_2_IBUF : STD_LOGIC; 
  signal HRSTn_0 : STD_LOGIC; 
  signal HRSTn_1 : STD_LOGIC; 
  signal HRSTn_2 : STD_LOGIC; 
  signal HRSTn_3 : STD_LOGIC; 
  signal INTn_OBUF : STD_LOGIC; 
  signal HD_0_IOBUFE : STD_LOGIC; 
  signal HD_0_IOBUFE_OE : STD_LOGIC; 
  signal HD_1_IOBUFE : STD_LOGIC; 
  signal HD_1_IOBUFE_OE : STD_LOGIC; 
  signal HD_2_IOBUFE : STD_LOGIC; 
  signal HD_2_IOBUFE_OE : STD_LOGIC; 
  signal HD_3_IOBUFE : STD_LOGIC; 
  signal HD_3_IOBUFE_OE : STD_LOGIC; 
  signal HD_4_IOBUFE : STD_LOGIC; 
  signal HD_4_IOBUFE_OE : STD_LOGIC; 
  signal HD_5_IOBUFE : STD_LOGIC; 
  signal HD_5_IOBUFE_OE : STD_LOGIC; 
  signal HD_6_IOBUFE : STD_LOGIC; 
  signal HD_6_IOBUFE_OE : STD_LOGIC; 
  signal HD_7_IOBUFE : STD_LOGIC; 
  signal HD_7_IOBUFE_OE : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0 : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0_OE : STD_LOGIC; 
  signal A_0_IBUF_BUF0 : STD_LOGIC; 
  signal A_1_IBUF_BUF0 : STD_LOGIC; 
  signal A_2_IBUF_BUF0 : STD_LOGIC; 
  signal HCSn_0_OBUF : STD_LOGIC; 
  signal HCSn_1_OBUF : STD_LOGIC; 
  signal HCSn_2_OBUF : STD_LOGIC; 
  signal HCSn_3_OBUF : STD_LOGIC; 
  signal HDSn_OBUF_BUF0 : STD_LOGIC; 
  signal HR_Wn_OBUF_BUF0 : STD_LOGIC; 
  signal CLKMD_1_OBUF_Q : STD_LOGIC; 
  signal CLKMD_1_OBUF_OE : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF0 : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF1 : STD_LOGIC; 
  signal CLKMD_3_OBUF : STD_LOGIC; 
  signal HRSTn_0_Q : STD_LOGIC; 
  signal PRLD : STD_LOGIC; 
  signal HRSTn_0_tsimcreated_prld_Q : STD_LOGIC; 
  signal HRSTn_0_D : STD_LOGIC; 
  signal HRSTn_0_CLKF : STD_LOGIC; 
  signal Gnd : STD_LOGIC; 
  signal HRSTn_0_CE : STD_LOGIC; 
  signal HRSTn_0_D1 : STD_LOGIC; 
  signal HRSTn_0_D2 : STD_LOGIC; 
  signal HRSTn_1_Q : STD_LOGIC; 
  signal HRSTn_1_tsimcreated_prld_Q : STD_LOGIC; 
  signal HRSTn_1_D : STD_LOGIC; 
  signal HRSTn_1_CLKF : STD_LOGIC; 
  signal HRSTn_1_CE : STD_LOGIC; 
  signal HRSTn_1_D1 : STD_LOGIC; 
  signal HRSTn_1_D2 : STD_LOGIC; 
  signal HRSTn_2_Q : STD_LOGIC; 
  signal HRSTn_2_tsimcreated_prld_Q : STD_LOGIC; 
  signal HRSTn_2_D : STD_LOGIC; 
  signal HRSTn_2_CLKF : STD_LOGIC; 
  signal HRSTn_2_CE : STD_LOGIC; 
  signal HRSTn_2_D1 : STD_LOGIC; 
  signal HRSTn_2_D2 : STD_LOGIC; 
  signal HRSTn_3_Q : STD_LOGIC; 
  signal HRSTn_3_tsimcreated_prld_Q : STD_LOGIC; 
  signal HRSTn_3_D : STD_LOGIC; 
  signal HRSTn_3_CLKF : STD_LOGIC; 
  signal HRSTn_3_CE : STD_LOGIC; 
  signal HRSTn_3_D1 : STD_LOGIC; 
  signal HRSTn_3_D2 : STD_LOGIC; 
  signal INTn_OBUF_Q : STD_LOGIC; 
  signal INTn_OBUF_D : STD_LOGIC; 
  signal INTn_OBUF_D1 : STD_LOGIC; 
  signal INTn_OBUF_D2 : STD_LOGIC; 
  signal HD_0_IOBUFE_Q : STD_LOGIC; 
  signal HD_0_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_0_IOBUFE_TRST : STD_LOGIC; 
  signal HD_0_IOBUFE_D : STD_LOGIC; 
  signal HD_0_IOBUFE_D1 : STD_LOGIC; 
  signal HD_0_IOBUFE_D2 : STD_LOGIC; 
  signal D2HD_en : STD_LOGIC; 
  signal HD_0_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_0_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM : STD_LOGIC; 
  signal HD_1_IOBUFE_Q : STD_LOGIC; 
  signal HD_1_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_1_IOBUFE_TRST : STD_LOGIC; 
  signal HD_1_IOBUFE_D : STD_LOGIC; 
  signal HD_1_IOBUFE_D1 : STD_LOGIC; 
  signal HD_1_IOBUFE_D2 : STD_LOGIC; 
  signal HD_1_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_1_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal HD_2_IOBUFE_Q : STD_LOGIC; 
  signal HD_2_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_2_IOBUFE_TRST : STD_LOGIC; 
  signal HD_2_IOBUFE_D : STD_LOGIC; 
  signal HD_2_IOBUFE_D1 : STD_LOGIC; 
  signal HD_2_IOBUFE_D2 : STD_LOGIC; 
  signal HD_2_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_2_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal HD_3_IOBUFE_Q : STD_LOGIC; 
  signal HD_3_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_3_IOBUFE_TRST : STD_LOGIC; 
  signal HD_3_IOBUFE_D : STD_LOGIC; 
  signal HD_3_IOBUFE_D1 : STD_LOGIC; 
  signal HD_3_IOBUFE_D2 : STD_LOGIC; 
  signal HD_3_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_3_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal HD_4_IOBUFE_Q : STD_LOGIC; 
  signal HD_4_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_4_IOBUFE_TRST : STD_LOGIC; 
  signal HD_4_IOBUFE_D : STD_LOGIC; 
  signal HD_4_IOBUFE_D1 : STD_LOGIC; 
  signal HD_4_IOBUFE_D2 : STD_LOGIC; 
  signal HD_4_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_4_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal HD_5_IOBUFE_Q : STD_LOGIC; 
  signal HD_5_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_5_IOBUFE_TRST : STD_LOGIC; 
  signal HD_5_IOBUFE_D : STD_LOGIC; 
  signal HD_5_IOBUFE_D1 : STD_LOGIC; 
  signal HD_5_IOBUFE_D2 : STD_LOGIC; 
  signal HD_5_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_5_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal HD_6_IOBUFE_Q : STD_LOGIC; 
  signal HD_6_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_6_IOBUFE_TRST : STD_LOGIC; 
  signal HD_6_IOBUFE_D : STD_LOGIC; 
  signal HD_6_IOBUFE_D1 : STD_LOGIC; 
  signal HD_6_IOBUFE_D2 : STD_LOGIC; 
  signal HD_6_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_6_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal HD_7_IOBUFE_Q : STD_LOGIC; 
  signal HD_7_IOBUFE_BUFOE_OUT : STD_LOGIC; 
  signal HD_7_IOBUFE_TRST : STD_LOGIC; 
  signal HD_7_IOBUFE_D : STD_LOGIC; 
  signal HD_7_IOBUFE_D1 : STD_LOGIC; 
  signal HD_7_IOBUFE_D2 : STD_LOGIC; 
  signal HD_7_IOBUFE_D2_PT_0 : STD_LOGIC; 
  signal HD_7_IOBUFE_D2_PT_1 : STD_LOGIC; 
  signal D2HD_en_Q : STD_LOGIC; 
  signal D2HD_en_RSTF : STD_LOGIC; 
  signal D2HD_en_tsimcreated_prld_Q : STD_LOGIC; 
  signal D2HD_en_D : STD_LOGIC; 
  signal D2HD_en_CLKF : STD_LOGIC; 
  signal Vcc : STD_LOGIC; 
  signal D2HD_en_D1 : STD_LOGIC; 
  signal D2HD_en_D2 : STD_LOGIC; 
  signal D2HD_en_D2HD_en_RSTF_INT_UIM : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_0_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_1_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_2_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_3_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_4_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_5_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_6_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0_Q : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0_BUFOE_OUT : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0_TRST : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0_D : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0_D1 : STD_LOGIC; 
  signal D_7_IOBUFE_BUF0_D2 : STD_LOGIC; 
  signal A_0_IBUF_BUF0_Q : STD_LOGIC; 
  signal A_0_IBUF_BUF0_D : STD_LOGIC; 
  signal A_0_IBUF_BUF0_D1 : STD_LOGIC; 
  signal A_0_IBUF_BUF0_D2 : STD_LOGIC; 
  signal A_1_IBUF_BUF0_Q : STD_LOGIC; 
  signal A_1_IBUF_BUF0_D : STD_LOGIC; 
  signal A_1_IBUF_BUF0_D1 : STD_LOGIC; 
  signal A_1_IBUF_BUF0_D2 : STD_LOGIC; 
  signal A_2_IBUF_BUF0_Q : STD_LOGIC; 
  signal A_2_IBUF_BUF0_D : STD_LOGIC; 
  signal A_2_IBUF_BUF0_D1 : STD_LOGIC; 
  signal A_2_IBUF_BUF0_D2 : STD_LOGIC; 
  signal HCSn_0_OBUF_Q : STD_LOGIC; 
  signal HCSn_0_OBUF_D : STD_LOGIC; 
  signal HCSn_0_OBUF_D1 : STD_LOGIC; 
  signal HCSn_0_OBUF_D2 : STD_LOGIC; 
  signal HCSn_1_OBUF_Q : STD_LOGIC; 
  signal HCSn_1_OBUF_D : STD_LOGIC; 
  signal HCSn_1_OBUF_D1 : STD_LOGIC; 
  signal HCSn_1_OBUF_D2 : STD_LOGIC; 
  signal HCSn_2_OBUF_Q : STD_LOGIC; 
  signal HCSn_2_OBUF_D : STD_LOGIC; 
  signal HCSn_2_OBUF_D1 : STD_LOGIC; 
  signal HCSn_2_OBUF_D2 : STD_LOGIC; 
  signal HCSn_3_OBUF_Q : STD_LOGIC; 
  signal HCSn_3_OBUF_D : STD_LOGIC; 
  signal HCSn_3_OBUF_D1 : STD_LOGIC; 
  signal HCSn_3_OBUF_D2 : STD_LOGIC; 
  signal HDSn_OBUF_BUF0_Q : STD_LOGIC; 
  signal HDSn_OBUF_BUF0_D : STD_LOGIC; 
  signal HDSn_OBUF_BUF0_D1 : STD_LOGIC; 
  signal HDSn_OBUF_BUF0_D2 : STD_LOGIC; 
  signal HR_Wn_OBUF_BUF0_Q : STD_LOGIC; 
  signal HR_Wn_OBUF_BUF0_D : STD_LOGIC; 
  signal HR_Wn_OBUF_BUF0_D1 : STD_LOGIC; 
  signal HR_Wn_OBUF_BUF0_D2 : STD_LOGIC; 
  signal CLKMD_1_OBUF_Q_0 : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUFOE_OUT : STD_LOGIC; 
  signal CLKMD_1_OBUF_TRST : STD_LOGIC; 
  signal CLKMD_1_OBUF_D : STD_LOGIC; 
  signal CLKMD_1_OBUF_D1 : STD_LOGIC; 
  signal CLKMD_1_OBUF_D2 : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF0_Q : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF0_D : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF0_D1 : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF0_D2 : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF1_Q : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF1_D : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF1_D1 : STD_LOGIC; 
  signal CLKMD_1_OBUF_BUF1_D2 : STD_LOGIC; 
  signal CLKMD_3_OBUF_Q : STD_LOGIC; 
  signal CLKMD_3_OBUF_D : STD_LOGIC; 
  signal CLKMD_3_OBUF_D1 : STD_LOGIC; 
  signal CLKMD_3_OBUF_D2 : STD_LOGIC; 
  signal HD_7_IOBUFE_HD_7_IOBUFE_TRST_Q : STD_LOGIC; 
  signal HD_7_IOBUFE_HD_7_IOBUFE_TRST_D : STD_LOGIC; 
  signal HD_7_IOBUFE_HD_7_IOBUFE_TRST_D1 : STD_LOGIC; 
  signal HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2 : STD_LOGIC; 
  signal HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_0 : STD_LOGIC; 
  signal HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1 : STD_LOGIC; 
  signal D2HD_en_D2HD_en_RSTF_INT_Q : STD_LOGIC; 
  signal D2HD_en_D2HD_en_RSTF_INT_D : STD_LOGIC; 
  signal D2HD_en_D2HD_en_RSTF_INT_D1 : STD_LOGIC; 
  signal D2HD_en_D2HD_en_RSTF_INT_D2 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_0_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_0_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_0_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_0_CE_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_0_CE_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_1_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_1_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_1_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_1_CE_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_2_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_2_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_2_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_2_CE_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_3_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_3_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HRSTn_3_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_0_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_0_IOBUFE_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_0_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_0_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HD_1_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_1_IOBUFE_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HD_1_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_1_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HD_2_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_2_IOBUFE_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HD_2_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_2_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HD_3_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_3_IOBUFE_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HD_3_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_3_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HD_4_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_4_IOBUFE_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HD_4_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_4_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HD_5_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_5_IOBUFE_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HD_5_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_5_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HD_6_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_6_IOBUFE_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HD_6_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_6_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HD_7_IOBUFE_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_7_IOBUFE_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HD_7_IOBUFE_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_7_IOBUFE_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_D2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_RSTF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_RSTF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_0_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_1_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_1_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_2_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_2_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_3_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HCSn_3_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_D2HD_en_RSTF_INT_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D2HD_en_D2HD_en_RSTF_INT_D2_IN2 : STD_LOGIC; 
begin
  HR_Wn_OBUF_1 : X_BUF
    port map (
      I => WRn,
      O => HR_Wn_OBUF
    );
  RDn_IBUF_2 : X_BUF
    port map (
      I => RDn,
      O => RDn_IBUF
    );
  HDSn_OBUF_3 : X_BUF
    port map (
      I => CSn,
      O => HDSn_OBUF
    );
  A_3_IBUF_4 : X_BUF
    port map (
      I => A(3),
      O => A_3_IBUF
    );
  RESET_IBUF_5 : X_BUF
    port map (
      I => RESET,
      O => RESET_IBUF
    );
  FSRIO_0_6 : X_BUF
    port map (
      I => RESET,
      O => FSRIO_0
    );
  N890_7 : X_BUF
    port map (
      I => D(0),
      O => N890
    );
  A_4_IBUF_8 : X_BUF
    port map (
      I => A(4),
      O => A_4_IBUF
    );
  A_5_IBUF_9 : X_BUF
    port map (
      I => A(5),
      O => A_5_IBUF
    );
  HINTn_3_IBUF_10 : X_BUF
    port map (
      I => HINTn(3),
      O => HINTn_3_IBUF
    );
  HINTn_2_IBUF_11 : X_BUF
    port map (
      I => HINTn(2),
      O => HINTn_2_IBUF
    );
  HINTn_1_IBUF_12 : X_BUF
    port map (
      I => HINTn(1),
      O => HINTn_1_IBUF
    );
  HINTn_0_IBUF_13 : X_BUF
    port map (
      I => HINTn(0),
      O => HINTn_0_IBUF
    );
  N892_14 : X_BUF
    port map (
      I => D(1),
      O => N892
    );
  N894_15 : X_BUF
    port map (
      I => D(2),
      O => N894
    );
  N896_16 : X_BUF
    port map (
      I => D(3),
      O => N896
    );
  N898_17 : X_BUF
    port map (
      I => D(4),
      O => N898
    );
  N900_18 : X_BUF
    port map (
      I => D(5),
      O => N900
    );
  N902_19 : X_BUF
    port map (
      I => D(6),
      O => N902
    );
  N908_20 : X_BUF
    port map (
      I => D(7),
      O => N908
    );
  D_0_IOBUFE_21 : X_BUF
    port map (
      I => HD(0),
      O => D_0_IOBUFE
    );
  D_1_IOBUFE_22 : X_BUF
    port map (
      I => HD(1),
      O => D_1_IOBUFE
    );
  D_2_IOBUFE_23 : X_BUF
    port map (
      I => HD(2),
      O => D_2_IOBUFE
    );
  D_3_IOBUFE_24 : X_BUF
    port map (
      I => HD(3),
      O => D_3_IOBUFE
    );
  D_4_IOBUFE_25 : X_BUF
    port map (
      I => HD(4),
      O => D_4_IOBUFE
    );
  D_5_IOBUFE_26 : X_BUF
    port map (
      I => HD(5),
      O => D_5_IOBUFE
    );
  D_6_IOBUFE_27 : X_BUF
    port map (
      I => HD(6),
      O => D_6_IOBUFE
    );
  D_7_IOBUFE_28 : X_BUF
    port map (
      I => HD(7),
      O => D_7_IOBUFE
    );
  A_0_IBUF_29 : X_BUF
    port map (
      I => A(0),
      O => A_0_IBUF
    );
  A_1_IBUF_30 : X_BUF
    port map (
      I => A(1),
      O => A_1_IBUF
    );
  A_2_IBUF_31 : X_BUF
    port map (
      I => A(2),
      O => A_2_IBUF
    );
  HRSTn_0_Q_32 : X_BUF
    port map (
      I => HRSTn_0,
      O => HRSTn(0)
    );
  HRSTn_1_Q_33 : X_BUF
    port map (
      I => HRSTn_1,
      O => HRSTn(1)
    );
  HRSTn_2_Q_34 : X_BUF
    port map (
      I => HRSTn_2,
      O => HRSTn(2)
    );
  HRSTn_3_Q_35 : X_BUF
    port map (
      I => HRSTn_3,
      O => HRSTn(3)
    );
  INTn_36 : X_BUF
    port map (
      I => INTn_OBUF,
      O => INTn
    );
  HD_0_Q : X_TRI
    port map (
      I => HD_0_IOBUFE,
      CTL => HD_0_IOBUFE_OE,
      O => HD(0)
    );
  HD_1_Q : X_TRI
    port map (
      I => HD_1_IOBUFE,
      CTL => HD_1_IOBUFE_OE,
      O => HD(1)
    );
  HD_2_Q : X_TRI
    port map (
      I => HD_2_IOBUFE,
      CTL => HD_2_IOBUFE_OE,
      O => HD(2)
    );
  HD_3_Q : X_TRI
    port map (
      I => HD_3_IOBUFE,
      CTL => HD_3_IOBUFE_OE,
      O => HD(3)
    );
  HD_4_Q : X_TRI
    port map (
      I => HD_4_IOBUFE,
      CTL => HD_4_IOBUFE_OE,
      O => HD(4)
    );
  HD_5_Q : X_TRI
    port map (
      I => HD_5_IOBUFE,
      CTL => HD_5_IOBUFE_OE,
      O => HD(5)
    );
  HD_6_Q : X_TRI
    port map (
      I => HD_6_IOBUFE,
      CTL => HD_6_IOBUFE_OE,
      O => HD(6)
    );
  HD_7_Q : X_TRI
    port map (
      I => HD_7_IOBUFE,
      CTL => HD_7_IOBUFE_OE,
      O => HD(7)
    );
  D_0_Q : X_TRI
    port map (
      I => D_0_IOBUFE_BUF0,
      CTL => D_0_IOBUFE_BUF0_OE,
      O => D(0)
    );
  D_1_Q : X_TRI
    port map (
      I => D_1_IOBUFE_BUF0,
      CTL => D_1_IOBUFE_BUF0_OE,
      O => D(1)
    );
  D_2_Q : X_TRI
    port map (
      I => D_2_IOBUFE_BUF0,
      CTL => D_2_IOBUFE_BUF0_OE,
      O => D(2)
    );
  D_3_Q : X_TRI
    port map (
      I => D_3_IOBUFE_BUF0,
      CTL => D_3_IOBUFE_BUF0_OE,
      O => D(3)
    );
  D_4_Q : X_TRI
    port map (
      I => D_4_IOBUFE_BUF0,
      CTL => D_4_IOBUFE_BUF0_OE,
      O => D(4)
    );
  D_5_Q : X_TRI
    port map (
      I => D_5_IOBUFE_BUF0,
      CTL => D_5_IOBUFE_BUF0_OE,
      O => D(5)
    );
  D_6_Q : X_TRI
    port map (
      I => D_6_IOBUFE_BUF0,
      CTL => D_6_IOBUFE_BUF0_OE,
      O => D(6)
    );
  D_7_Q : X_TRI
    port map (
      I => D_7_IOBUFE_BUF0,
      CTL => D_7_IOBUFE_BUF0_OE,
      O => D(7)
    );
  HBIL_37 : X_BUF
    port map (
      I => A_0_IBUF_BUF0,
      O => HBIL
    );
  HCNTL0_38 : X_BUF
    port map (
      I => A_1_IBUF_BUF0,
      O => HCNTL0
    );
  HCNTL1_39 : X_BUF
    port map (
      I => A_2_IBUF_BUF0,
      O => HCNTL1
    );
  HCSn_0_Q : X_BUF
    port map (
      I => HCSn_0_OBUF,
      O => HCSn(0)
    );
  HCSn_1_Q : X_BUF
    port map (
      I => HCSn_1_OBUF,
      O => HCSn(1)
    );
  HCSn_2_Q : X_BUF
    port map (
      I => HCSn_2_OBUF,
      O => HCSn(2)
    );
  HCSn_3_Q : X_BUF
    port map (
      I => HCSn_3_OBUF,
      O => HCSn(3)
    );
  HDSn_40 : X_BUF
    port map (
      I => HDSn_OBUF_BUF0,
      O => HDSn
    );
  HR_Wn_41 : X_BUF
    port map (
      I => HR_Wn_OBUF_BUF0,
      O => HR_Wn
    );
  WAITn_42 : X_TRI
    port map (
      I => CLKMD_1_OBUF_Q,
      CTL => CLKMD_1_OBUF_OE,
      O => WAITn
    );
  CLKMD_2_Q : X_BUF
    port map (
      I => CLKMD_1_OBUF_BUF0,
      O => CLKMD(2)
    );
  CLKMD_1_Q : X_BUF
    port map (
      I => CLKMD_1_OBUF_BUF1,
      O => CLKMD(1)
    );
  CLKMD_3_Q : X_BUF
    port map (
      I => CLKMD_3_OBUF,
      O => CLKMD(3)
    );
  HRSTn_0_43 : X_BUF
    port map (
      I => HRSTn_0_Q,
      O => HRSTn_0
    );
  HRSTn_0_tsimcreated_prld_Q_44 : X_OR2
    port map (
      I0 => FSRIO_0,
      I1 => PRLD,
      O => HRSTn_0_tsimcreated_prld_Q
    );
  HRSTn_0_REG : X_FF
    port map (
      I => HRSTn_0_D,
      CE => HRSTn_0_CE,
      CLK => HRSTn_0_CLKF,
      SET => Gnd,
      RST => HRSTn_0_tsimcreated_prld_Q,
      O => HRSTn_0_Q
    );
  Gnd_45 : X_ZERO
    port map (
      O => Gnd
    );
  HRSTn_0_D_46 : X_XOR2
    port map (
      I0 => HRSTn_0_D1,
      I1 => HRSTn_0_D2,
      O => HRSTn_0_D
    );
  HRSTn_0_D1_47 : X_ZERO
    port map (
      O => HRSTn_0_D1
    );
  HRSTn_0_D2_48 : X_AND2
    port map (
      I0 => NlwInverterSignal_HRSTn_0_D2_IN0,
      I1 => NlwInverterSignal_HRSTn_0_D2_IN1,
      O => HRSTn_0_D2
    );
  HRSTn_0_CLKF_49 : X_AND2
    port map (
      I0 => HDSn_OBUF,
      I1 => HDSn_OBUF,
      O => HRSTn_0_CLKF
    );
  HRSTn_0_CE_50 : X_AND4
    port map (
      I0 => NlwInverterSignal_HRSTn_0_CE_IN0,
      I1 => A_3_IBUF,
      I2 => NlwInverterSignal_HRSTn_0_CE_IN2,
      I3 => NlwInverterSignal_HRSTn_0_CE_IN3,
      O => HRSTn_0_CE
    );
  HRSTn_1_51 : X_BUF
    port map (
      I => HRSTn_1_Q,
      O => HRSTn_1
    );
  HRSTn_1_tsimcreated_prld_Q_52 : X_OR2
    port map (
      I0 => FSRIO_0,
      I1 => PRLD,
      O => HRSTn_1_tsimcreated_prld_Q
    );
  HRSTn_1_REG : X_FF
    port map (
      I => HRSTn_1_D,
      CE => HRSTn_1_CE,
      CLK => HRSTn_1_CLKF,
      SET => Gnd,
      RST => HRSTn_1_tsimcreated_prld_Q,
      O => HRSTn_1_Q
    );
  HRSTn_1_D_53 : X_XOR2
    port map (
      I0 => HRSTn_1_D1,
      I1 => HRSTn_1_D2,
      O => HRSTn_1_D
    );
  HRSTn_1_D1_54 : X_ZERO
    port map (
      O => HRSTn_1_D1
    );
  HRSTn_1_D2_55 : X_AND2
    port map (
      I0 => NlwInverterSignal_HRSTn_1_D2_IN0,
      I1 => NlwInverterSignal_HRSTn_1_D2_IN1,
      O => HRSTn_1_D2
    );
  HRSTn_1_CLKF_56 : X_AND2
    port map (
      I0 => HDSn_OBUF,
      I1 => HDSn_OBUF,
      O => HRSTn_1_CLKF
    );
  HRSTn_1_CE_57 : X_AND4
    port map (
      I0 => NlwInverterSignal_HRSTn_1_CE_IN0,
      I1 => A_3_IBUF,
      I2 => A_4_IBUF,
      I3 => NlwInverterSignal_HRSTn_1_CE_IN3,
      O => HRSTn_1_CE
    );
  HRSTn_2_58 : X_BUF
    port map (
      I => HRSTn_2_Q,
      O => HRSTn_2
    );
  HRSTn_2_tsimcreated_prld_Q_59 : X_OR2
    port map (
      I0 => FSRIO_0,
      I1 => PRLD,
      O => HRSTn_2_tsimcreated_prld_Q
    );
  HRSTn_2_REG : X_FF
    port map (
      I => HRSTn_2_D,
      CE => HRSTn_2_CE,
      CLK => HRSTn_2_CLKF,
      SET => Gnd,
      RST => HRSTn_2_tsimcreated_prld_Q,
      O => HRSTn_2_Q
    );
  HRSTn_2_D_60 : X_XOR2
    port map (
      I0 => HRSTn_2_D1,
      I1 => HRSTn_2_D2,
      O => HRSTn_2_D
    );
  HRSTn_2_D1_61 : X_ZERO
    port map (
      O => HRSTn_2_D1
    );
  HRSTn_2_D2_62 : X_AND2
    port map (
      I0 => NlwInverterSignal_HRSTn_2_D2_IN0,
      I1 => NlwInverterSignal_HRSTn_2_D2_IN1,
      O => HRSTn_2_D2
    );
  HRSTn_2_CLKF_63 : X_AND2
    port map (
      I0 => HDSn_OBUF,
      I1 => HDSn_OBUF,
      O => HRSTn_2_CLKF
    );
  HRSTn_2_CE_64 : X_AND4
    port map (
      I0 => NlwInverterSignal_HRSTn_2_CE_IN0,
      I1 => A_3_IBUF,
      I2 => NlwInverterSignal_HRSTn_2_CE_IN2,
      I3 => A_5_IBUF,
      O => HRSTn_2_CE
    );
  HRSTn_3_65 : X_BUF
    port map (
      I => HRSTn_3_Q,
      O => HRSTn_3
    );
  HRSTn_3_tsimcreated_prld_Q_66 : X_OR2
    port map (
      I0 => FSRIO_0,
      I1 => PRLD,
      O => HRSTn_3_tsimcreated_prld_Q
    );
  HRSTn_3_REG : X_FF
    port map (
      I => HRSTn_3_D,
      CE => HRSTn_3_CE,
      CLK => HRSTn_3_CLKF,
      SET => Gnd,
      RST => HRSTn_3_tsimcreated_prld_Q,
      O => HRSTn_3_Q
    );
  HRSTn_3_D_67 : X_XOR2
    port map (
      I0 => HRSTn_3_D1,
      I1 => HRSTn_3_D2,
      O => HRSTn_3_D
    );
  HRSTn_3_D1_68 : X_ZERO
    port map (
      O => HRSTn_3_D1
    );
  HRSTn_3_D2_69 : X_AND2
    port map (
      I0 => NlwInverterSignal_HRSTn_3_D2_IN0,
      I1 => NlwInverterSignal_HRSTn_3_D2_IN1,
      O => HRSTn_3_D2
    );
  HRSTn_3_CLKF_70 : X_AND2
    port map (
      I0 => HDSn_OBUF,
      I1 => HDSn_OBUF,
      O => HRSTn_3_CLKF
    );
  HRSTn_3_CE_71 : X_AND4
    port map (
      I0 => NlwInverterSignal_HRSTn_3_CE_IN0,
      I1 => A_3_IBUF,
      I2 => A_4_IBUF,
      I3 => A_5_IBUF,
      O => HRSTn_3_CE
    );
  INTn_OBUF_72 : X_BUF
    port map (
      I => INTn_OBUF_Q,
      O => INTn_OBUF
    );
  INTn_OBUF_Q_73 : X_BUF
    port map (
      I => INTn_OBUF_D,
      O => INTn_OBUF_Q
    );
  INTn_OBUF_D_74 : X_XOR2
    port map (
      I0 => INTn_OBUF_D1,
      I1 => INTn_OBUF_D2,
      O => INTn_OBUF_D
    );
  INTn_OBUF_D1_75 : X_ZERO
    port map (
      O => INTn_OBUF_D1
    );
  INTn_OBUF_D2_76 : X_AND4
    port map (
      I0 => HINTn_3_IBUF,
      I1 => HINTn_2_IBUF,
      I2 => HINTn_1_IBUF,
      I3 => HINTn_0_IBUF,
      O => INTn_OBUF_D2
    );
  HD_0_IOBUFE_77 : X_BUF
    port map (
      I => HD_0_IOBUFE_Q,
      O => HD_0_IOBUFE
    );
  HD_0_IOBUFE_OE_78 : X_BUF
    port map (
      I => HD_0_IOBUFE_BUFOE_OUT,
      O => HD_0_IOBUFE_OE
    );
  HD_0_IOBUFE_BUFOE_OUT_79 : X_BUF
    port map (
      I => HD_0_IOBUFE_TRST,
      O => HD_0_IOBUFE_BUFOE_OUT
    );
  HD_0_IOBUFE_Q_80 : X_BUF
    port map (
      I => HD_0_IOBUFE_D,
      O => HD_0_IOBUFE_Q
    );
  HD_0_IOBUFE_D_81 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_0_IOBUFE_D_IN0,
      I1 => HD_0_IOBUFE_D2,
      O => HD_0_IOBUFE_D
    );
  HD_0_IOBUFE_D1_82 : X_ZERO
    port map (
      O => HD_0_IOBUFE_D1
    );
  HD_0_IOBUFE_D2_PT_0_83 : X_AND2
    port map (
      I0 => NlwInverterSignal_HD_0_IOBUFE_D2_PT_0_IN0,
      I1 => D2HD_en,
      O => HD_0_IOBUFE_D2_PT_0
    );
  HD_0_IOBUFE_D2_PT_1_84 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_0_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_0_IOBUFE_D2_PT_1_IN2,
      O => HD_0_IOBUFE_D2_PT_1
    );
  HD_0_IOBUFE_D2_85 : X_OR2
    port map (
      I0 => HD_0_IOBUFE_D2_PT_0,
      I1 => HD_0_IOBUFE_D2_PT_1,
      O => HD_0_IOBUFE_D2
    );
  HD_0_IOBUFE_TRST_86 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_0_IOBUFE_TRST
    );
  HD_1_IOBUFE_87 : X_BUF
    port map (
      I => HD_1_IOBUFE_Q,
      O => HD_1_IOBUFE
    );
  HD_1_IOBUFE_OE_88 : X_BUF
    port map (
      I => HD_1_IOBUFE_BUFOE_OUT,
      O => HD_1_IOBUFE_OE
    );
  HD_1_IOBUFE_BUFOE_OUT_89 : X_BUF
    port map (
      I => HD_1_IOBUFE_TRST,
      O => HD_1_IOBUFE_BUFOE_OUT
    );
  HD_1_IOBUFE_Q_90 : X_BUF
    port map (
      I => HD_1_IOBUFE_D,
      O => HD_1_IOBUFE_Q
    );
  HD_1_IOBUFE_D_91 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_1_IOBUFE_D_IN0,
      I1 => HD_1_IOBUFE_D2,
      O => HD_1_IOBUFE_D
    );
  HD_1_IOBUFE_D1_92 : X_ZERO
    port map (
      O => HD_1_IOBUFE_D1
    );
  HD_1_IOBUFE_D2_PT_0_93 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => NlwInverterSignal_HD_1_IOBUFE_D2_PT_0_IN1,
      O => HD_1_IOBUFE_D2_PT_0
    );
  HD_1_IOBUFE_D2_PT_1_94 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_1_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_1_IOBUFE_D2_PT_1_IN2,
      O => HD_1_IOBUFE_D2_PT_1
    );
  HD_1_IOBUFE_D2_95 : X_OR2
    port map (
      I0 => HD_1_IOBUFE_D2_PT_0,
      I1 => HD_1_IOBUFE_D2_PT_1,
      O => HD_1_IOBUFE_D2
    );
  HD_1_IOBUFE_TRST_96 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_1_IOBUFE_TRST
    );
  HD_2_IOBUFE_97 : X_BUF
    port map (
      I => HD_2_IOBUFE_Q,
      O => HD_2_IOBUFE
    );
  HD_2_IOBUFE_OE_98 : X_BUF
    port map (
      I => HD_2_IOBUFE_BUFOE_OUT,
      O => HD_2_IOBUFE_OE
    );
  HD_2_IOBUFE_BUFOE_OUT_99 : X_BUF
    port map (
      I => HD_2_IOBUFE_TRST,
      O => HD_2_IOBUFE_BUFOE_OUT
    );
  HD_2_IOBUFE_Q_100 : X_BUF
    port map (
      I => HD_2_IOBUFE_D,
      O => HD_2_IOBUFE_Q
    );
  HD_2_IOBUFE_D_101 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_2_IOBUFE_D_IN0,
      I1 => HD_2_IOBUFE_D2,
      O => HD_2_IOBUFE_D
    );
  HD_2_IOBUFE_D1_102 : X_ZERO
    port map (
      O => HD_2_IOBUFE_D1
    );
  HD_2_IOBUFE_D2_PT_0_103 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => NlwInverterSignal_HD_2_IOBUFE_D2_PT_0_IN1,
      O => HD_2_IOBUFE_D2_PT_0
    );
  HD_2_IOBUFE_D2_PT_1_104 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_2_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_2_IOBUFE_D2_PT_1_IN2,
      O => HD_2_IOBUFE_D2_PT_1
    );
  HD_2_IOBUFE_D2_105 : X_OR2
    port map (
      I0 => HD_2_IOBUFE_D2_PT_0,
      I1 => HD_2_IOBUFE_D2_PT_1,
      O => HD_2_IOBUFE_D2
    );
  HD_2_IOBUFE_TRST_106 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_2_IOBUFE_TRST
    );
  HD_3_IOBUFE_107 : X_BUF
    port map (
      I => HD_3_IOBUFE_Q,
      O => HD_3_IOBUFE
    );
  HD_3_IOBUFE_OE_108 : X_BUF
    port map (
      I => HD_3_IOBUFE_BUFOE_OUT,
      O => HD_3_IOBUFE_OE
    );
  HD_3_IOBUFE_BUFOE_OUT_109 : X_BUF
    port map (
      I => HD_3_IOBUFE_TRST,
      O => HD_3_IOBUFE_BUFOE_OUT
    );
  HD_3_IOBUFE_Q_110 : X_BUF
    port map (
      I => HD_3_IOBUFE_D,
      O => HD_3_IOBUFE_Q
    );
  HD_3_IOBUFE_D_111 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_3_IOBUFE_D_IN0,
      I1 => HD_3_IOBUFE_D2,
      O => HD_3_IOBUFE_D
    );
  HD_3_IOBUFE_D1_112 : X_ZERO
    port map (
      O => HD_3_IOBUFE_D1
    );
  HD_3_IOBUFE_D2_PT_0_113 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => NlwInverterSignal_HD_3_IOBUFE_D2_PT_0_IN1,
      O => HD_3_IOBUFE_D2_PT_0
    );
  HD_3_IOBUFE_D2_PT_1_114 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_3_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_3_IOBUFE_D2_PT_1_IN2,
      O => HD_3_IOBUFE_D2_PT_1
    );
  HD_3_IOBUFE_D2_115 : X_OR2
    port map (
      I0 => HD_3_IOBUFE_D2_PT_0,
      I1 => HD_3_IOBUFE_D2_PT_1,
      O => HD_3_IOBUFE_D2
    );
  HD_3_IOBUFE_TRST_116 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_3_IOBUFE_TRST
    );
  HD_4_IOBUFE_117 : X_BUF
    port map (
      I => HD_4_IOBUFE_Q,
      O => HD_4_IOBUFE
    );
  HD_4_IOBUFE_OE_118 : X_BUF
    port map (
      I => HD_4_IOBUFE_BUFOE_OUT,
      O => HD_4_IOBUFE_OE
    );
  HD_4_IOBUFE_BUFOE_OUT_119 : X_BUF
    port map (
      I => HD_4_IOBUFE_TRST,
      O => HD_4_IOBUFE_BUFOE_OUT
    );
  HD_4_IOBUFE_Q_120 : X_BUF
    port map (
      I => HD_4_IOBUFE_D,
      O => HD_4_IOBUFE_Q
    );
  HD_4_IOBUFE_D_121 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_4_IOBUFE_D_IN0,
      I1 => HD_4_IOBUFE_D2,
      O => HD_4_IOBUFE_D
    );
  HD_4_IOBUFE_D1_122 : X_ZERO
    port map (
      O => HD_4_IOBUFE_D1
    );
  HD_4_IOBUFE_D2_PT_0_123 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => NlwInverterSignal_HD_4_IOBUFE_D2_PT_0_IN1,
      O => HD_4_IOBUFE_D2_PT_0
    );
  HD_4_IOBUFE_D2_PT_1_124 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_4_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_4_IOBUFE_D2_PT_1_IN2,
      O => HD_4_IOBUFE_D2_PT_1
    );
  HD_4_IOBUFE_D2_125 : X_OR2
    port map (
      I0 => HD_4_IOBUFE_D2_PT_0,
      I1 => HD_4_IOBUFE_D2_PT_1,
      O => HD_4_IOBUFE_D2
    );
  HD_4_IOBUFE_TRST_126 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_4_IOBUFE_TRST
    );
  HD_5_IOBUFE_127 : X_BUF
    port map (
      I => HD_5_IOBUFE_Q,
      O => HD_5_IOBUFE
    );
  HD_5_IOBUFE_OE_128 : X_BUF
    port map (
      I => HD_5_IOBUFE_BUFOE_OUT,
      O => HD_5_IOBUFE_OE
    );
  HD_5_IOBUFE_BUFOE_OUT_129 : X_BUF
    port map (
      I => HD_5_IOBUFE_TRST,
      O => HD_5_IOBUFE_BUFOE_OUT
    );
  HD_5_IOBUFE_Q_130 : X_BUF
    port map (
      I => HD_5_IOBUFE_D,
      O => HD_5_IOBUFE_Q
    );
  HD_5_IOBUFE_D_131 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_5_IOBUFE_D_IN0,
      I1 => HD_5_IOBUFE_D2,
      O => HD_5_IOBUFE_D
    );
  HD_5_IOBUFE_D1_132 : X_ZERO
    port map (
      O => HD_5_IOBUFE_D1
    );
  HD_5_IOBUFE_D2_PT_0_133 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => NlwInverterSignal_HD_5_IOBUFE_D2_PT_0_IN1,
      O => HD_5_IOBUFE_D2_PT_0
    );
  HD_5_IOBUFE_D2_PT_1_134 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_5_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_5_IOBUFE_D2_PT_1_IN2,
      O => HD_5_IOBUFE_D2_PT_1
    );
  HD_5_IOBUFE_D2_135 : X_OR2
    port map (
      I0 => HD_5_IOBUFE_D2_PT_0,
      I1 => HD_5_IOBUFE_D2_PT_1,
      O => HD_5_IOBUFE_D2
    );
  HD_5_IOBUFE_TRST_136 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_5_IOBUFE_TRST
    );
  HD_6_IOBUFE_137 : X_BUF
    port map (
      I => HD_6_IOBUFE_Q,
      O => HD_6_IOBUFE
    );
  HD_6_IOBUFE_OE_138 : X_BUF
    port map (
      I => HD_6_IOBUFE_BUFOE_OUT,
      O => HD_6_IOBUFE_OE
    );
  HD_6_IOBUFE_BUFOE_OUT_139 : X_BUF
    port map (
      I => HD_6_IOBUFE_TRST,
      O => HD_6_IOBUFE_BUFOE_OUT
    );
  HD_6_IOBUFE_Q_140 : X_BUF
    port map (
      I => HD_6_IOBUFE_D,
      O => HD_6_IOBUFE_Q
    );
  HD_6_IOBUFE_D_141 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_6_IOBUFE_D_IN0,
      I1 => HD_6_IOBUFE_D2,
      O => HD_6_IOBUFE_D
    );
  HD_6_IOBUFE_D1_142 : X_ZERO
    port map (
      O => HD_6_IOBUFE_D1
    );
  HD_6_IOBUFE_D2_PT_0_143 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => NlwInverterSignal_HD_6_IOBUFE_D2_PT_0_IN1,
      O => HD_6_IOBUFE_D2_PT_0
    );
  HD_6_IOBUFE_D2_PT_1_144 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_6_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_6_IOBUFE_D2_PT_1_IN2,
      O => HD_6_IOBUFE_D2_PT_1
    );
  HD_6_IOBUFE_D2_145 : X_OR2
    port map (
      I0 => HD_6_IOBUFE_D2_PT_0,
      I1 => HD_6_IOBUFE_D2_PT_1,
      O => HD_6_IOBUFE_D2
    );
  HD_6_IOBUFE_TRST_146 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_6_IOBUFE_TRST
    );
  HD_7_IOBUFE_147 : X_BUF
    port map (
      I => HD_7_IOBUFE_Q,
      O => HD_7_IOBUFE
    );
  HD_7_IOBUFE_OE_148 : X_BUF
    port map (
      I => HD_7_IOBUFE_BUFOE_OUT,
      O => HD_7_IOBUFE_OE
    );
  HD_7_IOBUFE_BUFOE_OUT_149 : X_BUF
    port map (
      I => HD_7_IOBUFE_TRST,
      O => HD_7_IOBUFE_BUFOE_OUT
    );
  HD_7_IOBUFE_Q_150 : X_BUF
    port map (
      I => HD_7_IOBUFE_D,
      O => HD_7_IOBUFE_Q
    );
  HD_7_IOBUFE_D_151 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HD_7_IOBUFE_D_IN0,
      I1 => HD_7_IOBUFE_D2,
      O => HD_7_IOBUFE_D
    );
  HD_7_IOBUFE_D1_152 : X_ZERO
    port map (
      O => HD_7_IOBUFE_D1
    );
  HD_7_IOBUFE_D2_PT_0_153 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => NlwInverterSignal_HD_7_IOBUFE_D2_PT_0_IN1,
      O => HD_7_IOBUFE_D2_PT_0
    );
  HD_7_IOBUFE_D2_PT_1_154 : X_AND3
    port map (
      I0 => NlwInverterSignal_HD_7_IOBUFE_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_HD_7_IOBUFE_D2_PT_1_IN2,
      O => HD_7_IOBUFE_D2_PT_1
    );
  HD_7_IOBUFE_D2_155 : X_OR2
    port map (
      I0 => HD_7_IOBUFE_D2_PT_0,
      I1 => HD_7_IOBUFE_D2_PT_1,
      O => HD_7_IOBUFE_D2
    );
  HD_7_IOBUFE_TRST_156 : X_AND2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM,
      O => HD_7_IOBUFE_TRST
    );
  D2HD_en_157 : X_BUF
    port map (
      I => D2HD_en_Q,
      O => D2HD_en
    );
  D2HD_en_tsimcreated_prld_Q_158 : X_OR2
    port map (
      I0 => D2HD_en_RSTF,
      I1 => PRLD,
      O => D2HD_en_tsimcreated_prld_Q
    );
  D2HD_en_REG : X_FF
    port map (
      I => D2HD_en_D,
      CE => Vcc,
      CLK => D2HD_en_CLKF,
      SET => Gnd,
      RST => D2HD_en_tsimcreated_prld_Q,
      O => D2HD_en_Q
    );
  Vcc_159 : X_ONE
    port map (
      O => Vcc
    );
  D2HD_en_D_160 : X_XOR2
    port map (
      I0 => D2HD_en_D1,
      I1 => D2HD_en_D2,
      O => D2HD_en_D
    );
  D2HD_en_D1_161 : X_ZERO
    port map (
      O => D2HD_en_D1
    );
  D2HD_en_D2_162 : X_AND3
    port map (
      I0 => NlwInverterSignal_D2HD_en_D2_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_D2HD_en_D2_IN2,
      O => D2HD_en_D2
    );
  D2HD_en_CLKF_163 : X_AND2
    port map (
      I0 => NlwInverterSignal_D2HD_en_CLKF_IN0,
      I1 => NlwInverterSignal_D2HD_en_CLKF_IN1,
      O => D2HD_en_CLKF
    );
  D2HD_en_RSTF_164 : X_AND2
    port map (
      I0 => NlwInverterSignal_D2HD_en_RSTF_IN0,
      I1 => NlwInverterSignal_D2HD_en_RSTF_IN1,
      O => D2HD_en_RSTF
    );
  D_0_IOBUFE_BUF0_165 : X_BUF
    port map (
      I => D_0_IOBUFE_BUF0_Q,
      O => D_0_IOBUFE_BUF0
    );
  D_0_IOBUFE_BUF0_OE_166 : X_BUF
    port map (
      I => D_0_IOBUFE_BUF0_BUFOE_OUT,
      O => D_0_IOBUFE_BUF0_OE
    );
  D_0_IOBUFE_BUF0_BUFOE_OUT_167 : X_BUF
    port map (
      I => D_0_IOBUFE_BUF0_TRST,
      O => D_0_IOBUFE_BUF0_BUFOE_OUT
    );
  D_0_IOBUFE_BUF0_Q_168 : X_BUF
    port map (
      I => D_0_IOBUFE_BUF0_D,
      O => D_0_IOBUFE_BUF0_Q
    );
  D_0_IOBUFE_BUF0_D_169 : X_XOR2
    port map (
      I0 => D_0_IOBUFE_BUF0_D1,
      I1 => D_0_IOBUFE_BUF0_D2,
      O => D_0_IOBUFE_BUF0_D
    );
  D_0_IOBUFE_BUF0_D1_170 : X_ZERO
    port map (
      O => D_0_IOBUFE_BUF0_D1
    );
  D_0_IOBUFE_BUF0_D2_171 : X_AND2
    port map (
      I0 => D_0_IOBUFE,
      I1 => D_0_IOBUFE,
      O => D_0_IOBUFE_BUF0_D2
    );
  D_0_IOBUFE_BUF0_TRST_172 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN3,
      O => D_0_IOBUFE_BUF0_TRST
    );
  D_1_IOBUFE_BUF0_173 : X_BUF
    port map (
      I => D_1_IOBUFE_BUF0_Q,
      O => D_1_IOBUFE_BUF0
    );
  D_1_IOBUFE_BUF0_OE_174 : X_BUF
    port map (
      I => D_1_IOBUFE_BUF0_BUFOE_OUT,
      O => D_1_IOBUFE_BUF0_OE
    );
  D_1_IOBUFE_BUF0_BUFOE_OUT_175 : X_BUF
    port map (
      I => D_1_IOBUFE_BUF0_TRST,
      O => D_1_IOBUFE_BUF0_BUFOE_OUT
    );
  D_1_IOBUFE_BUF0_Q_176 : X_BUF
    port map (
      I => D_1_IOBUFE_BUF0_D,
      O => D_1_IOBUFE_BUF0_Q
    );
  D_1_IOBUFE_BUF0_D_177 : X_XOR2
    port map (
      I0 => D_1_IOBUFE_BUF0_D1,
      I1 => D_1_IOBUFE_BUF0_D2,
      O => D_1_IOBUFE_BUF0_D
    );
  D_1_IOBUFE_BUF0_D1_178 : X_ZERO
    port map (
      O => D_1_IOBUFE_BUF0_D1
    );
  D_1_IOBUFE_BUF0_D2_179 : X_AND2
    port map (
      I0 => D_1_IOBUFE,
      I1 => D_1_IOBUFE,
      O => D_1_IOBUFE_BUF0_D2
    );
  D_1_IOBUFE_BUF0_TRST_180 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN3,
      O => D_1_IOBUFE_BUF0_TRST
    );
  D_2_IOBUFE_BUF0_181 : X_BUF
    port map (
      I => D_2_IOBUFE_BUF0_Q,
      O => D_2_IOBUFE_BUF0
    );
  D_2_IOBUFE_BUF0_OE_182 : X_BUF
    port map (
      I => D_2_IOBUFE_BUF0_BUFOE_OUT,
      O => D_2_IOBUFE_BUF0_OE
    );
  D_2_IOBUFE_BUF0_BUFOE_OUT_183 : X_BUF
    port map (
      I => D_2_IOBUFE_BUF0_TRST,
      O => D_2_IOBUFE_BUF0_BUFOE_OUT
    );
  D_2_IOBUFE_BUF0_Q_184 : X_BUF
    port map (
      I => D_2_IOBUFE_BUF0_D,
      O => D_2_IOBUFE_BUF0_Q
    );
  D_2_IOBUFE_BUF0_D_185 : X_XOR2
    port map (
      I0 => D_2_IOBUFE_BUF0_D1,
      I1 => D_2_IOBUFE_BUF0_D2,
      O => D_2_IOBUFE_BUF0_D
    );
  D_2_IOBUFE_BUF0_D1_186 : X_ZERO
    port map (
      O => D_2_IOBUFE_BUF0_D1
    );
  D_2_IOBUFE_BUF0_D2_187 : X_AND2
    port map (
      I0 => D_2_IOBUFE,
      I1 => D_2_IOBUFE,
      O => D_2_IOBUFE_BUF0_D2
    );
  D_2_IOBUFE_BUF0_TRST_188 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN3,
      O => D_2_IOBUFE_BUF0_TRST
    );
  D_3_IOBUFE_BUF0_189 : X_BUF
    port map (
      I => D_3_IOBUFE_BUF0_Q,
      O => D_3_IOBUFE_BUF0
    );
  D_3_IOBUFE_BUF0_OE_190 : X_BUF
    port map (
      I => D_3_IOBUFE_BUF0_BUFOE_OUT,
      O => D_3_IOBUFE_BUF0_OE
    );
  D_3_IOBUFE_BUF0_BUFOE_OUT_191 : X_BUF
    port map (
      I => D_3_IOBUFE_BUF0_TRST,
      O => D_3_IOBUFE_BUF0_BUFOE_OUT
    );
  D_3_IOBUFE_BUF0_Q_192 : X_BUF
    port map (
      I => D_3_IOBUFE_BUF0_D,
      O => D_3_IOBUFE_BUF0_Q
    );
  D_3_IOBUFE_BUF0_D_193 : X_XOR2
    port map (
      I0 => D_3_IOBUFE_BUF0_D1,
      I1 => D_3_IOBUFE_BUF0_D2,
      O => D_3_IOBUFE_BUF0_D
    );
  D_3_IOBUFE_BUF0_D1_194 : X_ZERO
    port map (
      O => D_3_IOBUFE_BUF0_D1
    );
  D_3_IOBUFE_BUF0_D2_195 : X_AND2
    port map (
      I0 => D_3_IOBUFE,
      I1 => D_3_IOBUFE,
      O => D_3_IOBUFE_BUF0_D2
    );
  D_3_IOBUFE_BUF0_TRST_196 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN3,
      O => D_3_IOBUFE_BUF0_TRST
    );
  D_4_IOBUFE_BUF0_197 : X_BUF
    port map (
      I => D_4_IOBUFE_BUF0_Q,
      O => D_4_IOBUFE_BUF0
    );
  D_4_IOBUFE_BUF0_OE_198 : X_BUF
    port map (
      I => D_4_IOBUFE_BUF0_BUFOE_OUT,
      O => D_4_IOBUFE_BUF0_OE
    );
  D_4_IOBUFE_BUF0_BUFOE_OUT_199 : X_BUF
    port map (
      I => D_4_IOBUFE_BUF0_TRST,
      O => D_4_IOBUFE_BUF0_BUFOE_OUT
    );
  D_4_IOBUFE_BUF0_Q_200 : X_BUF
    port map (
      I => D_4_IOBUFE_BUF0_D,
      O => D_4_IOBUFE_BUF0_Q
    );
  D_4_IOBUFE_BUF0_D_201 : X_XOR2
    port map (
      I0 => D_4_IOBUFE_BUF0_D1,
      I1 => D_4_IOBUFE_BUF0_D2,
      O => D_4_IOBUFE_BUF0_D
    );
  D_4_IOBUFE_BUF0_D1_202 : X_ZERO
    port map (
      O => D_4_IOBUFE_BUF0_D1
    );
  D_4_IOBUFE_BUF0_D2_203 : X_AND2
    port map (
      I0 => D_4_IOBUFE,
      I1 => D_4_IOBUFE,
      O => D_4_IOBUFE_BUF0_D2
    );
  D_4_IOBUFE_BUF0_TRST_204 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN3,
      O => D_4_IOBUFE_BUF0_TRST
    );
  D_5_IOBUFE_BUF0_205 : X_BUF
    port map (
      I => D_5_IOBUFE_BUF0_Q,
      O => D_5_IOBUFE_BUF0
    );
  D_5_IOBUFE_BUF0_OE_206 : X_BUF
    port map (
      I => D_5_IOBUFE_BUF0_BUFOE_OUT,
      O => D_5_IOBUFE_BUF0_OE
    );
  D_5_IOBUFE_BUF0_BUFOE_OUT_207 : X_BUF
    port map (
      I => D_5_IOBUFE_BUF0_TRST,
      O => D_5_IOBUFE_BUF0_BUFOE_OUT
    );
  D_5_IOBUFE_BUF0_Q_208 : X_BUF
    port map (
      I => D_5_IOBUFE_BUF0_D,
      O => D_5_IOBUFE_BUF0_Q
    );
  D_5_IOBUFE_BUF0_D_209 : X_XOR2
    port map (
      I0 => D_5_IOBUFE_BUF0_D1,
      I1 => D_5_IOBUFE_BUF0_D2,
      O => D_5_IOBUFE_BUF0_D
    );
  D_5_IOBUFE_BUF0_D1_210 : X_ZERO
    port map (
      O => D_5_IOBUFE_BUF0_D1
    );
  D_5_IOBUFE_BUF0_D2_211 : X_AND2
    port map (
      I0 => D_5_IOBUFE,
      I1 => D_5_IOBUFE,
      O => D_5_IOBUFE_BUF0_D2
    );
  D_5_IOBUFE_BUF0_TRST_212 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN3,
      O => D_5_IOBUFE_BUF0_TRST
    );
  D_6_IOBUFE_BUF0_213 : X_BUF
    port map (
      I => D_6_IOBUFE_BUF0_Q,
      O => D_6_IOBUFE_BUF0
    );
  D_6_IOBUFE_BUF0_OE_214 : X_BUF
    port map (
      I => D_6_IOBUFE_BUF0_BUFOE_OUT,
      O => D_6_IOBUFE_BUF0_OE
    );
  D_6_IOBUFE_BUF0_BUFOE_OUT_215 : X_BUF
    port map (
      I => D_6_IOBUFE_BUF0_TRST,
      O => D_6_IOBUFE_BUF0_BUFOE_OUT
    );
  D_6_IOBUFE_BUF0_Q_216 : X_BUF
    port map (
      I => D_6_IOBUFE_BUF0_D,
      O => D_6_IOBUFE_BUF0_Q
    );
  D_6_IOBUFE_BUF0_D_217 : X_XOR2
    port map (
      I0 => D_6_IOBUFE_BUF0_D1,
      I1 => D_6_IOBUFE_BUF0_D2,
      O => D_6_IOBUFE_BUF0_D
    );
  D_6_IOBUFE_BUF0_D1_218 : X_ZERO
    port map (
      O => D_6_IOBUFE_BUF0_D1
    );
  D_6_IOBUFE_BUF0_D2_219 : X_AND2
    port map (
      I0 => D_6_IOBUFE,
      I1 => D_6_IOBUFE,
      O => D_6_IOBUFE_BUF0_D2
    );
  D_6_IOBUFE_BUF0_TRST_220 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN3,
      O => D_6_IOBUFE_BUF0_TRST
    );
  D_7_IOBUFE_BUF0_221 : X_BUF
    port map (
      I => D_7_IOBUFE_BUF0_Q,
      O => D_7_IOBUFE_BUF0
    );
  D_7_IOBUFE_BUF0_OE_222 : X_BUF
    port map (
      I => D_7_IOBUFE_BUF0_BUFOE_OUT,
      O => D_7_IOBUFE_BUF0_OE
    );
  D_7_IOBUFE_BUF0_BUFOE_OUT_223 : X_BUF
    port map (
      I => D_7_IOBUFE_BUF0_TRST,
      O => D_7_IOBUFE_BUF0_BUFOE_OUT
    );
  D_7_IOBUFE_BUF0_Q_224 : X_BUF
    port map (
      I => D_7_IOBUFE_BUF0_D,
      O => D_7_IOBUFE_BUF0_Q
    );
  D_7_IOBUFE_BUF0_D_225 : X_XOR2
    port map (
      I0 => D_7_IOBUFE_BUF0_D1,
      I1 => D_7_IOBUFE_BUF0_D2,
      O => D_7_IOBUFE_BUF0_D
    );
  D_7_IOBUFE_BUF0_D1_226 : X_ZERO
    port map (
      O => D_7_IOBUFE_BUF0_D1
    );
  D_7_IOBUFE_BUF0_D2_227 : X_AND2
    port map (
      I0 => D_7_IOBUFE,
      I1 => D_7_IOBUFE,
      O => D_7_IOBUFE_BUF0_D2
    );
  D_7_IOBUFE_BUF0_TRST_228 : X_AND4
    port map (
      I0 => HR_Wn_OBUF,
      I1 => NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN1,
      I2 => NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN2,
      I3 => NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN3,
      O => D_7_IOBUFE_BUF0_TRST
    );
  A_0_IBUF_BUF0_229 : X_BUF
    port map (
      I => A_0_IBUF_BUF0_Q,
      O => A_0_IBUF_BUF0
    );
  A_0_IBUF_BUF0_Q_230 : X_BUF
    port map (
      I => A_0_IBUF_BUF0_D,
      O => A_0_IBUF_BUF0_Q
    );
  A_0_IBUF_BUF0_D_231 : X_XOR2
    port map (
      I0 => A_0_IBUF_BUF0_D1,
      I1 => A_0_IBUF_BUF0_D2,
      O => A_0_IBUF_BUF0_D
    );
  A_0_IBUF_BUF0_D1_232 : X_ZERO
    port map (
      O => A_0_IBUF_BUF0_D1
    );
  A_0_IBUF_BUF0_D2_233 : X_AND2
    port map (
      I0 => A_0_IBUF,
      I1 => A_0_IBUF,
      O => A_0_IBUF_BUF0_D2
    );
  A_1_IBUF_BUF0_234 : X_BUF
    port map (
      I => A_1_IBUF_BUF0_Q,
      O => A_1_IBUF_BUF0
    );
  A_1_IBUF_BUF0_Q_235 : X_BUF
    port map (
      I => A_1_IBUF_BUF0_D,
      O => A_1_IBUF_BUF0_Q
    );
  A_1_IBUF_BUF0_D_236 : X_XOR2
    port map (
      I0 => A_1_IBUF_BUF0_D1,
      I1 => A_1_IBUF_BUF0_D2,
      O => A_1_IBUF_BUF0_D
    );
  A_1_IBUF_BUF0_D1_237 : X_ZERO
    port map (
      O => A_1_IBUF_BUF0_D1
    );
  A_1_IBUF_BUF0_D2_238 : X_AND2
    port map (
      I0 => A_1_IBUF,
      I1 => A_1_IBUF,
      O => A_1_IBUF_BUF0_D2
    );
  A_2_IBUF_BUF0_239 : X_BUF
    port map (
      I => A_2_IBUF_BUF0_Q,
      O => A_2_IBUF_BUF0
    );
  A_2_IBUF_BUF0_Q_240 : X_BUF
    port map (
      I => A_2_IBUF_BUF0_D,
      O => A_2_IBUF_BUF0_Q
    );
  A_2_IBUF_BUF0_D_241 : X_XOR2
    port map (
      I0 => A_2_IBUF_BUF0_D1,
      I1 => A_2_IBUF_BUF0_D2,
      O => A_2_IBUF_BUF0_D
    );
  A_2_IBUF_BUF0_D1_242 : X_ZERO
    port map (
      O => A_2_IBUF_BUF0_D1
    );
  A_2_IBUF_BUF0_D2_243 : X_AND2
    port map (
      I0 => A_2_IBUF,
      I1 => A_2_IBUF,
      O => A_2_IBUF_BUF0_D2
    );
  HCSn_0_OBUF_244 : X_BUF
    port map (
      I => HCSn_0_OBUF_Q,
      O => HCSn_0_OBUF
    );
  HCSn_0_OBUF_Q_245 : X_BUF
    port map (
      I => HCSn_0_OBUF_D,
      O => HCSn_0_OBUF_Q
    );
  HCSn_0_OBUF_D_246 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HCSn_0_OBUF_D_IN0,
      I1 => HCSn_0_OBUF_D2,
      O => HCSn_0_OBUF_D
    );
  HCSn_0_OBUF_D1_247 : X_ZERO
    port map (
      O => HCSn_0_OBUF_D1
    );
  HCSn_0_OBUF_D2_248 : X_AND3
    port map (
      I0 => NlwInverterSignal_HCSn_0_OBUF_D2_IN0,
      I1 => NlwInverterSignal_HCSn_0_OBUF_D2_IN1,
      I2 => NlwInverterSignal_HCSn_0_OBUF_D2_IN2,
      O => HCSn_0_OBUF_D2
    );
  HCSn_1_OBUF_249 : X_BUF
    port map (
      I => HCSn_1_OBUF_Q,
      O => HCSn_1_OBUF
    );
  HCSn_1_OBUF_Q_250 : X_BUF
    port map (
      I => HCSn_1_OBUF_D,
      O => HCSn_1_OBUF_Q
    );
  HCSn_1_OBUF_D_251 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HCSn_1_OBUF_D_IN0,
      I1 => HCSn_1_OBUF_D2,
      O => HCSn_1_OBUF_D
    );
  HCSn_1_OBUF_D1_252 : X_ZERO
    port map (
      O => HCSn_1_OBUF_D1
    );
  HCSn_1_OBUF_D2_253 : X_AND3
    port map (
      I0 => NlwInverterSignal_HCSn_1_OBUF_D2_IN0,
      I1 => A_4_IBUF,
      I2 => NlwInverterSignal_HCSn_1_OBUF_D2_IN2,
      O => HCSn_1_OBUF_D2
    );
  HCSn_2_OBUF_254 : X_BUF
    port map (
      I => HCSn_2_OBUF_Q,
      O => HCSn_2_OBUF
    );
  HCSn_2_OBUF_Q_255 : X_BUF
    port map (
      I => HCSn_2_OBUF_D,
      O => HCSn_2_OBUF_Q
    );
  HCSn_2_OBUF_D_256 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HCSn_2_OBUF_D_IN0,
      I1 => HCSn_2_OBUF_D2,
      O => HCSn_2_OBUF_D
    );
  HCSn_2_OBUF_D1_257 : X_ZERO
    port map (
      O => HCSn_2_OBUF_D1
    );
  HCSn_2_OBUF_D2_258 : X_AND3
    port map (
      I0 => NlwInverterSignal_HCSn_2_OBUF_D2_IN0,
      I1 => NlwInverterSignal_HCSn_2_OBUF_D2_IN1,
      I2 => A_5_IBUF,
      O => HCSn_2_OBUF_D2
    );
  HCSn_3_OBUF_259 : X_BUF
    port map (
      I => HCSn_3_OBUF_Q,
      O => HCSn_3_OBUF
    );
  HCSn_3_OBUF_Q_260 : X_BUF
    port map (
      I => HCSn_3_OBUF_D,
      O => HCSn_3_OBUF_Q
    );
  HCSn_3_OBUF_D_261 : X_XOR2
    port map (
      I0 => NlwInverterSignal_HCSn_3_OBUF_D_IN0,
      I1 => HCSn_3_OBUF_D2,
      O => HCSn_3_OBUF_D
    );
  HCSn_3_OBUF_D1_262 : X_ZERO
    port map (
      O => HCSn_3_OBUF_D1
    );
  HCSn_3_OBUF_D2_263 : X_AND3
    port map (
      I0 => NlwInverterSignal_HCSn_3_OBUF_D2_IN0,
      I1 => A_4_IBUF,
      I2 => A_5_IBUF,
      O => HCSn_3_OBUF_D2
    );
  HDSn_OBUF_BUF0_264 : X_BUF
    port map (
      I => HDSn_OBUF_BUF0_Q,
      O => HDSn_OBUF_BUF0
    );
  HDSn_OBUF_BUF0_Q_265 : X_BUF
    port map (
      I => HDSn_OBUF_BUF0_D,
      O => HDSn_OBUF_BUF0_Q
    );
  HDSn_OBUF_BUF0_D_266 : X_XOR2
    port map (
      I0 => HDSn_OBUF_BUF0_D1,
      I1 => HDSn_OBUF_BUF0_D2,
      O => HDSn_OBUF_BUF0_D
    );
  HDSn_OBUF_BUF0_D1_267 : X_ZERO
    port map (
      O => HDSn_OBUF_BUF0_D1
    );
  HDSn_OBUF_BUF0_D2_268 : X_AND2
    port map (
      I0 => HDSn_OBUF,
      I1 => HDSn_OBUF,
      O => HDSn_OBUF_BUF0_D2
    );
  HR_Wn_OBUF_BUF0_269 : X_BUF
    port map (
      I => HR_Wn_OBUF_BUF0_Q,
      O => HR_Wn_OBUF_BUF0
    );
  HR_Wn_OBUF_BUF0_Q_270 : X_BUF
    port map (
      I => HR_Wn_OBUF_BUF0_D,
      O => HR_Wn_OBUF_BUF0_Q
    );
  HR_Wn_OBUF_BUF0_D_271 : X_XOR2
    port map (
      I0 => HR_Wn_OBUF_BUF0_D1,
      I1 => HR_Wn_OBUF_BUF0_D2,
      O => HR_Wn_OBUF_BUF0_D
    );
  HR_Wn_OBUF_BUF0_D1_272 : X_ZERO
    port map (
      O => HR_Wn_OBUF_BUF0_D1
    );
  HR_Wn_OBUF_BUF0_D2_273 : X_AND2
    port map (
      I0 => HR_Wn_OBUF,
      I1 => HR_Wn_OBUF,
      O => HR_Wn_OBUF_BUF0_D2
    );
  CLKMD_1_OBUF_Q_274 : X_BUF
    port map (
      I => CLKMD_1_OBUF_Q_0,
      O => CLKMD_1_OBUF_Q
    );
  CLKMD_1_OBUF_OE_275 : X_BUF
    port map (
      I => CLKMD_1_OBUF_BUFOE_OUT,
      O => CLKMD_1_OBUF_OE
    );
  CLKMD_1_OBUF_BUFOE_OUT_276 : X_BUF
    port map (
      I => CLKMD_1_OBUF_TRST,
      O => CLKMD_1_OBUF_BUFOE_OUT
    );
  CLKMD_1_OBUF_Q_277 : X_BUF
    port map (
      I => CLKMD_1_OBUF_D,
      O => CLKMD_1_OBUF_Q_0
    );
  CLKMD_1_OBUF_D_278 : X_XOR2
    port map (
      I0 => CLKMD_1_OBUF_D1,
      I1 => CLKMD_1_OBUF_D2,
      O => CLKMD_1_OBUF_D
    );
  CLKMD_1_OBUF_D1_279 : X_ZERO
    port map (
      O => CLKMD_1_OBUF_D1
    );
  CLKMD_1_OBUF_D2_280 : X_ZERO
    port map (
      O => CLKMD_1_OBUF_D2
    );
  CLKMD_1_OBUF_TRST_281 : X_ZERO
    port map (
      O => CLKMD_1_OBUF_TRST
    );
  CLKMD_1_OBUF_BUF0_282 : X_BUF
    port map (
      I => CLKMD_1_OBUF_BUF0_Q,
      O => CLKMD_1_OBUF_BUF0
    );
  CLKMD_1_OBUF_BUF0_Q_283 : X_BUF
    port map (
      I => CLKMD_1_OBUF_BUF0_D,
      O => CLKMD_1_OBUF_BUF0_Q
    );
  CLKMD_1_OBUF_BUF0_D_284 : X_XOR2
    port map (
      I0 => CLKMD_1_OBUF_BUF0_D1,
      I1 => CLKMD_1_OBUF_BUF0_D2,
      O => CLKMD_1_OBUF_BUF0_D
    );
  CLKMD_1_OBUF_BUF0_D1_285 : X_ZERO
    port map (
      O => CLKMD_1_OBUF_BUF0_D1
    );
  CLKMD_1_OBUF_BUF0_D2_286 : X_ZERO
    port map (
      O => CLKMD_1_OBUF_BUF0_D2
    );
  CLKMD_1_OBUF_BUF1_287 : X_BUF
    port map (
      I => CLKMD_1_OBUF_BUF1_Q,
      O => CLKMD_1_OBUF_BUF1
    );
  CLKMD_1_OBUF_BUF1_Q_288 : X_BUF
    port map (
      I => CLKMD_1_OBUF_BUF1_D,
      O => CLKMD_1_OBUF_BUF1_Q
    );
  CLKMD_1_OBUF_BUF1_D_289 : X_XOR2
    port map (
      I0 => CLKMD_1_OBUF_BUF1_D1,
      I1 => CLKMD_1_OBUF_BUF1_D2,
      O => CLKMD_1_OBUF_BUF1_D
    );
  CLKMD_1_OBUF_BUF1_D1_290 : X_ZERO
    port map (
      O => CLKMD_1_OBUF_BUF1_D1
    );
  CLKMD_1_OBUF_BUF1_D2_291 : X_ZERO
    port map (
      O => CLKMD_1_OBUF_BUF1_D2
    );
  CLKMD_3_OBUF_292 : X_BUF
    port map (
      I => CLKMD_3_OBUF_Q,
      O => CLKMD_3_OBUF
    );
  CLKMD_3_OBUF_Q_293 : X_BUF
    port map (
      I => CLKMD_3_OBUF_D,
      O => CLKMD_3_OBUF_Q
    );
  CLKMD_3_OBUF_D_294 : X_XOR2
    port map (
      I0 => CLKMD_3_OBUF_D1,
      I1 => CLKMD_3_OBUF_D2,
      O => CLKMD_3_OBUF_D
    );
  CLKMD_3_OBUF_D1_295 : X_ZERO
    port map (
      O => CLKMD_3_OBUF_D1
    );
  CLKMD_3_OBUF_D2_296 : X_ONE
    port map (
      O => CLKMD_3_OBUF_D2
    );
  HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM_297 : X_BUF
    port map (
      I => HD_7_IOBUFE_HD_7_IOBUFE_TRST_Q,
      O => HD_7_IOBUFE_HD_7_IOBUFE_TRST_UIM
    );
  HD_7_IOBUFE_HD_7_IOBUFE_TRST_Q_298 : X_BUF
    port map (
      I => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D,
      O => HD_7_IOBUFE_HD_7_IOBUFE_TRST_Q
    );
  HD_7_IOBUFE_HD_7_IOBUFE_TRST_D_299 : X_XOR2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D1,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2,
      O => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D
    );
  HD_7_IOBUFE_HD_7_IOBUFE_TRST_D1_300 : X_ZERO
    port map (
      O => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D1
    );
  HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_0_301 : X_AND2
    port map (
      I0 => D2HD_en,
      I1 => D2HD_en,
      O => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_0
    );
  HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1_302 : X_AND2
    port map (
      I0 => NlwInverterSignal_HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1_IN0,
      I1 => RDn_IBUF,
      O => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1
    );
  HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_303 : X_OR2
    port map (
      I0 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_0,
      I1 => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1,
      O => HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2
    );
  D2HD_en_D2HD_en_RSTF_INT_UIM_304 : X_BUF
    port map (
      I => D2HD_en_D2HD_en_RSTF_INT_Q,
      O => D2HD_en_D2HD_en_RSTF_INT_UIM
    );
  D2HD_en_D2HD_en_RSTF_INT_Q_305 : X_BUF
    port map (
      I => D2HD_en_D2HD_en_RSTF_INT_D,
      O => D2HD_en_D2HD_en_RSTF_INT_Q
    );
  D2HD_en_D2HD_en_RSTF_INT_D_306 : X_XOR2
    port map (
      I0 => D2HD_en_D2HD_en_RSTF_INT_D1,
      I1 => D2HD_en_D2HD_en_RSTF_INT_D2,
      O => D2HD_en_D2HD_en_RSTF_INT_D
    );
  D2HD_en_D2HD_en_RSTF_INT_D1_307 : X_ZERO
    port map (
      O => D2HD_en_D2HD_en_RSTF_INT_D1
    );
  D2HD_en_D2HD_en_RSTF_INT_D2_308 : X_AND3
    port map (
      I0 => NlwInverterSignal_D2HD_en_D2HD_en_RSTF_INT_D2_IN0,
      I1 => RDn_IBUF,
      I2 => NlwInverterSignal_D2HD_en_D2HD_en_RSTF_INT_D2_IN2,
      O => D2HD_en_D2HD_en_RSTF_INT_D2
    );
  NlwInverterBlock_HRSTn_0_D2_IN0 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_0_D2_IN0
    );
  NlwInverterBlock_HRSTn_0_D2_IN1 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_0_D2_IN1
    );
  NlwInverterBlock_HRSTn_0_CE_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HRSTn_0_CE_IN0
    );
  NlwInverterBlock_HRSTn_0_CE_IN2 : X_INV
    port map (
      I => A_4_IBUF,
      O => NlwInverterSignal_HRSTn_0_CE_IN2
    );
  NlwInverterBlock_HRSTn_0_CE_IN3 : X_INV
    port map (
      I => A_5_IBUF,
      O => NlwInverterSignal_HRSTn_0_CE_IN3
    );
  NlwInverterBlock_HRSTn_1_D2_IN0 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_1_D2_IN0
    );
  NlwInverterBlock_HRSTn_1_D2_IN1 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_1_D2_IN1
    );
  NlwInverterBlock_HRSTn_1_CE_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HRSTn_1_CE_IN0
    );
  NlwInverterBlock_HRSTn_1_CE_IN3 : X_INV
    port map (
      I => A_5_IBUF,
      O => NlwInverterSignal_HRSTn_1_CE_IN3
    );
  NlwInverterBlock_HRSTn_2_D2_IN0 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_2_D2_IN0
    );
  NlwInverterBlock_HRSTn_2_D2_IN1 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_2_D2_IN1
    );
  NlwInverterBlock_HRSTn_2_CE_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HRSTn_2_CE_IN0
    );
  NlwInverterBlock_HRSTn_2_CE_IN2 : X_INV
    port map (
      I => A_4_IBUF,
      O => NlwInverterSignal_HRSTn_2_CE_IN2
    );
  NlwInverterBlock_HRSTn_3_D2_IN0 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_3_D2_IN0
    );
  NlwInverterBlock_HRSTn_3_D2_IN1 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HRSTn_3_D2_IN1
    );
  NlwInverterBlock_HRSTn_3_CE_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HRSTn_3_CE_IN0
    );
  NlwInverterBlock_HD_0_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_0_IOBUFE_D1,
      O => NlwInverterSignal_HD_0_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_0_IOBUFE_D2_PT_0_IN0 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HD_0_IOBUFE_D2_PT_0_IN0
    );
  NlwInverterBlock_HD_0_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_0_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_0_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N890,
      O => NlwInverterSignal_HD_0_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_HD_1_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_1_IOBUFE_D1,
      O => NlwInverterSignal_HD_1_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_1_IOBUFE_D2_PT_0_IN1 : X_INV
    port map (
      I => N892,
      O => NlwInverterSignal_HD_1_IOBUFE_D2_PT_0_IN1
    );
  NlwInverterBlock_HD_1_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_1_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_1_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N892,
      O => NlwInverterSignal_HD_1_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_HD_2_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_2_IOBUFE_D1,
      O => NlwInverterSignal_HD_2_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_2_IOBUFE_D2_PT_0_IN1 : X_INV
    port map (
      I => N894,
      O => NlwInverterSignal_HD_2_IOBUFE_D2_PT_0_IN1
    );
  NlwInverterBlock_HD_2_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_2_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_2_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N894,
      O => NlwInverterSignal_HD_2_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_HD_3_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_3_IOBUFE_D1,
      O => NlwInverterSignal_HD_3_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_3_IOBUFE_D2_PT_0_IN1 : X_INV
    port map (
      I => N896,
      O => NlwInverterSignal_HD_3_IOBUFE_D2_PT_0_IN1
    );
  NlwInverterBlock_HD_3_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_3_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_3_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N896,
      O => NlwInverterSignal_HD_3_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_HD_4_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_4_IOBUFE_D1,
      O => NlwInverterSignal_HD_4_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_4_IOBUFE_D2_PT_0_IN1 : X_INV
    port map (
      I => N898,
      O => NlwInverterSignal_HD_4_IOBUFE_D2_PT_0_IN1
    );
  NlwInverterBlock_HD_4_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_4_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_4_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N898,
      O => NlwInverterSignal_HD_4_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_HD_5_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_5_IOBUFE_D1,
      O => NlwInverterSignal_HD_5_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_5_IOBUFE_D2_PT_0_IN1 : X_INV
    port map (
      I => N900,
      O => NlwInverterSignal_HD_5_IOBUFE_D2_PT_0_IN1
    );
  NlwInverterBlock_HD_5_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_5_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_5_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N900,
      O => NlwInverterSignal_HD_5_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_HD_6_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_6_IOBUFE_D1,
      O => NlwInverterSignal_HD_6_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_6_IOBUFE_D2_PT_0_IN1 : X_INV
    port map (
      I => N902,
      O => NlwInverterSignal_HD_6_IOBUFE_D2_PT_0_IN1
    );
  NlwInverterBlock_HD_6_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_6_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_6_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N902,
      O => NlwInverterSignal_HD_6_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_HD_7_IOBUFE_D_IN0 : X_INV
    port map (
      I => HD_7_IOBUFE_D1,
      O => NlwInverterSignal_HD_7_IOBUFE_D_IN0
    );
  NlwInverterBlock_HD_7_IOBUFE_D2_PT_0_IN1 : X_INV
    port map (
      I => N908,
      O => NlwInverterSignal_HD_7_IOBUFE_D2_PT_0_IN1
    );
  NlwInverterBlock_HD_7_IOBUFE_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_7_IOBUFE_D2_PT_1_IN0
    );
  NlwInverterBlock_HD_7_IOBUFE_D2_PT_1_IN2 : X_INV
    port map (
      I => N908,
      O => NlwInverterSignal_HD_7_IOBUFE_D2_PT_1_IN2
    );
  NlwInverterBlock_D2HD_en_D2_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_D2HD_en_D2_IN0
    );
  NlwInverterBlock_D2HD_en_D2_IN2 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D2HD_en_D2_IN2
    );
  NlwInverterBlock_D2HD_en_CLKF_IN0 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D2HD_en_CLKF_IN0
    );
  NlwInverterBlock_D2HD_en_CLKF_IN1 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D2HD_en_CLKF_IN1
    );
  NlwInverterBlock_D2HD_en_RSTF_IN0 : X_INV
    port map (
      I => D2HD_en_D2HD_en_RSTF_INT_UIM,
      O => NlwInverterSignal_D2HD_en_RSTF_IN0
    );
  NlwInverterBlock_D2HD_en_RSTF_IN1 : X_INV
    port map (
      I => D2HD_en_D2HD_en_RSTF_INT_UIM,
      O => NlwInverterSignal_D2HD_en_RSTF_IN1
    );
  NlwInverterBlock_D_0_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_0_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_0_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_0_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_D_1_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_1_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_1_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_1_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_D_2_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_2_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_2_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_2_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_D_3_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_3_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_3_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_3_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_D_4_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_4_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_4_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_4_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_D_5_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_5_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_5_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_5_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_D_6_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_6_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_6_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_6_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_D_7_IOBUFE_BUF0_TRST_IN1 : X_INV
    port map (
      I => RDn_IBUF,
      O => NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN1
    );
  NlwInverterBlock_D_7_IOBUFE_BUF0_TRST_IN2 : X_INV
    port map (
      I => HDSn_OBUF,
      O => NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN2
    );
  NlwInverterBlock_D_7_IOBUFE_BUF0_TRST_IN3 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_D_7_IOBUFE_BUF0_TRST_IN3
    );
  NlwInverterBlock_HCSn_0_OBUF_D_IN0 : X_INV
    port map (
      I => HCSn_0_OBUF_D1,
      O => NlwInverterSignal_HCSn_0_OBUF_D_IN0
    );
  NlwInverterBlock_HCSn_0_OBUF_D2_IN0 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_HCSn_0_OBUF_D2_IN0
    );
  NlwInverterBlock_HCSn_0_OBUF_D2_IN1 : X_INV
    port map (
      I => A_4_IBUF,
      O => NlwInverterSignal_HCSn_0_OBUF_D2_IN1
    );
  NlwInverterBlock_HCSn_0_OBUF_D2_IN2 : X_INV
    port map (
      I => A_5_IBUF,
      O => NlwInverterSignal_HCSn_0_OBUF_D2_IN2
    );
  NlwInverterBlock_HCSn_1_OBUF_D_IN0 : X_INV
    port map (
      I => HCSn_1_OBUF_D1,
      O => NlwInverterSignal_HCSn_1_OBUF_D_IN0
    );
  NlwInverterBlock_HCSn_1_OBUF_D2_IN0 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_HCSn_1_OBUF_D2_IN0
    );
  NlwInverterBlock_HCSn_1_OBUF_D2_IN2 : X_INV
    port map (
      I => A_5_IBUF,
      O => NlwInverterSignal_HCSn_1_OBUF_D2_IN2
    );
  NlwInverterBlock_HCSn_2_OBUF_D_IN0 : X_INV
    port map (
      I => HCSn_2_OBUF_D1,
      O => NlwInverterSignal_HCSn_2_OBUF_D_IN0
    );
  NlwInverterBlock_HCSn_2_OBUF_D2_IN0 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_HCSn_2_OBUF_D2_IN0
    );
  NlwInverterBlock_HCSn_2_OBUF_D2_IN1 : X_INV
    port map (
      I => A_4_IBUF,
      O => NlwInverterSignal_HCSn_2_OBUF_D2_IN1
    );
  NlwInverterBlock_HCSn_3_OBUF_D_IN0 : X_INV
    port map (
      I => HCSn_3_OBUF_D1,
      O => NlwInverterSignal_HCSn_3_OBUF_D_IN0
    );
  NlwInverterBlock_HCSn_3_OBUF_D2_IN0 : X_INV
    port map (
      I => A_3_IBUF,
      O => NlwInverterSignal_HCSn_3_OBUF_D2_IN0
    );
  NlwInverterBlock_HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_HD_7_IOBUFE_HD_7_IOBUFE_TRST_D2_PT_1_IN0
    );
  NlwInverterBlock_D2HD_en_D2HD_en_RSTF_INT_D2_IN0 : X_INV
    port map (
      I => HR_Wn_OBUF,
      O => NlwInverterSignal_D2HD_en_D2HD_en_RSTF_INT_D2_IN0
    );
  NlwInverterBlock_D2HD_en_D2HD_en_RSTF_INT_D2_IN2 : X_INV
    port map (
      I => RESET_IBUF,
      O => NlwInverterSignal_D2HD_en_D2HD_en_RSTF_INT_D2_IN2
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

