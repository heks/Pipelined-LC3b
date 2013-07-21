--
-- VHDL Architecture mp3lib.REG5.UNTITLED
--
-- Created:
--          by - rasinsk1.ews (linux5.ews.illinois.edu)
--          at - 22:03:36 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
ARCHITECTURE UNTITLED OF REG5 IS
BEGIN
  	REG5: PROCESS(CLK,RESET_L,A,EN)
	VARIABLE STATE : lc3b_imm5;
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := (OTHERS => '0');  -- DEFAULT VALUE
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := A;
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := (OTHERS => 'X');
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS REG5;
END ARCHITECTURE UNTITLED;

