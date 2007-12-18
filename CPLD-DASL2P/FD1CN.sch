VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500xl"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLR
        SIGNAL D
        SIGNAL Cn
        SIGNAL Q
        SIGNAL XLXN_2
        PORT Input CLR
        PORT Input D
        PORT Input Cn
        PORT Output Q
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
        BEGIN BLOCK XLXI_3 fdc
            PIN C XLXN_2
            PIN CLR CLR
            PIN D D
            PIN Q Q
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I Cn
            PIN O XLXN_2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 2688 1900
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH CLR
            WIRE 1056 1040 1088 1040
        END BRANCH
        BEGIN BRANCH D
            WIRE 1056 816 1088 816
        END BRANCH
        BEGIN BRANCH Q
            WIRE 1472 816 1504 816
        END BRANCH
        IOMARKER 1056 1040 CLR R180 28
        IOMARKER 1056 816 D R180 28
        IOMARKER 1504 816 Q R0 28
        INSTANCE XLXI_3 1088 1072 R0
        IOMARKER 720 944 Cn R180 28
        BEGIN BRANCH Cn
            WIRE 720 944 800 944
        END BRANCH
        INSTANCE XLXI_4 800 976 R0
        BEGIN BRANCH XLXN_2
            WIRE 1024 944 1088 944
        END BRANCH
    END SHEET
END SCHEMATIC
