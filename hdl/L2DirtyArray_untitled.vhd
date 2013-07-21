--
-- VHDL Architecture ece411.L2DirtyArray.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-18.ews.illinois.edu)
--          at - 22:17:22 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2DirtyArray IS
   PORT( 
      DataWrite : IN     std_logic;
      Dirtify   : IN     std_logic;
      Index     : IN     LC3b_L2_index;
      RESET_L   : IN     std_logic;
      Dirty     : OUT    std_logic
   );

-- Declarations

END L2DirtyArray ;

--
ARCHITECTURE untitled OF L2DirtyArray IS
  TYPE L2DirtyArray IS array (15 downto 0) of std_logic;
  SIGNAL Data : L2DirtyArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        Dirty <= Data(DataIndex) after DELAY_4KB;
    
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
        Data(8) <= '0';
        Data(9) <= '0';
        Data(10) <= '0';
        Data(11) <= '0';
        Data(12) <= '0';
        Data(13) <= '0';
        Data(14) <= '0';
        Data(15) <= '0';
      END IF;

      IF (DataWrite = '1') THEN
        Data(DataIndex) <= '1';
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

