--
-- VHDL Architecture ece411.ZEXT4.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 11:59:33 02/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXT4 IS
   PORT( 
      imm4     : IN     LC3b_nibble;
      ZextImm4 : OUT    LC3b_word
   );

-- Declarations

END ZEXT4 ;

--
ARCHITECTURE untitled OF ZEXT4 IS
BEGIN
  ZextImm4 <= "000000000000" & imm4;
END ARCHITECTURE untitled;
