--
-- VHDL Architecture ece411.validArrayBTB.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-20.ews.illinois.edu)
--          at - 22:58:49 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY validArrayBTB IS
   PORT( 
      DataWrite : IN     std_logic;
      Index     : IN     LC3b_byte;
      ValidOut  : OUT    std_logic;
      RESET_L   : IN     std_logic
   );

END ENTITY validArrayBTB;

--
ARCHITECTURE untitled OF validArrayBTB IS
  TYPE ValidArray IS array (255 downto 0) of std_logic;
  SIGNAL Data : ValidArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        ValidOut <= Data(DataIndex) after DELAY_1KB;
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, Index, DataWrite)
    -------------------------------------------------------  ------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
      IF RESET_L = '0' THEN
        Data(255 downto 0) <= (others => '0');
      END IF;

      IF (DataWrite = '1') THEN
        Data(DataIndex) <= '1';
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

