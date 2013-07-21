--
-- VHDL Architecture ece411.Inverter1.untitled
--
-- Created:
--          by - hinz1.ews (linux5.ews.illinois.edu)
--          at - 00:38:42 02/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY Inverter1 IS
   PORT( 
      A : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END Inverter1 ;

--
ARCHITECTURE untitled OF Inverter1 IS
BEGIN
  F <= (NOT A) after DELAY_LOGIC2;
END ARCHITECTURE untitled;

