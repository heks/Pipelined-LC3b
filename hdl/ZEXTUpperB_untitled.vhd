--
-- VHDL Architecture ece411.ZEXTUpperB.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 21:30:32 02/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXTUpperB IS
   PORT( 
      MDROut      : IN     LC3b_word;
      MDROutByteU : OUT    LC3b_word
   );

-- Declarations

END ZEXTUpperB ;

--
ARCHITECTURE untitled OF ZEXTUpperB IS
BEGIN
  MDROutByteU <= "00000000" & MDROut(15 DOWNTO 8);
END ARCHITECTURE untitled;

