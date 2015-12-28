LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_ed IS
END test_ed;
 
ARCHITECTURE behavior OF test_ed IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ED
    PORT(
         t1 : IN  std_logic;
         t3 : IN  std_logic;
         reset : IN  std_logic;
         ir : IN  std_logic_vector(15 downto 0);
         pc : IN  std_logic_vector(15 downto 0);
         r_update : IN  std_logic;
         r_data : IN  std_logic_vector(7 downto 0);
         r_cy : IN  std_logic;
         pc_out : OUT  std_logic_vector(15 downto 0);
         ALUOUT : OUT  std_logic_vector(8 downto 0);
         cy_out : OUT  std_logic;
         z_out : OUT  std_logic;
         addr : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal t1 : std_logic := '0';
   signal t3 : std_logic := '0';
   signal reset : std_logic := '0';
   signal ir : std_logic_vector(15 downto 0) := (others => '0');
   signal pc : std_logic_vector(15 downto 0) := (others => '0');
   signal r_update : std_logic := '0';
   signal r_data : std_logic_vector(7 downto 0) := (others => '0');
   signal r_cy : std_logic := '0';

 	--Outputs
   signal pc_out : std_logic_vector(15 downto 0);
   signal ALUOUT : std_logic_vector(8 downto 0);
   signal cy_out : std_logic;
   signal z_out : std_logic;
   signal addr : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ED PORT MAP (
          t1 => t1,
          t3 => t3,
          reset => reset,
          ir => ir,
          pc => pc,
          r_update => r_update,
          r_data => r_data,
          r_cy => r_cy,
          pc_out => pc_out,
          ALUOUT => ALUOUT,
          cy_out => cy_out,
          z_out => z_out,
          addr => addr
        );
		  
	-- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		t1 <= '0';
		t3 <= '0';
		reset  <= '1';
		r_update <= '0';
--		--mvi r0, 02h
--      wait for 100 ns;
--		reset <= '0';
--		pc <= "1111000011110000";		
--		t1 <= '1';
--		ir <= "0100000000000110";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '1';
--		r_data <= "00000110";
--		r_cy <= '0';
		
--		--lda r0, 80h
--		wait for 100 ns;
--		reset <= '0';
--		pc <= "1111000011110001";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		ir <= "0000000010000000";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '1';
--		r_data <= "01101111";
--		r_cy <= '0';
--		--mvi r1, 03h
--		wait for 100 ns;
--		pc <= "1111000011110001";	
--		t1 <= '1';
--		t3 <= '0';
--		ir <= "0100000100000011";
--		r_update <= '0';
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '1';
--		r_data <= "00000011";
--		r_cy <= '0';
--		--mov r3, r0
--		wait for 100 ns;
--		pc <= "1111000011110010";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		ir <= "0101001100000000";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '1';
--		r_data <= "00000110";
--		r_cy <= '0';
--		--mov r4, r1
--		wait for 100 ns;
--		pc <= "1111000011110011";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		ir <= "0101010000000001";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '1';
--		r_data <= "00100001";
--		r_cy <= '0';
		--set,置位
		wait for 100 ns;
		reset <= '0';
		pc <= "1111000011110100";	
		t1 <= '1';
		t3 <= '0';
		r_update <= '0';
		ir <= "1000000000000000";
		--回写
		wait for 100 ns;
		r_update <= '1';
		t1 <= '0';
		t3 <= '1';
		r_cy <= '1';
		--clr
		wait for 100 ns;
		pc <= "1111000011110101";	
		t1 <= '1';
		t3 <= '0';
		r_update <= '0';
		ir <= "1001000000000000";
		--回写
		wait for 100 ns;
		t1 <= '0';
		t3 <= '1';
		r_cy <= '0';
		r_update <= '1';
		--add r0, r1
--		wait for 100 ns;
--		pc <= "1111000011110010";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		r_cy <= '0';
--		ir <= "0010000000000001";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '1';
--		r_data <= "00000011";
--		r_cy <= '0';
--		wait for 100 ns;
--		t3 <= '0';
--		r_update <= '0';
--		r_cy <= '0';
--		--sub r3, r4
--		wait for 100 ns;
--		pc <= "1111000011110110";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		ir <= "0010001100000100";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '1';
--		r_data <= "01011111";
--		r_cy <= '0';
--		--sta r5, 80h
--		wait for 100 ns;
--		pc <= "1111000011110001";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		ir <= "0110000010000000";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_update <= '0';
--		r_data <= "00000000";
--		r_cy <= '0';
--		--set
--		wait for 100 ns;
--		pc <= "1111000011111000";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		ir <= "1000000000000000";
--		--回写
--		wait for 100 ns;
--		r_update <= '1';
--		t1 <= '0';
--		t3 <= '1';
--		r_cy <= '1';
--		--clr
--		wait for 100 ns;
--		pc <= "1111000011111000";	
--		t1 <= '1';
--		t3 <= '0';
--		r_update <= '0';
--		ir <= "1001000000000000";
--		--回写
--		wait for 100 ns;
--		t1 <= '0';
--		t3 <= '1';
--		r_cy <= '0';
--		r_update <= '1';
		
      wait;
   end process;

END;
