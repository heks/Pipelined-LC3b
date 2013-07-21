--
-- VHDL Architecture ece411.BHTCombo.untitled
--
-- Created:
--          by - labelle1.ews (evrt-252-30.ews.illinois.edu)
--          at - 21:28:35 04/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY BHTCombo IS
   PORT( 
      newBHT_0 : IN     STD_LOGIC;
      newBHT_1 : IN     STD_LOGIC;
      BHTnew   : OUT    std_logic_vector (1 DOWNTO 0)
   );

-- Declarations

END BHTCombo ;

--
ARCHITECTURE untitled OF BHTCombo IS
BEGIN
  BHTnew(0) <= newBHT_0;
  BHTnew(1) <= newBHT_1;
END ARCHITECTURE untitled;

