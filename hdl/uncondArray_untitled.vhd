--
-- VHDL Architecture ece411.uncondArray.untitled
--
-- Created:
--          by - labelle1.ews (siebl-0220-20.ews.illinois.edu)
--          at - 23:18:33 04/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY uncondArray IS
   PORT( 
      DataWrite     : IN     std_logic;
      uncond_in     : IN     std_logic;
      Index         : IN     LC3b_byte;
      RESET_L       : IN     std_logic;
      unconditional : OUT    std_logic
   );

END ENTITY uncondArray;

--
ARCHITECTURE untitled OF uncondArray IS
  TYPE uncondArray IS array (255 downto 0) of std_logic;
  SIGNAL Data : uncondArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
        unconditional <= Data(DataIndex) after DELAY_1KB;
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, Index, DataWrite)
    -------------------------------------------------------  ------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(Index));
      IF RESET_L = '0' THEN
        Data <= (others => '0');
      END IF;

      IF (DataWrite = '1') THEN
        Data(DataIndex) <= uncond_in;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

