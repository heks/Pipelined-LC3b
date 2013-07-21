--
-- VHDL Architecture ece411.Instr_splitter.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 09:35:43 03/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Instr_splitter IS
   PORT( 
      Instr     : IN     lc3b_word;
      JSR_R_SEL : OUT    std_logic;
      SR        : OUT    lc3b_reg;
      ShiftAD   : OUT    LC3B_SHFTOP;
      SrcA      : OUT    lc3b_reg;
      SrcB      : OUT    lc3b_reg;
      imm4      : OUT    lc3b_nibble;
      imm5      : OUT    lc3b_imm5;
      immSel    : OUT    std_logic;
      offset11  : OUT    lc3b_offset11;
      offset6   : OUT    lc3b_index6;
      offset9   : OUT    lc3b_offset9;
      opcode    : OUT    lc3b_opcode;
      trapvect8 : OUT    lc3b_trapvect8
   );

-- Declarations

END Instr_splitter ;

--
ARCHITECTURE untitled OF Instr_splitter IS
BEGIN
	OPCODE <= Instr(15 DOWNTO 12);
	SRCA <= Instr(8 DOWNTO 6);
	SRCB <= Instr(2 DOWNTO 0);
	
	SR <= Instr(11 DOWNTO 9); -- dest
	IMMSEL <= Instr(5);
	IMM5 <= Instr(4 DOWNTO 0);
	OFFSET6 <= Instr(5 DOWNTO 0);
	OFFSET9 <= Instr(8 DOWNTO 0);
	offset11 <= Instr(10 DOWNTO 0);
	TrapVect8 <= Instr(7 DOWNTO 0);
	imm4 <= Instr(3 DOWNTO 0);
	
	JSR_R_sel <= Instr(11);

	ShiftAD <= Instr(5 DOWNTO 4);
	
END ARCHITECTURE untitled;

