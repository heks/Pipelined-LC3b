--
-- VHDL Architecture ece411.BitMux2.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-02.ews.illinois.edu)
--          at - 20:34:27 02/25/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY BitMux2 IS
   PORT( 
      A   : IN     std_logic;
      B   : IN     std_logic;
      Sel : IN     std_logic;
      F   : OUT    std_logic
   );

-- Declarations

END BitMux2 ;

--
ARCHITECTURE untitled OF BitMux2 IS
BEGIN
  PROCESS (A, B, Sel)
    variable state : std_logic;
  BEGIN
    case Sel is
      when '0' =>
        state := A;
      when '1' =>
        state := B;
      when others =>
        state := 'X';
    end case;
    F <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

