--
-- VHDL Architecture ece411.StoreMux.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 13:36:53 01/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY StoreMux IS
   PORT( 
      SrcA        : IN     LC3b_reg;
      StoreSR     : IN     std_logic;
      clk         : IN     std_logic;
      dest        : IN     LC3b_reg;
      StoreMuxout : OUT    LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE untitled OF StoreMux IS
BEGIN
 	PROCESS (Dest, SrcA, StoreSR)
	VARIABLE STATE : LC3b_reg;
	BEGIN
		CASE StoreSR IS
			WHEN '0' =>
				STATE := Dest;
			WHEN '1' =>
				STATE := SrcA;
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	StoreMuxout <= STATE AFTER DELAY_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

