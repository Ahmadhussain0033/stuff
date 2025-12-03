--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : proto_iram                                                   ==
--== Component : matmult                                                      ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY matmult IS
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
END ENTITY matmult;
