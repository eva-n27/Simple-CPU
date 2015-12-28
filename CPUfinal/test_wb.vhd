LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_wb IS
END test_wb;
 
ARCHITECTURE behavior OF test_wb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WB
    PORT(
         t3 : IN  std_logic;
         mem_in : IN  std_logic_vector(8 downto 0);
         pc_in : IN  std_logic_vector(15 downto 0);
         ir : IN  std_logic_vector(15 downto 0);
         pc_update : OUT  std_logic;
         pc_new : OUT  std_logic_vector(15 downto 0);
         r_update : OUT  std_logic;
         r_data : OUT  std_logic_vector(7 downto 0);
         r_cy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal t3 : std_logic := '0';
   signal mem_in : std_logic_vector(8 downto 0) := (others => '0');
   signal pc_in : std_logic_vector(15 downto 0) := (others => '0');
   signal ir : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal pc_update : std_logic;
   signal pc_new : std_logic_vector(15 downto 0);
   signal r_update : std_logic;
   signal r_data : std_logic_vector(7 downto 0);
   signal r_cy : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WB PORT MAP (
          t3 => t3,
          mem_in => mem_in,
          pc_in => pc_in,
          ir => ir,
          pc_update => pc_update,
          pc_new => pc_new,
          r_update => r_update,
          r_data => r_data,
          r_cy => r_cy
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		t3 <= '0';
		pc_in <= "0000111100001111";
		mem_in <= "111110000";
--		--add
--      wait for 100 ns;	
--		t3 <= '1';
--		ir <= "0011000000000001";
--		
--		wait for 100 ns;
--		t3 <= '0';
--		--sub
--		wait for 100 ns;
--		t3 <= '1';
--		ir <= "0010000100000010";
--		
--		wait for 100 ns;
--		t3 <= '0';
		--mov
--		wait for 100 ns;
--		t3 <= '1';
--		ir <= "0101001100000100";
--		
--		wait for 100 ns;
--		t3 <= '0';
		--mvi
--		wait for 100 ns;
--		t3 <= '1';
--		ir <= "0100010111110000";
--		
--		wait for 100 ns;
--		t3 <= '0';
		--lda
		wait for 100 ns;
		t3 <= '1';
		ir <= "0111011011001100";
		
		wait for 100 ns;
		t3 <= '0';		

      wait;
   end process;

END;
