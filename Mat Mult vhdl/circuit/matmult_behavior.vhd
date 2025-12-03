--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : proto_iram                                                   ==
--== Component : matmult                                                      ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF matmult IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Adder
         GENERIC ( extendedBits : INTEGER;
                   nrOfBits     : INTEGER );
         PORT ( carryIn  : IN  std_logic;
                dataA    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                dataB    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                carryOut : OUT std_logic;
                result   : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

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

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus1   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus10  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus100 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus101 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus102 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus103 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus104 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus105 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus106 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus107 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus108 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus109 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus11  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus110 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus111 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus112 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus113 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus114 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus115 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus116 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus117 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus118 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus119 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus12  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus120 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus121 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus122 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus123 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus124 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus125 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus126 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus127 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus128 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus129 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus13  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus130 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus131 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus132 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus133 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus134 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus135 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus136 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus137 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus138 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus139 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus14  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus140 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus141 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus142 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus143 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus144 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus15  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus16  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus17  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus18  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus19  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus2   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus20  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus21  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus22  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus23  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus24  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus25  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus26  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus27  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus28  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus29  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus3   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus30  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus31  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus32  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus33  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus34  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus35  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus36  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus37  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus38  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus39  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus4   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus40  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus41  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus42  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus43  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus44  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus45  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus46  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus47  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus48  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus49  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus5   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus50  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus51  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus52  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus53  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus54  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus55  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus56  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus57  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus58  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus59  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus6   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus60  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus61  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus62  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus63  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus64  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus65  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus66  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus67  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus68  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus69  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus7   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus70  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus71  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus72  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus73  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus74  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus75  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus76  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus77  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus78  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus79  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus8   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus80  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus81  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus82  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus83  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus84  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus85  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus86  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus87  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus88  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus89  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus9   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus90  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus91  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus92  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus93  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus94  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus95  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus96  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus97  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus98  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus99  : std_logic_vector( 15 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus0(15 DOWNTO 0)  <= MA13;
   s_logisimBus10(15 DOWNTO 0) <= MB5;
   s_logisimBus13(15 DOWNTO 0) <= MB13;
   s_logisimBus17(15 DOWNTO 0) <= MA15;
   s_logisimBus18(15 DOWNTO 0) <= MA14;
   s_logisimBus2(15 DOWNTO 0)  <= MA11;
   s_logisimBus20(15 DOWNTO 0) <= MB2;
   s_logisimBus21(15 DOWNTO 0) <= MA7;
   s_logisimBus23(15 DOWNTO 0) <= MA1;
   s_logisimBus24(15 DOWNTO 0) <= MB11;
   s_logisimBus26(15 DOWNTO 0) <= MB15;
   s_logisimBus27(15 DOWNTO 0) <= MB9;
   s_logisimBus3(15 DOWNTO 0)  <= MB8;
   s_logisimBus33(15 DOWNTO 0) <= MB16;
   s_logisimBus34(15 DOWNTO 0) <= MA5;
   s_logisimBus35(15 DOWNTO 0) <= MA8;
   s_logisimBus37(15 DOWNTO 0) <= MB12;
   s_logisimBus39(15 DOWNTO 0) <= MA3;
   s_logisimBus41(15 DOWNTO 0) <= MB1;
   s_logisimBus43(15 DOWNTO 0) <= MB10;
   s_logisimBus44(15 DOWNTO 0) <= MA10;
   s_logisimBus48(15 DOWNTO 0) <= MA16;
   s_logisimBus57(15 DOWNTO 0) <= MA12;
   s_logisimBus58(15 DOWNTO 0) <= MB14;
   s_logisimBus61(15 DOWNTO 0) <= MB3;
   s_logisimBus63(15 DOWNTO 0) <= MB7;
   s_logisimBus66(15 DOWNTO 0) <= MA9;
   s_logisimBus71(15 DOWNTO 0) <= MB4;
   s_logisimBus76(15 DOWNTO 0) <= MA6;
   s_logisimBus8(15 DOWNTO 0)  <= MA2;
   s_logisimBus9(15 DOWNTO 0)  <= MA4;
   s_logisimBus92(15 DOWNTO 0) <= MB6;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   S1  <= s_logisimBus25(15 DOWNTO 0);
   S10 <= s_logisimBus112(15 DOWNTO 0);
   S11 <= s_logisimBus84(15 DOWNTO 0);
   S12 <= s_logisimBus138(15 DOWNTO 0);
   S13 <= s_logisimBus38(15 DOWNTO 0);
   S14 <= s_logisimBus72(15 DOWNTO 0);
   S15 <= s_logisimBus7(15 DOWNTO 0);
   S16 <= s_logisimBus125(15 DOWNTO 0);
   S2  <= s_logisimBus107(15 DOWNTO 0);
   S3  <= s_logisimBus19(15 DOWNTO 0);
   S4  <= s_logisimBus98(15 DOWNTO 0);
   S5  <= s_logisimBus135(15 DOWNTO 0);
   S6  <= s_logisimBus60(15 DOWNTO 0);
   S7  <= s_logisimBus89(15 DOWNTO 0);
   S8  <= s_logisimBus100(15 DOWNTO 0);
   S9  <= s_logisimBus16(15 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   ARITH_1 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus106(15 DOWNTO 0),
                 dataB    => s_logisimBus139(15 DOWNTO 0),
                 result   => s_logisimBus98(15 DOWNTO 0) );

   ARITH_2 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus55(15 DOWNTO 0),
                 dataB    => s_logisimBus126(15 DOWNTO 0),
                 result   => s_logisimBus25(15 DOWNTO 0) );

   ARITH_3 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus78(15 DOWNTO 0),
                 dataB    => s_logisimBus40(15 DOWNTO 0),
                 result   => s_logisimBus107(15 DOWNTO 0) );

   ARITH_4 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus114(15 DOWNTO 0),
                 dataB    => s_logisimBus97(15 DOWNTO 0),
                 result   => s_logisimBus19(15 DOWNTO 0) );

   ARITH_5 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus21(15 DOWNTO 0),
                 inputB   => s_logisimBus26(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus108(15 DOWNTO 0) );

   ARITH_6 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus35(15 DOWNTO 0),
                 inputB   => s_logisimBus33(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus77(15 DOWNTO 0) );

   ARITH_7 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus34(15 DOWNTO 0),
                 inputB   => s_logisimBus41(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus49(15 DOWNTO 0) );

   ARITH_8 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus76(15 DOWNTO 0),
                 inputB   => s_logisimBus20(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus79(15 DOWNTO 0) );

   ARITH_9 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus21(15 DOWNTO 0),
                 inputB   => s_logisimBus61(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus105(15 DOWNTO 0) );

   ARITH_10 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus35(15 DOWNTO 0),
                 inputB   => s_logisimBus71(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus123(15 DOWNTO 0) );

   ARITH_11 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus34(15 DOWNTO 0),
                 inputB   => s_logisimBus10(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus45(15 DOWNTO 0) );

   ARITH_12 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus76(15 DOWNTO 0),
                 inputB   => s_logisimBus92(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus59(15 DOWNTO 0) );

   ARITH_13 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus21(15 DOWNTO 0),
                 inputB   => s_logisimBus63(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus75(15 DOWNTO 0) );

   ARITH_14 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus35(15 DOWNTO 0),
                 inputB   => s_logisimBus3(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus103(15 DOWNTO 0) );

   ARITH_15 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus34(15 DOWNTO 0),
                 inputB   => s_logisimBus27(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus130(15 DOWNTO 0) );

   ARITH_16 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus76(15 DOWNTO 0),
                 inputB   => s_logisimBus43(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus28(15 DOWNTO 0) );

   ARITH_17 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus21(15 DOWNTO 0),
                 inputB   => s_logisimBus24(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus12(15 DOWNTO 0) );

   ARITH_18 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus35(15 DOWNTO 0),
                 inputB   => s_logisimBus37(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus67(15 DOWNTO 0) );

   ARITH_19 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus34(15 DOWNTO 0),
                 inputB   => s_logisimBus13(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus113(15 DOWNTO 0) );

   ARITH_20 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus76(15 DOWNTO 0),
                 inputB   => s_logisimBus58(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus132(15 DOWNTO 0) );

   ARITH_21 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus49(15 DOWNTO 0),
                 dataB    => s_logisimBus79(15 DOWNTO 0),
                 result   => s_logisimBus73(15 DOWNTO 0) );

   ARITH_22 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus105(15 DOWNTO 0),
                 dataB    => s_logisimBus123(15 DOWNTO 0),
                 result   => s_logisimBus109(15 DOWNTO 0) );

   ARITH_23 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus45(15 DOWNTO 0),
                 dataB    => s_logisimBus59(15 DOWNTO 0),
                 result   => s_logisimBus50(15 DOWNTO 0) );

   ARITH_24 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus75(15 DOWNTO 0),
                 dataB    => s_logisimBus103(15 DOWNTO 0),
                 result   => s_logisimBus80(15 DOWNTO 0) );

   ARITH_25 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus130(15 DOWNTO 0),
                 dataB    => s_logisimBus28(15 DOWNTO 0),
                 result   => s_logisimBus121(15 DOWNTO 0) );

   ARITH_26 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus12(15 DOWNTO 0),
                 dataB    => s_logisimBus67(15 DOWNTO 0),
                 result   => s_logisimBus86(15 DOWNTO 0) );

   ARITH_27 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus113(15 DOWNTO 0),
                 dataB    => s_logisimBus132(15 DOWNTO 0),
                 result   => s_logisimBus99(15 DOWNTO 0) );

   ARITH_28 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus108(15 DOWNTO 0),
                 dataB    => s_logisimBus77(15 DOWNTO 0),
                 result   => s_logisimBus30(15 DOWNTO 0) );

   ARITH_29 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus73(15 DOWNTO 0),
                 dataB    => s_logisimBus109(15 DOWNTO 0),
                 result   => s_logisimBus135(15 DOWNTO 0) );

   ARITH_30 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus50(15 DOWNTO 0),
                 dataB    => s_logisimBus80(15 DOWNTO 0),
                 result   => s_logisimBus60(15 DOWNTO 0) );

   ARITH_31 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus121(15 DOWNTO 0),
                 dataB    => s_logisimBus86(15 DOWNTO 0),
                 result   => s_logisimBus89(15 DOWNTO 0) );

   ARITH_32 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus99(15 DOWNTO 0),
                 dataB    => s_logisimBus30(15 DOWNTO 0),
                 result   => s_logisimBus100(15 DOWNTO 0) );

   ARITH_33 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus2(15 DOWNTO 0),
                 inputB   => s_logisimBus26(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus118(15 DOWNTO 0) );

   ARITH_34 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus57(15 DOWNTO 0),
                 inputB   => s_logisimBus33(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus140(15 DOWNTO 0) );

   ARITH_35 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus66(15 DOWNTO 0),
                 inputB   => s_logisimBus41(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus91(15 DOWNTO 0) );

   ARITH_36 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus44(15 DOWNTO 0),
                 inputB   => s_logisimBus20(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus14(15 DOWNTO 0) );

   ARITH_37 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus2(15 DOWNTO 0),
                 inputB   => s_logisimBus61(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus29(15 DOWNTO 0) );

   ARITH_38 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus57(15 DOWNTO 0),
                 inputB   => s_logisimBus71(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus102(15 DOWNTO 0) );

   ARITH_39 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus66(15 DOWNTO 0),
                 inputB   => s_logisimBus10(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus42(15 DOWNTO 0) );

   ARITH_40 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus44(15 DOWNTO 0),
                 inputB   => s_logisimBus92(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus136(15 DOWNTO 0) );

   ARITH_41 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus2(15 DOWNTO 0),
                 inputB   => s_logisimBus63(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus68(15 DOWNTO 0) );

   ARITH_42 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus57(15 DOWNTO 0),
                 inputB   => s_logisimBus3(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus64(15 DOWNTO 0) );

   ARITH_43 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus66(15 DOWNTO 0),
                 inputB   => s_logisimBus27(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus32(15 DOWNTO 0) );

   ARITH_44 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus44(15 DOWNTO 0),
                 inputB   => s_logisimBus43(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus122(15 DOWNTO 0) );

   ARITH_45 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus2(15 DOWNTO 0),
                 inputB   => s_logisimBus24(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus69(15 DOWNTO 0) );

   ARITH_46 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus57(15 DOWNTO 0),
                 inputB   => s_logisimBus37(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus62(15 DOWNTO 0) );

   ARITH_47 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus66(15 DOWNTO 0),
                 inputB   => s_logisimBus13(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus137(15 DOWNTO 0) );

   ARITH_48 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus44(15 DOWNTO 0),
                 inputB   => s_logisimBus58(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus101(15 DOWNTO 0) );

   ARITH_49 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus91(15 DOWNTO 0),
                 dataB    => s_logisimBus14(15 DOWNTO 0),
                 result   => s_logisimBus117(15 DOWNTO 0) );

   ARITH_50 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus29(15 DOWNTO 0),
                 dataB    => s_logisimBus102(15 DOWNTO 0),
                 result   => s_logisimBus83(15 DOWNTO 0) );

   ARITH_51 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus42(15 DOWNTO 0),
                 dataB    => s_logisimBus136(15 DOWNTO 0),
                 result   => s_logisimBus93(15 DOWNTO 0) );

   ARITH_52 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus68(15 DOWNTO 0),
                 dataB    => s_logisimBus64(15 DOWNTO 0),
                 result   => s_logisimBus15(15 DOWNTO 0) );

   ARITH_53 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus32(15 DOWNTO 0),
                 dataB    => s_logisimBus122(15 DOWNTO 0),
                 result   => s_logisimBus46(15 DOWNTO 0) );

   ARITH_54 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus69(15 DOWNTO 0),
                 dataB    => s_logisimBus62(15 DOWNTO 0),
                 result   => s_logisimBus47(15 DOWNTO 0) );

   ARITH_55 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus137(15 DOWNTO 0),
                 dataB    => s_logisimBus101(15 DOWNTO 0),
                 result   => s_logisimBus85(15 DOWNTO 0) );

   ARITH_56 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus118(15 DOWNTO 0),
                 dataB    => s_logisimBus140(15 DOWNTO 0),
                 result   => s_logisimBus111(15 DOWNTO 0) );

   ARITH_57 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus117(15 DOWNTO 0),
                 dataB    => s_logisimBus83(15 DOWNTO 0),
                 result   => s_logisimBus16(15 DOWNTO 0) );

   ARITH_58 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus93(15 DOWNTO 0),
                 dataB    => s_logisimBus15(15 DOWNTO 0),
                 result   => s_logisimBus112(15 DOWNTO 0) );

   ARITH_59 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus46(15 DOWNTO 0),
                 dataB    => s_logisimBus47(15 DOWNTO 0),
                 result   => s_logisimBus84(15 DOWNTO 0) );

   ARITH_60 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus85(15 DOWNTO 0),
                 dataB    => s_logisimBus111(15 DOWNTO 0),
                 result   => s_logisimBus138(15 DOWNTO 0) );

   ARITH_61 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus17(15 DOWNTO 0),
                 inputB   => s_logisimBus26(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus4(15 DOWNTO 0) );

   ARITH_62 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus48(15 DOWNTO 0),
                 inputB   => s_logisimBus33(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus1(15 DOWNTO 0) );

   ARITH_63 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus0(15 DOWNTO 0),
                 inputB   => s_logisimBus41(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus124(15 DOWNTO 0) );

   ARITH_64 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus18(15 DOWNTO 0),
                 inputB   => s_logisimBus20(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus70(15 DOWNTO 0) );

   ARITH_65 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus17(15 DOWNTO 0),
                 inputB   => s_logisimBus61(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus95(15 DOWNTO 0) );

   ARITH_66 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus48(15 DOWNTO 0),
                 inputB   => s_logisimBus71(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus127(15 DOWNTO 0) );

   ARITH_67 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus0(15 DOWNTO 0),
                 inputB   => s_logisimBus10(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus104(15 DOWNTO 0) );

   ARITH_68 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus18(15 DOWNTO 0),
                 inputB   => s_logisimBus92(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus52(15 DOWNTO 0) );

   ARITH_69 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus17(15 DOWNTO 0),
                 inputB   => s_logisimBus63(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus56(15 DOWNTO 0) );

   ARITH_70 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus48(15 DOWNTO 0),
                 inputB   => s_logisimBus3(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus110(15 DOWNTO 0) );

   ARITH_71 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus0(15 DOWNTO 0),
                 inputB   => s_logisimBus27(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus65(15 DOWNTO 0) );

   ARITH_72 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus18(15 DOWNTO 0),
                 inputB   => s_logisimBus43(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus22(15 DOWNTO 0) );

   ARITH_73 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus17(15 DOWNTO 0),
                 inputB   => s_logisimBus24(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus82(15 DOWNTO 0) );

   ARITH_74 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus48(15 DOWNTO 0),
                 inputB   => s_logisimBus37(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus81(15 DOWNTO 0) );

   ARITH_75 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus0(15 DOWNTO 0),
                 inputB   => s_logisimBus13(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus53(15 DOWNTO 0) );

   ARITH_76 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus18(15 DOWNTO 0),
                 inputB   => s_logisimBus58(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus128(15 DOWNTO 0) );

   ARITH_77 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus124(15 DOWNTO 0),
                 dataB    => s_logisimBus70(15 DOWNTO 0),
                 result   => s_logisimBus11(15 DOWNTO 0) );

   ARITH_78 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus95(15 DOWNTO 0),
                 dataB    => s_logisimBus127(15 DOWNTO 0),
                 result   => s_logisimBus6(15 DOWNTO 0) );

   ARITH_79 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus104(15 DOWNTO 0),
                 dataB    => s_logisimBus52(15 DOWNTO 0),
                 result   => s_logisimBus141(15 DOWNTO 0) );

   ARITH_80 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus56(15 DOWNTO 0),
                 dataB    => s_logisimBus110(15 DOWNTO 0),
                 result   => s_logisimBus5(15 DOWNTO 0) );

   ARITH_81 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus65(15 DOWNTO 0),
                 dataB    => s_logisimBus22(15 DOWNTO 0),
                 result   => s_logisimBus133(15 DOWNTO 0) );

   ARITH_82 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus82(15 DOWNTO 0),
                 dataB    => s_logisimBus81(15 DOWNTO 0),
                 result   => s_logisimBus51(15 DOWNTO 0) );

   ARITH_83 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus53(15 DOWNTO 0),
                 dataB    => s_logisimBus128(15 DOWNTO 0),
                 result   => s_logisimBus116(15 DOWNTO 0) );

   ARITH_84 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus4(15 DOWNTO 0),
                 dataB    => s_logisimBus1(15 DOWNTO 0),
                 result   => s_logisimBus129(15 DOWNTO 0) );

   ARITH_85 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus11(15 DOWNTO 0),
                 dataB    => s_logisimBus6(15 DOWNTO 0),
                 result   => s_logisimBus38(15 DOWNTO 0) );

   ARITH_86 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus141(15 DOWNTO 0),
                 dataB    => s_logisimBus5(15 DOWNTO 0),
                 result   => s_logisimBus72(15 DOWNTO 0) );

   ARITH_87 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus133(15 DOWNTO 0),
                 dataB    => s_logisimBus51(15 DOWNTO 0),
                 result   => s_logisimBus7(15 DOWNTO 0) );

   ARITH_88 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus116(15 DOWNTO 0),
                 dataB    => s_logisimBus129(15 DOWNTO 0),
                 result   => s_logisimBus125(15 DOWNTO 0) );

   ARITH_89 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus9(15 DOWNTO 0),
                 inputB   => s_logisimBus33(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus142(15 DOWNTO 0) );

   ARITH_90 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus23(15 DOWNTO 0),
                 inputB   => s_logisimBus41(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus143(15 DOWNTO 0) );

   ARITH_91 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus8(15 DOWNTO 0),
                 inputB   => s_logisimBus20(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus90(15 DOWNTO 0) );

   ARITH_92 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus39(15 DOWNTO 0),
                 inputB   => s_logisimBus61(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus131(15 DOWNTO 0) );

   ARITH_93 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus9(15 DOWNTO 0),
                 inputB   => s_logisimBus71(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus74(15 DOWNTO 0) );

   ARITH_94 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus23(15 DOWNTO 0),
                 inputB   => s_logisimBus10(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus134(15 DOWNTO 0) );

   ARITH_95 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus8(15 DOWNTO 0),
                 inputB   => s_logisimBus92(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus119(15 DOWNTO 0) );

   ARITH_96 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus39(15 DOWNTO 0),
                 inputB   => s_logisimBus63(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus115(15 DOWNTO 0) );

   ARITH_97 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus9(15 DOWNTO 0),
                 inputB   => s_logisimBus3(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus87(15 DOWNTO 0) );

   ARITH_98 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus23(15 DOWNTO 0),
                 inputB   => s_logisimBus27(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus120(15 DOWNTO 0) );

   ARITH_99 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus8(15 DOWNTO 0),
                 inputB   => s_logisimBus43(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus94(15 DOWNTO 0) );

   ARITH_100 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus39(15 DOWNTO 0),
                 inputB   => s_logisimBus24(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus88(15 DOWNTO 0) );

   ARITH_101 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus9(15 DOWNTO 0),
                 inputB   => s_logisimBus37(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus31(15 DOWNTO 0) );

   ARITH_102 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus23(15 DOWNTO 0),
                 inputB   => s_logisimBus13(15 DOWNTO 0),
                 multHigh => s_logisimBus144(15 DOWNTO 0),
                 multLow  => s_logisimBus96(15 DOWNTO 0) );

   ARITH_103 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus8(15 DOWNTO 0),
                 inputB   => s_logisimBus58(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus54(15 DOWNTO 0) );

   ARITH_104 : Multiplier
      GENERIC MAP ( calcBits           => 32,
                    nrOfBits           => 16,
                    unsignedMultiplier => 0 )
      PORT MAP ( carryIn  => X"0000",
                 inputA   => s_logisimBus39(15 DOWNTO 0),
                 inputB   => s_logisimBus26(15 DOWNTO 0),
                 multHigh => OPEN,
                 multLow  => s_logisimBus36(15 DOWNTO 0) );

   ARITH_105 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus36(15 DOWNTO 0),
                 dataB    => s_logisimBus142(15 DOWNTO 0),
                 result   => s_logisimBus139(15 DOWNTO 0) );

   ARITH_106 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus143(15 DOWNTO 0),
                 dataB    => s_logisimBus90(15 DOWNTO 0),
                 result   => s_logisimBus55(15 DOWNTO 0) );

   ARITH_107 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus131(15 DOWNTO 0),
                 dataB    => s_logisimBus74(15 DOWNTO 0),
                 result   => s_logisimBus126(15 DOWNTO 0) );

   ARITH_108 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus134(15 DOWNTO 0),
                 dataB    => s_logisimBus119(15 DOWNTO 0),
                 result   => s_logisimBus78(15 DOWNTO 0) );

   ARITH_109 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus115(15 DOWNTO 0),
                 dataB    => s_logisimBus87(15 DOWNTO 0),
                 result   => s_logisimBus40(15 DOWNTO 0) );

   ARITH_110 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus120(15 DOWNTO 0),
                 dataB    => s_logisimBus94(15 DOWNTO 0),
                 result   => s_logisimBus114(15 DOWNTO 0) );

   ARITH_111 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus88(15 DOWNTO 0),
                 dataB    => s_logisimBus31(15 DOWNTO 0),
                 result   => s_logisimBus97(15 DOWNTO 0) );

   ARITH_112 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus96(15 DOWNTO 0),
                 dataB    => s_logisimBus54(15 DOWNTO 0),
                 result   => s_logisimBus106(15 DOWNTO 0) );


END platformIndependent;
