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
      COMPONENT Processing_Element
         PORT ( A_IN  : IN  std_logic_vector( 15 DOWNTO 0 );
                B_IN  : IN  std_logic_vector( 15 DOWNTO 0 );
                CLOCK : IN  std_logic;
                Reset : IN  std_logic;
                A_OUT : OUT std_logic_vector( 15 DOWNTO 0 );
                B_OUT : OUT std_logic_vector( 15 DOWNTO 0 );
                SUM   : OUT std_logic_vector( 15 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_A_IN  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_A_OUT : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_B_IN  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_B_OUT : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_CLOCK : std_logic;
   SIGNAL s_Reset : std_logic;
   SIGNAL s_SUM   : std_logic_vector( 15 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   s_A_IN(0)  <= '0';
   s_A_IN(1)  <= '0';
   s_A_IN(10) <= '0';
   s_A_IN(11) <= '0';
   s_A_IN(12) <= '0';
   s_A_IN(13) <= '0';
   s_A_IN(14) <= '0';
   s_A_IN(15) <= '0';
   s_A_IN(2)  <= '0';
   s_A_IN(3)  <= '0';
   s_A_IN(4)  <= '0';
   s_A_IN(5)  <= '0';
   s_A_IN(6)  <= '0';
   s_A_IN(7)  <= '0';
   s_A_IN(8)  <= '0';
   s_A_IN(9)  <= '0';
   s_B_IN(0)  <= '0';
   s_B_IN(1)  <= '0';
   s_B_IN(10) <= '0';
   s_B_IN(11) <= '0';
   s_B_IN(12) <= '0';
   s_B_IN(13) <= '0';
   s_B_IN(14) <= '0';
   s_B_IN(15) <= '0';
   s_B_IN(2)  <= '0';
   s_B_IN(3)  <= '0';
   s_B_IN(4)  <= '0';
   s_B_IN(5)  <= '0';
   s_B_IN(6)  <= '0';
   s_B_IN(7)  <= '0';
   s_B_IN(8)  <= '0';
   s_B_IN(9)  <= '0';
   s_CLOCK    <= '0';
   s_Reset    <= '0';

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : Processing_Element
      PORT MAP ( A_IN  => s_A_IN,
                 A_OUT => s_A_OUT,
                 B_IN  => s_B_IN,
                 B_OUT => s_B_OUT,
                 CLOCK => s_CLOCK,
                 Reset => s_Reset,
                 SUM   => s_SUM );
END platformIndependent;
