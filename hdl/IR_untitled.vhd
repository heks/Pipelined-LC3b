--
-- VHDL Architecture ece411.IR.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 13:07:25 01/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IR IS
   PORT( 
      LoadIr    : IN     std_logic;
      MDROut    : IN     LC3b_word;
      clk       : IN     std_logic;
      Opcode    : OUT    LC3b_opcode;
      SrcA      : OUT    LC3b_reg;
      SrcB      : OUT    LC3b_reg;
      ImmSel    : OUT    std_logic;
      imm5      : OUT    LC3b_imm5;
      index6    : OUT    LC3b_index6;
      offset9   : OUT    LC3b_offset9;
      dest      : OUT    LC3b_reg;
      offset11  : OUT    LC3b_offset11;
      JSR_R_sel : OUT    std_logic;
      TrapVect8 : OUT    LC3b_trapvect8;
      imm4      : OUT    LC3b_nibble;
      ShiftAD   : OUT    LC3b_shftop
   );

-- Declarations

END IR ;

--
ARCHITECTURE UNTITLED OF IR IS
SIGNAL VAL_IR : LC3B_WORD;
BEGIN
	------------------------------
	VHDL_REG_IR : PROCESS (CLK, LOADIR, MDROUT)
	------------------------------
	BEGIN
		IF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
			IF (LOADIR = '1') THEN
				VAL_IR <= MDROUT AFTER DELAY_REG;
			END IF;
		END IF;
	END PROCESS VHDL_REG_IR;
	OPCODE <= VAL_IR(15 DOWNTO 12);
	SRCA <= VAL_IR(8 DOWNTO 6);
	SRCB <= VAL_IR(2 DOWNTO 0);
	DEST <= VAL_IR(11 DOWNTO 9);
	IMMSEL <= VAL_IR(5);
	IMM5 <= VAL_IR(4 DOWNTO 0);
	INDEX6 <= VAL_IR(5 DOWNTO 0);
	OFFSET9 <= VAL_IR(8 DOWNTO 0);
	JSR_R_sel <= VAL_IR(11);
	offset11 <= VAL_IR(10 DOWNTO 0);
	TrapVect8 <= VAL_IR(7 DOWNTO 0);
	imm4 <= VAL_IR(3 DOWNTO 0);
	ShiftAD <= VAL_IR(5 DOWNTO 4);
END UNTITLED;
