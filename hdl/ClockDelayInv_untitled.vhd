--
-- VHDL Architecture ece411.ClockDelayInv.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 23:31:33 02/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY ClockDelayInv IS
   PORT( 
      clk    : IN     std_logic;
      clkInv : OUT    std_logic
   );

-- Declarations

END ClockDelayInv ;

--
ARCHITECTURE untitled OF ClockDelayInv IS
BEGIN
  clkInv <= clk'delayed(22 ns);
END ARCHITECTURE untitled;

