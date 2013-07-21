--
-- VHDL Architecture ece411.writeByte.untitled
--
-- Created:
--          by - labelle1.ews (linux6.ews.illinois.edu)
--          at - 00:09:05 04/11/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY writeByte IS
   PORT( 
      DataAddress : IN     lc3b_word;
      Bwritel_l   : OUT    std_logic
   );

-- Declarations

END writeByte ;

--
ARCHITECTURE untitled OF writeByte IS
BEGIN
  Bwritel_l <= DataAddress(0);
END ARCHITECTURE untitled;

