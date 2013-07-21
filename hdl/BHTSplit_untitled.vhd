--
-- VHDL Architecture ece411.BHTSplit.untitled
--
-- Created:
--          by - labelle1.ews (evrt-252-30.ews.illinois.edu)
--          at - 21:12:48 04/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY BHTSplit IS
   PORT( 
      BHTold : IN     std_logic_vector (1 DOWNTO 0);
      BHT_0  : OUT    std_logic;
      BHT_1  : OUT    std_logic
   );

-- Declarations

END BHTSplit ;

--
ARCHITECTURE untitled OF BHTSplit IS
BEGIN
  BHT_0 <= BHTold(0);
  BHT_1 <= BHTold(1);
END ARCHITECTURE untitled;

