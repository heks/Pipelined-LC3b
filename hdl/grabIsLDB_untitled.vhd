--
-- VHDL Architecture ece411.grabIsLDB.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-08.ews.illinois.edu)
--          at - 00:39:45 04/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY grabIsLDB IS
   PORT( 
      CntrlWord : IN     Control_Word;
      isLDB : OUT std_logic
   );

-- Declarations

END grabIsLDB ;

--
ARCHITECTURE untitled OF grabIsLDB IS
BEGIN
  isLDB<=CntrlWord.wb.isLDB;
END ARCHITECTURE untitled;

