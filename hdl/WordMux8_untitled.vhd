--
-- VHDL Architecture ece411.WordMux8.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-06.ews.illinois.edu)
--          at - 11:48:43 02/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY WordMux8 IS
   PORT( 
      LineOut    : IN     LC3b_oword;
      WordOffset : IN     LC3b_C_WOffset;
      DataOut    : OUT    LC3b_word
   );

-- Declarations

END WordMux8 ;

--
ARCHITECTURE untitled OF WordMux8 IS
BEGIN
  PROCESS (LineOut, WordOffset)
    variable state : LC3b_word;
  BEGIN
    case WordOffset is
      when "000" =>
        state := LineOut(15 DOWNTO 0);
      when "001" =>
        state := LineOut(31 DOWNTO 16);
      when "010" =>
        state := LineOut(47 DOWNTO 32);
      when "011" =>
        state := LineOut(63 DOWNTO 48);
      when "100" =>
        state := LineOut(79 DOWNTO 64);
      when "101" =>
        state := LineOut(95 DOWNTO 80);
      when "110" =>
        state := LineOut(111 DOWNTO 96);
      when "111" =>
        state := LineOut(127 DOWNTO 112);
      when others =>
        state := (OTHERS => 'X');
    end case;
    DataOut <= state after delay_MUX8;
  END PROCESS;
END ARCHITECTURE untitled;

