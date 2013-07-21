--
-- VHDL Architecture ece411.ZEXTLowerB.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 21:27:33 02/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXTLowerB IS
   PORT( 
      MDROut      : IN     LC3b_word;
      MDROutByteL : OUT    LC3b_word
   );

-- Declarations

END ZEXTLowerB ;

--
ARCHITECTURE untitled OF ZEXTLowerB IS
BEGIN
  MDROutByteL <= "00000000" & MDROut(7 DOWNTO 0);
END ARCHITECTURE untitled;
