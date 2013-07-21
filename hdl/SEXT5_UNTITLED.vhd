--
-- VHDL Architecture ece411.SEXT5.untitled
--
-- Created:
--          by - hinz1.ews (evrt-252-09.ews.illinois.edu)
--          at - 12:00:20 01/30/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT5 IS
   PORT( 
      imm5     : IN     LC3b_imm5;
      SextImm5 : OUT    LC3b_word
   );

-- Declarations

END SEXT5 ;

--
ARCHITECTURE UNTITLED OF SEXT5 IS
BEGIN
	SextImm5 <= imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5 AFTER DELAY_MUX2;
END UNTITLED;
