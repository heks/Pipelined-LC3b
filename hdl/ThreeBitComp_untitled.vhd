--
-- VHDL Architecture ece411.ThreeBitComp.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-07.ews.illinois.edu)
--          at - 23:51:19 04/11/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ThreeBitComp IS
   PORT( 
      A : IN     lc3b_reg;
      B : IN     lc3b_reg;
      F : OUT    std_logic
   );

-- Declarations

END ThreeBitComp ;

--
ARCHITECTURE untitled OF ThreeBitComp IS
BEGIN
	COMP3: PROCESS (A, B)
	BEGIN 
		IF (A = B) THEN
			F <= '1' AFTER DELAY_COMPARE8;
		ELSE
			F <= '0' AFTER DELAY_COMPARE8;
		END IF;
	END PROCESS COMP3;
END ARCHITECTURE untitled;

