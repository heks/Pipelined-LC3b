--
-- VHDL Architecture ece411.ClockDelay.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 18:39:12 02/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY ClockDelay IS
   PORT( 
      clk        : IN     std_logic;
      ClkDelay33 : OUT    std_logic
   );

-- Declarations

END ClockDelay ;

--
ARCHITECTURE untitled OF ClockDelay IS
BEGIN
  ClkDelay33 <= clk'delayed(33 ns);
END ARCHITECTURE untitled;

