--
-- VHDL Architecture ece411.ConcatBytes.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-09.ews.illinois.edu)
--          at - 02:05:48 02/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY SpliceBytes IS
   PORT( 
      High    : IN     LC3b_word;
      Low     : IN     LC3b_word;
      WordOut : OUT    LC3b_word
   );

-- Declarations

END SpliceBytes ;

--
ARCHITECTURE untitled OF SpliceBytes IS
BEGIN
  WordOut <= High(15 DOWNTO 8) & Low(7 DOWNTO 0);
END ARCHITECTURE untitled;

