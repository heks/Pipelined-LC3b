--
-- VHDL Architecture ece411.DataArray.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-29.ews.illinois.edu)
--          at - 20:50:07 02/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY DataArray IS
   PORT( 
      DataIn    : IN     LC3b_oword;
      DataWrite : IN     std_logic;
      Index     : IN     LC3b_C_Index;
      RESET_L   : IN     std_logic;
      LineOut   : OUT    LC3b_oword
   );

-- Declarations

END DataArray ;

--
ARCHITECTURE untitled OF DataArray IS
  TYPE DataArray IS array (7 downto 0) of LC3B_OWORD;
  SIGNAL Data : DataArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        LineOut <= Data(DataIndex) after DELAY_256B;
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, Index, DataWrite, DataIn)
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
        Data(DataIndex) <= DataIn;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

