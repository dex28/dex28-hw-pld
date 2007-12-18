-- VHDL model created from C:\Xilinx\cpld\data\drawing\fdc.sch - Thu Jul 15 16:41:53 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity FDC_MXILINX_fd1cn is
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end FDC_MXILINX_fd1cn;

architecture BEHAVIORAL of FDC_MXILINX_fd1cn is
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


-- VHDL model created from fd1cn.sch - Thu Jul 15 16:41:53 2004


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity fd1cn is
   port ( CLR : in    std_logic; 
          Cn  : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end fd1cn;

architecture BEHAVIORAL of fd1cn is
   attribute HU_SET     : STRING ;
   attribute BOX_TYPE   : STRING ;
   signal XLXN_2 : std_logic;
   component FDC_MXILINX_fd1cn
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : COMPONENT is "BLACK_BOX";
   
   attribute HU_SET of XLXI_3 : LABEL is "XLXI_3_0";
begin
   XLXI_3 : FDC_MXILINX_fd1cn
      port map (C=>XLXN_2, CLR=>CLR, D=>D, Q=>Q);
   
   XLXI_4 : INV
      port map (I=>Cn, O=>XLXN_2);
   
end BEHAVIORAL;


