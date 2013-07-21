--
-- VHDL Architecture ece411.LRU_L2_DataArray.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-16.ews.illinois.edu)
--          at - 01:41:47 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LRU_L2_DataArray IS
   PORT( 
      AddrIndex : IN     lc3b_c_index;
      datain   : IN     lc3b_tree;
      reset_l  : IN     std_logic;
      write    : IN     std_logic;
      dataout  : OUT    lc3b_tree
   );

-- Declarations

END LRU_L2_DataArray ;

--
ARCHITECTURE untitled OF LRU_L2_DataArray IS
  TYPE LRUArray IS array (7 downto 0) of lc3b_tree;
  SIGNAL Data : LRUArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, AddrIndex)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(AddrIndex));
        dataout <= Data(DataIndex) after DELAY_4KB;  -- not sure what the delay should be here
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, AddrIndex, write, datain)
    --------------------------------------------------------------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(AddrIndex));
      IF RESET_L = '0' THEN
        Data(0) <= "0000000";
        Data(1) <= "0000000";
        Data(2) <= "0000000";
        Data(3) <= "0000000";
        Data(4) <= "0000000";
        Data(5) <= "0000000";
        Data(6) <= "0000000";
        Data(7) <= "0000000";
      END IF;

      IF (write = '1') THEN
        Data(DataIndex) <= datain;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

