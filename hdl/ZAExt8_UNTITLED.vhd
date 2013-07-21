--
-- VHDL Architecture ece411.ZADJ8.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-29.ews.illinois.edu)
--          at - 01:40:05 02/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZAExt8 IS
   PORT( 
      TrapVect8 : IN     LC3b_trapvect8;
      TrapAddr  : OUT    LC3b_word
   );

-- Declarations

END ZAExt8 ;

--
ARCHITECTURE untitled OF ZAExt8 IS
BEGIN
  TrapAddr <= "0000000" & TrapVect8 & '0';
END ARCHITECTURE untitled;

