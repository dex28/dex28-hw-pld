VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500xl"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL FSc1
        SIGNAL DSP_BFS1
        SIGNAL XLXN_263
        SIGNAL XLXN_265
        SIGNAL FSb1
        SIGNAL FSa1
        SIGNAL DCLK1
        SIGNAL INTn1
        SIGNAL XLXN_274
        SIGNAL XLXN_276
        SIGNAL DSP_BCLK1
        SIGNAL BCLK1
        SIGNAL M_Sn1
        SIGNAL FSc0
        SIGNAL CLK_4k
        SIGNAL DSP_BFS0
        SIGNAL XLXN_78
        SIGNAL FSb0
        SIGNAL FSa0
        SIGNAL FS
        SIGNAL DCLK0
        SIGNAL CLK_16k
        SIGNAL INTn0
        SIGNAL XLXN_38
        SIGNAL XLXN_82
        SIGNAL DSP_BCLK0
        SIGNAL BCLK0
        SIGNAL M_Sn0
        SIGNAL MCLK
        SIGNAL MCLK0
        SIGNAL MCLK1
        SIGNAL CLK
        SIGNAL MS_Loop
        PORT BiDirectional FSc1
        PORT Output DSP_BFS1
        PORT Output FSb1
        PORT Output FSa1
        PORT BiDirectional DCLK1
        PORT Output INTn1
        PORT Output DSP_BCLK1
        PORT BiDirectional BCLK1
        PORT Input M_Sn1
        PORT BiDirectional FSc0
        PORT Output DSP_BFS0
        PORT Output FSb0
        PORT Output FSa0
        PORT BiDirectional DCLK0
        PORT Output INTn0
        PORT Output DSP_BCLK0
        PORT BiDirectional BCLK0
        PORT Input M_Sn0
        PORT Output MCLK0
        PORT Output MCLK1
        PORT Input CLK
        PORT Input MS_Loop
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
        BEGIN BLOCKDEF obufe
            TIMESTAMP 2001 3 9 11 23 23
            LINE N 0 -96 64 -96 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 96 -96 64 -96 
            LINE N 96 -48 96 -96 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf
            TIMESTAMP 2001 3 9 11 23 23
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF fs_gen
            TIMESTAMP 2004 7 15 12 30 58
            RECTANGLE N 64 -288 320 32 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_47 iobufe
            PIN I CLK_4k
            PIN IO FSc1
            PIN O XLXN_265
            PIN E M_Sn1
        END BLOCK
        BEGIN BLOCK XLXI_48 m2_1
            PIN D0 XLXN_265
            PIN D1 FS
            PIN S0 M_Sn1
            PIN O XLXN_263
        END BLOCK
        BEGIN BLOCK XLXI_49 obuf
            PIN I XLXN_263
            PIN O DSP_BFS1
        END BLOCK
        BEGIN BLOCK XLXI_50 obufe
            PIN E M_Sn1
            PIN I FS
            PIN O FSb1
        END BLOCK
        BEGIN BLOCK XLXI_51 obufe
            PIN E M_Sn1
            PIN I FS
            PIN O FSa1
        END BLOCK
        BEGIN BLOCK XLXI_52 iobufe
            PIN I CLK_16k
            PIN IO DCLK1
            PIN O XLXN_274
            PIN E M_Sn1
        END BLOCK
        BEGIN BLOCK XLXI_54 inv
            PIN I XLXN_274
            PIN O INTn1
        END BLOCK
        BEGIN BLOCK XLXI_56 iobufe
            PIN I MCLK
            PIN IO BCLK1
            PIN O XLXN_276
            PIN E M_Sn1
        END BLOCK
        BEGIN BLOCK XLXI_57 m2_1
            PIN D0 XLXN_276
            PIN D1 MCLK
            PIN S0 M_Sn1
            PIN O DSP_BCLK1
        END BLOCK
        BEGIN BLOCK XLXI_33 iobufe
            PIN I CLK_4k
            PIN IO FSc0
            PIN O XLXN_78
            PIN E M_Sn0
        END BLOCK
        BEGIN BLOCK XLXI_25 m2_1
            PIN D0 XLXN_78
            PIN D1 FS
            PIN S0 M_Sn0
            PIN O DSP_BFS0
        END BLOCK
        BEGIN BLOCK XLXI_3 obufe
            PIN E M_Sn0
            PIN I FS
            PIN O FSb0
        END BLOCK
        BEGIN BLOCK XLXI_34 obufe
            PIN E M_Sn0
            PIN I FS
            PIN O FSa0
        END BLOCK
        BEGIN BLOCK XLXI_5 iobufe
            PIN I CLK_16k
            PIN IO DCLK0
            PIN O XLXN_38
            PIN E M_Sn0
        END BLOCK
        BEGIN BLOCK XLXI_27 inv
            PIN I XLXN_38
            PIN O INTn0
        END BLOCK
        BEGIN BLOCK XLXI_14 iobufe
            PIN I MCLK
            PIN IO BCLK0
            PIN O XLXN_82
            PIN E M_Sn0
        END BLOCK
        BEGIN BLOCK XLXI_35 m2_1
            PIN D0 XLXN_82
            PIN D1 MCLK
            PIN S0 M_Sn0
            PIN O DSP_BCLK0
        END BLOCK
        BEGIN BLOCK XLXI_672 obuf
            PIN I MCLK
            PIN O MCLK0
        END BLOCK
        BEGIN BLOCK U38 obuf
            PIN I MCLK
            PIN O MCLK1
        END BLOCK
        BEGIN BLOCK U43 fs_gen
            PIN MCLK MCLK
            PIN FS FS
            PIN CLK_16k CLK_16k
            PIN CLK_4k CLK_4k
            PIN CLK_16M CLK
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5382 3801
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH FSc1
            WIRE 3696 2336 3776 2336
        END BRANCH
        BEGIN BRANCH DSP_BFS1
            WIRE 2704 2528 2736 2528
        END BRANCH
        BEGIN BRANCH XLXN_263
            WIRE 2960 2528 2976 2528
        END BRANCH
        BEGIN BRANCH XLXN_265
            WIRE 3296 2496 3328 2496
            WIRE 3328 2400 3472 2400
            WIRE 3328 2400 3328 2496
        END BRANCH
        BEGIN BRANCH FSb1
            WIRE 3696 2688 3776 2688
        END BRANCH
        BEGIN BRANCH FSa1
            WIRE 3696 2560 3776 2560
        END BRANCH
        BEGIN BRANCH DCLK1
            WIRE 3696 2896 3776 2896
        END BRANCH
        BEGIN BRANCH INTn1
            WIRE 2704 2960 2992 2960
        END BRANCH
        BEGIN BRANCH XLXN_274
            WIRE 3216 2960 3472 2960
        END BRANCH
        BEGIN BRANCH XLXN_276
            WIRE 3312 2080 3328 2080
            WIRE 3328 2048 3472 2048
            WIRE 3328 2048 3328 2080
        END BRANCH
        BEGIN BRANCH DSP_BCLK1
            WIRE 2704 2112 2992 2112
        END BRANCH
        BEGIN BRANCH BCLK1
            WIRE 3696 1984 3776 1984
        END BRANCH
        BEGIN BRANCH M_Sn1
            WIRE 1120 1856 3376 1856
            WIRE 3376 1856 3376 1920
            WIRE 3376 1920 3472 1920
            WIRE 3376 1920 3376 2208
            WIRE 3376 2208 3376 2272
            WIRE 3376 2272 3472 2272
            WIRE 3376 2272 3376 2496
            WIRE 3376 2496 3472 2496
            WIRE 3376 2496 3376 2624
            WIRE 3376 2624 3472 2624
            WIRE 3376 2624 3376 2832
            WIRE 3376 2832 3472 2832
            WIRE 3296 2624 3376 2624
            WIRE 3312 2208 3376 2208
        END BRANCH
        INSTANCE XLXI_47 3472 2464 R0
        INSTANCE XLXI_48 3296 2656 M0
        INSTANCE XLXI_49 2960 2560 M0
        INSTANCE XLXI_50 3472 2720 R0
        INSTANCE XLXI_51 3472 2592 R0
        INSTANCE XLXI_52 3472 3024 R0
        INSTANCE XLXI_54 3216 2992 M0
        INSTANCE XLXI_56 3472 2112 R0
        INSTANCE XLXI_57 3312 2240 M0
        BEGIN BRANCH FSc0
            WIRE 3680 896 3760 896
        END BRANCH
        BEGIN BRANCH CLK_4k
            WIRE 1616 3280 1920 3280
            WIRE 1920 896 1920 2336
            WIRE 1920 2336 1920 3280
            WIRE 1920 2336 3472 2336
            WIRE 1920 896 3456 896
        END BRANCH
        BEGIN BRANCH DSP_BFS0
            WIRE 2688 1088 2960 1088
        END BRANCH
        BEGIN BRANCH XLXN_78
            WIRE 3280 1056 3312 1056
            WIRE 3312 960 3456 960
            WIRE 3312 960 3312 1056
        END BRANCH
        BEGIN BRANCH FSb0
            WIRE 3680 1248 3760 1248
        END BRANCH
        BEGIN BRANCH FSa0
            WIRE 3680 1120 3760 1120
        END BRANCH
        BEGIN BRANCH FS
            WIRE 1616 3152 1760 3152
            WIRE 1760 1296 1760 2736
            WIRE 1760 2736 1760 3152
            WIRE 1760 2736 3424 2736
            WIRE 1760 1296 3408 1296
            WIRE 3280 1120 3408 1120
            WIRE 3408 1120 3408 1248
            WIRE 3408 1248 3456 1248
            WIRE 3408 1248 3408 1296
            WIRE 3408 1120 3456 1120
            WIRE 3296 2560 3424 2560
            WIRE 3424 2560 3424 2688
            WIRE 3424 2688 3472 2688
            WIRE 3424 2688 3424 2736
            WIRE 3424 2560 3472 2560
        END BRANCH
        BEGIN BRANCH DCLK0
            WIRE 3680 1456 3760 1456
        END BRANCH
        BEGIN BRANCH CLK_16k
            WIRE 1616 3216 1840 3216
            WIRE 1840 1456 3456 1456
            WIRE 1840 1456 1840 2896
            WIRE 1840 2896 1840 3216
            WIRE 1840 2896 3472 2896
        END BRANCH
        BEGIN BRANCH INTn0
            WIRE 2688 1520 2976 1520
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 3200 1520 3456 1520
        END BRANCH
        BEGIN BRANCH XLXN_82
            WIRE 3296 640 3312 640
            WIRE 3312 608 3456 608
            WIRE 3312 608 3312 640
        END BRANCH
        BEGIN BRANCH DSP_BCLK0
            WIRE 2688 672 2976 672
        END BRANCH
        BEGIN BRANCH BCLK0
            WIRE 3680 544 3760 544
        END BRANCH
        BEGIN BRANCH M_Sn0
            WIRE 1120 416 3360 416
            WIRE 3360 416 3360 480
            WIRE 3360 480 3456 480
            WIRE 3360 480 3360 768
            WIRE 3360 768 3360 832
            WIRE 3360 832 3456 832
            WIRE 3360 832 3360 1056
            WIRE 3360 1056 3456 1056
            WIRE 3360 1056 3360 1184
            WIRE 3360 1184 3456 1184
            WIRE 3360 1184 3360 1392
            WIRE 3360 1392 3456 1392
            WIRE 3280 1184 3360 1184
            WIRE 3296 768 3360 768
        END BRANCH
        INSTANCE XLXI_33 3456 1024 R0
        INSTANCE XLXI_25 3280 1216 M0
        INSTANCE XLXI_3 3456 1280 R0
        INSTANCE XLXI_34 3456 1152 R0
        INSTANCE XLXI_5 3456 1584 R0
        INSTANCE XLXI_27 3200 1552 M0
        INSTANCE XLXI_14 3456 672 R0
        INSTANCE XLXI_35 3296 800 M0
        BEGIN BRANCH MCLK
            WIRE 1616 3088 1680 3088
            WIRE 1680 336 1680 544
            WIRE 1680 544 1680 1776
            WIRE 1680 1776 3328 1776
            WIRE 1680 1776 1680 1984
            WIRE 1680 1984 1680 3088
            WIRE 1680 1984 3424 1984
            WIRE 3424 1984 3424 2144
            WIRE 3424 1984 3472 1984
            WIRE 1680 544 3408 544
            WIRE 3408 544 3408 704
            WIRE 3408 544 3456 544
            WIRE 1680 336 3312 336
            WIRE 3296 704 3408 704
            WIRE 3312 2144 3424 2144
        END BRANCH
        BEGIN BRANCH MCLK0
            WIRE 3536 336 3760 336
        END BRANCH
        INSTANCE XLXI_672 3312 368 R0
        BEGIN BRANCH MCLK1
            WIRE 3552 1776 3776 1776
        END BRANCH
        INSTANCE U38 3328 1808 R0
        BEGIN INSTANCE U43 1232 3312 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 1088 3152 1232 3152
        END BRANCH
        IOMARKER 3776 2336 FSc1 R0 28
        IOMARKER 2704 2528 DSP_BFS1 R180 28
        IOMARKER 3776 2688 FSb1 R0 28
        IOMARKER 3776 2560 FSa1 R0 28
        IOMARKER 2704 2960 INTn1 R180 28
        IOMARKER 3776 2896 DCLK1 R0 28
        IOMARKER 2704 2112 DSP_BCLK1 R180 28
        IOMARKER 3776 1984 BCLK1 R0 28
        IOMARKER 3760 896 FSc0 R0 28
        IOMARKER 2688 1088 DSP_BFS0 R180 28
        IOMARKER 3760 1248 FSb0 R0 28
        IOMARKER 3760 1120 FSa0 R0 28
        IOMARKER 2688 1520 INTn0 R180 28
        IOMARKER 3760 1456 DCLK0 R0 28
        IOMARKER 2688 672 DSP_BCLK0 R180 28
        IOMARKER 3760 544 BCLK0 R0 28
        IOMARKER 3760 336 MCLK0 R0 28
        IOMARKER 3776 1776 MCLK1 R0 28
        IOMARKER 1088 3152 CLK R180 28
        IOMARKER 1120 1856 M_Sn1 R180 28
        IOMARKER 1120 416 M_Sn0 R180 28
        IOMARKER 1120 2080 MS_Loop R180 28
        BEGIN BRANCH MS_Loop
            WIRE 1120 2080 1440 2080
        END BRANCH
    END SHEET
END SCHEMATIC
