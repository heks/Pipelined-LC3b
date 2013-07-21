--
-- VHDL Architecture ece411.InvertClk.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-10.ews.illinois.edu)
--          at - 21:24:08 04/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY InvertClk IS
   PORT( 
      clk    : IN     std_logic;
      clkinv : OUT    std_logic
   );

-- Declarations

END InvertClk ;

--
ARCHITECTURE untitled OF InvertClk IS
BEGIN
  clkinv <= clk'delayed(HALF_CLOCK_PERIOD);
END ARCHITECTURE untitled;

