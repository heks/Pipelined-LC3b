--
-- VHDL Architecture ece411.SEXT6.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 12:29:16 02/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT6 IS
   PORT( 
      index6   : IN     LC3b_index6;
      SextImm6 : OUT    LC3b_word
   );

-- Declarations

END SEXT6 ;

--
ARCHITECTURE untitled OF SEXT6 IS
BEGIN
	SextImm6 <= index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6 AFTER DELAY_MUX2;
END UNTITLED;
