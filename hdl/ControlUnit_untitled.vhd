--
-- VHDL Architecture ece411.ControlUnit.untitled
--
-- Created:
--          by - hinz1.ews (gelib-057-32.ews.illinois.edu)
--          at - 20:01:51 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY ControlUnit IS
   PORT( 
      Opcode      : IN     LC3b_opcode;
      ShiftAD     : IN     LC3B_SHFTOP;
      JSR_R_SEL   : IN     std_logic;
      ControlWord : OUT    Control_Word
   );

-- Declarations

END ControlUnit ;

--
ARCHITECTURE untitled OF ControlUnit IS
BEGIN
  PROCESS (OPCODE, ShiftAD, JSR_R_SEL)
    variable outputWord : Control_Word;
    
  BEGIN
    outputWord.ex.isSTB := '0';
    outputWord.wb.isLDB := '0';
    outputWord.mem.uncondBR := '0';
    outputWord.mem.IndirectMem := '0';
    outputWord.mem.writeBTB := '0';
    outputWord.mem.isNOTaNOP := '1';
    case Opcode is
      when OP_ADD =>
        -- ID signals
        outputWord.id.SelB := '0';
        -- EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '0';
        outputWord.ex.ALUop := ALU_ADD;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '1';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '1';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "00";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '1';
        --NAME
        outputWord.name := name_ADD;

      when OP_AND =>
        -- ID signals
        outputWord.id.SelB := '0';
        -- EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '0';
        outputWord.ex.ALUop := ALU_AND;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '1';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '1';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "00";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '1';
        --NAME
        outputWord.name := name_AND;

      when OP_BR =>
        --ID signals
        outputWord.id.SelB := '1';
        -- EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := '1';
        outputWord.ex.ALUSel1 := "01";
        outputWord.ex.ALUSel2 := 'X';
        outputWord.ex.ALUop := ALU_PASS;
        outputWord.ex.ExNeedsOp := '0';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '1';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := '0';
        outputWord.mem.MemForwardEn := '0';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        outputWord.mem.writeBTB := '1';
        --WB signals
        outputWord.wb.setCC := '0';
        outputWord.wb.memArSel := "XX";
        outputWord.wb.ld_Reg := '0';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '0';
        --NAME
        outputWord.name := name_br;

      when OP_JMP =>
        --ID signals
        outputWord.id.SelB := 'X';
        --EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := 'X';
        outputWord.ex.ALUop := ALU_PASS;
        outputWord.ex.isSTB := '0';
        outputWord.ex.ExNeedsOp := '0';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.uncondBR := '1';
        outputWord.mem.BrAddrSel := '0';
        outputWord.mem.MemForwardEn := '0';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '1';
        outputWord.mem.writeBTB := '1';
        --WB signals
        outputWord.wb.setCC := '0';
        outputWord.wb.memArSel := "XX";
        outputWord.wb.ld_Reg := '0';
        outputWord.wb.DestSel := '0';
        outputWord.wb.isLDB := '0';
        outputWord.wb.WBForwardEn := '0';
        --NAME
        outputWord.name := name_jmp;

      when OP_JSR =>
        -- ID signals
        outputWord.id.SelB := 'X';
        -- EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := '0';
        outputWord.ex.ALUSel1 := '0' & JSR_R_SEL;
        outputWord.ex.ALUSel2 := 'X';
        outputWord.ex.ALUop := ALU_PASS;
        outputWord.ex.ExNeedsOp := '0';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.uncondBR := '1';
        outputWord.mem.BrAddrSel := '0';
        outputWord.mem.MemForwardEn := '1'; -- fixed////THIS IS WRONG. Needs to forward R7 here, but can't yet.
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := (NOT JSR_R_SEL);
        outputWord.mem.writeBTB := '1';
        --WB signals
        outputWord.wb.setCC := '0';
        outputWord.wb.memArSel := "01";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '1';
        outputWord.wb.WBForwardEn := '1'; -- R7 can and should be forwarded here.
        --NAME
        outputWord.name := name_JSR;

      when OP_LDB =>
        -- ID signals
        outputWord.id.SelB := '0';
        -- EX signals
        outputWord.ex.OffSel := "01";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '1';
        outputWord.ex.ALUop := ALU_ADD;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := '0';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '0';
        outputWord.mem.MemNotUsed := '0';
        outputWord.mem.OneStepMem := '1';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '0'; -- not ready yet :( Need a bubble, which is ok.
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "11";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.isLDB := '1';
        outputWord.wb.WBForwardEn := '1'; -- loaded data is ready here
        --NAME
        outputWord.name := name_ldb;

      when OP_LDI =>
        -- ID signals
        outputWord.id.SelB := '0';
        -- EX signals
        outputWord.ex.OffSel := "00";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '1';
        outputWord.ex.ALUop := ALU_ADD;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := '0';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '0';
        outputWord.mem.MemNotUsed := '0';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.IndirectMem := '1';
        outputWord.mem.MemForwardEn := '0';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "10";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '1';
        --NAME
        outputWord.name := name_ldi;
        
      when OP_LDR =>
        -- ID signals
        outputWord.id.SelB := '0';
        -- EX signals
        outputWord.ex.OffSel := "00";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '1';
        outputWord.ex.ALUop := ALU_ADD;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := '0';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '0';
        outputWord.mem.MemNotUsed := '0';
        outputWord.mem.OneStepMem := '1';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '0';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "10";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '1';
        --NAME
        outputWord.name := name_ldr;

      when OP_LEA =>
        -- ID signals
        outputWord.id.SelB := 'X';
        -- EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := '1';
        outputWord.ex.ALUSel1 := "01";
        outputWord.ex.ALUSel2 := 'X';
        outputWord.ex.ALUop := ALU_PASS;
        outputWord.ex.ExNeedsOp := '0';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '1';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "00";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '1';
        --NAME
        outputWord.name := name_LEA;

      when OP_NOT =>
        -- ID signals
        outputWord.id.SelB := 'X';
        -- EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := 'X';
        outputWord.ex.ALUop := ALU_NOT;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '1';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "00";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '1';
        --NAME
        outputWord.name := name_NOT;

      when OP_SHF =>
        -- ID signals
        outputWord.id.SelB := 'X';
        -- EX signals
        outputWord.ex.OffSel := "10";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '1';
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        case shiftAD is
        when SHFT_SLL =>
          outputWord.ex.ALUop := ALU_SLL;
        when SHFT_SRL =>
          outputWord.ex.ALUop := ALU_SRL;
        when SHFT_SRA =>
          outputWord.ex.ALUop := ALU_SRA;
        when others =>
          outputWord.ex.ALUop := "XXX";
        end case;
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '1';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '1';
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '1';
        outputWord.wb.memArSel := "00";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '1';
        --NAME
        outputWord.name := name_SHF;

      when OP_STB =>
        --ID signals
        outputWord.id.SelB := '1';
        --EX signals
        outputWord.ex.OffSel := "01";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '1';
        outputWord.ex.ALUop := ALU_ADD;
        outputWord.ex.isSTB := '1';
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := '0';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '0';
        outputWord.mem.mwriteL_L := '0';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '0';
        outputWord.mem.OneStepMem := '1';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '0';
        outputWord.mem.MemNeedsOp := '1';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '0';
        outputWord.wb.memArSel := "XX";
        outputWord.wb.ld_Reg := '0';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '0';
        --NAME
        outputWord.name := name_stb;

      when OP_STI =>
        --ID signals
        outputWord.id.SelB := '1';
        --EX signals
        outputWord.ex.OffSel := "00";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '1';
        outputWord.ex.ALUop := ALU_ADD;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := '0';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '0';
        outputWord.mem.mwriteL_L := '0';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '0';
        outputWord.mem.OneStepMem := '0';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.IndirectMem := '1';
        outputWord.mem.MemForwardEn := '0';
        outputWord.mem.MemNeedsOp := '1';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '0';
        outputWord.wb.memArSel := "XX";
        outputWord.wb.ld_Reg := '0';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '0';
        --NAME
        outputWord.name := name_sti;

      when OP_STR =>
        --ID signals
        outputWord.id.SelB := '1';
        --EX signals
        outputWord.ex.OffSel := "00";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "00";
        outputWord.ex.ALUSel2 := '1';
        outputWord.ex.ALUop := ALU_ADD;
        outputWord.ex.ExNeedsOp := '1';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := '0';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '0';
        outputWord.mem.mwriteL_L := '0';
        outputWord.mem.mread_L := '1';
        outputWord.mem.MemNotUsed := '0';
        outputWord.mem.OneStepMem := '1';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.MemForwardEn := '0';
        outputWord.mem.MemNeedsOp := '1';
        outputWord.mem.RequestBaseR := '0';
        --WB signals
        outputWord.wb.setCC := '0';
        outputWord.wb.memArSel := "XX";
        outputWord.wb.ld_Reg := '0';
        outputWord.wb.DestSel := '0';
        outputWord.wb.WBForwardEn := '0';
        --NAME
        outputWord.name := name_str;

    when OP_TRAP =>
        -- ID signals
        outputWord.id.SelB := 'X';
        -- EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "10";
        outputWord.ex.ALUSel2 := 'X';
        outputWord.ex.ALUop := ALU_PASS;
        outputWord.ex.ExNeedsOp := '0';
        outputWord.ex.HasOp2 := '0';
        --MEM signals
        outputWord.mem.AddrSel := '0';
        outputWord.mem.isBR := '0';
        outputWord.mem.mwriteH_L := '1';
        outputWord.mem.mwriteL_L := '1';
        outputWord.mem.mread_L := '0';
        outputWord.mem.MemNotUsed := '0';
        outputWord.mem.OneStepMem := '1';
        outputWord.mem.uncondBR := '1';
        outputWord.mem.BrAddrSel := '1';
        outputWord.mem.MemForwardEn := '1'; -- fixed////R7 not ready here yet... BUT SHOULD and can BE
        outputWord.mem.MemNeedsOp := '0';
        outputWord.mem.RequestBaseR := '0';
        outputWord.mem.writeBTB := '1';
        --WB signals
        outputWord.wb.setCC := '0';
        outputWord.wb.memArSel := "01";
        outputWord.wb.ld_Reg := '1';
        outputWord.wb.DestSel := '1';
        outputWord.wb.WBForwardEn := '1'; -- R7 is ready here.
        --NAME
        outputWord.name := name_TRAP;

      when others =>
        --ID signals
        outputWord.id.SelB := 'X';
        --EX signals
        outputWord.ex.OffSel := "XX";
        outputWord.ex.PCOffSel := 'X';
        outputWord.ex.ALUSel1 := "XX";
        outputWord.ex.ALUSel2 := 'X';
        outputWord.ex.ALUop := "XXX";
        outputWord.ex.isSTB := 'X';
        outputWord.ex.ExNeedsOp := 'X';
        outputWord.ex.HasOp2 := 'X';
        --MEM signals
        outputWord.mem.AddrSel := 'X';
        outputWord.mem.isBR := 'X';
        outputWord.mem.mwriteH_L := 'X';
        outputWord.mem.mwriteL_L := 'X';
        outputWord.mem.mread_L := 'X';
        outputWord.mem.MemNotUsed := 'X';
        outputWord.mem.OneStepMem := 'X';
        outputWord.mem.BrAddrSel := 'X';
        outputWord.mem.IndirectMem := 'X';
        outputWord.mem.MemForwardEn := 'X';
        outputWord.mem.MemNeedsOp := 'X';
        outputWord.mem.RequestBaseR := 'X';
        outputWord.mem.writeBTB := 'X';
        outputWord.mem.isNOTaNOP := 'X';
        --WB signals
        outputWord.wb.setCC := 'X';
        outputWord.wb.memArSel := "XX";
        outputWord.wb.ld_Reg := 'X';
        outputWord.wb.DestSel := 'X';
        outputWord.wb.isLDB := 'X';
        outputWord.wb.WBForwardEn := 'X';
        --NAME
        outputWord.name := name_rti;
    end case;
    ControlWord <= outputWord after DELAY_ROM;
  END PROCESS;
END ARCHITECTURE untitled;

