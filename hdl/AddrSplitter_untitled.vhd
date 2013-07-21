--
-- VHDL Architecture ece411.AddrSplitter.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-06.ews.illinois.edu)
--          at - 12:04:45 02/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY AddrSplitter IS
   PORT( 
      ADDRESS        : IN     LC3b_word;
      AddrByteOffset : OUT    LC3b_C_BOffset;
      AddrIndex      : OUT    LC3b_C_Index;
      AddrTag        : OUT    LC3b_C_Tag;
      AddrWordOffset : OUT    LC3b_C_WOffset
   );

-- Declarations

END AddrSplitter ;

--
ARCHITECTURE untitled OF AddrSplitter IS
BEGIN
  PROCESS (ADDRESS)
  BEGIN
    AddrTag <= ADDRESS(15 DOWNTO 7);
    AddrIndex <= ADDRESS(6 DOWNTO 4);
    AddrWordOffset <= ADDRESS(3 DOWNTO 1);
    AddrByteOffset <= ADDRESS(3 DOWNTO 0);
  END PROCESS;
END ARCHITECTURE untitled;

