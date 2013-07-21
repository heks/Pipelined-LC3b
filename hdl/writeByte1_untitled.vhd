--
-- VHDL Architecture ece411.writeByte1.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-08.ews.illinois.edu)
--          at - 21:24:29 04/11/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY writeByte1 IS
   PORT( 
      Bwritel_l : OUT    std_logic;
      ALUout    : IN     lc3b_word
   );

-- Declarations

END writeByte1 ;

--
ARCHITECTURE untitled OF writeByte1 IS
BEGIN
  Bwritel_l <= ALUout(0);
END ARCHITECTURE untitled;

