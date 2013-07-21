--
-- VHDL Architecture ece411.Compare10.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-18.ews.illinois.edu)
--          at - 22:46:13 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Compare10 IS
   PORT( 
      Tag      : IN     LC3b_L2_Tag;
      TagOut   : IN     LC3b_L2_Tag;
      TagEqual : OUT    std_logic
   );

-- Declarations

END Compare10 ;

--
ARCHITECTURE untitled OF Compare10 IS
BEGIN
END ARCHITECTURE untitled;

