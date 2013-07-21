--
-- VHDL Architecture ece411.EXcontrols.UNTITLED
--
-- Created:
--          by - rasinsk1.ews (gelib-057-31.ews.illinois.edu)
--          at - 21:47:00 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY EXcontrols IS
   PORT( 
      CtrlWord : IN     Control_Word;
      ALUSel1  : OUT    lc3b_4Mux_Sel;
      ALUSel2  : OUT    std_logic;
      ALUop    : OUT    lc3b_aluop;
      OffSel   : OUT    lc3b_4Mux_Sel;
      PCOffSel : OUT    std_logic;
      isSTB    : OUT    std_logic;
      MWrite   : OUT    std_logic;
      NeedsOp  : OUT    std_logic;
      HasOp2   : OUT    std_logic
   );

-- Declarations

END EXcontrols ;

--
ARCHITECTURE UNTITLED OF EXcontrols IS
BEGIN
  ALUSel2 <= CtrlWord.ex.ALUSel2;
  ALUSel1 <= CtrlWord.ex.ALUSel1;
  ALUop <= CtrlWord.ex.ALUop;
  OffSel <= CtrlWord.ex.OffSel;
  PCOffSel <= CtrlWord.ex.PCOffSel;
  isSTB <= CtrlWord.ex.isSTB;
  MWrite <= CtrlWord.mem.mwriteH_L;
  NeedsOp <= CtrlWord.ex.ExNeedsOp;
  HasOp2 <= CtrlWord.ex.HasOp2;
END ARCHITECTURE UNTITLED;

