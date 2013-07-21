--
-- VHDL Architecture ece411.MEMcontrols.UNTITLED
--
-- Created:
--          by - rasinsk1.ews (gelib-057-31.ews.illinois.edu)
--          at - 22:25:40 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEMcontrols IS
   PORT( 
      CtrlWord     : IN     Control_Word;
      AddrSel      : OUT    std_logic;
      mwriteH_L    : OUT    std_logic;
      mwriteL_L    : OUT    std_logic;
      mread_L      : OUT    std_logic;
      isBR         : OUT    std_logic;
      OneStepMem   : OUT    std_logic;
      uncondBR     : OUT    std_logic;
      MemNotUsed   : OUT    std_logic;
      BrAddrSel    : OUT    std_logic;
      IndirectMem  : OUT    std_logic;
      MemForwardEn : OUT    std_logic;
      isSTB        : OUT    std_logic;
      RequestBaseR : OUT    std_logic;
      MEMChooseR7  : OUT    std_logic;
      writeBTB     : OUT    std_logic;
      isNOTaNOP    : OUT    std_logic
   );

-- Declarations

END MEMcontrols ;

--
ARCHITECTURE UNTITLED OF MEMcontrols IS
BEGIN
  AddrSel <= CtrlWord.mem.AddrSel;
  mwriteH_L <= CtrlWord.mem.mwriteH_l;
  mwriteL_L <= CtrlWord.mem.mwriteL_l;
  OneStepMem <= CtrlWord.mem.OneStepMem;
  MemNotUsed <= CtrlWord.mem.MemNotUsed;
  mread_L <= CtrlWord.mem.mread_l;
  isBR <= CtrlWord.mem.isBR;
  uncondBR <= CtrlWord.mem.uncondBR;
  BrAddrSel <= CtrlWord.mem.BrAddrSel;
  IndirectMem <= CtrlWord.mem.IndirectMem;
  MemForwardEn <= CtrlWord.mem.MemForwardEn;
  RequestBaseR <= CtrlWord.mem.RequestBaseR;
  writeBTB <= CtrlWord.mem.writeBTB;
  isNOTaNOP <= CtrlWord.mem.isNOTaNOP;
  MEMChooseR7 <= CtrlWord.wb.DestSel;
  isSTB <= CtrlWord.ex.isSTB;
  
END ARCHITECTURE UNTITLED;

