--
-- VHDL Architecture ece411.bit_splitter.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-16.ews.illinois.edu)
--          at - 01:59:41 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY bit_splitter IS
   PORT( 
      LRUdataout : IN     lc3b_tree;
      LRUdataout0 : OUT   std_logic;
      LRUdataout1 : OUT   std_logic;
      LRUdataout2 : OUT   std_logic;
      LRUdataout3 : OUT   std_logic;
      LRUdataout4 : OUT   std_logic;
      LRUdataout5 : OUT   std_logic;
      LRUdataout6 : OUT   std_logic
   );

-- Declarations

END bit_splitter ;

--
ARCHITECTURE untitled OF bit_splitter IS
BEGIN
  process(LRUdataout)
  begin
  LRUdataout0 <= LRUdataout(0);
  LRUdataout1 <= LRUdataout(1);
  LRUdataout2 <= LRUdataout(2);
  LRUdataout3 <= LRUdataout(3);
  LRUdataout4 <= LRUdataout(4);
  LRUdataout5 <= LRUdataout(5);
  LRUdataout6 <= LRUdataout(6);
  end process;
END ARCHITECTURE untitled;

