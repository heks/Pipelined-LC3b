--
-- VHDL Architecture ece411.And4.untitled
--
-- Created:
--          by - hinz1.ews (linux5.ews.illinois.edu)
--          at - 14:47:30 02/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY And4 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      D : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END And4 ;

--
ARCHITECTURE untitled OF And4 IS
BEGIN
  PROCESS (A, B, C, D)
  BEGIN
    F <= (A AND B AND C AND D) after DELAY_LOGIC4;
  END PROCESS;
END ARCHITECTURE untitled;

