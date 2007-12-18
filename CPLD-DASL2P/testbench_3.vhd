-- Vhdl test bench created from schematic dasl2p.sch - Thu Jul 01 15:21:12 2004
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
ENTITY testbench IS
END testbench;
ARCHITECTURE behavioral OF testbench IS 

   COMPONENT dasl2p
   PORT( DCLK1	:	INOUT	STD_LOGIC; 
          FSb1	:	OUT	STD_LOGIC; 
          FSc1	:	INOUT	STD_LOGIC; 
          DSP_INT1n	:	OUT	STD_LOGIC; 
          DCLK0	:	INOUT	STD_LOGIC; 
          BCLK0	:	INOUT	STD_LOGIC; 
          FSb0	:	OUT	STD_LOGIC; 
          FSa0	:	OUT	STD_LOGIC; 
          FSc0	:	INOUT	STD_LOGIC; 
          DSP_BFS0	:	OUT	STD_LOGIC; 
          DSP_BCLK0	:	OUT	STD_LOGIC; 
          DSP_BCLK1	:	OUT	STD_LOGIC; 
          DSP_BFS1	:	OUT	STD_LOGIC; 
          BCLK1	:	INOUT	STD_LOGIC; 
          FSa1	:	OUT	STD_LOGIC; 
          DSP_INT0n	:	OUT	STD_LOGIC; 
          CCS1n	:	OUT	STD_LOGIC; 
          CCS0n	:	OUT	STD_LOGIC; 
          LED0a	:	OUT	STD_LOGIC; 
          DSP_BR0	:	OUT	STD_LOGIC; 
          DSP_BR1	:	OUT	STD_LOGIC; 
          BR0	:	IN	STD_LOGIC; 
          BR1	:	IN	STD_LOGIC; 
          BX1	:	OUT	STD_LOGIC; 
          DSP_BX1	:	IN	STD_LOGIC; 
          BX0	:	OUT	STD_LOGIC; 
          DSP_BX0	:	IN	STD_LOGIC; 
          DSP_A0	:	IN	STD_LOGIC; 
          DSP_A1	:	IN	STD_LOGIC; 
          DSP_A2	:	IN	STD_LOGIC; 
          IOSTRn	:	IN	STD_LOGIC; 
          R_Wn	:	IN	STD_LOGIC; 
          TST_FS	:	OUT	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          MCLK1	:	OUT	STD_LOGIC; 
          RESETn	:	IN	STD_LOGIC; 
          TST_M_Sn	:	OUT	STD_LOGIC; 
          DX0	:	OUT	STD_LOGIC; 
          DX1	:	OUT	STD_LOGIC; 
          COUT	:	OUT	STD_LOGIC; 
          CCLK	:	OUT	STD_LOGIC; 
          DR0	:	IN	STD_LOGIC; 
          DR1	:	IN	STD_LOGIC; 
          CIN	:	IN	STD_LOGIC; 
          CINTn	:	IN	STD_LOGIC; 
          DSP_INT3n	:	OUT	STD_LOGIC; 
          MCLK0	:	OUT	STD_LOGIC; 
          LED0b	:	OUT	STD_LOGIC; 
          LED1a	:	OUT	STD_LOGIC; 
          LED1b	:	OUT	STD_LOGIC; 
          DSP_D1	:	INOUT	STD_LOGIC; 
          DSP_D0	:	INOUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL DCLK1	:	STD_LOGIC;
   SIGNAL FSb1	:	STD_LOGIC;
   SIGNAL FSc1	:	STD_LOGIC;
   SIGNAL DSP_INT1n	:	STD_LOGIC;
   SIGNAL DCLK0	:	STD_LOGIC;
   SIGNAL BCLK0	:	STD_LOGIC;
   SIGNAL FSb0	:	STD_LOGIC;
   SIGNAL FSa0	:	STD_LOGIC;
   SIGNAL FSc0	:	STD_LOGIC;
   SIGNAL DSP_BFS0	:	STD_LOGIC;
   SIGNAL DSP_BCLK0	:	STD_LOGIC;
   SIGNAL DSP_BCLK1	:	STD_LOGIC;
   SIGNAL DSP_BFS1	:	STD_LOGIC;
   SIGNAL BCLK1	:	STD_LOGIC;
   SIGNAL FSa1	:	STD_LOGIC;
   SIGNAL DSP_INT0n	:	STD_LOGIC;
   SIGNAL CCS1n	:	STD_LOGIC;
   SIGNAL CCS0n	:	STD_LOGIC;
   SIGNAL LED0a	:	STD_LOGIC;
   SIGNAL DSP_BR0	:	STD_LOGIC;
   SIGNAL DSP_BR1	:	STD_LOGIC;
   SIGNAL BR0	:	STD_LOGIC;
   SIGNAL BR1	:	STD_LOGIC;
   SIGNAL BX1	:	STD_LOGIC;
   SIGNAL DSP_BX1	:	STD_LOGIC;
   SIGNAL BX0	:	STD_LOGIC;
   SIGNAL DSP_BX0	:	STD_LOGIC;
   SIGNAL DSP_A0	:	STD_LOGIC;
   SIGNAL DSP_A1	:	STD_LOGIC;
   SIGNAL DSP_A2	:	STD_LOGIC;
   SIGNAL IOSTRn	:	STD_LOGIC;
   SIGNAL R_Wn	:	STD_LOGIC;
   SIGNAL TST_FS	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL MCLK1	:	STD_LOGIC;
   SIGNAL RESETn	:	STD_LOGIC;
   SIGNAL TST_M_Sn	:	STD_LOGIC;
   SIGNAL DX0	:	STD_LOGIC;
   SIGNAL DX1	:	STD_LOGIC;
   SIGNAL COUT	:	STD_LOGIC;
   SIGNAL CCLK	:	STD_LOGIC;
   SIGNAL DR0	:	STD_LOGIC;
   SIGNAL DR1	:	STD_LOGIC;
   SIGNAL CIN	:	STD_LOGIC;
   SIGNAL CINTn	:	STD_LOGIC;
   SIGNAL DSP_INT3n	:	STD_LOGIC;
   SIGNAL MCLK0	:	STD_LOGIC;
   SIGNAL LED0b	:	STD_LOGIC;
   SIGNAL LED1a	:	STD_LOGIC;
   SIGNAL LED1b	:	STD_LOGIC;
   SIGNAL DSP_D1	:	STD_LOGIC;
   SIGNAL DSP_D0	:	STD_LOGIC;

   SIGNAL t         : INTEGER;

BEGIN

   UUT: dasl2p PORT MAP(
		DCLK1 => DCLK1, 
		FSb1 => FSb1, 
		FSc1 => FSc1, 
		DSP_INT1n => DSP_INT1n, 
		DCLK0 => DCLK0, 
		BCLK0 => BCLK0, 
		FSb0 => FSb0, 
		FSa0 => FSa0, 
		FSc0 => FSc0, 
		DSP_BFS0 => DSP_BFS0, 
		DSP_BCLK0 => DSP_BCLK0, 
		DSP_BCLK1 => DSP_BCLK1, 
		DSP_BFS1 => DSP_BFS1, 
		BCLK1 => BCLK1, 
		FSa1 => FSa1, 
		DSP_INT0n => DSP_INT0n, 
		CCS1n => CCS1n, 
		CCS0n => CCS0n, 
		LED0a => LED0a, 
		DSP_BR0 => DSP_BR0, 
		DSP_BR1 => DSP_BR1, 
		BR0 => BR0, 
		BR1 => BR1, 
		BX1 => BX1, 
		DSP_BX1 => DSP_BX1, 
		BX0 => BX0, 
		DSP_BX0 => DSP_BX0, 
		DSP_A0 => DSP_A0, 
		DSP_A1 => DSP_A1, 
		DSP_A2 => DSP_A2, 
		IOSTRn => IOSTRn, 
		R_Wn => R_Wn, 
		TST_FS => TST_FS, 
		CLK => CLK, 
		MCLK1 => MCLK1, 
		RESETn => RESETn, 
		TST_M_Sn => TST_M_Sn, 
		DX0 => DX0, 
		DX1 => DX1, 
		COUT => COUT, 
		CCLK => CCLK, 
		DR0 => DR0, 
		DR1 => DR1, 
		CIN => CIN, 
		CINTn => CINTn, 
		DSP_INT3n => DSP_INT3n, 
		MCLK0 => MCLK0, 
		LED0b => LED0b, 
		LED1a => LED1a, 
		LED1b => LED1b, 
		DSP_D1 => DSP_D1, 
		DSP_D0 => DSP_D0
   );

-- *** Test Bench - User Defined Section ***

   PROCESS -- clock process for CLK,
   BEGIN
       t <= 0;
       FOR iCount in 1 to 8192 LOOP
           CLK <= transport '0';
           WAIT FOR 10 ns;
           CLK <= transport '1';
           WAIT FOR 10 ns;
         t <= t + 1;
       END LOOP;
      WAIT;
   END PROCESS;

   tb : PROCESS -- main process
   BEGIN
      BR0 <= TRANSPORT '0';
      BR1 <= TRANSPORT '0';
      CIN <= TRANSPORT '0';
      CINTn <= TRANSPORT '0';
      DR0 <= TRANSPORT '0';
      DR1 <= TRANSPORT '0';
      DSP_BX0 <= TRANSPORT '0';
      DSP_BX1 <= TRANSPORT '0';
      DSP_A0 <= TRANSPORT '0';
      DSP_A1 <= TRANSPORT '0';
      DSP_A2 <= TRANSPORT '0';
      DSP_D0 <= TRANSPORT '0';
      DSP_D1 <= TRANSPORT '0';
      IOSTRn <= TRANSPORT '1';
      RESETn <= TRANSPORT '1';
      R_Wn <= TRANSPORT '0';
      WAIT FOR 100 ns;

      RESETn <= TRANSPORT '0';
      WAIT FOR 100 ns;

      RESETn <= TRANSPORT '1';
      WAIT FOR 100 ns;

      DSP_A0 <= TRANSPORT '0';
      DSP_A1 <= TRANSPORT '0';
      DSP_A2 <= TRANSPORT '0';
      R_Wn <= TRANSPORT '0';

      -- write 1 to M/Sn
      DSP_D0 <= TRANSPORT '1';
      WAIT FOR 10 ns;
      IOSTRn <= '0';
      WAIT FOR 10 ns;
      IOSTRn <= '1';
      WAIT FOR 10 ns;

      WAIT FOR 50 us;

      -- write 0 to M/Sn
      DSP_D0 <= TRANSPORT '0';
      WAIT FOR 10 ns;
      IOSTRn <= '0';
      WAIT FOR 10 ns;
      IOSTRn <= '1';
      WAIT FOR 10 ns;

      WAIT; -- will wait forever

   END PROCESS;

-- *** End Test Bench - User Defined Section ***

END;
