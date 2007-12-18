-- FPGA-XPU-D / ASB 150 02 backplane interface
-- XC2S100-5TQG144
-- Applicable to: XPU-D R1A

-----------------------------------------------------------------------------------
-- TODO:

-- Add TPCM output FIFO
-- Implement HDLC controller on HSSC

-----------------------------------------------------------------------------------
-- FIXME:

-- Connect WRn and RDn to GCK inputs (In next PCB revision)!

-----------------------------------------------------------------------------------
-- NOTES:

-- ARM EBI SMC CS should be configured (for tMCK = 16ns, i.e. 183 MHz/3):
--     8-bit I/O cycle = 48 ns
--     RDn width = 24 ns, WRn width = 16 ns
--     CSn low to high hold before RDn/WRn rising edge = 16 ns
--
--     RWHOLD  = 1 : Read and Write Signal Hold: 1 cycles
--     RWSETUP = 0 : Read and Write Signal Setup: 0 cycles
--     ACCS    = 0 : Address Chip Select Setup: Standard
--     DRP     = 0 : Data Read Protocol: Standard i.e. not early
--     DBW     = 2 : Data Bus Width: 8-bit
--     BAT     = 0 : Byte Access Type: CS connected to two 8-bit wide devices
--     DFT     = 0 : Data Float Time: 0 cycles
--     WSEN    = 1 : Wait State Enable: Enabled NWS
--     NWS     = 0 : Number of Wait States: 1

-- SYNC4M/SYNC2M transitions delay after CLK4M rising edge: 
--     min 4 max 20 ns (Note minimum delay!)

-- TPCM transitions delay after CLK4M rising edge: 
--     min 55 max 65 ns  (Note minimum delay!)

Library IEEE;
Use IEEE.std_logic_1164.All;
Use IEEE.std_logic_ARITH.All;
Use IEEE.std_logic_UNSIGNED.All;

-----------------------------------------------------------------------------------
--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

-----------------------------------------------------------------------------------

Entity PUB 
Is Port 
(
    -- Master clock; 16.384 MHz
    CLK16M : In    std_logic;
    -- PUB Card Address
    KA_IO  : InOut std_logic_vector( 5 DownTo 4 );
    KA_I   : In    std_logic_vector( 3 DownTo 0 );
    -- FC-Bus
    FCC    : InOut std_logic;
    FCD    : InOut std_logic;
    FCEn   : InOut std_logic;
    SENSEn : In    std_logic;
    -- Clock Bus
    CLK8M  : InOut std_logic;
    CLK4M  : InOut std_logic;
    SYNC4  : InOut std_logic;
    SYNC2  : Out   std_logic;
    TSYNC  : In    std_logic;
    -- PCM Bus
    TPCM   : InOut std_logic_vector( 3 DownTo 0 );
    RPCM   : In    std_logic_vector( 3 DownTo 0 );
    -- SC Bus
    CTX    : InOut std_logic;
    CRX    : In    std_logic;
    EIRQn  : In    std_logic;
    -- HSSC Bus
    HSSC   : In    std_logic;
    -- CPU Interface 
    INTn   : Out   std_logic;
    RESET  : In    std_logic;
    CSn    : In    std_logic;
    WRn    : In    std_logic;
    RDn    : In    std_logic;
    A      : In    std_logic_vector( 5 DownTo 0 );
    D      : InOut std_logic_vector( 7 DownTo 0 );
    -- AVR Interface
    PC     : Out   std_logic_vector( 7 DownTo 0 ) := ( Others => 'Z' );
    PA     : In    std_logic_vector( 7 DownTo 5 );
    -- Info LED
    LED    : Out   std_logic_vector( 3 DownTo 1 );
    -- Test pins
    Test   : Out   std_logic
);
End PUB;

Architecture Behavioral Of PUB 
Is
    -------------------------------------------------------------------------------
    -- Types Declarations:

    Subtype EBI_ADDR Is std_logic_vector( 5 DownTo 0 );
    Subtype OCTET    Is std_logic_vector( 7 DownTo 0 );

    Type FIFO_16X1 Is Array( 15 DownTo 0 ) Of std_logic;
    Type FIFO_16X8 Is Array( 15 DownTo 0 ) Of OCTET;
    Subtype FIFO_16P Is std_logic_vector( 3 DownTo 0 );

    Type T_RETIME Is Record
        Once  : std_logic;
        Twice : std_logic;
    End Record;

    -------------------------------------------------------------------------------
    -- Constants:

    -- EBI Read Register Addresses
    Constant R_GLB_STAT       : EBI_ADDR := "000000"; -- 0x00
    Constant R_BOARD_POS      : EBI_ADDR := "000001"; -- 0x01
    Constant R_INT_ENABLE     : EBI_ADDR := "000010"; -- 0x02
    Constant R_INT_REQUEST    : EBI_ADDR := "000100"; -- 0x04
    Constant R_FC_STATUS      : EBI_ADDR := "000110"; -- 0x06
    Constant R_FC_FIFO_IN     : EBI_ADDR := "001000"; -- 0x08
    Constant R_FC_SENSE_IN    : EBI_ADDR := "001001"; -- 0x09
    Constant R_CTX_FIFO_IN    : EBI_ADDR := "001010"; -- 0x0A
    Constant R_CRX_FIFO_IN    : EBI_ADDR := "001100"; -- 0x0C
    Constant R_EIRQ_FIFO_IN   : EBI_ADDR := "001110"; -- 0x0E
    Constant R_RPCM0_FIFO_IN  : EBI_ADDR := "010000"; -- 0x10
    Constant R_RPCM1_FIFO_IN  : EBI_ADDR := "010010"; -- 0x12
    Constant R_TPCM0_FIFO_IN  : EBI_ADDR := "010100"; -- 0x14
    Constant R_TPCM1_FIFO_IN  : EBI_ADDR := "010110"; -- 0x16
    Constant R_PCM_IRQ_ACK    : EBI_ADDR := "100010"; -- 0x22
    Constant R_FPGA_MAGIC_LSB : EBI_ADDR := "111110"; -- 0x3E
    Constant R_FPGA_MAGIC_MSB : EBI_ADDR := "111111"; -- 0x3F
                             
    -- EBI Write Register Addresses
    Constant W_GLB_CTRL       : EBI_ADDR := "000000"; -- 0x00
    Constant W_INT_EN_SET     : EBI_ADDR := "000010"; -- 0x02
    Constant W_INT_EN_CLR     : EBI_ADDR := "000011"; -- 0x03
    Constant W_FC_CONTROL     : EBI_ADDR := "000110"; -- 0x06
    Constant W_CTX_FIFO_OUT   : EBI_ADDR := "001000"; -- 0x08
    Constant W_LED_SET        : EBI_ADDR := "001110"; -- 0x0E
    Constant W_LED_CLR        : EBI_ADDR := "001111"; -- 0x0F
    Constant W_RPCM0_TS_SEL   : EBI_ADDR := "010000"; -- 0x10
    Constant W_RPCM1_TS_SEL   : EBI_ADDR := "010010"; -- 0x12
    Constant W_TPCM0_TS_SEL   : EBI_ADDR := "010100"; -- 0x14
    Constant W_TPCM1_TS_SEL   : EBI_ADDR := "010110"; -- 0x16

    -------------------------------------------------------------------------------
    -- Components Declarations:

    Component RAMB4_S8_S8
        -- synthesis translate_off
        Generic 
        (
            INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
        );
        -- synthesis translate_on
        Port 
        (
            DOA     : Out std_logic_vector( 7 downto 0 );
            DOB     : Out std_logic_vector( 7 downto 0 );
            ADDRA   : In  std_logic_vector( 8 downto 0 );
            ADDRB   : In  std_logic_vector( 8 downto 0 );
            CLKA    : In  std_ulogic;
            CLKB    : In  std_ulogic;
            DIA     : In  std_logic_vector( 7 downto 0 );
            DIB     : In  std_logic_vector( 7 downto 0 );
            ENA     : In  std_ulogic;
            ENB     : In  std_ulogic;
            RSTA    : In  std_ulogic;
            RSTB    : In  std_ulogic;
            WEA     : In  std_ulogic;
            WEB     : In  std_ulogic
        );
    End Component;

    -------------------------------------------------------------------------------
    -- Signal Declarations:

    Signal MCPU        : std_logic := '0';

    -- LED
    Signal LED_G       : std_logic := '0';
    Signal LED_Y       : std_logic := '0'; 
    Signal LED_R       : std_logic := '0';

    -- Frame Generator (internal)
    Signal CNT         : std_logic_vector( 10 DownTo 0 ) := ( Others => '0' );
    Signal MCLK8M      : std_logic;
    Signal MCLK4M      : std_logic;
    Signal MSYNC4      : std_logic := '0';
    Signal MSYNC2      : std_logic := '0';

    -- Time-slot (TS) bit counter; 1 Frame = 64 TS = 512; 1 TS = 8 bits;
    Signal PCM_BITC    : std_logic_vector( 8 DownTo 0 ) := ( Others => '0' );
    Signal PCM_WADDR   : std_logic_vector( 8 DownTo 0 );
    Signal PCM_WE      : std_logic;
    Signal PCM_WP      : std_logic_vector( 2 DownTo 0 ) := ( Others => '0' );
    Signal PCM_RP      : std_logic_vector( 2 DownTo 0 ) := ( Others => '0' );

    Signal RPCM0_TSR   : std_logic_vector( 5 DownTo 0 ) := ( Others => '0' );
    Signal RPCM0_RADDR : std_logic_vector( 8 DownTo 0 ) := ( Others => '0' );
    Signal RPCM0_RCLK  : std_logic;
    Signal RPCM0_I     : OCTET  := ( Others => '0' );
    Signal RPCM0_O     : OCTET := ( Others => '0' );

    Signal RPCM1_TSR   : std_logic_vector( 5 DownTo 0 ) := ( Others => '0' );
    Signal RPCM1_RADDR : std_logic_vector( 8 DownTo 0 ) := ( Others => '0' );
    Signal RPCM1_RCLK  : std_logic;
    Signal RPCM1_I     : OCTET := ( Others => '0' );
    Signal RPCM1_O     : OCTET := ( Others => '0' );

    Signal TPCM0_TSR   : std_logic_vector( 5 DownTo 0 ) := ( Others => '0' );
    Signal TPCM0_RADDR : std_logic_vector( 8 DownTo 0 ) := ( Others => '0' );
    Signal TPCM0_RCLK  : std_logic;
    Signal TPCM0_I     : OCTET := ( Others => '0' );
    Signal TPCM0_O     : OCTET := ( Others => '0' );

    Signal TPCM1_TSR   : std_logic_vector( 5 DownTo 0 ) := ( Others => '0' );
    Signal TPCM1_RADDR : std_logic_vector( 8 DownTo 0 ) := ( Others => '0' );
    Signal TPCM1_RCLK  : std_logic;
    Signal TPCM1_I     : OCTET := ( Others => '0' );
    Signal TPCM1_O     : OCTET := ( Others => '0' );

    -- FC Bus (input)
    Signal FCIN        : OCTET;
    Signal FCDI        : OCTET := ( Others => '0' );
    Signal FCEO        : OCTET;
    Signal FCE_FIFO    : FIFO_16X8;
    Signal SENSEO      : std_logic;
    Signal SENSE_FIFO  : FIFO_16X1;
    Signal FCE_WP      : FIFO_16P := ( Others => '0' );
    Signal FCE_RP      : FIFO_16P := ( Others => '0' );

    -- FC Bus (output)
    Signal MFCD        : std_logic := '0';
    Signal MFCC        : std_logic := '0';
    Signal MFCE        : std_logic := '0';

    -- EIRQ events (input)
    Signal EIRQI       : T_RETIME := ( '0', '0' );
    Signal EIRQO       : std_logic;
    Signal EIRQ_FIFO   : FIFO_16X1;
    Signal EIRQ_WP     : FIFO_16P := ( Others => '0' );
    Signal EIRQ_RP     : FIFO_16P := ( Others => '0' );

    -- SC Bus CTX (input)
    Signal CTX_CNT     : std_logic_vector( 10 DownTo 0 ) := ( Others => '0' );
    Signal CTXO        : OCTET;
    Signal CTXI        : OCTET := ( Others => '1' );
    Signal CTX_FIFO    : FIFO_16X8;
    Signal CTX_WP      : FIFO_16P := ( Others => '0' );
    Signal CTX_RP      : FIFO_16P := ( Others => '0' );

    -- SC Bus CRX (input)
    Signal CRX_CNT     : std_logic_vector( 10 DownTo 0 ) := ( Others => '0' );
    Signal CRXO        : OCTET;
    Signal CRXI        : OCTET := ( Others => '1' );
    Signal CRX_FIFO    : FIFO_16X8;
    Signal CRX_WP      : FIFO_16P := ( Others => '0' );
    Signal CRX_RP      : FIFO_16P := ( Others => '0' );

    -- SC Bus MCTX (output)
    Signal MCTX_CNT    : std_logic_vector( 3 DownTo 0 ) := ( Others => '0' );
    Signal MCTXE       : std_logic;
    Signal MCTX_FIFO   : FIFO_16X8;
    Signal MCTX_WP     : FIFO_16P := ( Others => '0' );
    Signal MCTX_RP     : FIFO_16P := ( Others => '0' );
    Signal MCTXO       : std_logic_vector( 8 DownTo 0 ) := ( Others => '1' );
    Alias  MCTX        : std_logic Is MCTXO(0);

    -- Interrupt request flags
    Signal IRQ_REG     : OCTET;
    Signal IRQ_FC      : std_logic;
    Signal IRQ_EIRQ    : std_logic;
    Signal IRQ_CTX     : std_logic;
    Signal IRQ_CRX     : std_logic;
    Signal IRQ_PCM     : std_logic;
    Signal IRQ_CTXE    : std_logic;

    -- Interrupt enable flags
    Signal IEN_REG     : OCTET;
    Signal IEN_FC      : std_logic := '1';
    Signal IEN_EIRQ    : std_logic := '1';
    Signal IEN_CTX     : std_logic := '1';
    Signal IEN_CRX     : std_logic := '1';
    Signal IEN_PCM     : std_logic := '1';
    Signal IEN_CTXE    : std_logic := '0';

    -------------------------------------------------------------------------------
    -- Signal attributes:

    -- XST automatically instantiates an IBUFG component for all clock-like 
    -- signals. For clock-like signals, we should instantiate IBUF explicitly.
    Attribute clock_buffer: String;
    Attribute clock_buffer Of WRn : Signal Is "IBUF";
    Attribute clock_buffer Of RDn : Signal Is "IBUF";

Begin

    -------------------------------------------------------------------------------
    -- Component Instatiations:

    PCM_WADDR <= PCM_WP & PCM_BITC( 8 DownTo 3 );

    RPCM0_FIFO : RAMB4_S8_S8
        Port Map 
        (
            ENA   => '1',        ENB   => '1',
            RSTA  => '0',        RSTB  => '0',
            ADDRA => PCM_WADDR,  ADDRB => RPCM0_RADDR,
            CLKA  => Not CLK4M,  CLKB  => RPCM0_RCLK,
            WEA   => PCM_WE,     WEB   => '0',
            DIA   => RPCM0_I,    DIB   => "11111111",
                                 DOB   => RPCM0_O
        );

    RPCM0_RADDR <= PCM_RP & RPCM0_TSR;
    RPCM0_RCLK <= '1' When CSn = '0' And RDn = '0' And A = R_RPCM0_FIFO_IN Else '0';

    RPCM1_FIFO : RAMB4_S8_S8
        Port Map 
        (
            ENA   => '1',        ENB   => '1',
            RSTA  => '0',        RSTB  => '0',
            ADDRA => PCM_WADDR,  ADDRB => RPCM1_RADDR,
            CLKA  => Not CLK4M,  CLKB  => RPCM1_RCLK,
            WEA   => PCM_WE,     WEB   => '0',
            DIA   => RPCM1_I,    DIB   => "11111111",
                                 DOB   => RPCM1_O
        );

    RPCM1_RADDR <= PCM_RP & RPCM1_TSR;
    RPCM1_RCLK <= '1' When CSn = '0' And RDn = '0' And A = R_RPCM1_FIFO_IN Else '0';

    TPCM0_FIFO : RAMB4_S8_S8
        Port Map 
        (
            ENA   => '1',        ENB   => '1',
            RSTA  => '0',        RSTB  => '0',
            ADDRA => PCM_WADDR,  ADDRB => TPCM0_RADDR,
            CLKA  => Not CLK4M,  CLKB  => TPCM0_RCLK,
            WEA   => PCM_WE,     WEB   => '0',
            DIA   => TPCM0_I,    DIB   => "11111111",
                                 DOB   => TPCM0_O
        );

    TPCM0_RADDR <= PCM_RP & TPCM0_TSR;
    TPCM0_RCLK <= '1' When CSn = '0' And RDn = '0' And A = R_TPCM0_FIFO_IN Else '0';

    TPCM1_FIFO : RAMB4_S8_S8
        Port Map 
        (
            ENA   => '1',        ENB   => '1',
            RSTA  => '0',        RSTB  => '0',
            ADDRA => PCM_WADDR,  ADDRB => TPCM1_RADDR,
            CLKA  => Not CLK4M,  CLKB  => TPCM1_RCLK,
            WEA   => PCM_WE,     WEB   => '0',
            DIA   => TPCM1_I,    DIB   => "11111111",
                                 DOB   => TPCM1_O
        );

    TPCM1_RADDR <= PCM_RP & TPCM1_TSR;
    TPCM1_RCLK <= '1' When CSn = '0' And RDn = '0' And A = R_TPCM1_FIFO_IN Else '0';

    -------------------------------------------------------------------------------
    -- Processes:

    -------------------------------------------------------------------------------

    TDM_MasterClock : Process ( CLK16M, RESET )
    Begin

        If RESET = '1' Then
            
            MCTX_CNT <= ( Others => '0' );
            MCTX_RP  <= ( Others => '0' );
            MCTXO    <= ( Others => '1' );

        ElsIf Rising_Edge( CLK16M ) Then

            -- CTX output FIFO

            If CNT( 7 DownTo 0 ) = "00000000" Then -- Every 256 cycles (64 kHz)
                If MCTX_CNT = "0000" Then -- Idle
                    If MCTXE = '0' Then
                        MCTX_CNT <= "0001"; -- Start counting bits
                        -- Load data from FIFO (with start-bit) into shift register
                        MCTXO <= MCTX_FIFO( Conv_Integer( MCTX_RP ) ) & '0';
                        MCTX_RP <= MCTX_RP + 1;
                    End If;
                Else -- Counting bits; 0 = start, 1-8 = data, 9 = stop
                    MCTXO <= '1' & MCTXO( 8 DownTo 1 ); -- Shift right, LSB first
                    If MCTX_CNT >= "1001" Then -- last bit or invalid counter
                        MCTX_CNT <= "0000"; -- Stop counting bits
                    Else
                        MCTX_CNT <= MCTX_CNT + 1;
                    End If;
                End If;
            End If;

        End If;

        If Falling_Edge( CLK16M ) Then
            CNT <= CNT + 1;
        End If;

    End Process TDM_MasterClock;

    -------------------------------------------------------------------------------

    TDM_Sync : Process ( CLK4M )
    Begin

        If Rising_Edge( CLK4M ) And MCPU = '1' Then

            If CNT( 10 DownTo 4 ) = "1111100"
            And CNT( 3 DownTo 0 ) >= "0011" And CNT( 3 DownTo 0 ) <= "1010" Then
                MSYNC2 <= '1';
            Else
                MSYNC2 <= '0';
            End If;

            If CNT( 10 DownTo 3 ) = "11111001" 
            And CNT( 2 DownTo 0 ) >= "011" And CNT( 2 DownTo 0 ) <= "110" Then
                MSYNC4 <= '1';
            Else
                MSYNC4 <= '0';
            End If;

        End If;

    End Process TDM_Sync;

    CLK4M_Clock : Process ( CLK4M, RESET )
    Begin

        If RESET = '1' Then
            
            RPCM0_I <= ( Others => '1' );
            RPCM1_I <= ( Others => '1' );
            TPCM0_I <= ( Others => '1' );
            TPCM1_I <= ( Others => '1' );

            PCM_WE <= '0';
            PCM_WP <= ( Others => '0' );

        ElsIf Rising_Edge( CLK4M ) Then

            RPCM0_I <= RPCM0_I( 6 DownTo 0 ) & RPCM(0); -- Shift left, MSB first
            RPCM1_I <= RPCM1_I( 6 DownTo 0 ) & RPCM(1); -- Shift left, MSB first
            TPCM0_I <= TPCM0_I( 6 DownTo 0 ) & TPCM(0); -- Shift left, MSB first
            TPCM1_I <= TPCM1_I( 6 DownTo 0 ) & TPCM(1); -- Shift left, MSB first

            If PCM_BITC( 2 DownTo 0 ) = "111" Then
                -- Data into PCM FIFO on next falling edge
                PCM_WE <= '1';
            Else
                PCM_WE <= '0';
            End If;

            If PCM_BITC = "000000000" Then
                PCM_WP <= PCM_WP + 1; -- Increment write pointer
            End If;

        End If;

        If RESET = '1' Then

            PCM_BITC <= ( Others => '0' );

        ElsIf Falling_Edge( CLK4M ) Then

            If SYNC4 = '1' Then -- New frame, restart TS/bit counters
                PCM_BITC <= ( Others => '0' );
            Else
                PCM_BITC <= PCM_BITC + 1;
            End If;

        End If;

    End Process CLK4M_Clock;

    -------------------------------------------------------------------------------

    CLK8M_Clock : Process ( CLK8M, RESET )
    Begin

        If Rising_Edge( CLK8M ) Then

            If CTX_CNT = "10010000000" Then
                CTX_FIFO( Conv_Integer( CTX_WP ) ) <= CTXI; -- Data to FIFO
            End If;

            If CRX_CNT = "10010000000" Then
                CRX_FIFO( Conv_Integer( CRX_WP ) ) <= CRXI; -- Data to FIFO
            End If;

            If Not( EIRQI.Once = EIRQI.Twice ) Then
                EIRQ_FIFO( Conv_Integer( EIRQ_WP ) ) <= EIRQI.Once; -- Data to FIFO
            End If;

        End If;

        If RESET = '1' Then

            CTX_CNT <= ( Others => '0' );
            CTX_WP  <= ( Others => '0' );
            CTXI    <= ( Others => '0' );

            CRX_CNT <= ( Others => '0' );
            CRX_WP  <= ( Others => '0' );
            CRXI    <= ( Others => '0' );

            EIRQ_WP <= ( Others => '0' );
            EIRQI.Once  <= '0';
            EIRQI.Twice <= '0';

        ElsIf Rising_Edge( CLK8M ) Then

            -- CTX FIFO

            If CTX_CNT = "00000000000" Then -- Idle
                If CTX = '0' Then -- Falling edge of start bit
                    CTX_CNT <= "00000000001"; -- Start counting
                    CTXI <= "00000000"; -- Clear shift register
                End If;
            ElsIf CTX_CNT( 10 DownTo 7 ) = "1001" Then -- Stop bit
                If CTX_CNT( 6 DownTo 0 ) = "1110000" Then -- Middle stop bit
                    CTX_CNT <= "00000000000"; -- Stop counting
                    -- Data into FIFO comes here
                    CTX_WP <= CTX_WP + 1; -- Increment write pointer
                Else
                    CTX_CNT <= CTX_CNT + 1;
                End If;
            ElsIf CTX_CNT( 10 DownTo 7 ) >= "1010" Then -- Invalid
                CTX_CNT <= "00000000000"; -- Stop counting
            Else -- Data bit
                If CTX_CNT( 6 DownTo 0 ) = "1110000" Then -- Middle of data bit
                    CTXI <= CTX & CTXI( 7 DownTo 1 ); -- Shift right, LSB first
                End If;
                CTX_CNT <= CTX_CNT + 1;
            End If;

            -- CRX FIFO

            If CRX_CNT = "00000000000" Then -- Idle
                If CRX = '0' Then -- Falling edge of start bit
                    CRX_CNT <= "00000000001"; -- Start counting
                    CRXI <= "00000000"; -- Clear shift register
                End If;
            ElsIf CRX_CNT( 10 DownTo 7 ) = "1001" Then -- Stop bit
                If CRX_CNT( 6 DownTo 0 ) = "1110000" Then -- Middle stop bit
                    CRX_CNT <= "00000000000"; -- Stop counting
                    -- Data into FIFO comes here
                    CRX_WP <= CRX_WP + 1; -- Increment write pointer
                Else
                    CRX_CNT <= CRX_CNT + 1;
                End If;
            ElsIf CRX_CNT( 10 DownTo 7 ) >= "1010" Then -- Invalid
                CRX_CNT <= "00000000000"; -- Stop counting
            Else -- Data bit
                If CRX_CNT( 6 DownTo 0 ) = "1110000" Then -- Middle of data bit
                    CRXI <= CRX & CRXI( 7 DownTo 1 ); -- Shift right, LSB first
                End If;
                CRX_CNT <= CRX_CNT + 1;
            End If;

            -- EIRQ FIFO

            If Not( EIRQI.Once = EIRQI.Twice ) Then
                -- Data into FIFO comes here
                EIRQ_WP <= EIRQ_WP + 1; -- Increment write pointer
            End If;

            EIRQI.Twice <= EIRQI.Once; -- old state
            EIRQI.Once  <= Not EIRQn;  -- current state

        End If;

    End Process CLK8M_Clock;

    -------------------------------------------------------------------------------

    FC_ShiftIn : Process ( FCC, RESET )
    Begin

        If RESET = '1' Then

            FCDI <= ( Others => '0' );

        ElsIf Rising_Edge( FCC ) Then

            FCDI <= FCDI( 6 DownTo 0 ) & FCD; -- Shift left, MSB first

        End If;

    End Process FC_ShiftIn;

    -------------------------------------------------------------------------------

    FC_Done : Process ( FCEn, RESET )
    Begin

        If Rising_Edge( FCEn ) Then

            FCE_FIFO( Conv_Integer( FCE_WP ) ) <= FCDI; -- Data to FIFO
            SENSE_FIFO( Conv_Integer( FCE_WP ) ) <= Not SENSEn; -- Data to FIFO

        End If;

        If RESET = '1' Then

            FCE_WP <= ( Others => '0' );

        ElsIf Rising_Edge( FCEn ) Then

            -- Data into FIFO comes here
            FCE_WP <= FCE_WP + 1; -- Increment write pointer

        End If;

    End Process FC_Done;

    -------------------------------------------------------------------------------

    EBI_Write : Process( WRn, RESET )
    Begin

        If Rising_Edge( WRn ) And CSn = '0' Then

            If A = W_CTX_FIFO_OUT Then
                MCTX_FIFO( Conv_Integer( MCTX_WP ) ) <= D; -- Data to FIFO
            End If;

        End If;

        If RESET = '1' Then 

            MCPU     <= '0';

            LED_G    <= '0';
            LED_Y    <= '0';
            LED_R    <= '0';

            RPCM0_TSR <= ( Others => '0' );
            RPCM1_TSR <= ( Others => '0' );
            TPCM0_TSR <= ( Others => '0' );
            TPCM1_TSR <= ( Others => '0' );

            MCTX_WP  <= ( Others => '0' );

            IEN_FC   <= '1';
            IEN_EIRQ <= '1';
            IEN_CTX  <= '1';
            IEN_CRX  <= '1';
            IEN_PCM  <= '1';
            IEN_CTXE <= '0';

            MFCC     <= '0';
            MFCD     <= '0';
            MFCE     <= '0';

        ElsIf Rising_Edge( WRn ) And CSn = '0' Then

            If A = W_GLB_CTRL Then -- Set CPU Mode
                MCPU <= D(0);

            ElsIf A = W_INT_EN_SET Then -- Set IRQ enable flag
                If D(0) = '1' Then IEN_FC   <= '1'; End If;
                If D(1) = '1' Then IEN_EIRQ <= '1'; End If;
                If D(2) = '1' Then IEN_CTX  <= '1'; End If;
                If D(3) = '1' Then IEN_CRX  <= '1'; End If;
                If D(4) = '1' Then IEN_PCM  <= '1'; End If;
                If D(5) = '1' Then IEN_CTXE <= '1'; End If;

            ElsIf A = W_INT_EN_CLR Then -- Clear IRQ enable flag
                If D(0) = '1' Then IEN_FC   <= '0'; End If;
                If D(1) = '1' Then IEN_EIRQ <= '0'; End If;
                If D(2) = '1' Then IEN_CTX  <= '0'; End If;
                If D(3) = '1' Then IEN_CRX  <= '0'; End If;
                If D(4) = '1' Then IEN_PCM  <= '0'; End If;
                If D(5) = '1' Then IEN_CTXE <= '0'; End If;

            ElsIf A = W_FC_CONTROL Then -- FC Control
                MFCC <= D( 0 );
                MFCD <= D( 1 );
                MFCE <= D( 2 );

            ElsIf A = W_CTX_FIFO_OUT Then -- MCTX FIFO
                -- Data into FIFO comes here
                MCTX_WP <= MCTX_WP + 1; -- Increment write pointer

            ElsIf A = W_LED_SET Then -- Set LED
                If D(0) = '1' Then LED_G <= '1'; End If;
                If D(1) = '1' Then LED_Y <= '1'; End If;
                If D(2) = '1' Then LED_R <= '1'; End If;

            ElsIf A = W_LED_CLR Then -- Clear LED
                If D(0) = '1' Then LED_G <= '0'; End If;
                If D(1) = '1' Then LED_Y <= '0'; End If;
                If D(2) = '1' Then LED_R <= '0'; End If;

            ElsIf A = W_RPCM0_TS_SEL Then
                RPCM0_TSR <= D( 5 DownTo 0 );

            ElsIf A = W_RPCM1_TS_SEL Then
                RPCM1_TSR <= D( 5 DownTo 0 );

            ElsIf A = W_TPCM0_TS_SEL Then
                TPCM0_TSR <= D( 5 DownTo 0 );

            ElsIf A = W_TPCM1_TS_SEL Then
                TPCM1_TSR <= D( 5 DownTo 0 );

            End If;

        End If;

    End Process EBI_Write;

    -------------------------------------------------------------------------------

    EBI_Read : Process( RDn, RESET )
    Begin

        If RESET = '1' Then

            FCE_RP <= ( Others => '0' );
            CTX_RP <= ( Others => '0' );
            CRX_RP <= ( Others => '0' );
            EIRQ_RP <= ( Others => '0' );

        ElsIf Rising_Edge( RDn ) And CSn = '0' Then -- Rising edge, CSn is low

            -- FIFO read pointers

            If    A = R_FC_SENSE_IN  Then FCE_RP  <= FCE_RP  + 1;
            ElsIf A = R_CTX_FIFO_IN  Then CTX_RP  <= CTX_RP  + 1;
            ElsIf A = R_CRX_FIFO_IN  Then CRX_RP  <= CRX_RP  + 1;
            ElsIf A = R_EIRQ_FIFO_IN Then EIRQ_RP <= EIRQ_RP + 1;
            ElsIf A = R_PCM_IRQ_ACK  Then PCM_RP  <= PCM_RP  + 1;
            End If;

        End If;

    End Process EBI_Read;

    -------------------------------------------------------------------------------
    -- Concurent Statements:

    LED(1)      <= '1' When RESET = '1' Else Not LED_G;
    LED(2)      <= '0' When RESET = '1' Else Not LED_Y;
    LED(3)      <= '0' When RESET = '1' Else Not LED_R;

    FCIN        <= "0000" & ( Not SENSEn ) & ( Not FCEn ) & FCD & FCC;

    MCLK8M      <= Not CNT(0);
    MCLK4M      <= Not CNT(1);

    -------------------------------------------------------------------------------

    PC          <= "ZZZZZZZZ";

    Test        <= PA(7) Or PA(6) Or PA(5) Or HSSC Or TSYNC 
                   Or TPCM(2) Or TPCM(3) Or RPCM(2) Or RPCM(3);

    -------------------------------------------------------------------------------
    -- Master (CPU) / Slave (Device-Board) Bus Selection

    FCD         <= MFCD When MCPU = '1' Else 'Z';
    FCC         <= MFCC When MCPU = '1' Else 'Z';
    FCEn        <= Not MFCE When MCPU = '1' Else 'Z';
    CTX         <= MCTX When MCPU = '1' Else 'Z';

    CLK8M       <= MCLK8M When MCPU = '1' Else 'Z';
    CLK4M       <= MCLK4M When MCPU = '1' Else 'Z';
    SYNC4       <= MSYNC4 When MCPU = '1' Else 'Z';
    SYNC2       <= MSYNC2 When MCPU = '1' Else 'Z';

    KA_IO       <= "00" When MCPU = '1' Else "ZZ";

    TPCM        <= "1111" When MCPU = '1' Else "ZZZZ";

    -------------------------------------------------------------------------------
    -- Interrupt Request Status

    MCTXE       <= '1' When MCTX_WP = MCTX_RP Else '0';

    IRQ_FC      <= '0' When FCE_WP  = FCE_RP  Else IEN_FC;
    IRQ_EIRQ    <= '0' When EIRQ_WP = EIRQ_RP Else IEN_EIRQ;
    IRQ_CTX     <= '0' When CTX_WP  = CTX_RP  Else IEN_CTX;
    IRQ_CRX     <= '0' When CRX_WP  = CRX_RP  Else IEN_CRX;
    IRQ_PCM     <= '0' When PCM_WP  = PCM_RP  Else IEN_PCM;
    IRQ_CTXE    <= '0' When MCTXE   = '0'     Else IEN_CTXE;

    IRQ_REG <= "00" & IRQ_CTXE & IRQ_PCM & IRQ_EIRQ & IRQ_CRX & IRQ_CTX & IRQ_FC;
    IEN_REG <= "00" & IEN_CTXE & IEN_PCM & IEN_EIRQ & IEN_CRX & IEN_CTX & IEN_FC;

    INTn <= RESET 
         Or Not( IRQ_CTXE Or IRQ_PCM Or IRQ_EIRQ Or IRQ_CRX Or IRQ_CTX Or IRQ_FC );

    -------------------------------------------------------------------------------
    -- FIFO Async Outputs

    FCEO   <= FCE_FIFO   ( Conv_Integer( FCE_RP  ) );
    SENSEO <= SENSE_FIFO ( Conv_Integer( FCE_RP  ) );
    CTXO   <= CTX_FIFO   ( Conv_Integer( CTX_RP  ) );
    CRXO   <= CRX_FIFO   ( Conv_Integer( CRX_RP  ) );
    EIRQO  <= EIRQ_FIFO  ( Conv_Integer( EIRQ_RP ) );

    -------------------------------------------------------------------------------
    -- EBI Read. Bus width (associated to CSn) is 8-bit.
    -- 16-bit cycle consists of two 8-bit subcycles: LSB followed by MSB.

    D <= ( Others => 'Z' ) When CSn = '1' Or RDn = '1'

       Else "000000" & ( Not EIRQn ) & MCPU  When A = R_GLB_STAT
       Else "00" & KA_IO & KA_I              When A = R_BOARD_POS
       Else IEN_REG                          When A = R_INT_ENABLE
       Else IRQ_REG                          When A = R_INT_REQUEST
       Else FCIN                             When A = R_FC_STATUS
       Else FCEO                             When A = R_FC_FIFO_IN
       Else "0000000" & SENSEO               When A = R_FC_SENSE_IN
       Else CTXO                             When A = R_CTX_FIFO_IN
       Else CRXO                             When A = R_CRX_FIFO_IN
       Else "0000000" & EIRQO                When A = R_EIRQ_FIFO_IN
       Else RPCM0_O                          When A = R_RPCM0_FIFO_IN
       Else RPCM1_O                          When A = R_RPCM1_FIFO_IN
       Else TPCM0_O                          When A = R_TPCM0_FIFO_IN
       Else TPCM1_O                          When A = R_TPCM1_FIFO_IN
       Else "10101010"                       When A = R_FPGA_MAGIC_LSB
       Else "00010001"                       When A = R_FPGA_MAGIC_MSB
       Else "00000000";

End Behavioral;
