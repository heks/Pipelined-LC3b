--
-- VHDL Architecture ece411.Compare9.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-08.ews.illinois.edu)
--          at - 22:34:44 02/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY Compare9 IS
   PORT( 
      Tag      : IN     LC3b_C_Tag;
      TagOut   : IN     LC3b_C_Tag;
      TagEqual : OUT    std_logic
   );

-- Declarations

END Compare9 ;

--
ARCHITECTURE untitled OF Compare9 IS
BEGIN
  PROCESS (Tag, TagOut, TagEqual)
  VARIABLE Result : std_logic;
  BEGIN
    IF (Tag = TagOut) THEN
      Result := '1';
    ELSE
      Result := '0';
    END IF;
    TagEqual <= Result after DELAY_COMPARE16;
  END PROCESS;
END ARCHITECTURE untitled;

