--
-- VHDL Architecture ece411.WBcontrols.UNTITLED
--
-- Created:
--          by - rasinsk1.ews (gelib-057-31.ews.illinois.edu)
--          at - 22:36:38 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WBcontrols IS
   PORT( 
      CtrlWord : IN     Control_Word;
      DestSel  : OUT    std_logic;
      MemArSel : OUT    LC3b_4Mux_Sel;
      SetCC    : OUT    std_logic;
      ld_Reg   : OUT    std_logic;
      WBForwardEn : OUT std_logic;
      WBChooseR7  : OUT std_logic
   );

-- Declarations

END WBcontrols ;

--
ARCHITECTURE UNTITLED OF WBcontrols IS
BEGIN
    SetCC <= CtrlWord.wb.setCC;
	  MemArSel <= CtrlWord.wb.MemArSel;
    ld_Reg <= CtrlWord.wb.ld_Reg;
    DestSel <= CtrlWord.wb.DestSel;
    WBForwardEn <= CtrlWord.wb.WBForwardEn;
    WBChooseR7 <= CtrlWord.wb.DestSel;
END ARCHITECTURE UNTITLED;

