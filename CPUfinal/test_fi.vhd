LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test_fi IS
END test_fi;
 
ARCHITECTURE behavior OF test_fi IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FI
    PORT(
         t0 : IN  std_logic;
         t3 : IN  std_logic;
         rst : IN  std_logic;
         pc_update : IN  std_logic;
         pc_new : IN  std_logic_vector(15 downto 0);
         pc_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal t0 : std_logic := '0';
   signal t3 : std_logic := '0';
   signal rst : std_logic := '0';
   signal pc_update : std_logic := '0';
   signal pc_new : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal pc_out : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FI PORT MAP (
          t0 => t0,
          t3 => t3,
          rst => rst,
          pc_update => pc_update,
          pc_new => pc_new,
          pc_out => pc_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		t0 <= '0';
		t3 <= '0';
		pc_update <= '0';
		rst <= '0';
		--¸´Î»
      wait for 100 ns;	
		rst <= '1';
		wait for 100 ns;
		rst <= '0';
		t0 <= '1';
		wait for 100 ns;
		t0 <= '0';
		wait for 100 ns;
		t3 <= '1';
		wait for 100 ns;
		pc_update <= '1';
		pc_new <= "0000111100001111";
		wait for 100 ns;
		t3 <= '0';
		pc_update <= '0';
		wait for 100 ns;
		t0 <= '1';
	
      wait;
   end process;

END;
