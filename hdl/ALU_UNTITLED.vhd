--
-- VHDL Architecture ece411.ALU.untitled
--
-- Created:
--          by - hinz1.ews (linux6.ews.illinois.edu)
--          at - 13:05:44 01/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ALU IS
   PORT( 
      ALUMux1out : IN     LC3b_word;
      ALUop      : IN     LC3b_aluop;
      ALUMux2out : IN     LC3b_word;
      ALUout     : OUT    LC3b_word
   );

-- Declarations

END ALU ;

--
ARCHITECTURE UNTITLED OF ALU IS
BEGIN
	----------------------------------------
	VHDL_ALU : PROCESS (ALUMux1out, ALUMux2out, ALUOP)
	----------------------------------------
	VARIABLE TEMP_ALUOUT : LC3B_WORD;
	VARIABLE COUNT : INTEGER;
	BEGIN
		-- CHECK FOR ALU OPERATION TYPE, AND EXECUTE
		CASE ALUOP IS
			WHEN ALU_ADD =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR(SIGNED(ALUMux1out) + SIGNED(ALUMux2out));
			WHEN ALU_AND =>
				TEMP_ALUOUT := (ALUMux1out AND ALUMux2out);
			WHEN ALU_NOT =>
				TEMP_ALUOUT := (ALUMux1out XOR "1111111111111111");
			WHEN ALU_PASS =>
				TEMP_ALUOUT := (ALUMux1out);
		  WHEN ALU_SLL =>
		    TEMP_ALUOUT := std_logic_vector("sll"(unsigned(ALUMux1out), to_integer(unsigned(ALUMux2out))));
		  WHEN ALU_SRL =>
		    TEMP_ALUOUT := std_logic_vector("srl"(unsigned(ALUMux1out), to_integer(unsigned(ALUMux2out))));
		  WHEN ALU_SRA =>
		    COUNT := to_integer(unsigned(ALUMux2out(3 downto 0)));
        if (ALUMux2out(3 downto 0) = "0000") then
          TEMP_ALUOUT := ALUMux1out; --Perform no shifting
        else
          TEMP_ALUOUT(15 - COUNT downto 0) := ALUMux1out(15 downto COUNT);
          TEMP_ALUOUT(15 downto (15 - COUNT + 1)) := (others => ALUMux1out(15));
        end if;
			WHEN OTHERS =>
		END CASE;
	--SET OUTPUT VALUE ALUOUT TO BE THE TEMPORARY VALUE CALCULATED WITHIN THE PROCESS AFTER A DELAY
	ALUOUT <= TEMP_ALUOUT AFTER DELAY_ALU;
	END PROCESS VHDL_ALU;
END UNTITLED;
