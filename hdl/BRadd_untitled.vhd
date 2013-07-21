--
-- VHDL Architecture ece411.BRadd.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 13:23:00 01/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BRadd IS
   PORT( 
      PCOffset : IN     LC3b_word;
      PCout    : IN     LC3b_word;
      clk      : IN     std_logic;
      BRaddout : OUT    LC3b_word
   );

-- Declarations

END BRadd ;

--
ARCHITECTURE untitled OF BRadd IS
BEGIN
	VHDL_BR_ADD : PROCESS (PCout, PCOffset)
	BEGIN  -- PROCESS
		BRaddout <= STD_LOGIC_VECTOR(SIGNED(PCOUT) + SIGNED(PCOffset)) AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;

