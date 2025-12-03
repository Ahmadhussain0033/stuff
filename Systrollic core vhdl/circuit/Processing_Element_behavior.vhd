--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : proto_iram                                                   ==
--== Component : Processing_Element                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Processing_Element IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Multiplier
         GENERIC ( calcBits           : INTEGER;
                   nrOfBits           : INTEGER;
                   unsignedMultiplier : INTEGER );
         PORT ( carryIn  : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                inputA   : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                inputB   : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                multHigh : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                multLow  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Adder
         GENERIC ( extendedBits : INTEGER;
                   nrOfBits     : INTEGER );
         PORT ( carryIn  : IN  std_logic;
                dataA    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                dataB    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                carryOut : OUT std_logic;
                result   : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT REGISTER_FLIP_FLOP
         GENERIC ( invertClock : INTEGER;
                   nrOfBits    : INTEGER );
         PORT ( clock       : IN  std_logic;
                clockEnable : IN  std_logic;
                d           : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                reset       : IN  std_logic;
                tick        : IN  std_logic;
                q           : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus1 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus2 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus6 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus7 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus8 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus9 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimNet3 : std_logic;
   SIGNAL s_logisimNet4 : std_logic;
   SIGNAL s_logisimNet5 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus1(15 DOWNTO 0) <= B_IN;
   s_logisimBus2(15 DOWNTO 0) <= A_IN;
   s_logisimNet3              <= Reset;
   s_logisimNet5              <= CLOCK;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   A_OUT <= s_logisimBus8(15 DOWNTO 0);
   B_OUT <= s_logisimBus9(15 DOWNTO 0);
   SUM   <= s_logisimBus0(15 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet4  <=  '1';


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   ARITH_1 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus2(15 DOWNTO 0),
                 inputB   => s_logisimBus1(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus6(15 DOWNTO 0) );

   ARITH_2 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus6(15 DOWNTO 0),
                 dataB    => s_logisimBus0(15 DOWNTO 0),
                 result   => s_logisimBus7(15 DOWNTO 0) );

   MEMORY_3 : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 1,
                    nrOfBits    => 16 )
      PORT MAP ( clock       => s_logisimNet5,
                 clockEnable => s_logisimNet4,
                 d           => s_logisimBus7(15 DOWNTO 0),
                 q           => s_logisimBus0(15 DOWNTO 0),
                 reset       => s_logisimNet3,
                 tick        => '1' );

   MEMORY_4 : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 1,
                    nrOfBits    => 16 )
      PORT MAP ( clock       => s_logisimNet5,
                 clockEnable => s_logisimNet4,
                 d           => s_logisimBus2(15 DOWNTO 0),
                 q           => s_logisimBus8(15 DOWNTO 0),
                 reset       => s_logisimNet3,
                 tick        => '1' );

   MEMORY_5 : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 1,
                    nrOfBits    => 16 )
      PORT MAP ( clock       => s_logisimNet5,
                 clockEnable => s_logisimNet4,
                 d           => s_logisimBus1(15 DOWNTO 0),
                 q           => s_logisimBus9(15 DOWNTO 0),
                 reset       => s_logisimNet3,
                 tick        => '1' );


END platformIndependent;
