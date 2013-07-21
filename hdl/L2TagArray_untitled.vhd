--
-- VHDL Architecture ece411.L2TagArray.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-18.ews.illinois.edu)
--          at - 22:18:48 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2TagArray IS
   PORT( 
      Tag       : IN     LC3b_L2_Tag;
      Index     : IN     LC3b_L2_index;
      RESET_L   : IN     std_logic;
      DataWrite : IN     std_logic;
      TagOut    : OUT    LC3b_L2_Tag
   );

-- Declarations

END L2TagArray ;

--
ARCHITECTURE untitled OF L2TagArray IS
  TYPE L2TagArray IS array (15 downto 0) of LC3B_L2_TAG;
  SIGNAL Data : L2TagArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        TagOut <= Data(DataIndex) after DELAY_4KB;
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, Index, DataWrite)
    -------------------------------------------------------  ------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
      IF RESET_L = '0' THEN
        Data(0) <= (OTHERS => 'X');
        Data(1) <= (OTHERS => 'X');
        Data(2) <= (OTHERS => 'X');
        Data(3) <= (OTHERS => 'X');
        Data(4) <= (OTHERS => 'X');
        Data(5) <= (OTHERS => 'X');
        Data(6) <= (OTHERS => 'X');
        Data(7) <= (OTHERS => 'X');
        Data(8) <= (OTHERS => 'X');
        Data(9) <= (OTHERS => 'X');
        Data(10) <= (OTHERS => 'X');
        Data(11) <= (OTHERS => 'X');
        Data(12) <= (OTHERS => 'X');
        Data(13) <= (OTHERS => 'X');
        Data(14) <= (OTHERS => 'X');
        Data(15) <= (OTHERS => 'X');
      END IF;

      IF (DataWrite = '1') THEN
        Data(DataIndex) <= Tag;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

