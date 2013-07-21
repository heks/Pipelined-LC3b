--
-- VHDL Architecture ece411.reg1_def1.untitled
--
-- Created:
--          by - labelle1.ews (gelib-057-34.ews.illinois.edu)
--          at - 14:23:02 04/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY reg1_def1 IS
  PORT( 
	RESET_L : IN     STD_LOGIC;
	A       : IN     STD_LOGIC;
	EN      : IN     STD_LOGIC;
	CLK     : IN     STD_LOGIC;
	F       : OUT    STD_LOGIC
);
END ENTITY reg1_def1;

--
ARCHITECTURE untitled OF reg1_def1 IS
BEGIN
	REG1_DEF1: PROCESS(CLK,RESET_L,A,EN)
	VARIABLE STATE : STD_LOGIC;
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := '1';  -- DEFAULT VALUE
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := A;
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := 'X';
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS REG1_DEF1;
END ARCHITECTURE untitled;

