--
-- VHDL Architecture ece411.And2.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-08.ews.illinois.edu)
--          at - 22:22:56 02/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY And2 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END And2 ;

--
ARCHITECTURE untitled OF And2 IS
BEGIN
  PROCESS (A, B)
  BEGIN
    F <= (A AND B) after DELAY_LOGIC2;
  END PROCESS;
END ARCHITECTURE untitled;

