--
-- VHDL Architecture ece411.BHTArray.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-20.ews.illinois.edu)
--          at - 23:28:02 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY BHTArray IS
   PORT( 
      DataIn    : IN     std_logic_vector(1 downto 0);
      DataWrite : IN     std_logic;
      Index     : IN     LC3b_byte;
      RESET_L   : IN     std_logic;
      LineOut   : OUT    std_logic_vector(1 downto 0)
      );
END ENTITY BHTArray;

--
ARCHITECTURE untitled OF BHTArray IS
  TYPE DataArray IS array (255 downto 0) of std_logic_vector(1 downto 0);
  SIGNAL Data : DataArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        LineOut <= Data(DataIndex) after DELAY_1KB;
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, Index, DataWrite, DataIn)
    -------------------------------------------------------  ------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
      IF RESET_L = '0' THEN
        Data <= (OTHERS => "10");
      END IF;

      IF (DataWrite = '1') THEN
        Data(DataIndex) <= DataIn;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

