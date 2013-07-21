--
-- VHDL Architecture ece411.bit3_reg.untitled
--
-- Created:
--          by - rasinsk1.ews (linux7.ews.illinois.edu)
--          at - 20:34:46 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY bit3_reg IS
   PORT( 
      clk    : IN     std_logic;
      input  : IN     lc3b_reg;
      ld     : IN     std_logic;
      output : IN     lc3b_reg;
      reset  : IN     std_logic
   );

-- Declarations

END bit3_reg ;
