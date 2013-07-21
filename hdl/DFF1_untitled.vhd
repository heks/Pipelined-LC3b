--
-- VHDL Architecture ece411.DFF1.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-08.ews.illinois.edu)
--          at - 01:42:56 04/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY DFF1 IS
   PORT( 
      D    : IN     std_logic;
      En   : IN     std_logic;
      Q    : OUT    std_logic;
      Qbar : OUT    std_logic
   );
END DFF1 ;
--
ARCHITECTURE untitled OF DFF1 IS
BEGIN
	DFF1: PROCESS(D, En)
	VARIABLE STATE : std_logic;
	BEGIN
	  -- Note: the D Flip Flop has no default value and cannot be reset!
		IF(EN = '1') THEN -- HIGH ENABLE
			STATE := D;
		ELSIF(EN /= '0' AND EN /= '1') THEN
			STATE := ('X');
		END IF;
		Q <= STATE AFTER DELAY_LATCH;
		Qbar <= not(STATE) AFTER DELAY_LATCH;
	END PROCESS DFF1;
END ARCHITECTURE untitled;

