--
-- VHDL Architecture ece411.ADJ11.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-19.ews.illinois.edu)
--          at - 18:42:49 02/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AExt11 IS
   PORT( 
      offset11 : IN     LC3b_offset11;
      ADJ11out : OUT    LC3b_word
   );

-- Declarations

END AExt11 ;

--
ARCHITECTURE untitled OF AExt11 IS
BEGIN
  	ADJ11out <= offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

