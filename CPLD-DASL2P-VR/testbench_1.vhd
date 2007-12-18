
-- Behavioral VHDL Model Test Bench for DASL2P
--
Library ieee;
Use ieee.std_logic_1164.All;
Use ieee.numeric_std.All;

Entity DASL2P_TB1 Is
End DASL2P_TB1;

Architecture Behavior Of DASL2P_TB1 
Is
    Constant T_STEP   : time := 20 ns; -- DSP IO step
    Constant T_CLK16M : time := 40 ns; -- Multiple of T_STEP for nice waveforms
    Constant T_BCLK   : time := T_CLK16M * 8;

	Component DASL2P
    Port 
    ( 
        RESETn    : In    std_logic; 
        CLK_16M   : In    std_logic; 

        IOSTRn    : In    std_logic; 
        R_Wn      : In    std_logic; 
        DSP_A     : In    std_logic_vector( 2 DownTo 0 ); 
        DSP_D     : InOut std_logic_vector( 1 DownTo 0 ); 

        DSP_INTn  : Out   std_logic_vector( 1 DownTo 0 ); 
        DSP_INTn3 : Out   std_logic; 

        DSP_BCLK  : Out   std_logic_vector( 1 DownTo 0 ); 
        DSP_BFS   : Out   std_logic_vector( 1 DownTo 0 ); 
        DSP_BX    : In    std_logic_vector( 1 DownTo 0 ); 
        DSP_BR    : Out   std_logic_vector( 1 DownTo 0 ); 

        CINTn     : In    std_logic; 
        COUT      : In    std_logic; 
        CIN       : Out   std_logic; 
        CCLK      : Out   std_logic; 
        CCSn      : Out   std_logic_vector( 1 DownTo 0 ); 

        MCLK      : Out   std_logic_vector( 1 DownTo 0 ); 
        BCLK      : InOut std_logic_vector( 1 DownTo 0 ); 
        BR        : In    std_logic_vector( 1 DownTo 0 ); 
        BX        : Out   std_logic_vector( 1 DownTo 0 ); 
        FSa       : Out   std_logic_vector( 1 DownTo 0 ); 
        FSb       : Out   std_logic_vector( 1 DownTo 0 ); 
        FSc       : InOut std_logic_vector( 1 DownTo 0 );

        DR        : In    std_logic_vector( 1 DownTo 0 ); 
        DX        : Out   std_logic_vector( 1 DownTo 0 ); 
        DCLK      : InOut std_logic_vector( 1 DownTo 0 ); 

        LEDG      : Out   std_logic_vector( 1 DownTo 0 ); 
        LEDY      : Out   std_logic_vector( 1 DownTo 0 ); 

        TST_FS    : Out   std_logic; 
        TST_M_Sn  : Out   std_logic 
    );
	END COMPONENT;

    Signal RESETn    : std_logic; 
    Signal CLK_16M   : std_logic; 
       
    Signal IOSTRn    : std_logic; 
    Signal R_Wn      : std_logic; 
    Signal DSP_A     : std_logic_vector( 2 DownTo 0 );
    Signal DSP_D     : std_logic_vector( 1 DownTo 0 );
       
    Signal DSP_INTn  : std_logic_vector( 1 DownTo 0 );
    Signal DSP_INTn3 : std_logic; 
       
    Signal DSP_BCLK  : std_logic_vector( 1 DownTo 0 );
    Signal DSP_BFS   : std_logic_vector( 1 DownTo 0 );
    Signal DSP_BX    : std_logic_vector( 1 DownTo 0 );
    Signal DSP_BR    : std_logic_vector( 1 DownTo 0 );
       
    Signal CINTn     : std_logic; 
    Signal COUT      : std_logic; 
    Signal CIN       : std_logic; 
    Signal CCLK      : std_logic; 
    Signal CCSn      : std_logic_vector( 1 DownTo 0 );
       
    Signal MCLK      : std_logic_vector( 1 DownTo 0 );
    Signal BCLK      : std_logic_vector( 1 DownTo 0 );
    Signal BR        : std_logic_vector( 1 DownTo 0 );
    Signal BX        : std_logic_vector( 1 DownTo 0 );
    Signal FSa       : std_logic_vector( 1 DownTo 0 );
    Signal FSb       : std_logic_vector( 1 DownTo 0 );
    Signal FSc       : std_logic_vector( 1 DownTo 0 );
       
    Signal DR        : std_logic_vector( 1 DownTo 0 );
    Signal DX        : std_logic_vector( 1 DownTo 0 );
    Signal DCLK      : std_logic_vector( 1 DownTo 0 );
       
    Signal LEDG      : std_logic_vector( 1 DownTo 0 );
    Signal LEDY      : std_logic_vector( 1 DownTo 0 );
       
    Signal TST_FS    : std_logic; 
    Signal TST_M_Sn  : std_logic;

    Signal DB        : std_logic_vector( 1 DownTo 0 );
    Signal t         : Integer;
    Signal desc      : Integer;

Begin

	uut: DASL2P Port Map
    (
		RESETn      => RESETn,
		CLK_16M     => CLK_16M,
		IOSTRn      => IOSTRn,
		R_Wn        => R_Wn,
		DSP_A       => DSP_A,
		DSP_D       => DSP_D,
		DSP_INTn    => DSP_INTn,
		DSP_INTn3   => DSP_INTn3,
		DSP_BCLK    => DSP_BCLK,
		DSP_BFS     => DSP_BFS,
		DSP_BX      => DSP_BX,
		DSP_BR      => DSP_BR,
		CINTn       => CINTn,
		COUT        => COUT,
		CIN         => CIN,
		CCLK        => CCLK,
		CCSn        => CCSn,
		MCLK        => MCLK,
		BCLK        => BCLK,
		BR          => BR,
		BX          => BX,
		FSa         => FSa,
		FSb         => FSb,
		FSc         => FSc,
		DR          => DR,
		DX          => DX,
		DCLK        => DCLK,
		LEDG        => LEDG,
		LEDY        => LEDY,
		TST_FS      => TST_FS,
		TST_M_Sn    => TST_M_Sn
	);

-- *** Test Bench - User Defined Section ***

    ---------------------------------------------------------------------------

    Process -- Clock process that generates CLK_16M
    Begin
        t <= 0;
        For iCount In 1 To 8192 LOOP
            CLK_16M <= transport '0';
            Wait For T_CLK16M / 2;
            CLK_16M <= transport '1';
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

        Procedure WriteCTRL( 
            a : In std_logic_vector( 2 DownTo 0 );
            d : In std_logic_vector( 1 DownTo 0 )
            ) Is
        Begin
            R_Wn <= Transport '0';
            DSP_A <= Transport a;
            DSP_D <= Transport d;
            IOSTRn <= Transport '0';
            Wait For T_STEP;

            IOSTRn <= Transport '1';
            Wait For T_STEP;

            DSP_D <= Transport "ZZ";
        End;

        Procedure ReadDB( 
            a : In std_logic_vector( 2 DownTo 0 )
            ) Is
        Begin
            R_Wn <= Transport '1';
            DSP_A <= Transport a;
            DSP_D <= Transport "ZZ";
            IOSTRn <= Transport '0';

            Wait For T_STEP;

            DB <= Transport DSP_D;
            IOSTRn <= Transport '1';

            Wait For T_STEP;

        End;
        
        Procedure TStep Is
        Begin
            Wait For T_STEP;
        End;
        
    Begin

desc <= 0;
        -----------------------------------------------------------------------
        -- Initialization
        -----------------------------------------------------------------------
                                    -- IN:
        RESETn  <= Transport   '1';
        COUT    <= Transport   '0';
        CINTn   <= Transport   '0';
        BR      <= Transport  "00";
        DR      <= Transport  "00";
        IOSTRn  <= Transport   '1';
        R_Wn    <= Transport   '1';
        DSP_A   <= Transport "000";
        DSP_BX  <= Transport  "00";
                                    -- INOUT:
        DSP_D   <= Transport  "ZZ";
        BCLK    <= Transport  "00";
        DCLK    <= Transport  "00";
        FSc     <= Transport  "00";

        Wait For 10 * T_STEP;

desc <= 101;
        -----------------------------------------------------------------------
        -- Pulse Reset
        -----------------------------------------------------------------------

        Pulse( RESETn, 10 * T_STEP );

        TStep;
        Assert CIN = '0';
        Assert CCLK = '0';
        Assert CCSn = "11";
        Assert LEDG = "00";
        Assert LEDY = "00";

        ReadDB( "000" );  Assert DB = "00";
        ReadDB( "001" );  Assert DB = "00";
        ReadDB( "010" );  Assert DB = "00";
        ReadDB( "011" );  Assert DB = "00";
        ReadDB( "100" );  Assert DB = "00";
        ReadDB( "101" );  Assert DB = "00";
        ReadDB( "110" );  Assert DB = "00";
        ReadDB( "111" );  Assert DB = "00";

        -----------------------------------------------------------------------
        -- DASL(0) = Slave, DASL(1) = Slave
        -----------------------------------------------------------------------

        Wait For 10 * T_STEP;

desc <= 102;
        -----------------------------------------------------------------------
        -- CTRL Reg 0: CEN, CA(0)    -- DASL uWire interface
        -----------------------------------------------------------------------

        WriteCTRL( "000", "00" );  Assert CCSn = "11";
        WriteCTRL( "000", "01" );  Assert CCSn = "11";
        WriteCTRL( "000", "10" );  Assert CCSn = "10";
        WriteCTRL( "000", "11" );  Assert CCSn = "01";

        Wait For 10 * T_STEP;

desc <= 103;
        -----------------------------------------------------------------------
        -- Status Reg 0: CINTn      -- Common DASL uWire interface
        -----------------------------------------------------------------------

        CINTn <= Transport '1';  ReadDB( "000" );  Assert DB = "01";
        CINTn <= Transport '0';  ReadDB( "000" );  Assert DB = "00";

        Wait For 10 * T_STEP;

desc <= 104;
        -----------------------------------------------------------------------
        -- CTRL Reg 1: CCLK, CIN    -- Common DASL uWire interface 
        -----------------------------------------------------------------------

        WriteCTRL( "001", "00" );  Assert CCLK = '0' And CIN = '0';
        WriteCTRL( "001", "01" );  Assert CCLK = '0' And CIN = '1';
        WriteCTRL( "001", "10" );  Assert CCLK = '1' And CIN = '0';
        WriteCTRL( "001", "11" );  Assert CCLK = '1' And CIN = '1';

        Wait For 10 * T_STEP;

desc <= 105;
        -----------------------------------------------------------------------
        -- Status Reg 1: COUT       -- Common DASL uWire interface
        -----------------------------------------------------------------------

        COUT <= Transport '1';  ReadDB( "001" ); Assert DB = "01";
        COUT <= Transport '0';  ReadDB( "001" ); Assert DB = "00";

        Wait For 10 * T_STEP;

desc <= 106;
        -----------------------------------------------------------------------
        -- CTRL Reg 4: LEDG(0), LEDY(0)     -- DASL(0) yellow & green LED
        -----------------------------------------------------------------------

        WriteCTRL( "100", "11" );  Assert LEDG(0) = '1' And LEDY(0) = '1';
        WriteCTRL( "100", "10" );  Assert LEDG(0) = '0' And LEDY(0) = '1';
        WriteCTRL( "100", "01" );  Assert LEDG(0) = '1' And LEDY(0) = '0';
        WriteCTRL( "100", "00" );  Assert LEDG(0) = '0' And LEDY(0) = '0';
        ReadDB( "100" );           Assert DB = "00";

        Wait For 10 * T_STEP;

desc <= 107;
        -----------------------------------------------------------------------
        -- CTRL Reg 7: LEDG(1), LEDY(1)     -- DASL(1) yellow & green LED
        -----------------------------------------------------------------------

        WriteCTRL( "111", "11" );  Assert LEDG(1) = '1' And LEDY(1) = '1';
        WriteCTRL( "111", "10" );  Assert LEDG(1) = '0' And LEDY(1) = '1';
        WriteCTRL( "111", "01" );  Assert LEDG(1) = '1' And LEDY(1) = '0';
        WriteCTRL( "111", "00" );  Assert LEDG(1) = '0' And LEDY(1) = '0';
        ReadDB( "111" );           Assert DB = "00";

        Wait For 10 * T_STEP;

desc <= 108;
        -----------------------------------------------------------------------
        -- Pulse Reset
        -----------------------------------------------------------------------

        Pulse( RESETn, 10 * T_STEP );

        TStep;
        Assert CIN = '0';
        Assert CCLK = '0';
        Assert CCSn = "11";
        Assert LEDG = "00";
        Assert LEDY = "00";

        ReadDB( "000" );  Assert DB = "00";
        ReadDB( "001" );  Assert DB = "00";
        ReadDB( "010" );  Assert DB = "00";
        ReadDB( "011" );  Assert DB = "00";
        ReadDB( "100" );  Assert DB = "00";
        ReadDB( "101" );  Assert DB = "00";
        ReadDB( "110" );  Assert DB = "00";
        ReadDB( "111" );  Assert DB = "00";

        -----------------------------------------------------------------------
        -- DASL(0) = Slave, DASL(1) = Slave
        -----------------------------------------------------------------------

        Wait For 10 * T_STEP;

desc <= 301;
        -----------------------------------------------------------------------
        -- Test BCLK passthru
        -----------------------------------------------------------------------
        BCLK    <= Transport "11";  TStep;  Assert DSP_BCLK = "11";
        BCLK    <= Transport "00";  TStep;  Assert DSP_BCLK = "00";
        BCLK    <= Transport "01";  TStep;  Assert DSP_BCLK = "01";
        BCLK    <= Transport "10";  TStep;  Assert DSP_BCLK = "10";
        BCLK    <= Transport "11";  TStep;  Assert DSP_BCLK = "11";

        -----------------------------------------------------------------------
        -- Test DCLK passthru
        -----------------------------------------------------------------------
        DCLK    <= Transport "11";  TStep;  Assert DSP_INTn = "00";
        DCLK    <= Transport "00";  TStep;  Assert DSP_INTn = "11";
        DCLK    <= Transport "01";  TStep;  Assert DSP_INTn = "10";
        DCLK    <= Transport "10";  TStep;  Assert DSP_INTn = "01";
        DCLK    <= Transport "11";  TStep;  Assert DSP_INTn = "00";

        -----------------------------------------------------------------------
        -- Test FSc passthru
        -----------------------------------------------------------------------
        FSc     <= Transport "11";  TStep;  Assert DSP_BFS = "11";
        FSc     <= Transport "00";  TStep;  Assert DSP_BFS = "00";
        FSc     <= Transport "01";  TStep;  Assert DSP_BFS = "01";
        FSc     <= Transport "10";  TStep;  Assert DSP_BFS = "10";
        FSc     <= Transport "11";  TStep;  Assert DSP_BFS = "11";

        -----------------------------------------------------------------------
        -- Test BCLK / FSc / MBS0 passthru
        -----------------------------------------------------------------------
        BCLK(0) <= Transport '0';   FSc(0) <= '0';    TStep;
        BCLK(0) <= Transport '1';                     TStep;
        BCLK(0) <= Transport '0';                     TStep;
        BCLK(0) <= Transport '1';   FSc(0) <= '1';    TStep;
        BCLK(0) <= Transport '0';                     TStep;
        BCLK(0) <= Transport '1';   FSc(0) <= '0';    TStep;
        BCLK(0) <= Transport '0';                     TStep;
        BCLK(0) <= Transport '1';                     TStep;
        BCLK(0) <= Transport '0';                     TStep;
        BCLK(0) <= Transport '1';   FSc(0) <= '1';    TStep;
        BCLK(0) <= Transport '0';                     TStep;
        BCLK(0) <= Transport '1';   FSc(0) <= '0';    TStep;
        BCLK(0) <= Transport '0';                     TStep;
        BCLK(0) <= Transport '1';                     TStep;
        BCLK(0) <= Transport '0';                     TStep;

        Wait For 10 * T_STEP;

desc <= 302;
        -----------------------------------------------------------------------
        -- Test BR passthru
        -----------------------------------------------------------------------
        BR      <= Transport "11";  TStep;  Assert DSP_BR = "11";
        BR      <= Transport "00";  TStep;  Assert DSP_BR = "00";
        BR      <= Transport "01";  TStep;  Assert DSP_BR = "01";
        BR      <= Transport "10";  TStep;  Assert DSP_BR = "10";
        BR      <= Transport "11";  TStep;  Assert DSP_BR = "11";

        -----------------------------------------------------------------------
        -- Test DR(0) passthru
        -----------------------------------------------------------------------
        DR(0)   <= Transport '1'; 
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
        DCLK(0) <= Transport '0';  TStep;  Assert DSP_INTn(0) = '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
        ReadDB( "011" );                   Assert DB = "01";

        DR(0)   <= Transport '0'; 
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
        DCLK(0) <= Transport '0';  TStep;  Assert DSP_INTn(0) = '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
        ReadDB( "011" );                   Assert DB = "00";

        -----------------------------------------------------------------------
        -- Test DR(1) passthru
        -----------------------------------------------------------------------
        DR(1)   <= Transport '1'; 
        DCLK(1) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
        DCLK(1) <= Transport '0';  TStep;  Assert DSP_INTn(1) = '1';
        DCLK(1) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
        ReadDB( "110" );                   Assert DB = "01";

        DR(1)   <= Transport '0'; 
        DCLK(1) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
        DCLK(1) <= Transport '0';  TStep;  Assert DSP_INTn(1) = '1';
        DCLK(1) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
        ReadDB( "110" );                   Assert DB = "00";

        -----------------------------------------------------------------------
        -- Test DSP_BX passthru
        -----------------------------------------------------------------------
        DSP_BX  <= Transport "11";  TStep;  Assert BX = "11";
        DSP_BX  <= Transport "00";  TStep;  Assert BX = "00";
        DSP_BX  <= Transport "01";  TStep;  Assert BX = "01";
        DSP_BX  <= Transport "10";  TStep;  Assert BX = "10";
        DSP_BX  <= Transport "11";  TStep;  Assert BX = "11";

        -----------------------------------------------------------------------
        -- Test DX(0) passthru
        -----------------------------------------------------------------------
        WriteCTRL( "011", "00" );  Assert DX(0) = '0';
        WriteCTRL( "011", "01" );  Assert DX(0) = '1';
        WriteCTRL( "011", "00" );  Assert DX(0) = '0';

        -----------------------------------------------------------------------
        -- Test DX(1) passthru
        -----------------------------------------------------------------------
        WriteCTRL( "110", "00" );  Assert DX(1) = '0';
        WriteCTRL( "110", "01" );  Assert DX(1) = '1';
        WriteCTRL( "110", "00" );  Assert DX(1) = '0';

desc <= 303;
        -----------------------------------------------------------------------
        -- Set DASL(0) mode = Master
        -----------------------------------------------------------------------
        BCLK(0) <= Transport 'Z';
        DCLK(0) <= Transport 'Z';
        FSc(0)  <= Transport 'Z';

        WriteCTRL( "010", "01" );  
        ReadDB( "010" );  Assert DB = "01";

        Wait For 256 * T_BCLK;

desc <= 304;
        -----------------------------------------------------------------------
        -- Set DASL(1) mode = Master
        -----------------------------------------------------------------------
        BCLK(1) <= Transport 'Z';
        DCLK(1) <= Transport 'Z';
        FSc(1)  <= Transport 'Z';

        WriteCTRL( "101", "01" );  
        ReadDB( "101" );  Assert DB = "01";

        Wait For 256 * T_BCLK;

desc <= 305;
        -----------------------------------------------------------------------
        -- Set DASL(0) mode = Slave
        -----------------------------------------------------------------------
        BCLK(0) <= Transport '0';
        DCLK(0) <= Transport '0';
        FSc(0)  <= Transport '0';

        WriteCTRL( "010", "00" );  
        ReadDB( "010" );  Assert DB = "00";

        Wait For 256 * T_BCLK;

desc <= 306;
        -----------------------------------------------------------------------
        -- Test BCLK repeater & passthru
        -----------------------------------------------------------------------
        BCLK(0) <= Transport '1';  TStep;  Assert DSP_BCLK = "11" And BCLK(1) = '1';
        BCLK(0) <= Transport '0';  TStep;  Assert DSP_BCLK = "00" And BCLK(1) = '0';
        BCLK(0) <= Transport '1';  TStep;  Assert DSP_BCLK = "11" And BCLK(1) = '1';

        -----------------------------------------------------------------------
        -- Test DCLK repeater & passthru
        -----------------------------------------------------------------------
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn = "00" And DCLK(1) = '1';
        DCLK(0) <= Transport '0';  TStep;  Assert DSP_INTn = "11" And DCLK(1) = '0';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn = "00" And DCLK(1) = '1';

        -----------------------------------------------------------------------
        -- Test FSc repeater & passthru
        -----------------------------------------------------------------------
        FSc(0) <= Transport '1';  TStep;
                                  Assert DSP_BFS = "11";
                                  Assert FSa(1) = '1' And FSb(1) = '1';
        FSc(0) <= Transport '0';  TStep;
                                  Assert DSP_BFS = "00";
                                  Assert FSa(1) = '0' And FSb(1) = '0';
        FSc(0) <= Transport '1';  TStep;
                                  Assert DSP_BFS = "11";
                                  Assert FSa(1) = '1' And FSb(1) = '1';

desc <= 307;
        -----------------------------------------------------------------------
        -- Test BR loop
        -----------------------------------------------------------------------
        BR      <= Transport "11";  TStep;  Assert DSP_BR = "11" And BX = "11";
        BR      <= Transport "00";  TStep;  Assert DSP_BR = "00" And BX = "00";
        BR      <= Transport "01";  TStep;  Assert DSP_BR = "01" And BX = "10";
        BR      <= Transport "10";  TStep;  Assert DSP_BR = "10" And BX = "01";
        BR      <= Transport "11";  TStep;  Assert DSP_BR = "11" And BX = "11";

        -----------------------------------------------------------------------
        -- Test DR(0) loop
        -----------------------------------------------------------------------
        DR(0)   <= Transport '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
        DCLK(0) <= Transport '0';  TStep;  Assert DSP_INTn(0) = '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
                                           Assert DX(1) = '0';
        ReadDB( "011" );                   Assert DB = "01";

        DR(0)   <= Transport '0';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
        DCLK(0) <= Transport '0';  TStep;  Assert DSP_INTn(0) = '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(0) = '0';
                                           Assert DX(1) = '0';
        ReadDB( "011" );                   Assert DB = "00";

        -----------------------------------------------------------------------
        -- Test DR(1) loop    -- Note: DCLK(0) is clocked
        -----------------------------------------------------------------------
        DR(1)   <= Transport '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
        DCLK(0) <= Transport '0';  TStep;  Assert DSP_INTn(1) = '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
                                           Assert DX(0) = '0';
        ReadDB( "110" );                   Assert DB = "01";

        DR(1)   <= Transport '0'; 
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
        DCLK(0) <= Transport '0';  TStep;  Assert DSP_INTn(1) = '1';
        DCLK(0) <= Transport '1';  TStep;  Assert DSP_INTn(1) = '0';
                                           Assert DX(0) = '0';
        ReadDB( "110" );                   Assert DB = "00";

        -----------------------------------------------------------------------
        -- Test suppressed DSP_BX passthru
        -----------------------------------------------------------------------
        DSP_BX  <= Transport "11";  TStep;  Assert BX = "11";
        DSP_BX  <= Transport "00";  TStep;  Assert BX = "11";
        DSP_BX  <= Transport "01";  TStep;  Assert BX = "11";
        DSP_BX  <= Transport "10";  TStep;  Assert BX = "11";
        DSP_BX  <= Transport "11";  TStep;  Assert BX = "11";

        -----------------------------------------------------------------------
        -- Test DSP_DX(0) passthru
        -----------------------------------------------------------------------
        WriteCTRL( "011", "00" ); Assert DX(0) = '0';
        WriteCTRL( "011", "01" ); Assert DX(0) = '1';
        WriteCTRL( "011", "00" ); Assert DX(0) = '0';

        -----------------------------------------------------------------------
        -- Test DSP_DX(1) passthru
        -----------------------------------------------------------------------
        WriteCTRL( "110", "00" ); Assert DX(1) = '0';
        WriteCTRL( "110", "01" ); Assert DX(1) = '1';
        WriteCTRL( "110", "00" ); Assert DX(1) = '0';

desc <= -1;
        -----------------------------------------------------------------------
        Wait; -- Forever

    End Process;

-- *** End Test Bench - User Defined Section ***

End;
