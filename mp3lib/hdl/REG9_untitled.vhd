--
-- VHDL Architecture mp3lib.REG9.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 09:44:19 03/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY REG9 IS
   PORT( 
      A       : IN     lc3b_offset9;
      clk     : IN     std_logic;
      en      : IN     std_logic;
      reset_l : IN     std_logic;
      F       : OUT    lc3b_offset9
   );

-- Declarations

END REG9 ;

--
ARCHITECTURE untitled OF REG9 IS
BEGIN
 	REG9: PROCESS(CLK,RESET_L,A,EN)
	VARIABLE STATE : lc3b_offset9;
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := (OTHERS => '0');  -- DEFAULT VALUE
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := A;
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := (OTHERS => 'X');
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS REG9;
END ARCHITECTURE untitled;

