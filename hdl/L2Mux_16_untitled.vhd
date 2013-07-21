--
-- VHDL Architecture ece411.L2Mux_16.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-19.ews.illinois.edu)
--          at - 00:25:26 04/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY L2Mux_16 IS
   PORT( 
      In0    : IN     LC3b_word;
      In1    : IN     LC3b_word;
      In2    : IN     LC3b_word;
      In3    : IN     LC3b_word;
      In4    : IN     LC3b_word;
      In5    : IN     LC3b_word;
      In6    : IN     LC3b_word;
      In7    : IN     LC3b_word;
      S0     : IN     std_logic;
      S1     : IN     std_logic;
      S2     : IN     std_logic;
      S3     : IN     std_logic;
      S4     : IN     std_logic;
      S5     : IN     std_logic;
      S6     : IN     std_logic;
      S7     : IN     std_logic;
      Output : OUT    LC3b_word
   );

-- Declarations

END L2Mux_16 ;

--
ARCHITECTURE untitled OF L2Mux_16 IS
BEGIN
	PROCESS(In0, In1, In2, In3, In4, In5, In6, In7, S0, S1, S2, S3, S4, S5, S6, S7)
  VARIABLE TEMP : LC3B_WORD;
	BEGIN
	  TEMP := (others => '0');
		IF (S0 = '1') THEN
			TEMP := (TEMP OR In0);
		END IF;
		IF (S1 = '1') THEN
			TEMP := (TEMP OR In1);
		END IF;
		IF (S2 = '1') THEN
			TEMP := (TEMP OR In2);
		END IF;
		IF (S3 = '1') THEN
			TEMP := (TEMP OR In3);
		END IF;
		IF (S4 = '1') THEN
			TEMP := (TEMP OR In4);
		END IF;
		IF (S5 = '1') THEN
			TEMP := (TEMP OR In5);
		END IF;
		IF (S6 = '1') THEN
			TEMP := (TEMP OR In6);
		END IF;
		IF (S7 = '1') THEN
			TEMP := (TEMP OR In7);
		END IF;
		Output <= TEMP after 4 ns;
	END PROCESS;
END ARCHITECTURE untitled;

