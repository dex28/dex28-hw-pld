
-- VHDL Test Bench Created from source file pub.vhd -- 16:51:51 11/23/2006
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pub_tb1 IS
END pub_tb1;

ARCHITECTURE behavior OF pub_tb1 IS 

    Constant T_STEP   : time := 20 ns; -- DSP IO step
    Constant T_CLK16M : time := 40 ns; -- Multiple of T_STEP for nice waveforms

	COMPONENT pub
	PORT(
		CLK16M : IN std_logic;
		SENSEn : IN std_logic;
		TSYNC : IN std_logic;
		RPCM : IN std_logic_vector(3 downto 0);
		CRX : IN std_logic;
		EIRQn : IN std_logic;
		HSSC : IN std_logic;
		RESET : IN std_logic;
		CSn : IN std_logic;
		WRn : IN std_logic;
		RDn : IN std_logic;
		A : IN std_logic_vector(5 downto 0);
		PA : IN std_logic_vector(7 downto 5);    
		KA_IO : INOUT std_logic_vector(5 downto 4);
		KA_I : INOUT std_logic_vector(3 downto 0);
		FCC : INOUT std_logic;
		FCD : INOUT std_logic;
		FCEn : INOUT std_logic;
		CLK8M : INOUT std_logic;
		CLK4M : INOUT std_logic;
		SYNC4 : INOUT std_logic;
		TPCM : INOUT std_logic_vector(3 downto 0);
		CTX : INOUT std_logic;
		D : INOUT std_logic_vector(7 downto 0);      
		SYNC2 : OUT std_logic;
		INTn : OUT std_logic;
		PC : OUT std_logic_vector(7 downto 0);
		LED : OUT std_logic_vector(3 downto 1);
		Test : OUT std_logic
		);
	END COMPONENT;

	SIGNAL CLK16M :  std_logic;
	SIGNAL KA :  std_logic_vector(5 downto 0);
	SIGNAL FCC :  std_logic;
	SIGNAL FCD :  std_logic;
	SIGNAL FCEn :  std_logic;
	SIGNAL SENSEn :  std_logic;
	SIGNAL CLK8M :  std_logic;
	SIGNAL CLK4M :  std_logic;
	SIGNAL SYNC4 :  std_logic;
	SIGNAL SYNC2 :  std_logic;
	SIGNAL TSYNC :  std_logic;
	SIGNAL TPCM :  std_logic_vector(3 downto 0);
	SIGNAL RPCM :  std_logic_vector(3 downto 0);
	SIGNAL CTX :  std_logic;
	SIGNAL CRX :  std_logic;
	SIGNAL EIRQn :  std_logic;
	SIGNAL HSSC :  std_logic;
	SIGNAL INTn :  std_logic;
	SIGNAL RESET :  std_logic;
	SIGNAL CSn :  std_logic;
	SIGNAL WRn :  std_logic;
	SIGNAL RDn :  std_logic;
	SIGNAL A :  std_logic_vector(5 downto 0);
	SIGNAL D :  std_logic_vector(7 downto 0);
	SIGNAL PC :  std_logic_vector(7 downto 0);
	SIGNAL PA :  std_logic_vector(7 downto 5);
	SIGNAL LED :  std_logic_vector(3 downto 1);
	SIGNAL Test :  std_logic;

    Signal t         : Integer;
    Signal desc      : Integer;

BEGIN

	uut: pub PORT MAP(
		CLK16M => CLK16M,
		KA_IO( 5 DownTo 4 ) => KA( 5 DownTo 4),
		KA_I( 3 DownTo 0 ) => KA( 3 DownTo 0),
		FCC => FCC,
		FCD => FCD,
		FCEn => FCEn,
		SENSEn => SENSEn,
		CLK8M => CLK8M,
		CLK4M => CLK4M,
		SYNC4 => SYNC4,
		SYNC2 => SYNC2,
		TSYNC => TSYNC,
		TPCM => TPCM,
		RPCM => RPCM,
		CTX => CTX,
		CRX => CRX,
		EIRQn => EIRQn,
		HSSC => HSSC,
		INTn => INTn,
		RESET => RESET,
		CSn => CSn,
		WRn => WRn,
		RDn => RDn,
		A => A,
		D => D,
		PC => PC,
		PA => PA,
		LED => LED,
		Test => Test
	);


-- *** Test Bench - User Defined Section ***
    ---------------------------------------------------------------------------

    Process -- Clock process that generates CLK_16M
    Begin
        t <= 0;
        For iCount In 1 To 8192 LOOP
            CLK16M <= transport '0';
            Wait For T_CLK16M / 2;
            CLK16M <= transport '1';
            Wait For T_CLK16M / 2;
            t <= t + 1;
        End Loop;
        Wait;
    End Process;

    ---------------------------------------------------------------------------

    tb : Process -- Main process

        Procedure Pulse( 
            Signal x : Out std_logic; 
            t : In Time 
            ) Is
        Begin
            x <= Transport '0';
            Wait For t;
            x <= Transport '1';
        End;

        Procedure WriteData( 
            addr : In std_logic_vector( 5 DownTo 0 );
            data : In std_logic_vector( 7 DownTo 0 )
            ) Is
        Begin
            A <= Transport a;
            D <= Transport data;
            WRn <= Transport '0';
            CSn <= Transport '0';
            Wait For T_STEP;

            WRn <= Transport '1';
            Wait For T_STEP;

            CSn <= Transport '1';

            D <= Transport "ZZZZZZZZ";
        End;

        Procedure WriteData( 
            addr : In std_logic_vector( 5 DownTo 0 )
            ) Is
        Begin
            A <= Transport a;
            D <= Transport "ZZZZZZZZ";
            RDn <= Transport '0';
            WRn <= Transport '0';

            Wait For T_STEP;

            --DB <= Transport D;

            Wait For T_STEP;
            RDn <= Transport '1';
            WRn <= Transport '1';

        End;
        
        Procedure TStep Is
        Begin
            Wait For T_STEP;
        End;
        
    Begin

desc <= 0;
        -----------------------------------------------------------------------
        -- Initialization:
        -----------------------------------------------------------------------
        -- In pins:
        RESET   <= Transport '1';
		SENSEn  <= Transport '1';
		TSYNC   <= Transport '1';
		RPCM    <= Transport "1111";
		CRX     <= Transport '1';
		EIRQn   <= Transport '1';
		HSSC    <= Transport '1';
		CSn     <= Transport '1';
		WRn     <= Transport '1';
		RDn     <= Transport '1';
		A       <= Transport "000000";
		PA      <= Transport "111";
        -- InOut pins:
		KA      <= Transport "ZZ0010";
		FCC     <= Transport 'Z';
		FCD     <= Transport 'Z';
		FCEn    <= Transport 'Z';
		CLK8M   <= Transport 'Z';
		CLK4M   <= Transport 'Z';
		SYNC4   <= Transport 'Z';
		TPCM    <= Transport "ZZZZ";
		CTX     <= Transport 'Z';
		D       <= Transport "ZZZZZZZZ";
        -----------------------------------------------------------------------

desc <= 1;

        Wait For 10 * T_STEP;
        RESET   <= Transport '0';

desc <= 2;

        WriteData( "000000", "00000001" );

desc <= 3;

        Wait For 4096 * T_CLK16M;

desc <= 100;
        Wait; -- Forever

    End Process;

-- *** End Test Bench - User Defined Section ***

END;
