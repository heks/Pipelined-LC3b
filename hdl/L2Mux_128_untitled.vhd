--
-- VHDL Architecture ece411.L2Mux_128.untitled
--
-- Created:
--          by - rasinsk1.ews (siebl-0220-18.ews.illinois.edu)
--          at - 01:27:14 04/24/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2Mux_128 IS
   PORT( 
      In0    : IN     lc3b_oword;
      In1    : IN     lc3b_oword;
      In2    : IN     lc3b_oword;
      In3    : IN     lc3b_oword;
      In4    : IN     lc3b_oword;
      In5    : IN     lc3b_oword;
      In6    : IN     lc3b_oword;
      In7    : IN     lc3b_oword;
      s0     : IN     std_logic;
      s1     : IN     std_logic;
      s2     : IN     std_logic;
      s3     : IN     std_logic;
      s4     : IN     std_logic;
      s5     : IN     std_logic;
      s6     : IN     std_logic;
      s7     : IN     std_logic;
      Output : OUT    lc3b_oword
   );

-- Declarations

END L2Mux_128 ;

--
ARCHITECTURE untitled OF L2Mux_128 IS
BEGIN
	PROCESS(In0, In1, In2, In3, In4, In5, In6, In7, S0, S1, S2, S3, S4, S5, S6, S7)
  VARIABLE TEMP : LC3B_OWORD;
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

