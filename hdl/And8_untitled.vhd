--
-- VHDL Architecture ece411.And8.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-19.ews.illinois.edu)
--          at - 00:52:49 04/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY And8 IS
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

END And8 ;

--
ARCHITECTURE untitled OF And8 IS
BEGIN
  F <= (In0 AND In1 AND In2 AND In3 AND In4 AND In5 AND In6 AND In7) after (DELAY_LOGIC2 + DELAY_LOGIC4);
END ARCHITECTURE untitled;
