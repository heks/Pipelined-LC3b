--
-- VHDL Architecture ece411.grabmwrite.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-08.ews.illinois.edu)
--          at - 03:37:10 04/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY grabmwrite IS
   PORT( 
      CtrlWord : IN     Control_Word;
      mwrite0  : OUT    STD_LOGIC
   );

-- Declarations

END grabmwrite ;

--
ARCHITECTURE untitled OF grabmwrite IS
BEGIN
  mwrite0 <= CtrlWord.mem.mwriteH_L;
END ARCHITECTURE untitled;

