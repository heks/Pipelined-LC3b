--
-- VHDL Architecture ece411.And3.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-09.ews.illinois.edu)
--          at - 23:28:03 02/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY And3 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END And3 ;

--
ARCHITECTURE untitled OF And3 IS
BEGIN
  PROCESS (A, B, C)
  BEGIN
    F <= (A AND B AND C) after DELAY_LOGIC4;
  END PROCESS;
END ARCHITECTURE untitled;

