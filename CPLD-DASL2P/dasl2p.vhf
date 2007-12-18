-- VHDL model created from C:\Xilinx\cpld\data\drawing\m2_1.sch - Sat Feb 11 22:53:32 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity M2_1_MXILINX_dasl2p is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_dasl2p;

architecture BEHAVIORAL of M2_1_MXILINX_dasl2p is
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


-- VHDL model created from C:\Xilinx\cpld\data\drawing\m2_1e.sch - Sat Feb 11 22:53:32 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity M2_1E_MXILINX_dasl2p is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1E_MXILINX_dasl2p;

architecture BEHAVIORAL of M2_1E_MXILINX_dasl2p is
   attribute BOX_TYPE   : STRING ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : COMPONENT is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : COMPONENT is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : COMPONENT is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>D1, I1=>E, I2=>S0, O=>M1);
   
   I_36_31 : AND3B1
      port map (I0=>S0, I1=>E, I2=>D0, O=>M0);
   
   I_36_38 : OR2
      port map (I0=>M1, I1=>M0, O=>O);
   
end BEHAVIORAL;


-- VHDL model created from C:\Xilinx\cpld\data\drawing\m8_1e.sch - Sat Feb 11 22:53:32 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity M8_1E_MXILINX_dasl2p is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          D2 : in    std_logic; 
          D3 : in    std_logic; 
          D4 : in    std_logic; 
          D5 : in    std_logic; 
          D6 : in    std_logic; 
          D7 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          S1 : in    std_logic; 
          S2 : in    std_logic; 
          O  : out   std_logic);
end M8_1E_MXILINX_dasl2p;

architecture BEHAVIORAL of M8_1E_MXILINX_dasl2p is
   attribute HU_SET     : STRING ;
   signal M01 : std_logic;
   signal M03 : std_logic;
   signal M23 : std_logic;
   signal M45 : std_logic;
   signal M47 : std_logic;
   signal M67 : std_logic;
   component M2_1E_MXILINX_dasl2p
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component M2_1_MXILINX_dasl2p
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of U1 : LABEL is "U1_6";
   attribute HU_SET of U2 : LABEL is "U2_5";
   attribute HU_SET of U3 : LABEL is "U3_4";
   attribute HU_SET of U4 : LABEL is "U4_3";
   attribute HU_SET of U5 : LABEL is "U5_1";
   attribute HU_SET of U6 : LABEL is "U6_0";
   attribute HU_SET of U7 : LABEL is "U7_2";
begin
   U1 : M2_1E_MXILINX_dasl2p
      port map (D0=>D0, D1=>D1, E=>E, S0=>S0, O=>M01);
   
   U2 : M2_1E_MXILINX_dasl2p
      port map (D0=>D2, D1=>D3, E=>E, S0=>S0, O=>M23);
   
   U3 : M2_1E_MXILINX_dasl2p
      port map (D0=>D4, D1=>D5, E=>E, S0=>S0, O=>M45);
   
   U4 : M2_1E_MXILINX_dasl2p
      port map (D0=>D6, D1=>D7, E=>E, S0=>S0, O=>M67);
   
   U5 : M2_1_MXILINX_dasl2p
      port map (D0=>M01, D1=>M23, S0=>S1, O=>M03);
   
   U6 : M2_1_MXILINX_dasl2p
      port map (D0=>M45, D1=>M67, S0=>S1, O=>M47);
   
   U7 : M2_1_MXILINX_dasl2p
      port map (D0=>M03, D1=>M47, S0=>S2, O=>O);
   
end BEHAVIORAL;


-- VHDL model created from C:\Xilinx\cpld\data\drawing\d3_8e.sch - Sat Feb 11 22:53:32 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity D3_8E_MXILINX_dasl2p is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic; 
          D4 : out   std_logic; 
          D5 : out   std_logic; 
          D6 : out   std_logic; 
          D7 : out   std_logic);
end D3_8E_MXILINX_dasl2p;

architecture BEHAVIORAL of D3_8E_MXILINX_dasl2p is
   attribute BOX_TYPE   : STRING ;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : COMPONENT is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : COMPONENT is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : COMPONENT is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : COMPONENT is "BLACK_BOX";
   
begin
   I_36_30 : AND4
      port map (I0=>A2, I1=>A1, I2=>A0, I3=>E, O=>D7);
   
   I_36_31 : AND4B1
      port map (I0=>A0, I1=>A2, I2=>A1, I3=>E, O=>D6);
   
   I_36_32 : AND4B1
      port map (I0=>A1, I1=>A2, I2=>A0, I3=>E, O=>D5);
   
   I_36_33 : AND4B2
      port map (I0=>A1, I1=>A0, I2=>A2, I3=>E, O=>D4);
   
   I_36_34 : AND4B1
      port map (I0=>A2, I1=>A0, I2=>A1, I3=>E, O=>D3);
   
   I_36_35 : AND4B2
      port map (I0=>A2, I1=>A0, I2=>A1, I3=>E, O=>D2);
   
   I_36_36 : AND4B2
      port map (I0=>A2, I1=>A1, I2=>A0, I3=>E, O=>D1);
   
   I_36_37 : AND4B3
      port map (I0=>A2, I1=>A1, I2=>A0, I3=>E, O=>D0);
   
end BEHAVIORAL;


-- VHDL model created from dasl2p.sch - Sat Feb 11 22:53:32 2006


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity dasl2p is
   port ( BR0       : in    std_logic; 
          BR1       : in    std_logic; 
          CINTn     : in    std_logic; 
          CLK       : in    std_logic; 
          COUT      : in    std_logic; 
          DR0       : in    std_logic; 
          DR1       : in    std_logic; 
          DSP_A0    : in    std_logic; 
          DSP_A1    : in    std_logic; 
          DSP_A2    : in    std_logic; 
          DSP_BX0   : in    std_logic; 
          DSP_BX1   : in    std_logic; 
          IOSTRn    : in    std_logic; 
          RESETn    : in    std_logic; 
          R_Wn      : in    std_logic; 
          BX0       : out   std_logic; 
          BX1       : out   std_logic; 
          CCLK      : out   std_logic; 
          CCS0n     : out   std_logic; 
          CCS1n     : out   std_logic; 
          CIN       : out   std_logic; 
          DSP_BCLK0 : out   std_logic; 
          DSP_BCLK1 : out   std_logic; 
          DSP_BFS0  : out   std_logic; 
          DSP_BFS1  : out   std_logic; 
          DSP_BR0   : out   std_logic; 
          DSP_BR1   : out   std_logic; 
          DSP_INT0n : out   std_logic; 
          DSP_INT1n : out   std_logic; 
          DSP_INT3n : out   std_logic; 
          DX0       : out   std_logic; 
          DX1       : out   std_logic; 
          FSa0      : out   std_logic; 
          FSa1      : out   std_logic; 
          FSb0      : out   std_logic; 
          FSb1      : out   std_logic; 
          LED0a     : out   std_logic; 
          LED0b     : out   std_logic; 
          LED1a     : out   std_logic; 
          LED1b     : out   std_logic; 
          MCLK0     : out   std_logic; 
          MCLK1     : out   std_logic; 
          TST_FS    : out   std_logic; 
          TST_M_Sn  : out   std_logic; 
          BCLK0     : inout std_logic; 
          BCLK1     : inout std_logic; 
          DCLK0     : inout std_logic; 
          DCLK1     : inout std_logic; 
          DSP_D0    : inout std_logic; 
          DSP_D1    : inout std_logic; 
          FSc0      : inout std_logic; 
          FSc1      : inout std_logic);
end dasl2p;

architecture BEHAVIORAL of dasl2p is
   attribute BOX_TYPE   : STRING ;
   attribute HU_SET     : STRING ;
   signal CA0       : std_logic;
   signal CEN       : std_logic;
   signal D_IN0     : std_logic;
   signal D_OUT     : std_logic_vector (1 downto 0);
   signal MnS0      : std_logic;
   signal MnS1      : std_logic;
   signal MS_Loop   : std_logic;
   signal RESET     : std_logic;
   signal VCC       : std_logic;
   signal WCS       : std_logic_vector (7 downto 0);
   signal WR_E      : std_logic;
   signal XLXN_1881 : std_logic;
   signal XLXN_2020 : std_logic;
   signal XLXN_2212 : std_logic;
   signal XLXN_2214 : std_logic;
   signal XLXN_2389 : std_logic;
   signal XLXN_2561 : std_logic;
   signal XLXN_2566 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : COMPONENT is "BLACK_BOX";
   
   component AND2B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B2 : COMPONENT is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : COMPONENT is "BLACK_BOX";
   
   component IOBUFE
      port ( I  : in    std_logic; 
             IO : inout std_logic; 
             O  : out   std_logic; 
             E  : in    std_logic);
   end component;
   attribute BOX_TYPE of IOBUFE : COMPONENT is "BLACK_BOX";
   
   component D3_8E_MXILINX_dasl2p
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component fd2cn
      port ( Cn  : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             CLR : in    std_logic);
   end component;
   
   component tdm_mux
      port ( M_Sn0     : in    std_logic; 
             M_Sn1     : in    std_logic; 
             MS_Loop   : in    std_logic; 
             DSP_BCLK0 : out   std_logic; 
             DSP_BFS0  : out   std_logic; 
             DSP_BCLK1 : out   std_logic; 
             DSP_BFS1  : out   std_logic; 
             FSa0      : out   std_logic; 
             FSb0      : out   std_logic; 
             FSc0      : inout std_logic; 
             DCLK0     : inout std_logic; 
             MCLK0     : out   std_logic; 
             BCLK0     : inout std_logic; 
             INTn0     : out   std_logic; 
             DCLK1     : inout std_logic; 
             FSc1      : inout std_logic; 
             FSa1      : out   std_logic; 
             FSb1      : out   std_logic; 
             BCLK1     : inout std_logic; 
             MCLK1     : out   std_logic; 
             INTn1     : out   std_logic; 
             CLK       : in    std_logic);
   end component;
   
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of OBUF : COMPONENT is "BLACK_BOX";
   
   component M8_1E_MXILINX_dasl2p
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : COMPONENT is "BLACK_BOX";
   
   component fd1cn
      port ( CLR : in    std_logic; 
             D   : in    std_logic; 
             Cn  : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component OBUFT
      port ( I : in    std_logic; 
             T : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of OBUFT : COMPONENT is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : COMPONENT is "BLACK_BOX";
   
   component NAND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2B1 : COMPONENT is "BLACK_BOX";
   
   component M2_1_MXILINX_dasl2p
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of U7 : LABEL is "U7_7";
   attribute HU_SET of XLXI_511 : LABEL is "XLXI_511_10";
   attribute HU_SET of XLXI_786 : LABEL is "XLXI_786_12";
   attribute HU_SET of XLXI_795 : LABEL is "XLXI_795_11";
   attribute HU_SET of XLXI_820 : LABEL is "XLXI_820_8";
   attribute HU_SET of XLXI_824 : LABEL is "XLXI_824_9";
begin
   U1 : INV
      port map (I=>RESETn, O=>RESET);
   
   U2 : AND2B2
      port map (I0=>R_Wn, I1=>IOSTRn, O=>WR_E);
   
   U3 : AND2B1
      port map (I0=>IOSTRn, I1=>R_Wn, O=>VCC);
   
   U4 : IOBUFE
      port map (E=>VCC, I=>D_IN0, O=>D_OUT(0), IO=>DSP_D0);
   
   U5 : IOBUFE
      port map (E=>VCC, I=>XLXN_2020, O=>D_OUT(1), IO=>DSP_D1);
   
   U7 : D3_8E_MXILINX_dasl2p
      port map (A0=>DSP_A0, A1=>DSP_A1, A2=>DSP_A2, E=>WR_E, D0=>WCS(0),
            D1=>WCS(1), D2=>WCS(2), D3=>WCS(3), D4=>WCS(4), D5=>WCS(5),
            D6=>WCS(6), D7=>WCS(7));
   
   U22 : fd2cn
      port map (CLR=>RESET, Cn=>WCS(0), D0=>D_OUT(0), D1=>D_OUT(1), Q0=>CA0,
            Q1=>CEN);
   
   U23 : fd2cn
      port map (CLR=>RESET, Cn=>WCS(4), D0=>D_OUT(0), D1=>D_OUT(1),
            Q0=>XLXN_2212, Q1=>LED0b);
   
   U24 : fd2cn
      port map (CLR=>RESET, Cn=>WCS(7), D0=>D_OUT(0), D1=>D_OUT(1),
            Q0=>XLXN_2214, Q1=>LED1b);
   
   U25 : tdm_mux
      port map (CLK=>CLK, MS_Loop=>MS_Loop, M_Sn0=>MnS0, M_Sn1=>MnS1,
            DSP_BCLK0=>DSP_BCLK0, DSP_BCLK1=>DSP_BCLK1, DSP_BFS0=>DSP_BFS0,
            DSP_BFS1=>DSP_BFS1, FSa0=>FSa0, FSa1=>FSa1, FSb0=>FSb0, FSb1=>FSb1,
            INTn0=>DSP_INT0n, INTn1=>DSP_INT1n, MCLK0=>MCLK0, MCLK1=>MCLK1,
            BCLK0=>BCLK0, BCLK1=>BCLK1, DCLK0=>DCLK0, DCLK1=>DCLK1, FSc0=>FSc0,
            FSc1=>FSc1);
   
   U55 : OBUF
      port map (I=>CINTn, O=>DSP_INT3n);
   
   XLXI_511 : M8_1E_MXILINX_dasl2p
      port map (D0=>CINTn, D1=>COUT, D2=>MnS0, D3=>DR0, D4=>XLXN_2389,
            D5=>MnS1, D6=>DR1, D7=>XLXN_1881, E=>VCC, S0=>DSP_A0, S1=>DSP_A1,
            S2=>DSP_A2, O=>D_IN0);
   
   XLXI_568 : GND
      port map (G=>XLXN_1881);
   
   XLXI_661 : GND
      port map (G=>XLXN_2020);
   
   XLXI_662 : fd1cn
      port map (CLR=>RESET, Cn=>WCS(2), D=>D_OUT(0), Q=>MnS0);
   
   XLXI_663 : fd1cn
      port map (CLR=>RESET, Cn=>WCS(3), D=>D_OUT(0), Q=>XLXN_2561);
   
   XLXI_664 : fd1cn
      port map (CLR=>RESET, Cn=>WCS(6), D=>D_OUT(0), Q=>XLXN_2566);
   
   XLXI_671 : GND
      port map (G=>XLXN_2389);
   
   XLXI_688 : OBUFT
      port map (I=>XLXN_2212, T=>RESET, O=>LED0a);
   
   XLXI_689 : OBUFT
      port map (I=>XLXN_2214, T=>RESET, O=>LED1a);
   
   XLXI_690 : fd2cn
      port map (CLR=>RESET, Cn=>WCS(1), D0=>D_OUT(0), D1=>D_OUT(1), Q0=>CIN,
            Q1=>CCLK);
   
   XLXI_691 : NAND2
      port map (I0=>CEN, I1=>CA0, O=>CCS1n);
   
   XLXI_692 : NAND2B1
      port map (I0=>CA0, I1=>CEN, O=>CCS0n);
   
   XLXI_765 : GND
      port map (G=>TST_M_Sn);
   
   XLXI_766 : GND
      port map (G=>TST_FS);
   
   XLXI_786 : M2_1_MXILINX_dasl2p
      port map (D0=>DSP_BX0, D1=>BR1, S0=>MS_Loop, O=>BX0);
   
   XLXI_795 : M2_1_MXILINX_dasl2p
      port map (D0=>DSP_BX1, D1=>BR0, S0=>MS_Loop, O=>BX1);
   
   XLXI_813 : fd2cn
      port map (CLR=>RESET, Cn=>WCS(5), D0=>D_OUT(0), D1=>D_OUT(1), Q0=>MnS1,
            Q1=>MS_Loop);
   
   XLXI_820 : M2_1_MXILINX_dasl2p
      port map (D0=>XLXN_2561, D1=>DR1, S0=>MS_Loop, O=>DX0);
   
   XLXI_824 : M2_1_MXILINX_dasl2p
      port map (D0=>XLXN_2566, D1=>DR0, S0=>MS_Loop, O=>DX1);
   
   XLXI_838 : OBUF
      port map (I=>BR0, O=>DSP_BR0);
   
   XLXI_839 : OBUF
      port map (I=>BR1, O=>DSP_BR1);
   
end BEHAVIORAL;


