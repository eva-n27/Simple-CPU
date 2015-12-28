LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY teset_mc_final IS
END teset_mc_final;
 
ARCHITECTURE behavior OF teset_mc_final IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MC
    PORT(
         reset : IN  std_logic;
         pc : IN  std_logic_vector(15 downto 0);
         t0 : IN  std_logic;
         t1 : IN  std_logic;
         t2 : IN  std_logic;
         alu_in : IN  std_logic_vector(8 downto 0);
         addr_in : IN  std_logic_vector(15 downto 0);
         ir : OUT  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0);
         nMREQ : OUT  std_logic;
         nRD : OUT  std_logic;
         nWR : OUT  std_logic;
         nBLE : OUT  std_logic;
         nBHE : OUT  std_logic;
         DataBus : INOUT  std_logic_vector(15 downto 0);
         AddBus : OUT  std_logic_vector(15 downto 0);
         S2 : OUT  std_logic_vector(7 downto 0);
         S5 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal pc : std_logic_vector(15 downto 0) := (others => '0');
   signal t0 : std_logic := '0';
   signal t1 : std_logic := '0';
   signal t2 : std_logic := '0';
   signal alu_in : std_logic_vector(8 downto 0) := (others => '0');
   signal addr_in : std_logic_vector(15 downto 0) := (others => '0');

	--BiDirs
   signal DataBus : std_logic_vector(15 downto 0);

 	--Outputs
   signal ir : std_logic_vector(15 downto 0);
   signal data_out : std_logic_vector(7 downto 0);
   signal nMREQ : std_logic;
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nBLE : std_logic;
   signal nBHE : std_logic;
   signal AddBus : std_logic_vector(15 downto 0);
   signal S2 : std_logic_vector(7 downto 0);
   signal S5 : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MC PORT MAP (
          reset => reset,
          pc => pc,
          t0 => t0,
          t1 => t1,
          t2 => t2,
          alu_in => alu_in,
          addr_in => addr_in,
          ir => ir,
          data_out => data_out,
          nMREQ => nMREQ,
          nRD => nRD,
          nWR => nWR,
          nBLE => nBLE,
          nBHE => nBHE,
          DataBus => DataBus,
          AddBus => AddBus,
          S2 => S2,
          S5 => S5
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		reset <= '1';
		DataBus <=(others => 'Z');

--		--sta r0, 81h
--		--取指令
--      wait for 100 ns;	
--		reset <= '0';		
--		t0 <= '1';
--		DataBus <= "0110000010000001";
--		--wait for 100 ns;
--		--t0 <= '0';
--		--数据准备
--		wait for 100 ns;
--		t1 <= '1';
--		t0 <= '0';
--		alu_in <= "011110000";
--		addr_in <= "0000000010000001";
--		DataBus <= "ZZZZZZZZZZZZZZZZ";
--		--写
--		wait for 100 ns;
--		t1 <= '0';
--		t2 <= '1';
--		wait for 100 ns;
--		t2 <= '0';
		--lda r0, 81h
		wait for 100 ns;
		t0 <= '1';
		reset <= '0';
--		wait for 10 ns;			
		DataBus <= "0111000010000001";
		--wait for 100 ns;
		--t0 <= '0';
		--数据准备
		wait for 100 ns;
		t1 <= '1';
		t0 <= '0';
		addr_in <= "0000000010000001";
		--读
		wait for 100 ns;
		t1 <= '0';
		t2 <= '1';
		DataBus <= "1111000010100101";
		wait for 100 ns;
		t2 <= '0';
		DataBus <=(others => 'Z');
      wait;
   end process;

END;
