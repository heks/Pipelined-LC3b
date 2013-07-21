--
-- VHDL Architecture ece411.HideRegAndGate.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-07.ews.illinois.edu)
--          at - 17:45:12 04/20/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY HideRegAndGate IS
   PORT( 
      Input   : IN     std_logic;
      Delayed : OUT    std_logic
   );

-- Declarations

END HideRegAndGate ;

--
ARCHITECTURE untitled OF HideRegAndGate IS
BEGIN
    Delayed <= Input'delayed(CLOCK_PERIOD - DELAY_REG - DELAY_LOGIC2);
END ARCHITECTURE untitled;

