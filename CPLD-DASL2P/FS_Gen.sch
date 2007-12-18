VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500xl"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL XLXN_28
        SIGNAL MCLK
        SIGNAL Q2
        SIGNAL Q5
        SIGNAL Q6
        SIGNAL Q8
        SIGNAL Q7
        SIGNAL CLK_16k
        SIGNAL CLK_4k
        SIGNAL Q11
        SIGNAL XLXN_48
        SIGNAL XLXN_21
        SIGNAL CLK_16M
        SIGNAL XLXN_119
        SIGNAL Q9
        SIGNAL Q4
        SIGNAL XLXN_163
        SIGNAL FS
        SIGNAL FS_D
        SIGNAL XLXN_120
        SIGNAL XLXN_121
        SIGNAL Q3
        SIGNAL Q10
        SIGNAL Q0
        SIGNAL Q1
        SIGNAL XLXN_174
        SIGNAL XLXN_176
        SIGNAL XLXN_177
        PORT Output MCLK
        PORT Output CLK_16k
        PORT Output CLK_4k
        PORT Input CLK_16M
        PORT Output FS
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 3 9 11 23 11
            LINE N 96 -64 32 -64 
            LINE N 64 0 64 -32 
            LINE N 64 -32 64 -64 
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
        BEGIN BLOCKDEF cb4re
            TIMESTAMP 2001 5 11 10 51 21
            LINE N 384 -192 320 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -128 64 -128 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
            LINE N 384 -384 320 -384 
            LINE N 384 -448 320 -448 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 384 -128 320 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -192 64 -192 
            RECTANGLE N 64 -512 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdre
            TIMESTAMP 2001 3 9 11 23 0
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF and3
            TIMESTAMP 2001 5 11 10 42 16
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and8
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 64 -64 64 -512 
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 0 -448 64 -448 
            LINE N 0 -512 64 -512 
            LINE N 64 -336 144 -336 
            LINE N 144 -240 64 -240 
            ARC N 96 -336 192 -240 144 -240 144 -336 
            LINE N 256 -288 192 -288 
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
        BEGIN BLOCK XLXI_12 vcc
            PIN P XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_43 cb4re
            PIN C CLK_16M
            PIN CE XLXN_4
            PIN R XLXN_119
            PIN CEO XLXN_21
            PIN Q0 Q0
            PIN Q1 Q1
            PIN Q2 Q2
            PIN Q3 Q3
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_44 cb4re
            PIN C CLK_16M
            PIN CE XLXN_21
            PIN R XLXN_119
            PIN CEO XLXN_48
            PIN Q0 Q4
            PIN Q1 Q5
            PIN Q2 Q6
            PIN Q3 Q7
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_45 cb4re
            PIN C CLK_16M
            PIN CE XLXN_48
            PIN R XLXN_119
            PIN CEO
            PIN Q0 Q8
            PIN Q1 Q9
            PIN Q2 Q10
            PIN Q3 Q11
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_17 gnd
            PIN G XLXN_119
        END BLOCK
        BEGIN BLOCK XLXI_46 fdre
            PIN C CLK_16M
            PIN CE XLXN_120
            PIN D FS_D
            PIN R XLXN_121
            PIN Q FS
        END BLOCK
        BEGIN BLOCK XLXI_47 vcc
            PIN P XLXN_120
        END BLOCK
        BEGIN BLOCK XLXI_48 gnd
            PIN G XLXN_121
        END BLOCK
        BEGIN BLOCK XLXI_76 and3
            PIN I0 Q2
            PIN I1 Q1
            PIN I2 Q0
            PIN O XLXN_174
        END BLOCK
        BEGIN BLOCK XLXI_79 xor2
            PIN I0 Q3
            PIN I1 XLXN_174
            PIN O XLXN_163
        END BLOCK
        BEGIN BLOCK XLXI_80 and8
            PIN I0 Q10
            PIN I1 Q9
            PIN I2 Q8
            PIN I3 XLXN_176
            PIN I4 Q6
            PIN I5 Q5
            PIN I6 XLXN_177
            PIN I7 XLXN_163
            PIN O FS_D
        END BLOCK
        BEGIN BLOCK XLXI_81 inv
            PIN I Q2
            PIN O MCLK
        END BLOCK
        BEGIN BLOCK XLXI_82 inv
            PIN I Q9
            PIN O CLK_16k
        END BLOCK
        BEGIN BLOCK XLXI_83 inv
            PIN I Q11
            PIN O CLK_4k
        END BLOCK
        BEGIN BLOCK XLXI_84 inv
            PIN I Q7
            PIN O XLXN_176
        END BLOCK
        BEGIN BLOCK XLXI_85 inv
            PIN I Q4
            PIN O XLXN_177
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3801 2688
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH XLXN_4
            WIRE 1056 640 1056 688
            WIRE 1056 688 1152 688
        END BRANCH
        INSTANCE XLXI_12 992 640 R0
        BEGIN BRANCH MCLK
            WIRE 2560 560 2656 560
        END BRANCH
        BEGIN BRANCH Q5
            WIRE 1536 1120 1728 1120
            WIRE 1728 944 1728 1120
            WIRE 1728 944 2416 944
        END BRANCH
        BEGIN BRANCH Q6
            WIRE 1536 1184 1776 1184
            WIRE 1776 1008 1776 1184
            WIRE 1776 1008 2416 1008
        END BRANCH
        BEGIN BRANCH Q8
            WIRE 1536 1680 1872 1680
            WIRE 1872 1136 1872 1680
            WIRE 1872 1136 2416 1136
        END BRANCH
        BEGIN BRANCH Q7
            WIRE 1536 1248 1824 1248
            WIRE 1824 1072 1824 1248
            WIRE 1824 1072 1968 1072
        END BRANCH
        BEGIN BRANCH CLK_16k
            WIRE 2272 1744 2352 1744
        END BRANCH
        BEGIN BRANCH CLK_4k
            WIRE 2272 1872 2352 1872
        END BRANCH
        BEGIN BRANCH Q11
            WIRE 1536 1872 2048 1872
        END BRANCH
        INSTANCE XLXI_43 1152 880 R0
        INSTANCE XLXI_44 1152 1504 R0
        INSTANCE XLXI_45 1152 2128 R0
        BEGIN BRANCH Q9
            WIRE 1536 1744 1920 1744
            WIRE 1920 1744 2048 1744
            WIRE 1920 1200 1920 1744
            WIRE 1920 1200 2416 1200
        END BRANCH
        IOMARKER 672 752 CLK_16M R180 28
        IOMARKER 2352 1744 CLK_16k R0 28
        IOMARKER 2352 1872 CLK_4k R0 28
        BEGIN BRANCH FS
            WIRE 3296 1040 3328 1040
        END BRANCH
        BEGIN BRANCH FS_D
            WIRE 2672 1040 2912 1040
        END BRANCH
        BEGIN BRANCH CLK_16M
            WIRE 2816 1168 2912 1168
            BEGIN DISPLAY 2816 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_120
            WIRE 2880 976 2880 1104
            WIRE 2880 1104 2912 1104
        END BRANCH
        BEGIN BRANCH XLXN_121
            WIRE 2880 1264 2912 1264
            WIRE 2880 1264 2880 1312
        END BRANCH
        INSTANCE XLXI_46 2912 1296 R0
        INSTANCE XLXI_47 2816 976 R0
        INSTANCE XLXI_48 2816 1440 R0
        IOMARKER 3328 1040 FS R0 28
        BEGIN BRANCH Q10
            WIRE 1536 1808 1968 1808
            WIRE 1968 1264 1968 1808
            WIRE 1968 1264 2416 1264
        END BRANCH
        BEGIN BRANCH Q4
            WIRE 1536 1056 1680 1056
            WIRE 1680 880 1680 1056
            WIRE 1680 880 1968 880
        END BRANCH
        BEGIN BRANCH Q0
            WIRE 1536 432 1856 432
            WIRE 1856 432 1856 624
        END BRANCH
        BEGIN BRANCH Q1
            WIRE 1536 496 1808 496
            WIRE 1808 496 1808 688
            WIRE 1808 688 1856 688
        END BRANCH
        BEGIN BRANCH XLXN_163
            WIRE 2400 784 2416 784
            WIRE 2416 784 2416 816
        END BRANCH
        IOMARKER 2656 560 MCLK R0 28
        BEGIN BRANCH Q2
            WIRE 1536 560 1760 560
            WIRE 1760 560 1760 752
            WIRE 1760 752 1856 752
            WIRE 1760 560 2336 560
        END BRANCH
        INSTANCE XLXI_76 1856 816 R0
        BEGIN BRANCH XLXN_174
            WIRE 2112 688 2128 688
            WIRE 2128 688 2128 752
            WIRE 2128 752 2144 752
        END BRANCH
        BEGIN BRANCH Q3
            WIRE 1536 624 1680 624
            WIRE 1680 624 1680 816
            WIRE 1680 816 2144 816
        END BRANCH
        INSTANCE XLXI_79 2144 880 R0
        INSTANCE XLXI_80 2416 1328 R0
        INSTANCE XLXI_81 2336 592 R0
        INSTANCE XLXI_82 2048 1776 R0
        INSTANCE XLXI_83 2048 1904 R0
        BEGIN BRANCH XLXN_176
            WIRE 2192 1072 2416 1072
        END BRANCH
        BEGIN BRANCH XLXN_177
            WIRE 2192 880 2416 880
        END BRANCH
        INSTANCE XLXI_85 1968 912 R0
        INSTANCE XLXI_84 1968 1104 R0
        BEGIN BRANCH XLXN_21
            WIRE 1152 912 1152 1312
            WIRE 1152 912 1600 912
            WIRE 1536 688 1600 688
            WIRE 1600 688 1600 912
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 1152 1520 1152 1936
            WIRE 1152 1520 1600 1520
            WIRE 1536 1312 1600 1312
            WIRE 1600 1312 1600 1520
        END BRANCH
        BEGIN BRANCH CLK_16M
            WIRE 672 752 1088 752
            WIRE 1088 752 1088 1376
            WIRE 1088 1376 1088 2000
            WIRE 1088 2000 1152 2000
            WIRE 1088 1376 1152 1376
            WIRE 1088 752 1152 752
        END BRANCH
        INSTANCE XLXI_17 960 2256 R0
        BEGIN BRANCH XLXN_119
            WIRE 1024 848 1024 1472
            WIRE 1024 1472 1024 2096
            WIRE 1024 2096 1024 2128
            WIRE 1024 2096 1152 2096
            WIRE 1024 1472 1152 1472
            WIRE 1024 848 1152 848
        END BRANCH
    END SHEET
END SCHEMATIC
