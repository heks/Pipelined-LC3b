--
-- VHDL Architecture ece411.GenOne.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-07.ews.illinois.edu)
--          at - 17:50:44 04/20/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY GenOne IS
   PORT( 
      One : OUT    std_logic
   );

-- Declarations

END GenOne ;

--
ARCHITECTURE untitled OF GenOne IS
BEGIN
  One <= '1';
END ARCHITECTURE untitled;
