--
-- VHDL Architecture ece411.IDControls.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-32.ews.illinois.edu)
--          at - 20:49:23 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY IDControls IS
   PORT( 
      CtrlWord : IN     Control_Word;
      SelB     : OUT    std_logic
   );

-- Declarations

END IDControls ;

--
ARCHITECTURE untitled OF IDControls IS
BEGIN
  SelB <= CtrlWord.id.SelB;
END ARCHITECTURE untitled;

