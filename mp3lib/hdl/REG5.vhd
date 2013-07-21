--
-- VHDL Entity mp3lib.REG5.arch_name
--
-- Created:
--          by - rasinsk1.ews (linux5.ews.illinois.edu)
--          at - 22:02:27 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY REG5 IS
   PORT( 
      A       : IN     lc3b_imm5;
      clk     : IN     std_logic;
      en      : IN     std_logic;
      reset_l : IN     std_logic;
      F       : OUT    lc3b_imm5
   );

-- Declarations

END REG5 ;

