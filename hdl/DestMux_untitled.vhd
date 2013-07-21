--
-- VHDL Architecture ece411.DestMux.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-19.ews.illinois.edu)
--          at - 18:18:12 02/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DestMux IS
   PORT( 
      DestMuxSel : IN     std_logic;
      clk        : IN     std_logic;
      dest       : IN     LC3b_reg;
      DestReg    : OUT    LC3b_reg
   );

-- Declarations

END DestMux ;

--
ARCHITECTURE untitled OF DestMux IS
BEGIN
 	PROCESS (Dest, DestMuxSel)
	VARIABLE STATE : LC3b_reg;
	BEGIN
		CASE DestMuxSel IS
			WHEN '0' =>
				STATE := dest;
			WHEN '1' =>
				STATE := "111";  -- R7
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	DestReg <= STATE AFTER DELAY_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

