
-- Behavioral VHDL Model Test Bench for EBI2HPI
--
Library ieee;
Use ieee.std_logic_1164.All;
Use ieee.numeric_std.All;

Entity EBI2HPI_TB1 Is
End EBI2HPI_TB1;

Architecture Behavior Of EBI2HPI_TB1 
Is
    Constant T_STEP   : time := 20 ns;

	Component EBI2HPI
    Port 
    ( 
        RESET     : In    std_logic; 

        RDn       : In    std_logic; 
        WRn       : In    std_logic; 
        CSn       : In    std_logic;
        A         : In    std_logic_vector( 5 DownTo 0 ); 
        D         : InOut std_logic_vector( 7 DownTo 0 ); 
        WAITn     : Out   std_logic;
        INTn      : Out   std_logic;

        HRSTn     : Out   std_logic_vector( 3 DownTo 0 ) := "0000"; 

        HBIL      : Out   std_logic;
        HCNTL0    : Out   std_logic;
        HCNTL1    : Out   std_logic;
        HR_Wn     : Out   std_logic;
        HDSn      : Out   std_logic;
        HCSn      : Out   std_logic_vector( 3 DownTo 0 ); 

        HD        : InOut std_logic_vector( 7 DownTo 0 );

        --HRDY      : In    std_logic_vector( 3 DownTo 0 ); 
        HINTn     : In    std_logic_vector( 3 DownTo 0 ); 

        CLKMD     : Out   std_logic_vector( 3 DownTo 1 )
    );
	END COMPONENT;

    Signal RESET     : std_logic; 

    Signal RDn       : std_logic; 
    Signal WRn       : std_logic; 
    Signal CSn       : std_logic;
    Signal A         : std_logic_vector( 5 DownTo 0 ); 
    Signal D         : std_logic_vector( 7 DownTo 0 ); 
    Signal WAITn     : std_logic;
    Signal INTn      : std_logic;

    Signal HRSTn     : std_logic_vector( 3 DownTo 0 ) := "0000"; 

    Signal HBIL      : std_logic;
    Signal HCNTL0    : std_logic;
    Signal HCNTL1    : std_logic;
    Signal HR_Wn     : std_logic;
    Signal HDSn      : std_logic;
    Signal HCSn      : std_logic_vector( 3 DownTo 0 ); 

    Signal HD        : std_logic_vector( 7 DownTo 0 );

    --Signal HRDY      : std_logic_vector( 3 DownTo 0 ); 
    Signal HINTn     : std_logic_vector( 3 DownTo 0 ); 

    Signal CLKMD     : std_logic_vector( 3 DownTo 1 );

    Signal t         : Integer;
    Signal desc      : Integer;

Begin

	uut: EBI2HPI Port Map
    (
        RESET     => RESET,
        RDn       => RDn,
        WRn       => WRn,
        CSn       => CSn,
        A         => A,
        D         => D,
        WAITn     => WAITn,
        INTn      => INTn,
        HRSTn     => HRSTn,
        HBIL      => HBIL,
        HCNTL0    => HCNTL0,
        HCNTL1    => HCNTL1,
        HR_Wn     => HR_Wn,
        HDSn      => HDSn,
        HCSn      => HCSn,
        HD        => HD,
        --HRDY      => HRDY,
        HINTn     => HINTn,
        CLKMD     => CLKMD
	);

-- *** Test Bench - User Defined Section ***

    ---------------------------------------------------------------------------

    Process -- Proces counting IO steps
    Begin
        t <= 0;
        For iCount In 1 To 8192 LOOP
            Wait For T_STEP;
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

        Procedure TStep Is
        Begin
            Wait For T_STEP;
        End;
        
    Begin

desc <= 0;
        -----------------------------------------------------------------------
        -- Initialization
        -----------------------------------------------------------------------

        RESET   <= Transport '0';
        A       <= Transport "000000";
        RDn     <= Transport '1';
        WRn     <= Transport '1';
        CSn     <= Transport '1';
        D       <= Transport "ZZZZZZZZ";
        HD      <= Transport "ZZZZZZZZ";
        HINTn   <= Transport "1111";
        --HRDY    <= Transport "1111";

        Wait For 10 * T_STEP;

desc <= 101;
        -----------------------------------------------------------------------
        -- Pulse Reset
        -----------------------------------------------------------------------

        RESET   <= Transport '1';   Wait For 10 * T_STEP;
        RESET   <= Transport '0';   TStep;

desc <= 102;
        -----------------------------------------------------------------------
        -- Set HRSTn(0) = 1
        -----------------------------------------------------------------------

        D       <= Transport "00000000";
        A       <= Transport "001000";
        RDn     <= Transport '1';
        WRn     <= Transport '0';
        CSn     <= Transport '1';    TStep;
        CSn     <= Transport '0';    TStep;
        CSn     <= Transport '1';    TStep;
        WRn     <= Transport '1';    TStep;

desc <= 103;
        -----------------------------------------------------------------------
        -- Set HRSTn(1) = 1
        -----------------------------------------------------------------------

        D       <= Transport "00000000";
        A       <= Transport "011000";
        RDn     <= Transport '1';
        WRn     <= Transport '0';
        CSn     <= Transport '1';    TStep;
        CSn     <= Transport '0';    TStep;
        CSn     <= Transport '1';    TStep;
        WRn     <= Transport '1';    TStep;

desc <= 104;
        -----------------------------------------------------------------------
        -- Set HRSTn(2) = 1
        -----------------------------------------------------------------------

        D       <= Transport "00000000";
        A       <= Transport "101000";
        RDn     <= Transport '1';
        WRn     <= Transport '0';
        CSn     <= Transport '1';    TStep;
        CSn     <= Transport '0';    TStep;
        CSn     <= Transport '1';    TStep;
        WRn     <= Transport '1';    TStep;

desc <= 105;
        -----------------------------------------------------------------------
        -- Set HRSTn(3) = 1
        -----------------------------------------------------------------------

        D       <= Transport "00000000";
        A       <= Transport "111000";
        RDn     <= Transport '1';
        WRn     <= Transport '0';
        CSn     <= Transport '1';    TStep;
        CSn     <= Transport '0';    TStep;
        CSn     <= Transport '1';    TStep;
        WRn     <= Transport '1';    TStep;

desc <= 106;
        -----------------------------------------------------------------------
        -- Pulse Reset
        -----------------------------------------------------------------------

        RESET   <= Transport '1';   Wait For 10 * T_STEP;
        RESET   <= Transport '0';   TStep;

desc <= 201;
        -----------------------------------------------------------------------
        -- Write to DSP
        -----------------------------------------------------------------------
        D       <= Transport "11100101";
        HD      <= Transport "ZZZZZZZZ";
        A       <= Transport "000111";
        RDn     <= Transport '1';
        WRn     <= Transport '0';
        CSn     <= Transport '1';    TStep;
        CSn     <= Transport '0';    TStep;
        --HRDY(0) <= Transport '0';    TStep;
        --HRDY(0) <= Transport '1';    TStep;
        CSn     <= Transport '1';    TStep;
        D       <= Transport "ZZZZZZZZ";
        WRn     <= Transport '1';    TStep;

desc <= 202;
        -----------------------------------------------------------------------
        -- Read from DSP
        -----------------------------------------------------------------------
        D       <= Transport "ZZZZZZZZ";
        HD      <= Transport "ZZZZZZZZ";
        A       <= Transport "010111";
        WRn     <= Transport '1';
        RDn     <= Transport '0';
        CSn     <= Transport '1';    TStep;
        CSn     <= Transport '0';    TStep;
        --HRDY(1) <= Transport '0';    TStep;
        HD      <= Transport "11100101";
        --HRDY(1) <= Transport '1';    TStep;
        CSn     <= Transport '1';    TStep;
        HD      <= Transport "ZZZZZZZZ";
        RDn     <= Transport '1';    TStep;

desc <= -1;
        -----------------------------------------------------------------------
        Wait; -- Forever

    End Process;

-- *** End Test Bench - User Defined Section ***

End;
