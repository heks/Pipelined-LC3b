--
-- VHDL Architecture ece411.ptgrabber.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-20.ews.illinois.edu)
--          at - 00:23:52 04/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ptgrabber IS
   PORT( 
      BHT_old   : IN     std_logic_vector (1 DOWNTO 0);
      BHT_Taken : OUT    std_logic
   );

-- Declarations

END ptgrabber ;

--
ARCHITECTURE untitled OF ptgrabber IS
BEGIN
  BHT_Taken <= BHT_old(1);
END ARCHITECTURE untitled;

