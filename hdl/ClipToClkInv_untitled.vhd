--
-- VHDL Architecture ece411.ClipToClkInv.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-33.ews.illinois.edu)
--          at - 00:43:06 04/11/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY ClipToClkInv IS
   PORT( 
      Input   : IN     std_logic;
      clk     : IN     std_logic;
      Clipped : OUT    std_logic
   );

-- Declarations

END ClipToClkInv ;

--
ARCHITECTURE untitled OF ClipToClkInv IS
BEGIN
  Clipped <= (Input AND (clk'delayed(HALF_CLOCK_PERIOD - DELAY_LOGIC2))) after DELAY_LOGIC2;
END ARCHITECTURE untitled;

