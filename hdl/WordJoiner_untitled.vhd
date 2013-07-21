--
-- VHDL Architecture ece411.WordJoiner.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-09.ews.illinois.edu)
--          at - 02:46:37 02/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY WordJoiner IS
   PORT( 
      OutWord0    : IN     LC3b_word;
      OutWord1    : IN     LC3b_word;
      OutWord2    : IN     LC3b_word;
      OutWord3    : IN     LC3b_word;
      OutWord4    : IN     LC3b_word;
      OutWord5    : IN     LC3b_word;
      OutWord6    : IN     LC3b_word;
      OutWord7    : IN     LC3b_word;
      WrittenLine : OUT    LC3b_OWord
   );

-- Declarations

END WordJoiner ;

--
ARCHITECTURE untitled OF WordJoiner IS
BEGIN
  WrittenLine <= OutWord7 & OutWord6 & OutWord5 & OutWord4 & OutWord3 & OutWord2 & OutWord1 & OutWord0;
END ARCHITECTURE untitled;

