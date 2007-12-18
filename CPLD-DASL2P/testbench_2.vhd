-- Vhdl test bench created from schematic fs_gen.sch - Fri Jul 02 14:52:00 2004
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY testbench2 IS
END testbench2;
ARCHITECTURE behavioral OF testbench2 IS 

   COMPONENT fs_gen
   PORT( M_Sn	:	IN	STD_LOGIC; 
          MCLK	:	OUT	STD_LOGIC; 
          CLK_16k	:	OUT	STD_LOGIC; 
          CLK_4k	:	OUT	STD_LOGIC; 
          CLK_16M	:	IN	STD_LOGIC; 
          FS	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL M_Sn	:	STD_LOGIC;
   SIGNAL MCLK	:	STD_LOGIC;
   SIGNAL CLK_16k	:	STD_LOGIC;
   SIGNAL CLK_4k	:	STD_LOGIC;
   SIGNAL CLK_16M	:	STD_LOGIC;
   SIGNAL FS	:	STD_LOGIC;

   SIGNAL t         : INTEGER;

BEGIN

   UUT: fs_gen PORT MAP(
		M_Sn => M_Sn, 
		MCLK => MCLK, 
		CLK_16k => CLK_16k, 
		CLK_4k => CLK_4k, 
		CLK_16M => CLK_16M, 
		FS => FS
   );

-- *** Test Bench - User Defined Section ***

   PROCESS -- clock process for CLK,
   BEGIN
       t <= 0;
       FOR iCount in 1 to 8192 LOOP
           CLK_16M <= transport '0';
           WAIT FOR 10 ns;
           CLK_16M <= transport '1';
           WAIT FOR 10 ns;
         t <= t + 1;
       END LOOP;
      WAIT;
   END PROCESS;

   tb : PROCESS -- main process
   BEGIN

      M_Sn <= TRANSPORT '1';

      WAIT; -- will wait forever

   END PROCESS;

-- *** End Test Bench - User Defined Section ***

END;
