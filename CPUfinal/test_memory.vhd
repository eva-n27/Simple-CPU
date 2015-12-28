LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_memory IS
END test_memory;
 
ARCHITECTURE behavior OF test_memory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory
    PORT(
         t2 : IN  std_logic;
         alu_in : IN  std_logic_vector(8 downto 0);
         ir : IN  std_logic_vector(15 downto 0);
         mem_in : IN  std_logic_vector(7 downto 0);
         mem_out : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal t2 : std_logic := '0';
   signal alu_in : std_logic_vector(8 downto 0) := (others => '0');
   signal ir : std_logic_vector(15 downto 0) := (others => '0');
   signal mem_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal mem_out : std_logic_vector(8 downto 0);
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory PORT MAP (
          t2 => t2,
          alu_in => alu_in,
          ir => ir,
          mem_in => mem_in,
          mem_out => mem_out
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		t2 <= '0';
		--00110add
--		wait for 100 ns;
--		t2 <= '1';
--		alu_in <= "011110000";
--		mem_in <= "00001111";
--		ir <=  "0011000000000001";	
--		
--      wait for 100 ns;	
--		t2 <= '0';
--		--01110lda
		wait for 100 ns;
		t2 <= '1';
		alu_in <= "011110000";
		mem_in <= "00001111";
		ir <=  "0111000000000001";
--		
--		wait for 100 ns;
--		t2 <= '0';
--		--00100sub
--		wait for 100 ns;
--		t2<= '1';
--		alu_in <= "010101010";
--		mem_in <= "00001111";
--		ir <=  "0010000000000001";
--		
		--01010mov
--		wait for 100 ns;
--		t2 <= '1';
--		alu_in <= "001010101";
--		mem_in <= "00001111";
--		ir <=  "0101000000000001";
--		
--		wait for 100 ns;
--		t2 <= '0';
		--01000mvi
--		wait for 100 ns;
--		t2 <= '1';
--		alu_in <= "011101110";
--		mem_in <= "00001111";
--		ir <=  "0100000011101110";
      wait;
   end process;

END;
