--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : proto_iram                                                   ==
--== Component : Processing_Element                                           ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Processing_Element IS
   PORT ( A_IN  : IN  std_logic_vector( 15 DOWNTO 0 );
          B_IN  : IN  std_logic_vector( 15 DOWNTO 0 );
          CLOCK : IN  std_logic;
          Reset : IN  std_logic;
          A_OUT : OUT std_logic_vector( 15 DOWNTO 0 );
          B_OUT : OUT std_logic_vector( 15 DOWNTO 0 );
          SUM   : OUT std_logic_vector( 15 DOWNTO 0 ) );
END ENTITY Processing_Element;
