LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test_cpu IS
END test_cpu;
 
ARCHITECTURE behavior OF test_cpu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         AddrBus : OUT  std_logic_vector(15 downto 0);
         DataBus : INOUT  std_logic_vector(15 downto 0);
         nMPREQ : OUT  std_logic;
         nRD : OUT  std_logic;
         nWR : OUT  std_logic;
         nBHE : OUT  std_logic;
         nBLE : OUT  std_logic;
         z : OUT  std_logic;
         cy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal DataBus : std_logic_vector(15 downto 0);

 	--Outputs
   signal AddrBus : std_logic_vector(15 downto 0);
   signal nMPREQ : std_logic;
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nBHE : std_logic;
   signal nBLE : std_logic;
   signal z : std_logic;
   signal cy : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          clk => clk,
          reset => reset,
          AddrBus => AddrBus,
          DataBus => DataBus,
          nMPREQ => nMPREQ,
          nRD => nRD,
          nWR => nWR,
          nBHE => nBHE,
          nBLE => nBLE,
          z => z,
          cy => cy
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
		reset <= '1';
		wait for 8 ns;
		reset <= '0';
		DataBus <= "0000000000000100"; -- JMP 04H       0004
		WAIT FOR clk_period * 8;
		DataBus <= "0100000000001000"; -- MVI R0, 08H   4008
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0100000100000110"; -- MVI R1, 06H   4106
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0011000000000001"; -- ADD R0, R1    3001 0EH
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0010000000000001"; -- SUB R0, R1    2001 08H
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0101001000000001"; -- MOV R2, R1     5201
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0110000000110000"; -- STA R0, 30H    6030
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0111001100110000"; -- LDA R3, FFH    7330
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;-- JZ R4, 54H            
		DataBus <= "0001010001010100";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6; -- JZ R4, -53Hz
		DataBus <= "0001010010101101";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0001000001010100"; -- JZ R0, 54H
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;--SET
		DataBus <= "1000000000000000";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0011000000000001";--add r0, r1(有进位位)
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;--CLR
		DataBus <= "1001000000000000";
		
      wait;
   end process;

END;
