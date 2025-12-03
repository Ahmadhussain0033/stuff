--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : proto_iram                                                   ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF logisimTopLevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
      COMPONENT matmult
         PORT ( MA1  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA10 : IN  std_logic_vector( 15 DOWNTO 0 );
                MA11 : IN  std_logic_vector( 15 DOWNTO 0 );
                MA12 : IN  std_logic_vector( 15 DOWNTO 0 );
                MA13 : IN  std_logic_vector( 15 DOWNTO 0 );
                MA14 : IN  std_logic_vector( 15 DOWNTO 0 );
                MA15 : IN  std_logic_vector( 15 DOWNTO 0 );
                MA16 : IN  std_logic_vector( 15 DOWNTO 0 );
                MA2  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA3  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA4  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA5  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA6  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA7  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA8  : IN  std_logic_vector( 15 DOWNTO 0 );
                MA9  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB1  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB10 : IN  std_logic_vector( 15 DOWNTO 0 );
                MB11 : IN  std_logic_vector( 15 DOWNTO 0 );
                MB12 : IN  std_logic_vector( 15 DOWNTO 0 );
                MB13 : IN  std_logic_vector( 15 DOWNTO 0 );
                MB14 : IN  std_logic_vector( 15 DOWNTO 0 );
                MB15 : IN  std_logic_vector( 15 DOWNTO 0 );
                MB16 : IN  std_logic_vector( 15 DOWNTO 0 );
                MB2  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB3  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB4  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB5  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB6  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB7  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB8  : IN  std_logic_vector( 15 DOWNTO 0 );
                MB9  : IN  std_logic_vector( 15 DOWNTO 0 );
                S1   : OUT std_logic_vector( 15 DOWNTO 0 );
                S10  : OUT std_logic_vector( 15 DOWNTO 0 );
                S11  : OUT std_logic_vector( 15 DOWNTO 0 );
                S12  : OUT std_logic_vector( 15 DOWNTO 0 );
                S13  : OUT std_logic_vector( 15 DOWNTO 0 );
                S14  : OUT std_logic_vector( 15 DOWNTO 0 );
                S15  : OUT std_logic_vector( 15 DOWNTO 0 );
                S16  : OUT std_logic_vector( 15 DOWNTO 0 );
                S2   : OUT std_logic_vector( 15 DOWNTO 0 );
                S3   : OUT std_logic_vector( 15 DOWNTO 0 );
                S4   : OUT std_logic_vector( 15 DOWNTO 0 );
                S5   : OUT std_logic_vector( 15 DOWNTO 0 );
                S6   : OUT std_logic_vector( 15 DOWNTO 0 );
                S7   : OUT std_logic_vector( 15 DOWNTO 0 );
                S8   : OUT std_logic_vector( 15 DOWNTO 0 );
                S9   : OUT std_logic_vector( 15 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_MA1  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA10 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA11 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA12 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA13 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA14 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA15 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA16 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA2  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA3  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA4  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA5  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA6  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA7  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA8  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MA9  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB1  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB10 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB11 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB12 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB13 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB14 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB15 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB16 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB2  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB3  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB4  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB5  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB6  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB7  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB8  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_MB9  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S1   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S10  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S11  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S12  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S13  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S14  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S15  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S16  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S2   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S3   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S4   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S5   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S6   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S7   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S8   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_S9   : std_logic_vector( 15 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   s_MA1(0)   <= '0';
   s_MA1(1)   <= '0';
   s_MA1(10)  <= '0';
   s_MA1(11)  <= '0';
   s_MA1(12)  <= '0';
   s_MA1(13)  <= '0';
   s_MA1(14)  <= '0';
   s_MA1(15)  <= '0';
   s_MA1(2)   <= '0';
   s_MA1(3)   <= '0';
   s_MA1(4)   <= '0';
   s_MA1(5)   <= '0';
   s_MA1(6)   <= '0';
   s_MA1(7)   <= '0';
   s_MA1(8)   <= '0';
   s_MA1(9)   <= '0';
   s_MA10(0)  <= '0';
   s_MA10(1)  <= '0';
   s_MA10(10) <= '0';
   s_MA10(11) <= '0';
   s_MA10(12) <= '0';
   s_MA10(13) <= '0';
   s_MA10(14) <= '0';
   s_MA10(15) <= '0';
   s_MA10(2)  <= '0';
   s_MA10(3)  <= '0';
   s_MA10(4)  <= '0';
   s_MA10(5)  <= '0';
   s_MA10(6)  <= '0';
   s_MA10(7)  <= '0';
   s_MA10(8)  <= '0';
   s_MA10(9)  <= '0';
   s_MA11(0)  <= '0';
   s_MA11(1)  <= '0';
   s_MA11(10) <= '0';
   s_MA11(11) <= '0';
   s_MA11(12) <= '0';
   s_MA11(13) <= '0';
   s_MA11(14) <= '0';
   s_MA11(15) <= '0';
   s_MA11(2)  <= '0';
   s_MA11(3)  <= '0';
   s_MA11(4)  <= '0';
   s_MA11(5)  <= '0';
   s_MA11(6)  <= '0';
   s_MA11(7)  <= '0';
   s_MA11(8)  <= '0';
   s_MA11(9)  <= '0';
   s_MA12(0)  <= '0';
   s_MA12(1)  <= '0';
   s_MA12(10) <= '0';
   s_MA12(11) <= '0';
   s_MA12(12) <= '0';
   s_MA12(13) <= '0';
   s_MA12(14) <= '0';
   s_MA12(15) <= '0';
   s_MA12(2)  <= '0';
   s_MA12(3)  <= '0';
   s_MA12(4)  <= '0';
   s_MA12(5)  <= '0';
   s_MA12(6)  <= '0';
   s_MA12(7)  <= '0';
   s_MA12(8)  <= '0';
   s_MA12(9)  <= '0';
   s_MA13(0)  <= '0';
   s_MA13(1)  <= '0';
   s_MA13(10) <= '0';
   s_MA13(11) <= '0';
   s_MA13(12) <= '0';
   s_MA13(13) <= '0';
   s_MA13(14) <= '0';
   s_MA13(15) <= '0';
   s_MA13(2)  <= '0';
   s_MA13(3)  <= '0';
   s_MA13(4)  <= '0';
   s_MA13(5)  <= '0';
   s_MA13(6)  <= '0';
   s_MA13(7)  <= '0';
   s_MA13(8)  <= '0';
   s_MA13(9)  <= '0';
   s_MA14(0)  <= '0';
   s_MA14(1)  <= '0';
   s_MA14(10) <= '0';
   s_MA14(11) <= '0';
   s_MA14(12) <= '0';
   s_MA14(13) <= '0';
   s_MA14(14) <= '0';
   s_MA14(15) <= '0';
   s_MA14(2)  <= '0';
   s_MA14(3)  <= '0';
   s_MA14(4)  <= '0';
   s_MA14(5)  <= '0';
   s_MA14(6)  <= '0';
   s_MA14(7)  <= '0';
   s_MA14(8)  <= '0';
   s_MA14(9)  <= '0';
   s_MA15(0)  <= '0';
   s_MA15(1)  <= '0';
   s_MA15(10) <= '0';
   s_MA15(11) <= '0';
   s_MA15(12) <= '0';
   s_MA15(13) <= '0';
   s_MA15(14) <= '0';
   s_MA15(15) <= '0';
   s_MA15(2)  <= '0';
   s_MA15(3)  <= '0';
   s_MA15(4)  <= '0';
   s_MA15(5)  <= '0';
   s_MA15(6)  <= '0';
   s_MA15(7)  <= '0';
   s_MA15(8)  <= '0';
   s_MA15(9)  <= '0';
   s_MA16(0)  <= '0';
   s_MA16(1)  <= '0';
   s_MA16(10) <= '0';
   s_MA16(11) <= '0';
   s_MA16(12) <= '0';
   s_MA16(13) <= '0';
   s_MA16(14) <= '0';
   s_MA16(15) <= '0';
   s_MA16(2)  <= '0';
   s_MA16(3)  <= '0';
   s_MA16(4)  <= '0';
   s_MA16(5)  <= '0';
   s_MA16(6)  <= '0';
   s_MA16(7)  <= '0';
   s_MA16(8)  <= '0';
   s_MA16(9)  <= '0';
   s_MA2(0)   <= '0';
   s_MA2(1)   <= '0';
   s_MA2(10)  <= '0';
   s_MA2(11)  <= '0';
   s_MA2(12)  <= '0';
   s_MA2(13)  <= '0';
   s_MA2(14)  <= '0';
   s_MA2(15)  <= '0';
   s_MA2(2)   <= '0';
   s_MA2(3)   <= '0';
   s_MA2(4)   <= '0';
   s_MA2(5)   <= '0';
   s_MA2(6)   <= '0';
   s_MA2(7)   <= '0';
   s_MA2(8)   <= '0';
   s_MA2(9)   <= '0';
   s_MA3(0)   <= '0';
   s_MA3(1)   <= '0';
   s_MA3(10)  <= '0';
   s_MA3(11)  <= '0';
   s_MA3(12)  <= '0';
   s_MA3(13)  <= '0';
   s_MA3(14)  <= '0';
   s_MA3(15)  <= '0';
   s_MA3(2)   <= '0';
   s_MA3(3)   <= '0';
   s_MA3(4)   <= '0';
   s_MA3(5)   <= '0';
   s_MA3(6)   <= '0';
   s_MA3(7)   <= '0';
   s_MA3(8)   <= '0';
   s_MA3(9)   <= '0';
   s_MA4(0)   <= '0';
   s_MA4(1)   <= '0';
   s_MA4(10)  <= '0';
   s_MA4(11)  <= '0';
   s_MA4(12)  <= '0';
   s_MA4(13)  <= '0';
   s_MA4(14)  <= '0';
   s_MA4(15)  <= '0';
   s_MA4(2)   <= '0';
   s_MA4(3)   <= '0';
   s_MA4(4)   <= '0';
   s_MA4(5)   <= '0';
   s_MA4(6)   <= '0';
   s_MA4(7)   <= '0';
   s_MA4(8)   <= '0';
   s_MA4(9)   <= '0';
   s_MA5(0)   <= '0';
   s_MA5(1)   <= '0';
   s_MA5(10)  <= '0';
   s_MA5(11)  <= '0';
   s_MA5(12)  <= '0';
   s_MA5(13)  <= '0';
   s_MA5(14)  <= '0';
   s_MA5(15)  <= '0';
   s_MA5(2)   <= '0';
   s_MA5(3)   <= '0';
   s_MA5(4)   <= '0';
   s_MA5(5)   <= '0';
   s_MA5(6)   <= '0';
   s_MA5(7)   <= '0';
   s_MA5(8)   <= '0';
   s_MA5(9)   <= '0';
   s_MA6(0)   <= '0';
   s_MA6(1)   <= '0';
   s_MA6(10)  <= '0';
   s_MA6(11)  <= '0';
   s_MA6(12)  <= '0';
   s_MA6(13)  <= '0';
   s_MA6(14)  <= '0';
   s_MA6(15)  <= '0';
   s_MA6(2)   <= '0';
   s_MA6(3)   <= '0';
   s_MA6(4)   <= '0';
   s_MA6(5)   <= '0';
   s_MA6(6)   <= '0';
   s_MA6(7)   <= '0';
   s_MA6(8)   <= '0';
   s_MA6(9)   <= '0';
   s_MA7(0)   <= '0';
   s_MA7(1)   <= '0';
   s_MA7(10)  <= '0';
   s_MA7(11)  <= '0';
   s_MA7(12)  <= '0';
   s_MA7(13)  <= '0';
   s_MA7(14)  <= '0';
   s_MA7(15)  <= '0';
   s_MA7(2)   <= '0';
   s_MA7(3)   <= '0';
   s_MA7(4)   <= '0';
   s_MA7(5)   <= '0';
   s_MA7(6)   <= '0';
   s_MA7(7)   <= '0';
   s_MA7(8)   <= '0';
   s_MA7(9)   <= '0';
   s_MA8(0)   <= '0';
   s_MA8(1)   <= '0';
   s_MA8(10)  <= '0';
   s_MA8(11)  <= '0';
   s_MA8(12)  <= '0';
   s_MA8(13)  <= '0';
   s_MA8(14)  <= '0';
   s_MA8(15)  <= '0';
   s_MA8(2)   <= '0';
   s_MA8(3)   <= '0';
   s_MA8(4)   <= '0';
   s_MA8(5)   <= '0';
   s_MA8(6)   <= '0';
   s_MA8(7)   <= '0';
   s_MA8(8)   <= '0';
   s_MA8(9)   <= '0';
   s_MA9(0)   <= '0';
   s_MA9(1)   <= '0';
   s_MA9(10)  <= '0';
   s_MA9(11)  <= '0';
   s_MA9(12)  <= '0';
   s_MA9(13)  <= '0';
   s_MA9(14)  <= '0';
   s_MA9(15)  <= '0';
   s_MA9(2)   <= '0';
   s_MA9(3)   <= '0';
   s_MA9(4)   <= '0';
   s_MA9(5)   <= '0';
   s_MA9(6)   <= '0';
   s_MA9(7)   <= '0';
   s_MA9(8)   <= '0';
   s_MA9(9)   <= '0';
   s_MB1(0)   <= '0';
   s_MB1(1)   <= '0';
   s_MB1(10)  <= '0';
   s_MB1(11)  <= '0';
   s_MB1(12)  <= '0';
   s_MB1(13)  <= '0';
   s_MB1(14)  <= '0';
   s_MB1(15)  <= '0';
   s_MB1(2)   <= '0';
   s_MB1(3)   <= '0';
   s_MB1(4)   <= '0';
   s_MB1(5)   <= '0';
   s_MB1(6)   <= '0';
   s_MB1(7)   <= '0';
   s_MB1(8)   <= '0';
   s_MB1(9)   <= '0';
   s_MB10(0)  <= '0';
   s_MB10(1)  <= '0';
   s_MB10(10) <= '0';
   s_MB10(11) <= '0';
   s_MB10(12) <= '0';
   s_MB10(13) <= '0';
   s_MB10(14) <= '0';
   s_MB10(15) <= '0';
   s_MB10(2)  <= '0';
   s_MB10(3)  <= '0';
   s_MB10(4)  <= '0';
   s_MB10(5)  <= '0';
   s_MB10(6)  <= '0';
   s_MB10(7)  <= '0';
   s_MB10(8)  <= '0';
   s_MB10(9)  <= '0';
   s_MB11(0)  <= '0';
   s_MB11(1)  <= '0';
   s_MB11(10) <= '0';
   s_MB11(11) <= '0';
   s_MB11(12) <= '0';
   s_MB11(13) <= '0';
   s_MB11(14) <= '0';
   s_MB11(15) <= '0';
   s_MB11(2)  <= '0';
   s_MB11(3)  <= '0';
   s_MB11(4)  <= '0';
   s_MB11(5)  <= '0';
   s_MB11(6)  <= '0';
   s_MB11(7)  <= '0';
   s_MB11(8)  <= '0';
   s_MB11(9)  <= '0';
   s_MB12(0)  <= '0';
   s_MB12(1)  <= '0';
   s_MB12(10) <= '0';
   s_MB12(11) <= '0';
   s_MB12(12) <= '0';
   s_MB12(13) <= '0';
   s_MB12(14) <= '0';
   s_MB12(15) <= '0';
   s_MB12(2)  <= '0';
   s_MB12(3)  <= '0';
   s_MB12(4)  <= '0';
   s_MB12(5)  <= '0';
   s_MB12(6)  <= '0';
   s_MB12(7)  <= '0';
   s_MB12(8)  <= '0';
   s_MB12(9)  <= '0';
   s_MB13(0)  <= '0';
   s_MB13(1)  <= '0';
   s_MB13(10) <= '0';
   s_MB13(11) <= '0';
   s_MB13(12) <= '0';
   s_MB13(13) <= '0';
   s_MB13(14) <= '0';
   s_MB13(15) <= '0';
   s_MB13(2)  <= '0';
   s_MB13(3)  <= '0';
   s_MB13(4)  <= '0';
   s_MB13(5)  <= '0';
   s_MB13(6)  <= '0';
   s_MB13(7)  <= '0';
   s_MB13(8)  <= '0';
   s_MB13(9)  <= '0';
   s_MB14(0)  <= '0';
   s_MB14(1)  <= '0';
   s_MB14(10) <= '0';
   s_MB14(11) <= '0';
   s_MB14(12) <= '0';
   s_MB14(13) <= '0';
   s_MB14(14) <= '0';
   s_MB14(15) <= '0';
   s_MB14(2)  <= '0';
   s_MB14(3)  <= '0';
   s_MB14(4)  <= '0';
   s_MB14(5)  <= '0';
   s_MB14(6)  <= '0';
   s_MB14(7)  <= '0';
   s_MB14(8)  <= '0';
   s_MB14(9)  <= '0';
   s_MB15(0)  <= '0';
   s_MB15(1)  <= '0';
   s_MB15(10) <= '0';
   s_MB15(11) <= '0';
   s_MB15(12) <= '0';
   s_MB15(13) <= '0';
   s_MB15(14) <= '0';
   s_MB15(15) <= '0';
   s_MB15(2)  <= '0';
   s_MB15(3)  <= '0';
   s_MB15(4)  <= '0';
   s_MB15(5)  <= '0';
   s_MB15(6)  <= '0';
   s_MB15(7)  <= '0';
   s_MB15(8)  <= '0';
   s_MB15(9)  <= '0';
   s_MB16(0)  <= '0';
   s_MB16(1)  <= '0';
   s_MB16(10) <= '0';
   s_MB16(11) <= '0';
   s_MB16(12) <= '0';
   s_MB16(13) <= '0';
   s_MB16(14) <= '0';
   s_MB16(15) <= '0';
   s_MB16(2)  <= '0';
   s_MB16(3)  <= '0';
   s_MB16(4)  <= '0';
   s_MB16(5)  <= '0';
   s_MB16(6)  <= '0';
   s_MB16(7)  <= '0';
   s_MB16(8)  <= '0';
   s_MB16(9)  <= '0';
   s_MB2(0)   <= '0';
   s_MB2(1)   <= '0';
   s_MB2(10)  <= '0';
   s_MB2(11)  <= '0';
   s_MB2(12)  <= '0';
   s_MB2(13)  <= '0';
   s_MB2(14)  <= '0';
   s_MB2(15)  <= '0';
   s_MB2(2)   <= '0';
   s_MB2(3)   <= '0';
   s_MB2(4)   <= '0';
   s_MB2(5)   <= '0';
   s_MB2(6)   <= '0';
   s_MB2(7)   <= '0';
   s_MB2(8)   <= '0';
   s_MB2(9)   <= '0';
   s_MB3(0)   <= '0';
   s_MB3(1)   <= '0';
   s_MB3(10)  <= '0';
   s_MB3(11)  <= '0';
   s_MB3(12)  <= '0';
   s_MB3(13)  <= '0';
   s_MB3(14)  <= '0';
   s_MB3(15)  <= '0';
   s_MB3(2)   <= '0';
   s_MB3(3)   <= '0';
   s_MB3(4)   <= '0';
   s_MB3(5)   <= '0';
   s_MB3(6)   <= '0';
   s_MB3(7)   <= '0';
   s_MB3(8)   <= '0';
   s_MB3(9)   <= '0';
   s_MB4(0)   <= '0';
   s_MB4(1)   <= '0';
   s_MB4(10)  <= '0';
   s_MB4(11)  <= '0';
   s_MB4(12)  <= '0';
   s_MB4(13)  <= '0';
   s_MB4(14)  <= '0';
   s_MB4(15)  <= '0';
   s_MB4(2)   <= '0';
   s_MB4(3)   <= '0';
   s_MB4(4)   <= '0';
   s_MB4(5)   <= '0';
   s_MB4(6)   <= '0';
   s_MB4(7)   <= '0';
   s_MB4(8)   <= '0';
   s_MB4(9)   <= '0';
   s_MB5(0)   <= '0';
   s_MB5(1)   <= '0';
   s_MB5(10)  <= '0';
   s_MB5(11)  <= '0';
   s_MB5(12)  <= '0';
   s_MB5(13)  <= '0';
   s_MB5(14)  <= '0';
   s_MB5(15)  <= '0';
   s_MB5(2)   <= '0';
   s_MB5(3)   <= '0';
   s_MB5(4)   <= '0';
   s_MB5(5)   <= '0';
   s_MB5(6)   <= '0';
   s_MB5(7)   <= '0';
   s_MB5(8)   <= '0';
   s_MB5(9)   <= '0';
   s_MB6(0)   <= '0';
   s_MB6(1)   <= '0';
   s_MB6(10)  <= '0';
   s_MB6(11)  <= '0';
   s_MB6(12)  <= '0';
   s_MB6(13)  <= '0';
   s_MB6(14)  <= '0';
   s_MB6(15)  <= '0';
   s_MB6(2)   <= '0';
   s_MB6(3)   <= '0';
   s_MB6(4)   <= '0';
   s_MB6(5)   <= '0';
   s_MB6(6)   <= '0';
   s_MB6(7)   <= '0';
   s_MB6(8)   <= '0';
   s_MB6(9)   <= '0';
   s_MB7(0)   <= '0';
   s_MB7(1)   <= '0';
   s_MB7(10)  <= '0';
   s_MB7(11)  <= '0';
   s_MB7(12)  <= '0';
   s_MB7(13)  <= '0';
   s_MB7(14)  <= '0';
   s_MB7(15)  <= '0';
   s_MB7(2)   <= '0';
   s_MB7(3)   <= '0';
   s_MB7(4)   <= '0';
   s_MB7(5)   <= '0';
   s_MB7(6)   <= '0';
   s_MB7(7)   <= '0';
   s_MB7(8)   <= '0';
   s_MB7(9)   <= '0';
   s_MB8(0)   <= '0';
   s_MB8(1)   <= '0';
   s_MB8(10)  <= '0';
   s_MB8(11)  <= '0';
   s_MB8(12)  <= '0';
   s_MB8(13)  <= '0';
   s_MB8(14)  <= '0';
   s_MB8(15)  <= '0';
   s_MB8(2)   <= '0';
   s_MB8(3)   <= '0';
   s_MB8(4)   <= '0';
   s_MB8(5)   <= '0';
   s_MB8(6)   <= '0';
   s_MB8(7)   <= '0';
   s_MB8(8)   <= '0';
   s_MB8(9)   <= '0';
   s_MB9(0)   <= '0';
   s_MB9(1)   <= '0';
   s_MB9(10)  <= '0';
   s_MB9(11)  <= '0';
   s_MB9(12)  <= '0';
   s_MB9(13)  <= '0';
   s_MB9(14)  <= '0';
   s_MB9(15)  <= '0';
   s_MB9(2)   <= '0';
   s_MB9(3)   <= '0';
   s_MB9(4)   <= '0';
   s_MB9(5)   <= '0';
   s_MB9(6)   <= '0';
   s_MB9(7)   <= '0';
   s_MB9(8)   <= '0';
   s_MB9(9)   <= '0';

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : matmult
      PORT MAP ( MA1  => s_MA1,
                 MA10 => s_MA10,
                 MA11 => s_MA11,
                 MA12 => s_MA12,
                 MA13 => s_MA13,
                 MA14 => s_MA14,
                 MA15 => s_MA15,
                 MA16 => s_MA16,
                 MA2  => s_MA2,
                 MA3  => s_MA3,
                 MA4  => s_MA4,
                 MA5  => s_MA5,
                 MA6  => s_MA6,
                 MA7  => s_MA7,
                 MA8  => s_MA8,
                 MA9  => s_MA9,
                 MB1  => s_MB1,
                 MB10 => s_MB10,
                 MB11 => s_MB11,
                 MB12 => s_MB12,
                 MB13 => s_MB13,
                 MB14 => s_MB14,
                 MB15 => s_MB15,
                 MB16 => s_MB16,
                 MB2  => s_MB2,
                 MB3  => s_MB3,
                 MB4  => s_MB4,
                 MB5  => s_MB5,
                 MB6  => s_MB6,
                 MB7  => s_MB7,
                 MB8  => s_MB8,
                 MB9  => s_MB9,
                 S1   => s_S1,
                 S10  => s_S10,
                 S11  => s_S11,
                 S12  => s_S12,
                 S13  => s_S13,
                 S14  => s_S14,
                 S15  => s_S15,
                 S16  => s_S16,
                 S2   => s_S2,
                 S3   => s_S3,
                 S4   => s_S4,
                 S5   => s_S5,
                 S6   => s_S6,
                 S7   => s_S7,
                 S8   => s_S8,
                 S9   => s_S9 );
END platformIndependent;
