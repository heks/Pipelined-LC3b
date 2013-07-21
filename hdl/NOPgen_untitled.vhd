--
-- VHDL Architecture ece411.NOPgen.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-11.ews.illinois.edu)
--          at - 19:19:14 04/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY NOPgen IS
   PORT( 
      NOPout : OUT    LC3b_word
   );

-- Declarations

END NOPgen ;

--
ARCHITECTURE untitled OF NOPgen IS
BEGIN
  NOPout <= (others => '0');
END ARCHITECTURE untitled;

