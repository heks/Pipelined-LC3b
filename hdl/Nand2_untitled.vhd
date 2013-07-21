--
-- VHDL Architecture ece411.Nand2.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-09.ews.illinois.edu)
--          at - 23:22:25 02/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY Nand2 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END Nand2 ;

--
ARCHITECTURE untitled OF Nand2 IS
BEGIN
  PROCESS (A, B)
  BEGIN
    F <= (NOT (A AND B)) after DELAY_LOGIC2;
  END PROCESS;
END ARCHITECTURE untitled;

