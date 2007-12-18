-- CPLD-EBI2HPI  ARM EBI to DSP HPI Interface
-- Fit into: XC9572XL-10VQ64

Library IEEE;
Use IEEE.STD_LOGIC_1164.All;
Use IEEE.STD_LOGIC_UNSIGNED.All;

-- NET "HRDY<0>"  LOC = "P42"  ;
-- NET "HRDY<1>"  LOC = "P22"  ;
-- NET "HRDY<2>"  LOC = "P20"  ;
-- NET "HRDY<3>"  LOC = "P56"  ;

Entity EBI2HPI Is

    Port 
    ( 
        RESET     : In    std_logic; -- Requires ext. pullup 10k

        RDn       : In    std_logic; 
        WRn       : In    std_logic; 
        CSn       : In    std_logic;
        A         : In    std_logic_vector( 5 DownTo 0 ); 
        D         : InOut std_logic_vector( 7 DownTo 0 ); 
        WAITn     : Out   std_logic; -- Requires ext. pullup 1k
        INTn      : Out   std_logic;

        HRSTn     : Out   std_logic_vector( 3 DownTo 0 ) := "0000"; 

        HBIL      : Out   std_logic;
        HCNTL0    : Out   std_logic;
        HCNTL1    : Out   std_logic;
        HR_Wn     : Out   std_logic;
        HDSn      : Out   std_logic;
        HCSn      : Out   std_logic_vector( 3 DownTo 0 ); 

        HD        : InOut std_logic_vector( 7 DownTo 0 );

        -- HRDY      : In    std_logic_vector( 3 DownTo 0 );
        HINTn     : In    std_logic_vector( 3 DownTo 0 ); 

        CLKMD     : Out   std_logic_vector( 3 DownTo 1 )
    );

End EBI2HPI;

Architecture Behavioral Of EBI2HPI Is

    Alias  DSPSEL   : std_logic_vector( 2 DownTo 0 ) Is A ( 5 DownTo 3 );

    Signal D2HD_en : std_logic; -- D to HD buffer enable during write cycle

Begin

    ---------------------------------------------------------------------------

    HRST_Write : Process ( CSn, RESET )
    Begin

        If RESET = '1' Then -- Asynchronous reset

            HRSTn <= ( Others => '0' );
            
        ElsIf CSn'event And CSn = '1' And WRn = '0' Then -- CSn rising edge while WRn is low

            Case DSPSEL is

                When "001" => HRSTn(0) <= Not D(0);
                When "011" => HRSTn(1) <= Not D(0);
                When "101" => HRSTn(2) <= Not D(0);
                When "111" => HRSTn(3) <= Not D(0);

                When Others => Null;

            End Case;                    
                 
        End If;

    End Process HRST_Write;

    ---------------------------------------------------------------------------

    D2HD_Enable : Process ( CSn, RESET, WRn, RDn )
    Begin

        If WRn = '1' Or RDn = '0' Or RESET = '1' Then -- Asynchronous reset

            D2HD_en <= '0';
            
        ElsIf CSn'event And CSn = '0'  Then -- CSn falling edge

            D2HD_en <= Not WRn And RDn And Not A(3);
                 
        End If;

    End Process D2HD_Enable;

    ---------------------------------------------------------------------------
    -- Concurent Statements:

    HBIL   <= A(0);
    HCNTL0 <= A(1);
    HCNTL1 <= A(2);
    HR_Wn  <= WRn;
    HDSn   <= CSn; -- Externaly routed to speedup access?
    WAITn  <= 'Z';

    D <= HD When RDn = '0' And WRn = '1' And CSn = '0' And A(3) = '0'
      Else ( Others => 'Z' );

    HD <= D When D2HD_en = '1'
      Else ( Others => 'Z' );

    HD <= D When WRn = '0' And RDn = '1'
      Else ( Others => 'Z' );

    HCSn <=   "1110"  When DSPSEL = "000"
         Else "1101"  When DSPSEL = "010"
         Else "1011"  When DSPSEL = "100"
         Else "0111"  When DSPSEL = "110"
         Else "1111";

    INTn <=   '0' When HINTn(0) = '0' Or HINTn(1) = '0' 
                    Or HINTn(2) = '0' Or HINTn(3) = '0'
         Else '1';

    CLKMD <= "100"; -- PLL x 10

    --  CLKMD   CLKMD  
    --  3 2 1   VALUE   CLOCK MODE
    --  -----   -----   -----------------   
    --  0 0 0   0000h   1/2 (PLL disabled)
    --  0 0 1   1007h   PLL x 2
    --  0 1 0   4007h   PLL x 5
    --  1 0 0   9007h   PLL x 10
    --  0 1 1   F007h   PLL x 1
    --  1 1 1   0000h   1/2 (PLL disabled)
    --  1 0 1   F000h   1/4 (PLL disabled)
    --  1 1 0   -       Reserved
       
End Behavioral;
