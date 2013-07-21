--
-- VHDL Architecture ece411.ValidArray.untitled
--
-- Created:
--          by - hinz1.ews (evrt-252-13.ews.illinois.edu)
--          at - 16:25:53 02/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY ValidArray IS
   PORT( 
      DataWrite : IN     std_logic;
      Index     : IN     LC3b_C_Index;
      ValidOut  : OUT    std_logic;
      RESET_L   : IN     std_logic
   );

-- Declarations

END ValidArray ;

--
ARCHITECTURE untitled OF ValidArray IS
  TYPE ValidArray IS array (7 downto 0) of std_logic;
  SIGNAL Data : ValidArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        ValidOut <= Data(DataIndex) after DELAY_256B;
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, Index, DataWrite)
    -------------------------------------------------------  ------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
      IF RESET_L = '0' THEN
        Data(0) <= '0';
        Data(1) <= '0';
        Data(2) <= '0';
        Data(3) <= '0';
        Data(4) <= '0';
        Data(5) <= '0';
        Data(6) <= '0';
        Data(7) <= '0';
      END IF;

      IF (DataWrite = '1') THEN
        Data(DataIndex) <= '1';
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

