--
-- VHDL Architecture ece411.Plus2.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 13:09:20 01/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Plus2 IS
   PORT( 
      A        : IN     LC3b_word;
      Plus2out : OUT    LC3b_word
   );

-- Declarations

END Plus2 ;

--
ARCHITECTURE UNTITLED OF PLUS2 IS
BEGIN
	VHDL_ADD_2 : PROCESS (A)
	BEGIN  -- PROCESS
		Plus2out <= STD_LOGIC_VECTOR(UNSIGNED(A) + 2) AFTER DELAY_ADDER;
	END PROCESS;
END UNTITLED;
