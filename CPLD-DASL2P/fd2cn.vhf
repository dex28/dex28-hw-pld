-- VHDL model created from C:\Xilinx\cpld\data\drawing\fdc.sch - Thu Jul 15 16:41:52 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity FDC_MXILINX_fd2cn is
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end FDC_MXILINX_fd2cn;

architecture BEHAVIORAL of FDC_MXILINX_fd2cn is
   attribute BOX_TYPE   : STRING ;
   signal XLXN_5 : std_logic;
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
   I_36_55 : GND
      port map (G=>XLXN_5);
   
   U0 : FDCP
      port map (C=>C, CLR=>CLR, D=>D, PRE=>XLXN_5, Q=>Q);
   
end BEHAVIORAL;


-- VHDL model created from fd2cn.sch - Thu Jul 15 16:41:52 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity fd2cn is
   port ( CLR : in    std_logic; 
          Cn  : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic);
end fd2cn;

architecture BEHAVIORAL of fd2cn is
   attribute BOX_TYPE   : STRING ;
   attribute HU_SET     : STRING ;
   signal C   : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : COMPONENT is "BLACK_BOX";
   
   component FDC_MXILINX_fd2cn
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_13 : LABEL is "XLXI_13_0";
   attribute HU_SET of XLXI_14 : LABEL is "XLXI_14_1";
begin
   XLXI_4 : INV
      port map (I=>Cn, O=>C);
   
   XLXI_13 : FDC_MXILINX_fd2cn
      port map (C=>C, CLR=>CLR, D=>D0, Q=>Q0);
   
   XLXI_14 : FDC_MXILINX_fd2cn
      port map (C=>C, CLR=>CLR, D=>D1, Q=>Q1);
   
end BEHAVIORAL;


