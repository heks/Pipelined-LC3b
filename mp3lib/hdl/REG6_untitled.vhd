--
-- VHDL Architecture mp3lib.REG6.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 09:42:58 03/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY REG6 IS
   PORT( 
      A       : IN     lc3b_index6;
      EN      : IN     std_logic;
      RESET_L : IN     std_logic;
      clk     : IN     std_logic;
      F       : OUT    lc3b_index6
   );

-- Declarations

END REG6 ;

--
ARCHITECTURE untitled OF REG6 IS
BEGIN
 	REG6: PROCESS(CLK,RESET_L,A,EN)
	VARIABLE STATE : lc3b_index6;
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := (OTHERS => '0');  -- DEFAULT VALUE
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := A;
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := (OTHERS => 'X');
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS REG6;
END ARCHITECTURE untitled;

