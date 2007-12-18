-- CPLD-DASL2P / With VR option
-- Fit into: XC9572XL-10VQ64

Library IEEE;
Use IEEE.STD_LOGIC_1164.All;
Use IEEE.STD_LOGIC_UNSIGNED.All;

-- -----------------------------------------------------
--      Internal Registers / DSP Address Map             
-- -----------------------------------------------------
--  Address     Write (Control)         Read (Status)   
--  A2..0       D1        D0            D1    D0        
-- -----------------------------------------------------
--    0         CEN       CA(0)         0     CINTn     
--    1         CCLK      CIN           0     COUT      
--    2         -         M_Sn(0)       0     M_Sn(0)   
--    3         -         DX(0)         0     DR(0)     
--    4         LEDY(0)   LEDG(0)       0     0         
--    5         -         M_Sn(1)       0     M_Sn(1)   
--    6         -         DX(1)         0     DR(1)     
--    7         LEDY(1)   LEDG(1)       0     0         
-- -----------------------------------------------------

Entity DASL2P Is

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
        CIN       : Out   std_logic := '0'; 
        CCLK      : Out   std_logic := '0'; 
        CCSn      : Out   std_logic_vector( 1 DownTo 0 ) := "11"; 

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

End DASL2P;

Architecture Behavioral Of DASL2P Is

    -- Frame Generator
    Signal CNT       : std_logic_vector( 10 DownTo 0 ) := ( Others => '0' );
    Alias  CNT_TOP   : std_logic_vector( 6 DownTo 0 ) Is CNT ( 10 DownTo 4 );
    Alias  CNT_BOT   : std_logic_vector( 3 DownTo 0 ) Is CNT ( 3 DownTo 0 );
    Signal CLK_2M    : std_logic;
    Signal CLK_16k   : std_logic;
    Signal FS        : std_logic;

    -- TDM Master/Slave Control
    Signal M_Sn      : std_logic_vector( 1 DownTo 0 );
    Signal REPEATER  : std_logic;

    -- Buffered signals
    Signal i_DR      : std_logic_vector( 1 DownTo 0 );
    Signal i_LEDG    : std_logic_vector( 1 DownTo 0 );
    Signal i_DCLK    : std_logic_vector( 1 DownTo 0 );

    -- Read output enable / Write FF clock
    Signal ROE       : std_logic;
    Signal WCSn      : std_logic;

Begin

    ---------------------------------------------------------------------------

    TDM_MasterClock : Process ( CLK_16M )
    Begin

        If CLK_16M'event And CLK_16M = '1' Then -- CLK rising edge

            -- CNT_TOP constant pinpoints FS inside DCLK.
            -- CNT_BOT range makes FS synchronous to BCLK, i.e CLK_2M.
            --
            --       ----.               ,---------------.
            --  DCLK     |               |               |
            --           `---------------'               `---------
            --            ^             ^               ^
            --            0000000       0111111         1111111
            --                                       ,-.
            --    FS                                 | |  
            --       --------------------------------' `-----------
            --                                        ^
            --                                        CNT_TOP

            If CNT_TOP = "1111100" And CNT_BOT >= "0011" And CNT_BOT <= "1010" Then 
                FS <= '1';
            Else
                FS <= '0';
            End If;

            CNT <= CNT + 1;

        End If;

    End Process TDM_MasterClock;

    ---------------------------------------------------------------------------

    Sample_DR0: Process ( DCLK(0), RESETn )
    Begin

        If RESETn = '0' Then -- asynchronous reset

            i_DR(0) <= '0';

        ElsIf DCLK(0)'event And DCLK(0) = '0' Then -- DCLK falling edge

            i_DR(0) <= DR(0);
	   	
        End If;

    End Process Sample_DR0;

    ---------------------------------------------------------------------------

    Sample_DR1: Process ( DCLK(1), RESETn )
    Begin

        If RESETn = '0' Then -- asynchronous reset

            i_DR(1) <= '0';

        ElsIf DCLK(1)'event And DCLK(1) = '0' Then -- DCLK falling edge

            i_DR(1) <= DR(1);
	   	
        End If;

    End Process Sample_DR1;

    ---------------------------------------------------------------------------

    DSP_Write : Process ( WCSn, RESETn )
    Begin

        If RESETn = '0' Then -- asynchronous reset

            CCSn    <= "11";
            CIN     <= '0';
            CCLK    <= '0';

            M_Sn    <= "00";
            DX      <= "00";
            i_LEDG  <= "00";
            LEDY    <= "00";
            
        ElsIf WCSn'event And WCSn = '1' Then -- IOSTRn rising edge while R_Wn is low

            Case DSP_A is

                When "000" => CCSn(0) <= Not( DSP_D(1) And Not DSP_D(0) );
                              CCSn(1) <= Not( DSP_D(1) And     DSP_D(0) );

                When "001" => CIN       <= DSP_D(0);
                              CCLK      <= DSP_D(1);

                When "010" => M_Sn(0)   <= DSP_D(0);

                When "011" => DX(0)     <= DSP_D(0);

                When "100" => i_LEDG(0) <= DSP_D(0);
                              LEDY(0)   <= DSP_D(1);

                When "101" => M_Sn(1)   <= DSP_D(0);

                When "110" => DX(1)     <= DSP_D(0);

                When "111" => i_LEDG(1) <= DSP_D(0);
                              LEDY(1)   <= DSP_D(1);

                When Others => Null;

            End Case;                    
                 
        End If;

    End Process DSP_Write;

    -- Concurent statements:

    CLK_2M      <= CNT( 2 );  -- 2.048 MHz
    CLK_16k     <= CNT( 9 );  -- 16 kHz

    REPEATER    <= M_Sn(1) And Not M_Sn(0); -- DASL#1 is master and DASL#0 is slave

    ROE         <= Not IOSTRn And R_Wn; -- IOSTR asserted with R/~W = 1
    WCSn        <= Not( Not IOSTRn And Not R_Wn ); -- IOSTR asserted with R/~W = 0

    LEDG        <= i_LEDG When RESETn = '1' Else "ZZ";

    DSP_INTn    <= Not i_DCLK;
    DSP_INTn3   <= CINTn;

    -- DSP Read

    DSP_D(1)    <=   '0'     When IOSTRn = '0' And R_Wn = '1'
                Else 'Z';

    DSP_D(0)    <=   CINTn   When ROE = '1' And DSP_A = "000"
                Else COUT    When ROE = '1' And DSP_A = "001"
                Else M_Sn(0) When ROE = '1' And DSP_A = "010"
                Else i_DR(0) When ROE = '1' And DSP_A = "011"
                Else '0'     When ROE = '1' And DSP_A = "100"
                Else M_Sn(1) When ROE = '1' And DSP_A = "101"
                Else i_DR(1) When ROE = '1' And DSP_A = "110"
                Else '0'     When ROE = '1' And DSP_A = "111"
                Else 'Z';

    -- B Channel: Loop in REPEATER mode

    DSP_BR      <= BR;

    BX(0)       <= BR(1)       When REPEATER = '1' Else DSP_BX(0);
    BX(1)       <= BR(0)       When REPEATER = '1' Else DSP_BX(1);

    -- DASL #0

    MCLK(0)     <= CLK_2M;
    BCLK(0)     <= CLK_2M      When M_Sn(0) = '1' Else 'Z';
    FSa(0)      <= FS          When M_Sn(0) = '1' Else 'Z';
    FSb(0)      <= FS          When M_Sn(0) = '1' Else 'Z';
    FSc(0)      <= '1'         When M_Sn(0) = '1' Else 'Z';
    DCLK(0)     <= CLK_16k     When M_Sn(0) = '1' Else 'Z';
    i_DCLK(0)   <= CLK_16k     When M_Sn(0) = '1' Else DCLK(0);

    DSP_BCLK(0) <= CLK_2M      When M_Sn(0) = '1' Else BCLK(0);
    DSP_BFS(0)  <= FS          When M_Sn(0) = '1' Else FSc(0);

    -- DASL #1

    MCLK(1)     <= BCLK(0)     When REPEATER = '1'
                Else CLK_2M;

    BCLK(1)     <= BCLK(0)     When REPEATER = '1'
                Else CLK_2M    When M_Sn(1)  = '1' Else 'Z';

    FSa(1)      <= FSc(0)      When REPEATER = '1' 
                Else FS        When M_Sn(1)  = '1' Else 'Z';

    FSb(1)      <= FSc(0)      When REPEATER = '1'
                Else FS        When M_Sn(1)  = '1' Else 'Z';

    FSc(1)      <= '1'         When REPEATER = '1'
                Else '1'       When M_Sn(1)  = '1' Else 'Z';

    DCLK(1)     <= DCLK(0)     When REPEATER = '1'
                Else CLK_16k   When M_Sn(1)  = '1' Else 'Z';

    i_DCLK(1)   <= DCLK(0)     When REPEATER = '1'
                Else CLK_16k   When M_Sn(1)  = '1' Else DCLK(1);

    DSP_BCLK(1) <= BCLK(0)     When REPEATER = '1'
                Else CLK_2M    When M_Sn(1)  = '1' Else BCLK(1);

    DSP_BFS(1)  <= FSc(0)      When REPEATER = '1'
                Else FS        When M_Sn(1)  = '1' Else FSc(1);

    -- Test pins:

    TST_FS    <= FS;
    TST_M_Sn  <= REPEATER;

End Behavioral;