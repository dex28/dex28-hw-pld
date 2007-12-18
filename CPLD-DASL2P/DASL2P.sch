VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500xl"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL RESET
        SIGNAL DSP_BFS0
        SIGNAL DSP_BCLK0
        SIGNAL DSP_A0
        SIGNAL DSP_A1
        SIGNAL DSP_A2
        SIGNAL IOSTRn
        SIGNAL R_Wn
        SIGNAL WR_E
        SIGNAL WCS(0)
        SIGNAL WCS(4)
        SIGNAL WCS(5)
        SIGNAL WCS(6)
        SIGNAL WCS(7)
        SIGNAL RESETn
        SIGNAL D_OUT(1)
        SIGNAL WCS(7:0)
        SIGNAL D_OUT(1:0)
        SIGNAL WCS(2)
        SIGNAL WCS(3)
        SIGNAL D_OUT(0)
        SIGNAL VCC
        SIGNAL D_IN0
        SIGNAL DSP_D1
        SIGNAL DSP_D0
        SIGNAL XLXN_2020
        SIGNAL LED0a
        SIGNAL CCS1n
        SIGNAL CA0
        SIGNAL CEN
        SIGNAL LED1b
        SIGNAL XLXN_2212
        SIGNAL XLXN_2214
        SIGNAL MnS0
        SIGNAL MnS1
        SIGNAL CIN
        SIGNAL CCLK
        SIGNAL WCS(1)
        SIGNAL LED0b
        SIGNAL LED1a
        SIGNAL DCLK0
        SIGNAL BCLK0
        SIGNAL FSb0
        SIGNAL FSa0
        SIGNAL FSc0
        SIGNAL DSP_INT0n
        SIGNAL MCLK0
        SIGNAL DSP_BCLK1
        SIGNAL DSP_BFS1
        SIGNAL DCLK1
        SIGNAL FSb1
        SIGNAL FSc1
        SIGNAL BCLK1
        SIGNAL FSa1
        SIGNAL MCLK1
        SIGNAL DSP_INT1n
        SIGNAL CLK
        SIGNAL TST_FS
        SIGNAL TST_M_Sn
        SIGNAL MS_Loop
        SIGNAL DX0
        SIGNAL XLXN_2561
        SIGNAL DX1
        SIGNAL XLXN_2566
        SIGNAL DR1
        SIGNAL COUT
        SIGNAL XLXN_1881
        SIGNAL XLXN_2389
        SIGNAL DSP_INT3n
        SIGNAL CINTn
        SIGNAL CCS0n
        SIGNAL DR0
        SIGNAL DSP_BX0
        SIGNAL DSP_BR1
        SIGNAL BR1
        SIGNAL DSP_BX1
        SIGNAL BX1
        SIGNAL DSP_BR0
        SIGNAL BR0
        SIGNAL BX0
        PORT Output DSP_BFS0
        PORT Output DSP_BCLK0
        PORT Input DSP_A0
        PORT Input DSP_A1
        PORT Input DSP_A2
        PORT Input IOSTRn
        PORT Input R_Wn
        PORT Input RESETn
        PORT BiDirectional DSP_D1
        PORT BiDirectional DSP_D0
        PORT Output LED0a
        PORT Output CCS1n
        PORT Output LED1b
        PORT Output CIN
        PORT Output CCLK
        PORT Output LED0b
        PORT Output LED1a
        PORT BiDirectional DCLK0
        PORT BiDirectional BCLK0
        PORT Output FSb0
        PORT Output FSa0
        PORT BiDirectional FSc0
        PORT Output DSP_INT0n
        PORT Output MCLK0
        PORT Output DSP_BCLK1
        PORT Output DSP_BFS1
        PORT BiDirectional DCLK1
        PORT Output FSb1
        PORT BiDirectional FSc1
        PORT BiDirectional BCLK1
        PORT Output FSa1
        PORT Output MCLK1
        PORT Output DSP_INT1n
        PORT Input CLK
        PORT Output TST_FS
        PORT Output TST_M_Sn
        PORT Output DX0
        PORT Output DX1
        PORT Input DR1
        PORT Input COUT
        PORT Output DSP_INT3n
        PORT Input CINTn
        PORT Output CCS0n
        PORT Input DR0
        PORT Input DSP_BX0
        PORT Output DSP_BR1
        PORT Input BR1
        PORT Input DSP_BX1
        PORT Output BX1
        PORT Output DSP_BR0
        PORT Input BR0
        PORT Output BX0
        BEGIN BLOCKDEF d3_8e
            TIMESTAMP 2001 3 9 11 22 33
            LINE N 0 -576 64 -576 
            LINE N 0 -512 64 -512 
            LINE N 0 -448 64 -448 
            LINE N 384 -576 320 -576 
            LINE N 384 -512 320 -512 
            LINE N 384 -448 320 -448 
            LINE N 384 -384 320 -384 
            LINE N 384 -320 320 -320 
            LINE N 384 -256 320 -256 
            LINE N 384 -192 320 -192 
            LINE N 384 -128 320 -128 
            RECTANGLE N 64 -640 320 -64 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b2
            TIMESTAMP 2001 5 11 10 42 1
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 64 -48 64 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2001 5 11 10 41 49
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf
            TIMESTAMP 2001 3 9 11 23 23
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF tdm_mux
            TIMESTAMP 2006 2 6 17 44 42
            RECTANGLE N 64 -1216 400 0 
            LINE N 64 -1120 0 -1120 
            LINE N 64 -1056 0 -1056 
            LINE N 64 -992 0 -992 
            LINE N 400 -1168 464 -1168 
            LINE N 400 -1104 464 -1104 
            LINE N 400 -560 464 -560 
            LINE N 400 -496 464 -496 
            LINE N 400 -848 464 -848 
            LINE N 400 -784 464 -784 
            LINE N 400 -720 464 -720 
            LINE N 400 -656 464 -656 
            LINE N 400 -976 464 -976 
            LINE N 400 -912 464 -912 
            LINE N 400 -1040 464 -1040 
            LINE N 400 -48 464 -48 
            LINE N 400 -112 464 -112 
            LINE N 400 -240 464 -240 
            LINE N 400 -176 464 -176 
            LINE N 400 -304 464 -304 
            LINE N 400 -368 464 -368 
            LINE N 400 -432 464 -432 
            LINE N 64 -880 0 -880 
        END BLOCKDEF
        BEGIN BLOCKDEF fd2cn
            TIMESTAMP 2004 7 15 13 24 30
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -64 0 -64 
            LINE N 80 -64 64 -48 
            LINE N 80 -64 64 -80 
            LINE N 64 -192 0 -192 
            LINE N 64 -128 0 -128 
            LINE N 320 -192 384 -192 
            LINE N 320 -128 384 -128 
            LINE N 64 -256 0 -256 
        END BLOCKDEF
        BEGIN BLOCKDEF iobufe
            TIMESTAMP 2003 3 20 18 52 11
            LINE N 224 -128 128 -128 
            LINE N 160 -64 128 -64 
            LINE N 160 -128 160 -64 
            LINE N 0 -64 64 -64 
            LINE N 96 -140 96 -192 
            LINE N 0 -192 96 -192 
            LINE N 64 -96 64 -160 
            LINE N 128 -128 64 -96 
            LINE N 64 -160 128 -128 
            LINE N 128 -96 128 -32 
            LINE N 64 -64 128 -96 
            LINE N 128 -32 64 -64 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 3 9 11 23 11
            LINE N 64 -128 64 -96 
            LINE N 64 -64 64 -80 
            LINE N 88 -64 40 -64 
            LINE N 68 -32 60 -32 
            LINE N 76 -48 52 -48 
            LINE N 64 -64 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF m8_1e
            TIMESTAMP 2001 3 9 11 24 0
            LINE N 0 -224 96 -224 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 0 -288 96 -288 
            LINE N 0 -352 96 -352 
            LINE N 0 -416 96 -416 
            LINE N 0 -544 96 -544 
            LINE N 0 -608 96 -608 
            LINE N 0 -672 96 -672 
            LINE N 0 -736 96 -736 
            LINE N 160 -160 96 -160 
            LINE N 160 -268 160 -160 
            LINE N 128 -224 96 -224 
            LINE N 128 -264 128 -224 
            LINE N 192 -96 96 -96 
            LINE N 192 -276 192 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -280 224 -32 
            LINE N 320 -512 256 -512 
            LINE N 96 -768 96 -256 
            LINE N 256 -704 96 -768 
            LINE N 256 -288 256 -704 
            LINE N 96 -256 256 -288 
            LINE N 0 -32 96 -32 
            LINE N 0 -480 96 -480 
        END BLOCKDEF
        BEGIN BLOCKDEF fd1cn
            TIMESTAMP 2004 7 1 15 55 54
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 64 -48 80 -32 
            LINE N 80 -32 64 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF obuft
            TIMESTAMP 2001 3 9 11 23 23
            LINE N 0 -96 64 -96 
            LINE N 96 -96 64 -96 
            LINE N 96 -48 96 -96 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF nand2
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF nand2b1
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2001 3 9 11 24 0
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK U23 fd2cn
            PIN Cn WCS(4)
            PIN D0 D_OUT(0)
            PIN D1 D_OUT(1)
            PIN Q0 XLXN_2212
            PIN Q1 LED0b
            PIN CLR RESET
        END BLOCK
        BEGIN BLOCK U24 fd2cn
            PIN Cn WCS(7)
            PIN D0 D_OUT(0)
            PIN D1 D_OUT(1)
            PIN Q0 XLXN_2214
            PIN Q1 LED1b
            PIN CLR RESET
        END BLOCK
        BEGIN BLOCK U2 and2b2
            PIN I0 R_Wn
            PIN I1 IOSTRn
            PIN O WR_E
        END BLOCK
        BEGIN BLOCK U3 and2b1
            PIN I0 IOSTRn
            PIN I1 R_Wn
            PIN O VCC
        END BLOCK
        BEGIN BLOCK U1 inv
            PIN I RESETn
            PIN O RESET
        END BLOCK
        BEGIN BLOCK U7 d3_8e
            PIN A0 DSP_A0
            PIN A1 DSP_A1
            PIN A2 DSP_A2
            PIN E WR_E
            PIN D0 WCS(0)
            PIN D1 WCS(1)
            PIN D2 WCS(2)
            PIN D3 WCS(3)
            PIN D4 WCS(4)
            PIN D5 WCS(5)
            PIN D6 WCS(6)
            PIN D7 WCS(7)
        END BLOCK
        BEGIN BLOCK U5 iobufe
            PIN I XLXN_2020
            PIN IO DSP_D1
            PIN O D_OUT(1)
            PIN E VCC
        END BLOCK
        BEGIN BLOCK U4 iobufe
            PIN I D_IN0
            PIN IO DSP_D0
            PIN O D_OUT(0)
            PIN E VCC
        END BLOCK
        BEGIN BLOCK XLXI_661 gnd
            PIN G XLXN_2020
        END BLOCK
        BEGIN BLOCK XLXI_689 obuft
            PIN I XLXN_2214
            PIN T RESET
            PIN O LED1a
        END BLOCK
        BEGIN BLOCK XLXI_688 obuft
            PIN I XLXN_2212
            PIN T RESET
            PIN O LED0a
        END BLOCK
        BEGIN BLOCK XLXI_691 nand2
            PIN I0 CEN
            PIN I1 CA0
            PIN O CCS1n
        END BLOCK
        BEGIN BLOCK XLXI_692 nand2b1
            PIN I0 CA0
            PIN I1 CEN
            PIN O CCS0n
        END BLOCK
        BEGIN BLOCK XLXI_663 fd1cn
            PIN CLR RESET
            PIN D D_OUT(0)
            PIN Cn WCS(3)
            PIN Q XLXN_2561
        END BLOCK
        BEGIN BLOCK XLXI_662 fd1cn
            PIN CLR RESET
            PIN D D_OUT(0)
            PIN Cn WCS(2)
            PIN Q MnS0
        END BLOCK
        BEGIN BLOCK XLXI_690 fd2cn
            PIN Cn WCS(1)
            PIN D0 D_OUT(0)
            PIN D1 D_OUT(1)
            PIN Q0 CIN
            PIN Q1 CCLK
            PIN CLR RESET
        END BLOCK
        BEGIN BLOCK U22 fd2cn
            PIN Cn WCS(0)
            PIN D0 D_OUT(0)
            PIN D1 D_OUT(1)
            PIN Q0 CA0
            PIN Q1 CEN
            PIN CLR RESET
        END BLOCK
        BEGIN BLOCK U25 tdm_mux
            PIN M_Sn0 MnS0
            PIN M_Sn1 MnS1
            PIN MS_Loop MS_Loop
            PIN DSP_BCLK0 DSP_BCLK0
            PIN DSP_BFS0 DSP_BFS0
            PIN DSP_BCLK1 DSP_BCLK1
            PIN DSP_BFS1 DSP_BFS1
            PIN FSa0 FSa0
            PIN FSb0 FSb0
            PIN FSc0 FSc0
            PIN DCLK0 DCLK0
            PIN MCLK0 MCLK0
            PIN BCLK0 BCLK0
            PIN INTn0 DSP_INT0n
            PIN DCLK1 DCLK1
            PIN FSc1 FSc1
            PIN FSa1 FSa1
            PIN FSb1 FSb1
            PIN BCLK1 BCLK1
            PIN MCLK1 MCLK1
            PIN INTn1 DSP_INT1n
            PIN CLK CLK
        END BLOCK
        BEGIN BLOCK XLXI_765 gnd
            PIN G TST_M_Sn
        END BLOCK
        BEGIN BLOCK XLXI_766 gnd
            PIN G TST_FS
        END BLOCK
        BEGIN BLOCK XLXI_664 fd1cn
            PIN CLR RESET
            PIN D D_OUT(0)
            PIN Cn WCS(6)
            PIN Q XLXN_2566
        END BLOCK
        BEGIN BLOCK XLXI_813 fd2cn
            PIN Cn WCS(5)
            PIN D0 D_OUT(0)
            PIN D1 D_OUT(1)
            PIN Q0 MnS1
            PIN Q1 MS_Loop
            PIN CLR RESET
        END BLOCK
        BEGIN BLOCK XLXI_820 m2_1
            PIN D0 XLXN_2561
            PIN D1 DR1
            PIN S0 MS_Loop
            PIN O DX0
        END BLOCK
        BEGIN BLOCK XLXI_824 m2_1
            PIN D0 XLXN_2566
            PIN D1 DR0
            PIN S0 MS_Loop
            PIN O DX1
        END BLOCK
        BEGIN BLOCK XLXI_511 m8_1e
            PIN D0 CINTn
            PIN D1 COUT
            PIN D2 MnS0
            PIN D3 DR0
            PIN D4 XLXN_2389
            PIN D5 MnS1
            PIN D6 DR1
            PIN D7 XLXN_1881
            PIN E VCC
            PIN S0 DSP_A0
            PIN S1 DSP_A1
            PIN S2 DSP_A2
            PIN O D_IN0
        END BLOCK
        BEGIN BLOCK U55 obuf
            PIN I CINTn
            PIN O DSP_INT3n
        END BLOCK
        BEGIN BLOCK XLXI_671 gnd
            PIN G XLXN_2389
        END BLOCK
        BEGIN BLOCK XLXI_568 gnd
            PIN G XLXN_1881
        END BLOCK
        BEGIN BLOCK XLXI_839 obuf
            PIN I BR1
            PIN O DSP_BR1
        END BLOCK
        BEGIN BLOCK XLXI_838 obuf
            PIN I BR0
            PIN O DSP_BR0
        END BLOCK
        BEGIN BLOCK XLXI_795 m2_1
            PIN D0 DSP_BX1
            PIN D1 BR0
            PIN S0 MS_Loop
            PIN O BX1
        END BLOCK
        BEGIN BLOCK XLXI_786 m2_1
            PIN D0 DSP_BX0
            PIN D1 BR1
            PIN S0 MS_Loop
            PIN O BX0
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5382 3801
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH DSP_BFS0
            WIRE 4912 1888 5056 1888
        END BRANCH
        BEGIN BRANCH DSP_BCLK0
            WIRE 4912 1824 5056 1824
        END BRANCH
        IOMARKER 5056 1888 DSP_BFS0 R0 28
        IOMARKER 5056 1824 DSP_BCLK0 R0 28
        BEGIN BRANCH IOSTRn
            WIRE 224 864 288 864
            WIRE 288 864 400 864
            WIRE 400 864 528 864
            WIRE 400 864 400 1088
            WIRE 400 1088 528 1088
            BEGIN DISPLAY 288 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R_Wn
            WIRE 224 928 288 928
            WIRE 288 928 464 928
            WIRE 464 928 528 928
            WIRE 464 928 464 1024
            WIRE 464 1024 528 1024
            BEGIN DISPLAY 288 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE U2 528 992 R0
        BUSTAP 1488 448 1392 448
        BEGIN BRANCH WCS(0)
            WIRE 1360 448 1376 448
            WIRE 1376 448 1392 448
            BEGIN DISPLAY 1376 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 512 1392 512
        BUSTAP 1488 704 1392 704
        BEGIN BRANCH WCS(4)
            WIRE 1360 704 1376 704
            WIRE 1376 704 1392 704
            BEGIN DISPLAY 1376 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 768 1392 768
        BEGIN BRANCH WCS(5)
            WIRE 1360 768 1376 768
            WIRE 1376 768 1392 768
            BEGIN DISPLAY 1376 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 832 1392 832
        BEGIN BRANCH WCS(6)
            WIRE 1360 832 1376 832
            WIRE 1376 832 1392 832
            BEGIN DISPLAY 1376 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 896 1392 896
        BEGIN BRANCH WCS(7)
            WIRE 1360 896 1376 896
            WIRE 1376 896 1392 896
            BEGIN DISPLAY 1376 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RESETn
            WIRE 240 176 320 176
            WIRE 320 176 464 176
            BEGIN DISPLAY 320 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE U1 464 208 R0
        BEGIN BRANCH D_OUT(1)
            WIRE 3424 1280 3504 1280
            WIRE 3504 1280 3600 1280
            BEGIN DISPLAY 3504 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3360 768 3424 768
        BUSTAP 3360 832 3424 832
        BUSTAP 3360 1280 3424 1280
        INSTANCE U7 976 1024 R0
        BUSTAP 1488 576 1392 576
        BEGIN BRANCH WCS(2)
            WIRE 1360 576 1376 576
            WIRE 1376 576 1392 576
            BEGIN DISPLAY 1376 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 640 1392 640
        BEGIN BRANCH WCS(3)
            WIRE 1360 640 1376 640
            WIRE 1376 640 1392 640
            BEGIN DISPLAY 1376 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 3424 1216 3504 1216
            WIRE 3504 1216 3600 1216
            BEGIN DISPLAY 3504 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3360 1216 3424 1216
        BEGIN BRANCH DSP_A0
            WIRE 240 448 320 448
            WIRE 320 448 976 448
            BEGIN DISPLAY 320 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DSP_A1
            WIRE 240 512 320 512
            WIRE 320 512 976 512
            BEGIN DISPLAY 320 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DSP_A2
            WIRE 240 576 320 576
            WIRE 320 576 976 576
            BEGIN DISPLAY 320 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE U3 528 1152 R0
        BEGIN BRANCH DSP_D1
            WIRE 224 1616 288 1616
            WIRE 288 1616 352 1616
            BEGIN DISPLAY 288 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DSP_D0
            WIRE 224 1376 288 1376
            WIRE 288 1376 352 1376
            BEGIN DISPLAY 288 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(1)
            WIRE 576 1680 768 1680
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 576 1440 768 1440
        END BRANCH
        BEGIN BRANCH XLXN_2020
            WIRE 576 1616 752 1616
            WIRE 752 1616 752 1744
        END BRANCH
        INSTANCE U5 576 1744 M0
        INSTANCE U4 576 1504 M0
        BUSTAP 864 1680 768 1680
        BUSTAP 864 1440 768 1440
        INSTANCE XLXI_661 688 1872 R0
        BEGIN BRANCH VCC
            WIRE 576 1312 592 1312
            WIRE 592 1312 592 1552
            WIRE 592 1312 880 1312
            WIRE 576 1552 592 1552
            WIRE 784 1056 816 1056
            WIRE 816 1056 880 1056
            WIRE 880 1056 880 1312
            BEGIN DISPLAY 816 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(1)
            WIRE 3424 832 3504 832
            WIRE 3504 832 3600 832
            BEGIN DISPLAY 3504 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 3424 768 3504 768
            WIRE 3504 768 3600 768
            BEGIN DISPLAY 3504 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WR_E
            WIRE 784 896 864 896
            WIRE 864 896 976 896
            BEGIN DISPLAY 864 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_IN0
            WIRE 576 1376 1008 1376
            WIRE 1008 1376 1120 1376
            WIRE 1120 1376 1120 2880
            WIRE 1120 2880 1184 2880
            WIRE 1184 2880 1264 2880
            BEGIN DISPLAY 1008 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 1184 2880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 224 2720 TEXT port6
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 224 2672 TEXT port5
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 224 2620 TEXT port4
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 224 2572 TEXT port3
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 224 2524 TEXT port2
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 224 2476 TEXT port1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 224 2428 TEXT port0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN RECTANGLE W 200 2308 796 2792 
        END RECTANGLE
        LINE N 200 2696 796 2696 
        LINE N 200 2504 796 2504 
        LINE N 200 2456 796 2456 
        LINE N 200 2600 796 2600 
        LINE N 200 2648 796 2648 
        LINE N 200 2552 796 2552 
        BEGIN LINE W 200 2408 796 2408 
        END LINE
        BEGIN LINE W 792 2360 348 2360 
        END LINE
        BEGIN DISPLAY 384 2384 TEXT D1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 496 2384 TEXT D0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 608 2384 TEXT D1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN LINE W 348 2308 348 2792 
        END LINE
        LINE N 460 2360 460 2792 
        LINE N 684 2360 684 2792 
        BEGIN LINE W 572 2308 572 2788 
        END LINE
        BEGIN DISPLAY 720 2384 TEXT D0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 224 2768 TEXT port7
            FONT 32 "Courier New"
        END DISPLAY
        LINE N 200 2744 796 2744 
        BEGIN DISPLAY 392 2768 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 504 2768 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 584 2768 TEXT LEDY1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 696 2768 TEXT LEDG1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 244 2376 TEXT Map
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 216 2344 TEXT Address
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 652 2336 TEXT Write
            FONT 28 "Arial"
        END DISPLAY
        BEGIN DISPLAY 432 2336 TEXT Read
            FONT 28 "Arial"
        END DISPLAY
        BEGIN DISPLAY 392 2576 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 616 2576 TEXT -
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 392 2480 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 476 2480 TEXT COUT
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 588 2480 TEXT CCLK
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 704 2480 TEXT CIN
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 392 2624 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 504 2624 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 584 2624 TEXT LEDY0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 696 2624 TEXT LEDG0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 392 2720 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 616 2720 TEXT -
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 392 2528 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 616 2528 TEXT -
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 480 2528 TEXT MnS0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 704 2528 TEXT MnS0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 392 2432 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 472 2432 TEXT CINTn
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 696 2432 TEXT CA0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 584 2432 TEXT CEN
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 392 2672 TEXT 0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 616 2672 TEXT -
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 480 2672 TEXT MnS1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 704 2672 TEXT MnS1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 488 2720 TEXT DR1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 712 2720 TEXT DX1
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 488 2576 TEXT DR0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN DISPLAY 712 2576 TEXT DX0
            FONT 32 "Courier New"
        END DISPLAY
        BEGIN BRANCH LED0a
            WIRE 4608 768 4736 768
        END BRANCH
        BEGIN BRANCH CCS1n
            WIRE 4480 416 4736 416
        END BRANCH
        BEGIN BRANCH CA0
            WIRE 3984 320 4048 320
            WIRE 4048 320 4208 320
            WIRE 4208 320 4208 384
            WIRE 4208 384 4224 384
            WIRE 4208 288 4224 288
            WIRE 4208 288 4208 320
            BEGIN DISPLAY 4048 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CEN
            WIRE 3984 384 4048 384
            WIRE 4048 384 4160 384
            WIRE 4160 384 4160 448
            WIRE 4160 448 4224 448
            WIRE 4160 224 4224 224
            WIRE 4160 224 4160 384
            BEGIN DISPLAY 4048 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN RECTANGLE N 3632 568 4880 996 
            LINESTYLE Dash
        END RECTANGLE
        BEGIN RECTANGLE N 3636 1016 4880 1444 
            LINESTYLE Dash
        END RECTANGLE
        BEGIN RECTANGLE N 3632 128 4880 552 
            LINESTYLE Dash
        END RECTANGLE
        INSTANCE XLXI_691 4224 512 R0
        INSTANCE XLXI_692 4224 352 R0
        IOMARKER 4736 256 CCS0n R0 28
        IOMARKER 4736 416 CCS1n R0 28
        BEGIN BRANCH RESET
            WIRE 4304 704 4384 704
            BEGIN DISPLAY 4304 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RESET
            WIRE 4304 1152 4384 1152
            BEGIN DISPLAY 4304 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH LED1b
            WIRE 3984 1280 4736 1280
        END BRANCH
        BEGIN BRANCH XLXN_2212
            WIRE 3984 768 4384 768
        END BRANCH
        BEGIN BRANCH XLXN_2214
            WIRE 3984 1216 4384 1216
        END BRANCH
        BEGIN INSTANCE U23 3600 960 R0
        END INSTANCE
        BEGIN INSTANCE U24 3600 1408 R0
        END INSTANCE
        BUSTAP 3280 1344 3328 1344
        BUSTAP 3280 896 3328 896
        BEGIN BRANCH WCS(3)
            WIRE 1664 1280 1776 1280
            WIRE 1776 1280 1888 1280
            BEGIN DISPLAY 1776 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WCS(2)
            WIRE 1664 1024 1776 1024
            WIRE 1776 1024 1888 1024
            BEGIN DISPLAY 1776 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1616 1280 1664 1280
        BUSTAP 1616 1024 1664 1024
        BUSTAP 1680 960 1728 960
        BUSTAP 1680 1216 1728 1216
        BEGIN INSTANCE XLXI_663 1888 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_662 1888 1056 R0
        END INSTANCE
        BEGIN BRANCH D_OUT(0)
            WIRE 1728 1216 1776 1216
            WIRE 1776 1216 1888 1216
            BEGIN DISPLAY 1776 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 1728 960 1776 960
            WIRE 1776 960 1888 960
            BEGIN DISPLAY 1776 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 1728 544 1776 544
            WIRE 1776 544 1888 544
            BEGIN DISPLAY 1776 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(1)
            WIRE 1728 608 1776 608
            WIRE 1776 608 1888 608
            BEGIN DISPLAY 1776 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WCS(1)
            WIRE 1664 672 1776 672
            WIRE 1776 672 1888 672
            BEGIN DISPLAY 1776 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1680 608 1728 608
        BUSTAP 1680 544 1728 544
        BUSTAP 1616 672 1664 672
        BEGIN INSTANCE XLXI_690 1888 736 R0
        END INSTANCE
        BEGIN BRANCH D_OUT(1)
            WIRE 3424 384 3488 384
            WIRE 3488 384 3600 384
            BEGIN DISPLAY 3488 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 3424 320 3488 320
            WIRE 3488 320 3600 320
            BEGIN DISPLAY 3488 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U22 3600 512 R0
        END INSTANCE
        BUSTAP 3360 384 3424 384
        BUSTAP 3360 320 3424 320
        BUSTAP 3280 448 3328 448
        BEGIN RECTANGLE N 1920 336 2848 784 
            LINESTYLE Dash
        END RECTANGLE
        BEGIN BRANCH CIN
            WIRE 2272 544 2672 544
        END BRANCH
        BEGIN BRANCH CCLK
            WIRE 2272 608 2672 608
        END BRANCH
        BEGIN BRANCH WCS(1)
            WIRE 1360 512 1376 512
            WIRE 1376 512 1392 512
            BEGIN DISPLAY 1376 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WCS(0)
            WIRE 3328 448 3488 448
            WIRE 3488 448 3600 448
            BEGIN DISPLAY 3488 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WCS(4)
            WIRE 3328 896 3504 896
            WIRE 3504 896 3600 896
            BEGIN DISPLAY 3504 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WCS(7)
            WIRE 3328 1344 3504 1344
            WIRE 3504 1344 3600 1344
            BEGIN DISPLAY 3504 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 2720 1432 TEXT "DASL #1"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2716 856 TEXT "DASL #0"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN BRANCH WCS(7:0)
            WIRE 1488 288 1488 448
            WIRE 1488 448 1488 512
            WIRE 1488 512 1488 576
            WIRE 1488 576 1488 640
            WIRE 1488 640 1488 704
            WIRE 1488 704 1488 768
            WIRE 1488 768 1488 832
            WIRE 1488 832 1488 896
            WIRE 1488 288 1616 288
            WIRE 1616 288 2896 288
            WIRE 2896 288 3280 288
            WIRE 3280 288 3280 448
            WIRE 3280 448 3280 672
            WIRE 3280 672 3280 896
            WIRE 3280 896 3280 1344
            WIRE 1616 288 1616 432
            WIRE 1616 432 1616 672
            WIRE 1616 672 1616 1024
            WIRE 1616 1024 1616 1280
            WIRE 1616 1280 1616 1696
            WIRE 1616 1696 1616 1984
            BEGIN DISPLAY 1616 432 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
            BEGIN DISPLAY 2896 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 3280 672 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 4572 168 TEXT "DASL Control Interface"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2524 380 TEXT "DASL Control Interface"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN BRANCH LED0b
            WIRE 3984 832 4176 832
            WIRE 4176 832 4176 848
            WIRE 4176 848 4736 848
        END BRANCH
        IOMARKER 4736 848 LED0b R0 28
        BEGIN BRANCH LED1a
            WIRE 4608 1216 4736 1216
        END BRANCH
        BEGIN DISPLAY 4676 1064 TEXT "DASL #1 LED"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 4676 616 TEXT "DASL #0 LED"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN BRANCH DCLK0
            WIRE 4912 2336 5056 2336
        END BRANCH
        BEGIN BRANCH BCLK0
            WIRE 4912 2080 5056 2080
        END BRANCH
        BEGIN BRANCH FSb0
            WIRE 4912 2208 5056 2208
        END BRANCH
        BEGIN BRANCH FSa0
            WIRE 4912 2144 5056 2144
        END BRANCH
        BEGIN BRANCH FSc0
            WIRE 4912 2272 5056 2272
        END BRANCH
        IOMARKER 5056 2336 DCLK0 R0 28
        IOMARKER 5056 2080 BCLK0 R0 28
        IOMARKER 5056 2208 FSb0 R0 28
        IOMARKER 5056 2144 FSa0 R0 28
        IOMARKER 5056 2272 FSc0 R0 28
        BEGIN BRANCH DSP_INT0n
            WIRE 4912 1952 5056 1952
        END BRANCH
        IOMARKER 5056 1952 DSP_INT0n R0 28
        BEGIN BRANCH MCLK0
            WIRE 4912 2016 5056 2016
        END BRANCH
        IOMARKER 5056 2016 MCLK0 R0 28
        BEGIN BRANCH DSP_BCLK1
            WIRE 4912 2432 5056 2432
        END BRANCH
        BEGIN BRANCH DSP_BFS1
            WIRE 4912 2496 5056 2496
        END BRANCH
        BEGIN BRANCH DCLK1
            WIRE 4912 2944 5056 2944
        END BRANCH
        BEGIN BRANCH FSb1
            WIRE 4912 2816 5056 2816
        END BRANCH
        BEGIN BRANCH FSc1
            WIRE 4912 2880 5056 2880
        END BRANCH
        BEGIN BRANCH BCLK1
            WIRE 4912 2688 5056 2688
        END BRANCH
        BEGIN BRANCH FSa1
            WIRE 4912 2752 5056 2752
        END BRANCH
        BEGIN BRANCH MCLK1
            WIRE 4912 2624 5056 2624
        END BRANCH
        BEGIN BRANCH DSP_INT1n
            WIRE 4912 2560 5056 2560
        END BRANCH
        IOMARKER 5056 2432 DSP_BCLK1 R0 28
        IOMARKER 5056 2496 DSP_BFS1 R0 28
        IOMARKER 5056 2944 DCLK1 R0 28
        IOMARKER 5056 2816 FSb1 R0 28
        IOMARKER 5056 2880 FSc1 R0 28
        IOMARKER 5056 2688 BCLK1 R0 28
        IOMARKER 5056 2752 FSa1 R0 28
        IOMARKER 5056 2624 MCLK1 R0 28
        IOMARKER 5056 2560 DSP_INT1n R0 28
        BEGIN INSTANCE U25 4448 2992 R0
        END INSTANCE
        BEGIN BRANCH MnS0
            WIRE 2272 960 2288 960
            WIRE 2288 960 3200 960
            WIRE 3200 960 3200 1872
            WIRE 3200 1872 4240 1872
            WIRE 4240 1872 4448 1872
            BEGIN DISPLAY 2288 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 4240 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 4288 2112 4448 2112
        END BRANCH
        BEGIN DISPLAY 4024 1744 TEXT "TDM Bus Control & Sync"
            FONT 36 "Arial"
        END DISPLAY
        BEGIN DISPLAY 4896 2400 TEXT "DASL #1"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 4896 1792 TEXT "DASL #0"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN BRANCH TST_FS
            WIRE 4832 3104 5056 3104
        END BRANCH
        BEGIN BRANCH TST_M_Sn
            WIRE 4832 3168 5056 3168
        END BRANCH
        IOMARKER 5056 3104 TST_FS R0 28
        IOMARKER 5056 3168 TST_M_Sn R0 28
        INSTANCE XLXI_766 4704 3040 R90
        INSTANCE XLXI_765 4704 3104 R90
        BEGIN BRANCH WCS(6)
            WIRE 1664 1984 1792 1984
            WIRE 1792 1984 1888 1984
            BEGIN DISPLAY 1792 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 1728 1920 1792 1920
            WIRE 1792 1920 1888 1920
            BEGIN DISPLAY 1792 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1616 1984 1664 1984
        BUSTAP 1680 1920 1728 1920
        BEGIN INSTANCE XLXI_664 1888 2016 R0
        END INSTANCE
        BEGIN BRANCH RESET
            WIRE 688 176 960 176
            WIRE 960 176 1872 176
            WIRE 1872 176 3584 176
            WIRE 3584 176 3584 256
            WIRE 3584 256 3584 704
            WIRE 3584 704 3600 704
            WIRE 3584 704 3584 1152
            WIRE 3584 1152 3600 1152
            WIRE 3584 256 3600 256
            WIRE 1872 176 1872 480
            WIRE 1872 480 1888 480
            WIRE 1872 480 1872 896
            WIRE 1872 896 1888 896
            WIRE 1872 896 1872 1152
            WIRE 1872 1152 1888 1152
            WIRE 1872 1152 1872 1504
            WIRE 1872 1504 1872 1856
            WIRE 1872 1856 1888 1856
            WIRE 1872 1504 1888 1504
            BEGIN DISPLAY 960 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MnS1
            WIRE 2272 1568 2288 1568
            WIRE 2288 1568 3152 1568
            WIRE 3152 1568 3152 1936
            WIRE 3152 1936 4240 1936
            WIRE 4240 1936 4448 1936
            BEGIN DISPLAY 2288 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 4240 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(0)
            WIRE 1728 1568 1792 1568
            WIRE 1792 1568 1888 1568
            BEGIN DISPLAY 1792 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WCS(5)
            WIRE 1664 1696 1792 1696
            WIRE 1792 1696 1888 1696
            BEGIN DISPLAY 1792 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D_OUT(1)
            WIRE 1728 1632 1792 1632
            WIRE 1792 1632 1888 1632
            BEGIN DISPLAY 1792 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1680 1568 1728 1568
        BUSTAP 1616 1696 1664 1696
        BUSTAP 1680 1632 1728 1632
        BEGIN BRANCH D_OUT(1:0)
            WIRE 864 1440 864 1552
            WIRE 864 1552 864 1680
            WIRE 864 1680 864 2160
            WIRE 864 2160 1680 2160
            WIRE 1680 2160 3360 2160
            WIRE 1680 544 1680 608
            WIRE 1680 608 1680 800
            WIRE 1680 800 1680 960
            WIRE 1680 960 1680 1216
            WIRE 1680 1216 1680 1568
            WIRE 1680 1568 1680 1632
            WIRE 1680 1632 1680 1920
            WIRE 1680 1920 1680 2080
            WIRE 1680 2080 1680 2160
            WIRE 3360 320 3360 384
            WIRE 3360 384 3360 768
            WIRE 3360 768 3360 832
            WIRE 3360 832 3360 1216
            WIRE 3360 1216 3360 1280
            WIRE 3360 1280 3360 2080
            WIRE 3360 2080 3360 2160
            BEGIN DISPLAY 864 1552 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
            BEGIN DISPLAY 1680 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
            BEGIN DISPLAY 1680 2080 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
            BEGIN DISPLAY 3360 2080 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_813 1888 1760 R0
        END INSTANCE
        BEGIN DISPLAY 2532 1548 TEXT "TDM Master/Slave Flag"
            FONT 24 "Arial"
        END DISPLAY
        BEGIN RECTANGLE N 1920 800 3044 1360 
            LINESTYLE Dash
        END RECTANGLE
        BEGIN BRANCH DX0
            WIRE 2816 1248 2896 1248
        END BRANCH
        BEGIN BRANCH XLXN_2561
            WIRE 2272 1216 2496 1216
        END BRANCH
        BEGIN BRANCH DX1
            WIRE 2816 1952 2880 1952
        END BRANCH
        BEGIN BRANCH XLXN_2566
            WIRE 2272 1920 2496 1920
        END BRANCH
        BEGIN DISPLAY 2532 1612 TEXT "TDM 1 <-> TDM 0 loop flag"
            FONT 24 "Arial"
        END DISPLAY
        LINE N 2652 1536 2700 1536 
        BEGIN BRANCH VCC
            WIRE 1584 2400 1856 2400
            BEGIN DISPLAY 1856 2400 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DSP_A2
            WIRE 1584 2464 1856 2464
            BEGIN DISPLAY 1856 2464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DSP_A1
            WIRE 1584 2528 1856 2528
            BEGIN DISPLAY 1856 2528 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DSP_A0
            WIRE 1584 2592 1856 2592
            BEGIN DISPLAY 1856 2592 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_1881
            WIRE 1584 2656 1600 2656
        END BRANCH
        BEGIN BRANCH MnS1
            WIRE 1584 2784 2048 2784
            BEGIN DISPLAY 2048 2784 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MnS0
            WIRE 1584 2976 2048 2976
            BEGIN DISPLAY 2048 2976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_2389
            WIRE 1584 2848 1600 2848
        END BRANCH
        BEGIN BRANCH DSP_INT3n
            WIRE 1968 3168 2048 3168
        END BRANCH
        BEGIN BRANCH CINTn
            WIRE 1584 3104 1632 3104
            WIRE 1632 3104 1632 3168
            WIRE 1632 3168 1744 3168
            WIRE 1632 3104 2048 3104
        END BRANCH
        INSTANCE XLXI_511 1584 2368 R180
        INSTANCE XLXI_671 1728 2912 R270
        INSTANCE XLXI_568 1728 2720 R270
        BEGIN RECTANGLE N 1244 2292 2244 3280 
            LINESTYLE Dash
        END RECTANGLE
        IOMARKER 224 1616 DSP_D1 R180 28
        IOMARKER 224 1376 DSP_D0 R180 28
        IOMARKER 224 864 IOSTRn R180 28
        IOMARKER 240 576 DSP_A2 R180 28
        IOMARKER 240 512 DSP_A1 R180 28
        IOMARKER 240 448 DSP_A0 R180 28
        IOMARKER 240 176 RESETn R180 28
        IOMARKER 224 928 R_Wn R180 28
        BEGIN DISPLAY 1292 2340 TEXT "Data Inputs (D0 line)"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN BRANCH COUT
            WIRE 1584 3040 2048 3040
        END BRANCH
        INSTANCE U55 1744 3200 R0
        IOMARKER 2048 3040 COUT R0 28
        IOMARKER 2048 3104 CINTn R0 28
        IOMARKER 2048 3168 DSP_INT3n R0 28
        IOMARKER 4288 2112 CLK R180 28
        BEGIN BRANCH CCS0n
            WIRE 4480 256 4736 256
        END BRANCH
        IOMARKER 4736 1216 LED1a R0 28
        IOMARKER 4736 1280 LED1b R0 28
        INSTANCE XLXI_689 4384 1248 R0
        INSTANCE XLXI_688 4384 800 R0
        IOMARKER 4736 768 LED0a R0 28
        BEGIN DISPLAY 4616 1196 TEXT Green
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 4620 1260 TEXT Yellow
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 4632 824 TEXT Yellow
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 4632 740 TEXT Green
            FONT 32 "Arial"
        END DISPLAY
        BEGIN RECTANGLE N 4112 184 4488 512 
            LINESTYLE Dash
        END RECTANGLE
        BEGIN DISPLAY 4112 164 TEXT D1_1E
            FONT 32 "Arial"
        END DISPLAY
        BEGIN BRANCH DSP_BX0
            WIRE 3200 2560 3696 2560
        END BRANCH
        BEGIN BRANCH MS_Loop
            WIRE 2272 1632 2288 1632
            WIRE 2288 1632 2432 1632
            WIRE 2432 1632 2432 2048
            WIRE 2432 2048 2496 2048
            WIRE 2432 1632 3104 1632
            WIRE 3104 1632 3104 2000
            WIRE 3104 2000 3552 2000
            WIRE 3552 2000 4240 2000
            WIRE 4240 2000 4448 2000
            WIRE 3552 2000 3552 2688
            WIRE 3552 2688 3696 2688
            WIRE 3552 2688 3552 3152
            WIRE 3552 3152 3712 3152
            WIRE 2432 1344 2496 1344
            WIRE 2432 1344 2432 1632
            BEGIN DISPLAY 2288 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 3552 2688 ATTR Name
                ALIGNMENT SOFT-BVCENTER
            END DISPLAY
            BEGIN DISPLAY 4240 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4128 2816 BR0 R0 28
        IOMARKER 4128 3056 BX1 R0 28
        IOMARKER 4128 2592 BX0 R0 28
        BEGIN BRANCH DSP_BR1
            WIRE 3200 3264 3264 3264
        END BRANCH
        BEGIN BRANCH BR1
            WIRE 3488 3264 3616 3264
            WIRE 3616 3264 4128 3264
            WIRE 3616 2624 3696 2624
            WIRE 3616 2624 3616 3264
        END BRANCH
        BEGIN BRANCH DSP_BX1
            WIRE 3200 3024 3712 3024
        END BRANCH
        BEGIN BRANCH BX1
            WIRE 4032 3056 4128 3056
        END BRANCH
        BEGIN BRANCH DSP_BR0
            WIRE 3200 2816 3264 2816
        END BRANCH
        BEGIN BRANCH BR0
            WIRE 3488 2816 3664 2816
            WIRE 3664 2816 4128 2816
            WIRE 3664 2816 3664 3088
            WIRE 3664 3088 3712 3088
        END BRANCH
        BEGIN BRANCH BX0
            WIRE 4016 2592 4128 2592
        END BRANCH
        INSTANCE XLXI_786 3696 2720 R0
        INSTANCE XLXI_795 3712 3184 R0
        INSTANCE XLXI_838 3488 2848 M0
        INSTANCE XLXI_839 3488 3296 M0
        IOMARKER 3200 3264 DSP_BR1 R180 28
        IOMARKER 3200 3024 DSP_BX1 R180 28
        IOMARKER 3200 2816 DSP_BR0 R180 28
        IOMARKER 3200 2560 DSP_BX0 R180 28
        BEGIN RECTANGLE N 2992 2412 4340 3412 
            LINESTYLE Dash
        END RECTANGLE
        BEGIN DISPLAY 3036 2452 TEXT "TDM Bus B Channel"
            FONT 32 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2504 940 TEXT "TDM Master/Slave Flag"
            FONT 24 "Arial"
        END DISPLAY
        LINE N 2620 928 2672 928 
        IOMARKER 2672 608 CCLK R0 28
        IOMARKER 2672 544 CIN R0 28
        IOMARKER 2880 1952 DX1 R0 28
        IOMARKER 2880 1792 DR1 R0 28
        INSTANCE XLXI_824 2496 2080 R0
        INSTANCE XLXI_820 2496 1376 R0
        IOMARKER 2896 1248 DX0 R0 28
        IOMARKER 2896 1088 DR0 R0 28
        BEGIN RECTANGLE N 1920 1376 3040 2084 
            LINESTYLE Dash
        END RECTANGLE
        BEGIN BRANCH DR0
            WIRE 1584 2912 2080 2912
            WIRE 2080 2912 2384 2912
            WIRE 2384 1088 2896 1088
            WIRE 2384 1088 2384 1984
            WIRE 2384 1984 2384 2912
            WIRE 2384 1984 2464 1984
            WIRE 2464 1984 2496 1984
            BEGIN DISPLAY 2080 2912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2464 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DR1
            WIRE 1584 2720 2080 2720
            WIRE 2080 2720 2336 2720
            WIRE 2336 1280 2336 1792
            WIRE 2336 1792 2880 1792
            WIRE 2336 1792 2336 2720
            WIRE 2336 1280 2432 1280
            WIRE 2432 1280 2496 1280
            BEGIN DISPLAY 2080 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2432 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4128 3264 BR1 R0 28
    END SHEET
END SCHEMATIC
