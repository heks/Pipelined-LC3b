--
-- VHDL Architecture ece411.indexMaker.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-20.ews.illinois.edu)
--          at - 23:51:36 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY indexMaker IS
   PORT( 
     PC_in      : IN LC3B_WORD;
     INDEX_out  : OUT LC3B_BYTE
   );
END ENTITY indexMaker;

--
ARCHITECTURE untitled OF indexMaker IS
BEGIN
  INDEX_out <= PC_in(8 downto 1);
END ARCHITECTURE untitled;

