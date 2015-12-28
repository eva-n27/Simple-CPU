LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_clock IS
END test_clock;
 
ARCHITECTURE behavior OF test_clock IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clock
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         t1 : OUT  std_logic;
         t2 : OUT  std_logic;
         t3 : OUT  std_logic;
         t4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal t1 : std_logic;
   signal t2 : std_logic;
   signal t3 : std_logic;
   signal t4 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clock PORT MAP (
          clk => clk,
          reset => reset,
          t1 => t1,
          t2 => t2,
          t3 => t3,
          t4 => t4
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	wait for 1300 ns;
	reset <= '1';
	wait for 300 ns;
	reset <= '0';
      wait;
   end process;

END;
