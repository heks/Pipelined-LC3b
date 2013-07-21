--
-- VHDL Architecture ece411.Or8.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-19.ews.illinois.edu)
--          at - 01:02:09 04/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY Or8 IS
   PORT( 
      In0 : IN     std_logic;
      In1 : IN     std_logic;
      In2 : IN     std_logic;
      In3 : IN     std_logic;
      In4 : IN     std_logic;
      In5 : IN     std_logic;
      In6 : IN     std_logic;
      In7 : IN     std_logic;
      F   : OUT    std_logic
   );

-- Declarations

END Or8 ;

--
ARCHITECTURE untitled OF Or8 IS
BEGIN
  F <= (In0 OR In1 OR In2 OR In3 OR In4 OR In5 OR In6 OR In7) after (DELAY_LOGIC2 + DELAY_LOGIC4);
END ARCHITECTURE untitled;

