-- -------------------------------------------------------
-- This program is a decimal counter 0..9999, displayed on
-- the 4-digit 7-segment display. Counts in 1Hz intervals.
-- -------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pmod_7seg4_2 is
port ( clk: in STD_LOGIC;
     seg_a: out STD_LOGIC := '1';
     seg_b: out STD_LOGIC := '1';
     seg_c: out STD_LOGIC := '1';
     seg_d: out STD_LOGIC := '1';
     seg_e: out STD_LOGIC := '1';
     seg_f: out STD_LOGIC := '1';
     seg_g: out STD_LOGIC := '1';
    seg_dp: out STD_LOGIC := '1';
       ca1: out STD_LOGIC := '1';
       ca2: out STD_LOGIC := '1';
       ca3: out STD_LOGIC := '1';
       ca4: out STD_LOGIC := '1'
);
end pmod_7seg4_2;

architecture arch of pmod_7seg4_2 is
  signal   clk_1hz: STD_LOGIC;
  signal     DIGIT: STD_LOGIC_VECTOR(3 downto 0);
  signal       SEG: STD_LOGIC_VECTOR(7 downto 0);
  signal unit, tens, hundreds, thousands: INTEGER range 0 to 9;
  
  -- -------------------------
  -- interface to display_7seg
  -- -------------------------
  component display_7seg is
  port ( CLK: IN  STD_LOGIC;
      unit, tens, hundreds, thousands: IN INTEGER := 0;  --digit values
     DIGIT:	OUT STD_LOGIC_VECTOR(3 DOWNTO 0);	         --output digit number
		 SEG:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)             --output segments
  );
  end component;

begin
  -- instantiation and value assignment to display_7seg
  display: display_7seg 
  port map( clk, unit, tens, hundreds, thousands, DIGIT, SEG );
		
  counter_p: process( clk, clk_1hz, unit, tens, hundreds, thousands, DIGIT, SEG )
  variable clk_count: INTEGER := 0;

  begin
    if( rising_edge(clk) ) then
    clk_count := clk_count + 1;
      if( clk_count = 24999999 ) then
        clk_count := 0;
        clk_1hz <= NOT clk_1hz;
      end if;
    end if;
		
    if( rising_edge(clk_1hz) ) then
      unit <= unit + 1;
      if ( unit = 9 ) then
        unit <= 0;
        tens <= tens + 1;
        if ( tens = 9 ) then
          tens <= 0;
          hundreds <= hundreds + 1;
          if ( hundreds = 9 ) then
            hundreds <= 0;
            thousands <= thousands + 1;
            if( thousands = 9 ) then
              thousands <= 0;
            end if;
          end if;
        end if;
      end if;
    end if;
  end process counter_p;
	 
  ca1 <= DIGIT(3);
  ca2 <= DIGIT(2);
  ca3 <= DIGIT(1);
  ca4 <= DIGIT(0);
  seg_a <= SEG(0);
  seg_b <= SEG(1);
  seg_c <= SEG(2);
  seg_d <= SEG(3);
  seg_e <= SEG(4);
  seg_f <= SEG(5);
  seg_g <= SEG(6);
  seg_dp <= SEG(7);
end arch;

-- -------------------------------------------------------
-- entity display_7seg converts 4 decimal digits to 7-seg
-- -------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_7seg is
port ( CLK: IN  STD_LOGIC;
      unit: IN INTEGER;
      tens: IN INTEGER;
  hundreds: IN INTEGER;
 thousands: IN INTEGER;
     DIGIT: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);  --output digit number
       SEG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)   --output segments
);
end display_7seg;

architecture arch of display_7seg is
  signal digit_data: INTEGER;
  -- ------------------------
  -- interface to encode_7seg
  -- ------------------------
  component encode_7seg is
  port( D: IN  INTEGER range 0 to 9;           --digit value input
      SEG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)    --output to segments
  );
  end component;
  
begin
  -- instantiation and value assignment to encode_7seg
  encode: encode_7seg port map( digit_data, SEG );
	 
  display: process( clk )
  variable digit_posn: INTEGER range 0 to 3 := 0;
  variable  prescaler: INTEGER := 0;
  
  begin
  if( rising_edge(clk) ) then
    prescaler := prescaler + 1;
    if( prescaler = 50000 ) then -- 1ms refresh
      prescaler := 0;
		if (digit_posn = 0) then
        digit_data <= unit;      -- assign digit_data
        DIGIT <= "1110";         -- set the 1 digit pin low (enable)
      end if;
		if (digit_posn = 1) then
        digit_data <= tens;      -- assign digit_data to show tens
        DIGIT <= "1101";         -- set the 2 digit pin low (enable)		
		end if;
      if (digit_posn = 2) then
        digit_data <= hundreds;  -- assign digit_data to show hundreds
        DIGIT <= "1011";         -- set the 3 digit pin low (enable)		
		end if;
      if (digit_posn = 3) then
        digit_data <= thousands; -- assign digit_data to show thousands
        DIGIT <= "0111";         -- set the 4 digit pin low (enable)		
		end if;
		digit_posn := digit_posn + 1;
    end if;
  end if;
  end process display;
end arch;

-- -------------------------------------------------------
-- entity encode_7seg encodes a bin number as a 7seg digit
-- -------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encode_7seg is
port (  D:	IN  INTEGER range 0 to 9;		    --digit value input
		SEG:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  --output to segments
);
end encode_7seg;

architecture arch of encode_7seg is
begin
  with D select                     --map input D to segments
    SEG <= "11000000" WHEN 0,	      --0
           "11111001" WHEN 1,	      --1
           "10100100" WHEN 2,	      --2
           "10110000" WHEN 3,	      --3
           "10011001" WHEN 4,	      --4
           "10010010" WHEN 5,	      --5
           "10000010" WHEN 6,	      --6  
           "11111000" WHEN 7,	      --7
           "10000000" WHEN 8,	      --8
           "10010000" WHEN 9,	      --9
           "11111111" WHEN OTHERS;	--default blank
end arch;