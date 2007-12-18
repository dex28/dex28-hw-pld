VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500xl"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Q0
        SIGNAL Q1
        SIGNAL D0
        SIGNAL D1
        BEGIN SIGNAL C
        END SIGNAL
        SIGNAL CLR
        SIGNAL Cn
        PORT Output Q0
        PORT Output Q1
        PORT Input D0
        PORT Input D1
        PORT Input CLR
        PORT Input Cn
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2001 3 9 11 23 0
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
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
        BEGIN BLOCK XLXI_13 fdc
            PIN C C
            PIN CLR CLR
            PIN D D0
            PIN Q Q0
        END BLOCK
        BEGIN BLOCK XLXI_14 fdc
            PIN C C
            PIN CLR CLR
            PIN D D1
            PIN Q Q1
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I Cn
            PIN O C
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 2688 1900
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH Q0
            WIRE 1504 416 1648 416
        END BRANCH
        BEGIN BRANCH Q1
            WIRE 1504 800 1648 800
        END BRANCH
        BEGIN BRANCH D0
            WIRE 800 416 1120 416
        END BRANCH
        BEGIN BRANCH D1
            WIRE 800 800 1120 800
        END BRANCH
        IOMARKER 1648 416 Q0 R0 28
        IOMARKER 1648 800 Q1 R0 28
        IOMARKER 800 800 D1 R180 28
        IOMARKER 800 416 D0 R180 28
        INSTANCE XLXI_13 1120 672 R0
        INSTANCE XLXI_14 1120 1056 R0
        BEGIN BRANCH CLR
            WIRE 624 1024 992 1024
            WIRE 992 1024 1120 1024
            WIRE 992 640 1120 640
            WIRE 992 640 992 1024
        END BRANCH
        BEGIN BRANCH C
            WIRE 928 928 1056 928
            WIRE 1056 928 1120 928
            WIRE 1056 544 1120 544
            WIRE 1056 544 1056 928
        END BRANCH
        BEGIN BRANCH Cn
            WIRE 608 928 704 928
        END BRANCH
        INSTANCE XLXI_4 704 960 R0
        IOMARKER 608 928 Cn R180 28
        IOMARKER 624 1024 CLR R180 28
    END SHEET
END SCHEMATIC
