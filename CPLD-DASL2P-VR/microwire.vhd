    -- MICROWIRE
    Alias  CNT_CCLK  : std_logic_vector( 5 DownTo 0 ) Is CNT ( 8 DownTo 3 );
    Signal CMODE     : std_logic := '0';



    -- Inside CLK16M rising edge event handler

            If RESETn = '0' Then -- Synchronous reset
                CMODE <= '1';
            End If;

            If CMODE = '1' Then
                Case CNT_CCLK Is             
                    When "000100" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '1';   -- C7 out
                    When "000101" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '1';   -- S7 in
                    When "000110" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '1';   -- C6
                    When "000111" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '1';   -- S6
                    When "001000" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- C5
                    When "001001" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '0';   -- S5
                    When "001010" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- C4
                    When "001011" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '0';   -- S4
                    When "001100" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- C3
                    When "001101" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '0';   -- S3
                    When "001110" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- C2
                    When "001111" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '0';   -- S2
                    When "010000" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- C1
                    When "010001" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '0';   -- S1 -- INSYNC
                    When "010010" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- C0
                    When "010011" =>  CCSn <= "10";  CCLK <= '1';  CIN <= '0';   -- S0 -- LSOK
                    When "010100" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- guard
                    When "010101" =>  CCSn <= "10";  CCLK <= '0';  CIN <= '0';   -- guard
                    When "100100" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- C7 out
                    When "100101" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '0';   -- S7 in
                    When "100110" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '1';   -- C6
                    When "100111" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '1';   -- S6
                    When "101000" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- C5
                    When "101001" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '0';   -- S5
                    When "101010" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- C4
                    When "101011" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '0';   -- S4
                    When "101100" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- C3
                    When "101101" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '0';   -- S3
                    When "101110" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- C2
                    When "101111" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '0';   -- S2
                    When "110000" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- C1
                    When "110001" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '0';   -- S1 -- INSYNC
                    When "110010" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- C0
                    When "110011" =>  CCSn <= "01";  CCLK <= '1';  CIN <= '0';   -- S0 -- LSOK
                    When "110100" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- guard
                    When "110101" =>  CCSn <= "01";  CCLK <= '0';  CIN <= '0';   -- guard
                                      CMODE <= '0'; -- Stop CMODE
                    When Others   =>  CCSn <= "11";  CCLK <= '0';  CIN <= '0';
                End Case;
            Else
                CCSn <= "11"; CCLK <= '0'; CIN <= '0';
            End If;

