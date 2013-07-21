--
-- VHDL Architecture ece411.ClockDelay33.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-18.ews.illinois.edu)
--          at - 03:37:34 04/25/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY ClockDelay33 IS
   PORT( 
      clk        : IN     std_logic;
      ClkDelay33 : OUT    std_logic
   );

-- Declarations

END ClockDelay33 ;

--
ARCHITECTURE untitled OF ClockDelay33 IS
BEGIN
  ClkDelay33 <= clk'delayed(33 ns);
END ARCHITECTURE untitled;

