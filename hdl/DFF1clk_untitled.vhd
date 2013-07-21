--
-- VHDL Architecture ece411.DFF1clk.untitled
--
-- Created:
--          by - labelle1.ews (gelib-057-34.ews.illinois.edu)
--          at - 16:24:58 04/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY DFF1clk IS
   PORT( 
      D    : IN     std_logic;
      En   : IN     std_logic;
      clk  : IN     std_logic;
      Q    : OUT    std_logic;
      Qbar : OUT    std_logic
   );
END ENTITY DFF1clk;

--
ARCHITECTURE untitled OF DFF1clk IS
BEGIN
	DFF1clk: PROCESS(D, En, clk)
	VARIABLE STATE : std_logic;
	BEGIN
	  -- Note: the D Flip Flop has no default value and cannot be reset!
		IF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := D;
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := ('X');
		END IF;
		Q <= STATE AFTER DELAY_LATCH;
		Qbar <= not(STATE) AFTER DELAY_LATCH;
	END PROCESS DFF1clk;
END ARCHITECTURE untitled;

