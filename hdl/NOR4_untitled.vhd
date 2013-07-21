--
-- VHDL Architecture ece411.NOR4.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-18.ews.illinois.edu)
--          at - 20:23:34 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NOR4 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      D : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END NOR4 ;

--
ARCHITECTURE untitled OF NOR4 IS
BEGIN
  process(A,B,C,D)
  begin
    F <= NOT(A OR B OR C OR D) after DELAY_LOGIC4;
  end process;
END ARCHITECTURE untitled;

