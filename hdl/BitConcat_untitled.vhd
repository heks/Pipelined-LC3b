--
-- VHDL Architecture ece411.BitConcat.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-09.ews.illinois.edu)
--          at - 02:15:04 02/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY BitConcat IS
   PORT( 
      High         : IN     std_logic;
      Low          : IN     std_logic;
      WordSelector : OUT    LC3b_4mux_sel
   );

-- Declarations

END BitConcat ;

--
ARCHITECTURE untitled OF BitConcat IS
BEGIN
  WordSelector <= High & Low;
END ARCHITECTURE untitled;

