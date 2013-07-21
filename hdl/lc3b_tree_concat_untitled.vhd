--
-- VHDL Architecture ece411.lc3b_tree_concat.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-18.ews.illinois.edu)
--          at - 20:08:20 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY lc3b_tree_concat IS
   PORT( 
      bit0    : IN     std_logic;
      bit1    : IN     std_logic;
      bit2    : IN     std_logic;
      bit3    : IN     std_logic;
      bit4    : IN     std_logic;
      bit5    : IN     std_logic;
      bit6    : IN     std_logic;
      dataout : OUT    lc3b_tree
   );

-- Declarations

END lc3b_tree_concat ;

--
ARCHITECTURE untitled OF lc3b_tree_concat IS
BEGIN
  process(bit0,bit1,bit2,bit3,bit4,bit5,bit6)
  begin
    dataout <= bit6 & bit5 & bit4 & bit3 & bit2 & bit1 & bit0;
  end process;
END ARCHITECTURE untitled;

