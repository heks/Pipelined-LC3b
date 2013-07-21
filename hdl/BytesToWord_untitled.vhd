--
-- VHDL Architecture ece411.BytesToWord.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 14:31:03 02/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DoubleLowerB IS
   PORT( 
      WordIN     : IN     LC3b_word;
      LowerBytes : OUT    LC3b_word
   );

-- Declarations

END DoubleLowerB;

--
ARCHITECTURE untitled OF DoubleLowerB IS
BEGIN
  LowerBytes <= WordIN(7 DOWNTO 0) & WordIN(7 DOWNTO 0);
END ARCHITECTURE untitled;

