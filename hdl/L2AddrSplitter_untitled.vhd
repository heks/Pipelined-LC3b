--
-- VHDL Architecture ece411.L2AddrSplitter.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-19.ews.illinois.edu)
--          at - 22:55:59 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY L2AddrSplitter IS
   PORT( 
      Address : IN     LC3b_word;
      Index   : OUT    LC3b_L2_index;
      Tag     : OUT    LC3b_L2_tag
   );

-- Declarations

END L2AddrSplitter ;

--
ARCHITECTURE untitled OF L2AddrSplitter IS
BEGIN
  Tag <= Address(15 DOWNTO 8);
  Index <= Address(7 DOWNTO 4);
END ARCHITECTURE untitled;

