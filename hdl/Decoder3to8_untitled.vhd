--
-- VHDL Architecture ece411.Decoder3to8.untitled
--
-- Created:
--          by - hinz1.ews (siebl-0220-09.ews.illinois.edu)
--          at - 01:30:05 02/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY Decoder3to8 IS
   PORT( 
      Input : IN     LC3b_3Decode;
      Out0  : OUT    std_logic;
      Out1  : OUT    std_logic;
      Out2  : OUT    std_logic;
      Out3  : OUT    std_logic;
      Out4  : OUT    std_logic;
      Out5  : OUT    std_logic;
      Out6  : OUT    std_logic;
      Out7  : OUT    std_logic
   );

-- Declarations

END Decoder3to8 ;

--
ARCHITECTURE untitled OF Decoder3to8 IS
BEGIN
  PROCESS (Input)
    variable state : LC3b_byte;
  BEGIN
    case Input is
      when "000" =>
        state := "00000001";
      when "001" =>
        state := "00000010";
      when "010" =>
        state := "00000100";
      when "011" =>
        state := "00001000";
      when "100" =>
        state := "00010000";
      when "101" =>
        state := "00100000";
      when "110" =>
        state := "01000000";
      when "111" =>
        state := "10000000";
      when others =>
        state := "XXXXXXXX";
    end case;
    Out0 <= state(0) after DELAY_DECODE3;
    Out1 <= state(1) after DELAY_DECODE3;
    Out2 <= state(2) after DELAY_DECODE3;
    Out3 <= state(3) after DELAY_DECODE3;
    Out4 <= state(4) after DELAY_DECODE3;
    Out5 <= state(5) after DELAY_DECODE3;
    Out6 <= state(6) after DELAY_DECODE3;
    Out7 <= state(7) after DELAY_DECODE3;
  END PROCESS;
END ARCHITECTURE untitled;

