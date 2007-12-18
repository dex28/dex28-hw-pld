-- VHDL model created from C:\Xilinx\cpld\data\drawing\and8.sch - Thu Jul 15 16:41:50 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity AND8_MXILINX_fs_gen is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end AND8_MXILINX_fs_gen;

architecture BEHAVIORAL of AND8_MXILINX_fs_gen is
   attribute BOX_TYPE   : STRING ;
   signal S0 : std_logic;
   signal S1 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : COMPONENT is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : COMPONENT is "BLACK_BOX";
   
begin
   I_36_110 : AND4
      port map (I0=>I0, I1=>I1, I2=>I2, I3=>I3, O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4, I1=>I5, I2=>I6, I3=>I7, O=>S1);
   
   I_36_142 : AND2
      port map (I0=>S0, I1=>S1, O=>O);
   
end BEHAVIORAL;


-- VHDL model created from C:\Xilinx\cpld\data\drawing\fd.sch - Thu Jul 15 16:41:50 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity FD_MXILINX_fs_gen is
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end FD_MXILINX_fs_gen;

architecture BEHAVIORAL of FD_MXILINX_fs_gen is
   attribute BOX_TYPE   : STRING ;
   signal XLXN_4 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : COMPONENT is "BLACK_BOX";
   
   component FDCP
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : COMPONENT is "BLACK_BOX";
   
begin
   I_36_43 : GND
      port map (G=>XLXN_4);
   
   U0 : FDCP
      port map (C=>C, CLR=>XLXN_4, D=>D, PRE=>XLXN_4, Q=>Q);
   
end BEHAVIORAL;


-- VHDL model created from C:\Xilinx\cpld\data\drawing\fdre.sch - Thu Jul 15 16:41:50 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity FDRE_MXILINX_fs_gen is
   port ( C  : in    std_logic; 
          CE : in    std_logic; 
          D  : in    std_logic; 
          R  : in    std_logic; 
          Q  : out   std_logic);
end FDRE_MXILINX_fs_gen;

architecture BEHAVIORAL of FDRE_MXILINX_fs_gen is
   attribute BOX_TYPE   : STRING ;
   attribute HU_SET     : STRING ;
   attribute RLOC       : STRING ;
   signal A0      : std_logic;
   signal A1      : std_logic;
   signal QD      : std_logic;
   signal Q_DUMMY : std_logic;
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : COMPONENT is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : COMPONENT is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : COMPONENT is "BLACK_BOX";
   
   component FD_MXILINX_fs_gen
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   attribute HU_SET of I_36_42 : LABEL is "I_36_42_0";
   attribute RLOC of I_36_42 : LABEL is "R0C0";
begin
   Q <= Q_DUMMY;
   I_36_32 : AND3B1
      port map (I0=>R, I1=>D, I2=>CE, O=>A1);
   
   I_36_33 : AND3B2
      port map (I0=>CE, I1=>R, I2=>Q_DUMMY, O=>A0);
   
   I_36_34 : OR2
      port map (I0=>A1, I1=>A0, O=>QD);
   
   I_36_42 : FD_MXILINX_fs_gen
      port map (C=>C, D=>QD, Q=>Q_DUMMY);
   
end BEHAVIORAL;


-- VHDL model created from C:\Xilinx\cpld\data\drawing\ftrse.sch - Thu Jul 15 16:41:50 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity FTRSE_MXILINX_fs_gen is
   port ( C  : in    std_logic; 
          CE : in    std_logic; 
          R  : in    std_logic; 
          S  : in    std_logic; 
          T  : in    std_logic; 
          Q  : out   std_logic);
end FTRSE_MXILINX_fs_gen;

architecture BEHAVIORAL of FTRSE_MXILINX_fs_gen is
   attribute BOX_TYPE       : STRING ;
   attribute HU_SET         : STRING ;
   signal CE_S    : std_logic;
   signal D_S     : std_logic;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : COMPONENT is "BLACK_BOX";
   
   component FDRE_MXILINX_fs_gen
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : COMPONENT is "BLACK_BOX";
   
   attribute HU_SET of I_36_35 : LABEL is "I_36_35_1";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T, I1=>Q_DUMMY, O=>TQ);
   
   I_36_35 : FDRE_MXILINX_fs_gen
      port map (C=>C, CE=>CE_S, D=>D_S, R=>R, Q=>Q_DUMMY);
   
   I_36_73 : OR2
      port map (I0=>S, I1=>TQ, O=>D_S);
   
   I_36_77 : OR2
      port map (I0=>CE, I1=>S, O=>CE_S);
   
end BEHAVIORAL;


-- VHDL model created from C:\Xilinx\cpld\data\drawing\cb4re.sch - Thu Jul 15 16:41:50 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity CB4RE_MXILINX_fs_gen is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          R   : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CB4RE_MXILINX_fs_gen;

architecture BEHAVIORAL of CB4RE_MXILINX_fs_gen is
   attribute BOX_TYPE   : STRING ;
   attribute HU_SET     : STRING ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal XLXN_1   : std_logic;
   signal XLXN_2   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : COMPONENT is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : COMPONENT is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : COMPONENT is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : COMPONENT is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : COMPONENT is "BLACK_BOX";
   
   component FTRSE_MXILINX_fs_gen
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             R  : in    std_logic; 
             S  : in    std_logic; 
             T  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   
   attribute HU_SET of U0 : LABEL is "U0_2";
   attribute HU_SET of U1 : LABEL is "U1_3";
   attribute HU_SET of U2 : LABEL is "U2_4";
   attribute HU_SET of U3 : LABEL is "U3_5";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_36_31 : AND4
      port map (I0=>Q3_DUMMY, I1=>Q2_DUMMY, I2=>Q1_DUMMY, I3=>Q0_DUMMY,
            O=>TC_DUMMY);
   
   I_36_32 : AND3
      port map (I0=>Q2_DUMMY, I1=>Q1_DUMMY, I2=>Q0_DUMMY, O=>T3);
   
   I_36_33 : AND2
      port map (I0=>Q1_DUMMY, I1=>Q0_DUMMY, O=>T2);
   
   I_36_58 : VCC
      port map (P=>XLXN_1);
   
   I_36_64 : GND
      port map (G=>XLXN_2);
   
   I_36_69 : AND2
      port map (I0=>CE, I1=>TC_DUMMY, O=>CEO);
   
   U0 : FTRSE_MXILINX_fs_gen
      port map (C=>C, CE=>CE, R=>R, S=>XLXN_2, T=>XLXN_1, Q=>Q0_DUMMY);
   
   U1 : FTRSE_MXILINX_fs_gen
      port map (C=>C, CE=>CE, R=>R, S=>XLXN_2, T=>Q0_DUMMY, Q=>Q1_DUMMY);
   
   U2 : FTRSE_MXILINX_fs_gen
      port map (C=>C, CE=>CE, R=>R, S=>XLXN_2, T=>T2, Q=>Q2_DUMMY);
   
   U3 : FTRSE_MXILINX_fs_gen
      port map (C=>C, CE=>CE, R=>R, S=>XLXN_2, T=>T3, Q=>Q3_DUMMY);
   
end BEHAVIORAL;


-- VHDL model created from fs_gen.sch - Thu Jul 15 16:41:50 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity fs_gen is
   port ( CLK_16M : in    std_logic; 
          CLK_4k  : out   std_logic; 
          CLK_16k : out   std_logic; 
          FS      : out   std_logic; 
          MCLK    : out   std_logic);
end fs_gen;

architecture BEHAVIORAL of fs_gen is
   attribute BOX_TYPE   : STRING ;
   attribute HU_SET     : STRING ;
   signal FS_D     : std_logic;
   signal Q0       : std_logic;
   signal Q1       : std_logic;
   signal Q2       : std_logic;
   signal Q3       : std_logic;
   signal Q4       : std_logic;
   signal Q5       : std_logic;
   signal Q6       : std_logic;
   signal Q7       : std_logic;
   signal Q8       : std_logic;
   signal Q9       : std_logic;
   signal Q10      : std_logic;
   signal Q11      : std_logic;
   signal XLXN_4   : std_logic;
   signal XLXN_21  : std_logic;
   signal XLXN_48  : std_logic;
   signal XLXN_119 : std_logic;
   signal XLXN_120 : std_logic;
   signal XLXN_121 : std_logic;
   signal XLXN_163 : std_logic;
   signal XLXN_174 : std_logic;
   signal XLXN_176 : std_logic;
   signal XLXN_177 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : COMPONENT is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : COMPONENT is "BLACK_BOX";
   
   component CB4RE_MXILINX_fs_gen
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             R   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component FDRE_MXILINX_fs_gen
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : COMPONENT is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : COMPONENT is "BLACK_BOX";
   
   component AND8_MXILINX_fs_gen
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : COMPONENT is "BLACK_BOX";
   
   attribute HU_SET of XLXI_43 : LABEL is "XLXI_43_6";
   attribute HU_SET of XLXI_44 : LABEL is "XLXI_44_7";
   attribute HU_SET of XLXI_45 : LABEL is "XLXI_45_8";
   attribute HU_SET of XLXI_46 : LABEL is "XLXI_46_9";
   attribute HU_SET of XLXI_80 : LABEL is "XLXI_80_10";
begin
   XLXI_12 : VCC
      port map (P=>XLXN_4);
   
   XLXI_17 : GND
      port map (G=>XLXN_119);
   
   XLXI_43 : CB4RE_MXILINX_fs_gen
      port map (C=>CLK_16M, CE=>XLXN_4, R=>XLXN_119, CEO=>XLXN_21, Q0=>Q0,
            Q1=>Q1, Q2=>Q2, Q3=>Q3, TC=>open);
   
   XLXI_44 : CB4RE_MXILINX_fs_gen
      port map (C=>CLK_16M, CE=>XLXN_21, R=>XLXN_119, CEO=>XLXN_48, Q0=>Q4,
            Q1=>Q5, Q2=>Q6, Q3=>Q7, TC=>open);
   
   XLXI_45 : CB4RE_MXILINX_fs_gen
      port map (C=>CLK_16M, CE=>XLXN_48, R=>XLXN_119, CEO=>open, Q0=>Q8,
            Q1=>Q9, Q2=>Q10, Q3=>Q11, TC=>open);
   
   XLXI_46 : FDRE_MXILINX_fs_gen
      port map (C=>CLK_16M, CE=>XLXN_120, D=>FS_D, R=>XLXN_121, Q=>FS);
   
   XLXI_47 : VCC
      port map (P=>XLXN_120);
   
   XLXI_48 : GND
      port map (G=>XLXN_121);
   
   XLXI_76 : AND3
      port map (I0=>Q2, I1=>Q1, I2=>Q0, O=>XLXN_174);
   
   XLXI_79 : XOR2
      port map (I0=>Q3, I1=>XLXN_174, O=>XLXN_163);
   
   XLXI_80 : AND8_MXILINX_fs_gen
      port map (I0=>Q10, I1=>Q9, I2=>Q8, I3=>XLXN_176, I4=>Q6, I5=>Q5,
            I6=>XLXN_177, I7=>XLXN_163, O=>FS_D);
   
   XLXI_81 : INV
      port map (I=>Q2, O=>MCLK);
   
   XLXI_82 : INV
      port map (I=>Q9, O=>CLK_16k);
   
   XLXI_83 : INV
      port map (I=>Q11, O=>CLK_4k);
   
   XLXI_84 : INV
      port map (I=>Q7, O=>XLXN_176);
   
   XLXI_85 : INV
      port map (I=>Q4, O=>XLXN_177);
   
end BEHAVIORAL;


