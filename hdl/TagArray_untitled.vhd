--
-- VHDL Architecture ece411.TagArray.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-08.ews.illinois.edu)
--          at - 21:49:39 02/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY TagArray IS
   PORT( 
      Index     : IN     LC3b_C_Index;
      RESET_L   : IN     std_logic;
      TagOut    : OUT    LC3b_C_Tag;
      DataWrite : IN     std_logic;
      Tag       : IN     LC3b_C_Tag
   );

-- Declarations

END TagArray ;

--
ARCHITECTURE untitled OF TagArray IS
  TYPE TagArray IS array (7 downto 0) of LC3B_C_TAG;
  SIGNAL Data : TagArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        TagOut <= Data(DataIndex) after DELAY_256B;
    
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
      END IF;

      IF (DataWrite = '1') THEN
        Data(DataIndex) <= Tag;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

