--
-- VHDL Architecture ece411.LRUArray.untitled
--
-- Created:
--          by - hinz1.ews (linux5.ews.illinois.edu)
--          at - 02:09:41 02/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY LRUArray IS
   PORT( 
      Hit0      : IN     std_logic;
      RESET_L   : IN     std_logic;
      LRUout    : OUT    std_logic;
      AddrIndex : IN     LC3b_C_Index;
      LRUwrite  : IN     std_logic
   );

-- Declarations

END LRUArray ;

--
ARCHITECTURE untitled OF LRUArray IS
  TYPE LRUArray IS array (7 downto 0) of std_logic;
  SIGNAL Data : LRUArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, AddrIndex)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(AddrIndex));
        LRUout <= Data(DataIndex) after DELAY_256B;
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, AddrIndex, LRUwrite, Hit0)
    --------------------------------------------------------------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(AddrIndex));
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

      IF (LRUwrite = '1') THEN
        Data(DataIndex) <= Hit0;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

