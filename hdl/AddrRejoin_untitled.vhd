--
-- VHDL Architecture ece411.AddrRejoin.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-23.ews.illinois.edu)
--          at - 11:56:58 03/01/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY AddrRejoin IS
   PORT( 
      Index       : IN     LC3b_C_Index;
      Tag         : IN     LC3b_C_Tag;
      LineAddress : OUT    LC3b_Word
   );

-- Declarations

END AddrRejoin ;

--
ARCHITECTURE untitled OF AddrRejoin IS
BEGIN
  LineAddress <= Tag & Index & "0000";
END ARCHITECTURE untitled;

