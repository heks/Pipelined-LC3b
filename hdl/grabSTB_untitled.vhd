--
-- VHDL Architecture ece411.grabSTB.untitled
--
-- Created:
--          by - labelle1.ews (linux6.ews.illinois.edu)
--          at - 00:23:13 04/11/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY grabSTB IS
   PORT( 
      CtrlWord : IN     Control_Word;
      isSTB      : OUT    std_logic
   );

-- Declarations

END grabSTB ;

--
ARCHITECTURE untitled OF grabSTB IS
BEGIN
  isSTB <= CtrlWord.ex.isSTB;
END ARCHITECTURE untitled;

