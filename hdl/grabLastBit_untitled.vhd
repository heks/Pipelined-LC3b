--
-- VHDL Architecture ece411.grabLastBit.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-08.ews.illinois.edu)
--          at - 23:43:10 04/11/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY grabLastBit IS
   PORT( 
      DataAddress : IN     lc3b_word;
      ldbByteToLoad        : OUT    std_logic
   );

-- Declarations

END grabLastBit ;

--
ARCHITECTURE untitled OF grabLastBit IS
BEGIN
  ldbByteToLoad<= DataAddress(0);
END ARCHITECTURE untitled;

