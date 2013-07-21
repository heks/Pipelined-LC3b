--
-- VHDL Architecture ece411.JKFlipFlop.untitled
--
-- Created:
--          by - labelle1.ews (evrt-252-27.ews.illinois.edu)
--          at - 15:11:26 04/19/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY JKFlipFlop IS
   PORT( 
      J    : IN     std_logic;
      K   : IN     std_logic;
      clk: IN     std_logic;
      Q    : OUT    std_logic;
      Qbar : OUT    std_logic
   );
END ENTITY JKFlipFlop;

--
ARCHITECTURE untitled OF JKFlipFlop IS
BEGIN
	JKFF: PROCESS(J,K, Clk)
	VARIABLE STATE : std_logic;
	BEGIN
	  IF(CLK = '1' AND CLK'EVENT) THEN 
	    IF(J='0' AND K='0') THEN
	      STATE:=STATE;
	    ELSIF(J='0' AND K='1') THEN
      --IF(J='0' AND K='1') THEN
	      STATE:='0';
	    ELSIF(J='1' AND K='0') THEN
	      STATE:='1';
	    ELSIF(J='1' AND K='1') THEN
	      STATE:=NOT(STATE);
	    END IF;
		END IF;
		Q <= STATE AFTER 4 NS;
		Qbar <= not(STATE) AFTER 4 NS;
	END PROCESS JKFF;
END ARCHITECTURE untitled;

