-- VHDL model created from C:\Xilinx\cpld\data\drawing\m2_1.sch - Fri Feb 10 15:54:15 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity M2_1_MXILINX_tdm_mux is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_tdm_mux;

architecture BEHAVIORAL of M2_1_MXILINX_tdm_mux is
   attribute BOX_TYPE   : STRING ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : COMPONENT is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : COMPONENT is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : COMPONENT is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0, I1=>D0, O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1, I1=>M0, O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1, I1=>S0, O=>M1);
   
end BEHAVIORAL;


-- VHDL model created from C:\Xilinx\cpld\data\drawing\obufe.sch - Fri Feb 10 15:54:15 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity OBUFE_MXILINX_tdm_mux is
   port ( E : in    std_logic; 
          I : in    std_logic; 
          O : out   std_logic);
end OBUFE_MXILINX_tdm_mux;

architecture BEHAVIORAL of OBUFE_MXILINX_tdm_mux is
   attribute BOX_TYPE   : STRING ;
   signal T : std_logic;
   component OBUFT
      port ( I : in    std_logic; 
             T : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of OBUFT : COMPONENT is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : COMPONENT is "BLACK_BOX";
   
begin
   I_36_10 : OBUFT
      port map (I=>I, T=>T, O=>O);
   
   I_36_12 : INV
      port map (I=>E, O=>T);
   
end BEHAVIORAL;


-- VHDL model created from tdm_mux.sch - Fri Feb 10 15:54:15 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity tdm_mux is
   port ( CLK       : in    std_logic; 
          MS_Loop   : in    std_logic; 
          M_Sn0     : in    std_logic; 
          M_Sn1     : in    std_logic; 
          DSP_BCLK0 : out   std_logic; 
          DSP_BCLK1 : out   std_logic; 
          DSP_BFS0  : out   std_logic; 
          DSP_BFS1  : out   std_logic; 
          FSa0      : out   std_logic; 
          FSa1      : out   std_logic; 
          FSb0      : out   std_logic; 
          FSb1      : out   std_logic; 
          INTn0     : out   std_logic; 
          INTn1     : out   std_logic; 
          MCLK0     : out   std_logic; 
          MCLK1     : out   std_logic; 
          BCLK0     : inout std_logic; 
          BCLK1     : inout std_logic; 
          DCLK0     : inout std_logic; 
          DCLK1     : inout std_logic; 
          FSc0      : inout std_logic; 
          FSc1      : inout std_logic);
end tdm_mux;

architecture BEHAVIORAL of tdm_mux is
   attribute BOX_TYPE   : STRING ;
   attribute HU_SET     : STRING ;
   signal CLK_4k    : std_logic;
   signal CLK_16k   : std_logic;
   signal FS        : std_logic;
   signal MCLK      : std_logic;
   signal XLXN_38   : std_logic;
   signal XLXN_78   : std_logic;
   signal XLXN_82   : std_logic;
   signal XLXN_263  : std_logic;
   signal XLXN_265  : std_logic;
   signal XLXN_274  : std_logic;
   signal XLXN_276  : std_logic;
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of OBUF : COMPONENT is "BLACK_BOX";
   
   component fs_gen
      port ( MCLK    : out   std_logic; 
             FS      : out   std_logic; 
             CLK_16k : out   std_logic; 
             CLK_4k  : out   std_logic; 
             CLK_16M : in    std_logic);
   end component;
   
   component OBUFE_MXILINX_tdm_mux
      port ( E : in    std_logic; 
             I : in    std_logic; 
             O : out   std_logic);
   end component;
   
   component IOBUFE
      port ( I  : in    std_logic; 
             IO : inout std_logic; 
             O  : out   std_logic; 
             E  : in    std_logic);
   end component;
   attribute BOX_TYPE of IOBUFE : COMPONENT is "BLACK_BOX";
   
   component M2_1_MXILINX_tdm_mux
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : COMPONENT is "BLACK_BOX";
   
   attribute HU_SET of XLXI_3 : LABEL is "XLXI_3_5";
   attribute HU_SET of XLXI_25 : LABEL is "XLXI_25_4";
   attribute HU_SET of XLXI_34 : LABEL is "XLXI_34_6";
   attribute HU_SET of XLXI_35 : LABEL is "XLXI_35_7";
   attribute HU_SET of XLXI_48 : LABEL is "XLXI_48_0";
   attribute HU_SET of XLXI_50 : LABEL is "XLXI_50_1";
   attribute HU_SET of XLXI_51 : LABEL is "XLXI_51_2";
   attribute HU_SET of XLXI_57 : LABEL is "XLXI_57_3";
begin
   U38 : OBUF
      port map (I=>MCLK, O=>MCLK1);
   
   U43 : fs_gen
      port map (CLK_16M=>CLK, CLK_4k=>CLK_4k, CLK_16k=>CLK_16k, FS=>FS,
            MCLK=>MCLK);
   
   XLXI_3 : OBUFE_MXILINX_tdm_mux
      port map (E=>M_Sn0, I=>FS, O=>FSb0);
   
   XLXI_5 : IOBUFE
      port map (E=>M_Sn0, I=>CLK_16k, O=>XLXN_38, IO=>DCLK0);
   
   XLXI_14 : IOBUFE
      port map (E=>M_Sn0, I=>MCLK, O=>XLXN_82, IO=>BCLK0);
   
   XLXI_25 : M2_1_MXILINX_tdm_mux
      port map (D0=>XLXN_78, D1=>FS, S0=>M_Sn0, O=>DSP_BFS0);
   
   XLXI_27 : INV
      port map (I=>XLXN_38, O=>INTn0);
   
   XLXI_33 : IOBUFE
      port map (E=>M_Sn0, I=>CLK_4k, O=>XLXN_78, IO=>FSc0);
   
   XLXI_34 : OBUFE_MXILINX_tdm_mux
      port map (E=>M_Sn0, I=>FS, O=>FSa0);
   
   XLXI_35 : M2_1_MXILINX_tdm_mux
      port map (D0=>XLXN_82, D1=>MCLK, S0=>M_Sn0, O=>DSP_BCLK0);
   
   XLXI_47 : IOBUFE
      port map (E=>M_Sn1, I=>CLK_4k, O=>XLXN_265, IO=>FSc1);
   
   XLXI_48 : M2_1_MXILINX_tdm_mux
      port map (D0=>XLXN_265, D1=>FS, S0=>M_Sn1, O=>XLXN_263);
   
   XLXI_49 : OBUF
      port map (I=>XLXN_263, O=>DSP_BFS1);
   
   XLXI_50 : OBUFE_MXILINX_tdm_mux
      port map (E=>M_Sn1, I=>FS, O=>FSb1);
   
   XLXI_51 : OBUFE_MXILINX_tdm_mux
      port map (E=>M_Sn1, I=>FS, O=>FSa1);
   
   XLXI_52 : IOBUFE
      port map (E=>M_Sn1, I=>CLK_16k, O=>XLXN_274, IO=>DCLK1);
   
   XLXI_54 : INV
      port map (I=>XLXN_274, O=>INTn1);
   
   XLXI_56 : IOBUFE
      port map (E=>M_Sn1, I=>MCLK, O=>XLXN_276, IO=>BCLK1);
   
   XLXI_57 : M2_1_MXILINX_tdm_mux
      port map (D0=>XLXN_276, D1=>MCLK, S0=>M_Sn1, O=>DSP_BCLK1);
   
   XLXI_672 : OBUF
      port map (I=>MCLK, O=>MCLK0);
   
end BEHAVIORAL;


