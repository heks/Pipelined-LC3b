--
-- VHDL Architecture ece411.OWordSplitter.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-09.ews.illinois.edu)
--          at - 01:24:58 02/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY OWordSplitter IS
   PORT( 
      CacheLine : IN     LC3b_OWord;
      InWord0   : OUT    LC3b_word;
      InWord1   : OUT    LC3b_word;
      InWord2   : OUT    LC3b_word;
      InWord3   : OUT    LC3b_word;
      InWord4   : OUT    LC3b_word;
      InWord5   : OUT    LC3b_word;
      InWord6   : OUT    LC3b_word;
      InWord7   : OUT    LC3b_word
   );

-- Declarations

END OWordSplitter ;

--
ARCHITECTURE untitled OF OWordSplitter IS
BEGIN
  PROCESS (CacheLine)
  BEGIN
    InWord0 <= CacheLine(15 DOWNTO 0);
    InWord1 <= CacheLine(31 DOWNTO 16);
    InWord2 <= CacheLine(47 DOWNTO 32);
    InWord3 <= CacheLine(63 DOWNTO 48);
    InWord4 <= CacheLine(79 DOWNTO 64);
    InWord5 <= CacheLine(95 DOWNTO 80);
    InWord6 <= CacheLine(111 DOWNTO 96);
    InWord7 <= CacheLine(127 DOWNTO 112);
  END PROCESS;
END ARCHITECTURE untitled;

