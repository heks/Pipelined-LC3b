--
-- VHDL Architecture ece411.Or2.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 18:30:41 02/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY Or2 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END Or2 ;

--
ARCHITECTURE untitled OF Or2 IS
BEGIN
  PROCESS (A, B)
  BEGIN
    F <= (A OR B) after DELAY_LOGIC2;
  END PROCESS;
END ARCHITECTURE untitled;

