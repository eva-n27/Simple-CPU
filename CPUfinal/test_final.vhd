LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_final IS
END test_final;
 
ARCHITECTURE behavior OF test_final IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         RegSel : IN  std_logic_vector(2 downto 0);
         IrSel : IN  std_logic;
         PcSel : IN  std_logic;
         AddrBus : OUT  std_logic_vector(15 downto 0);
         DataBus : INOUT  std_logic_vector(15 downto 0);
         nMPREQ : OUT  std_logic;
         nRD : OUT  std_logic;
         nWR : OUT  std_logic;
         nBHE : OUT  std_logic;
         nBLE : OUT  std_logic;
         oMPREQ : OUT  std_logic;
         oRD : OUT  std_logic;
         oWR : OUT  std_logic;
         oBHE : OUT  std_logic;
         oBLE : OUT  std_logic;
         z : OUT  std_logic;
         cy : OUT  std_logic;
         S0 : OUT  std_logic_vector(7 downto 0);
         S1 : OUT  std_logic_vector(7 downto 0);
         S2 : OUT  std_logic_vector(7 downto 0);
         S3 : OUT  std_logic_vector(7 downto 0);
         S4 : OUT  std_logic_vector(7 downto 0);
         S5 : OUT  std_logic_vector(7 downto 0);
         B : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal RegSel : std_logic_vector(2 downto 0) := (others => '0');
   signal IrSel : std_logic := '0';
   signal PcSel : std_logic := '0';

	--BiDirs
   signal DataBus : std_logic_vector(15 downto 0);

 	--Outputs
   signal AddrBus : std_logic_vector(15 downto 0);
   signal nMPREQ : std_logic;
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nBHE : std_logic;
   signal nBLE : std_logic;
   signal oMPREQ : std_logic;
   signal oRD : std_logic;
   signal oWR : std_logic;
   signal oBHE : std_logic;
   signal oBLE : std_logic;
   signal z : std_logic;
   signal cy : std_logic;
   signal S0 : std_logic_vector(7 downto 0);
   signal S1 : std_logic_vector(7 downto 0);
   signal S2 : std_logic_vector(7 downto 0);
   signal S3 : std_logic_vector(7 downto 0);
   signal S4 : std_logic_vector(7 downto 0);
   signal S5 : std_logic_vector(7 downto 0);
   signal B : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          clk => clk,
          reset => reset,
          RegSel => RegSel,
          IrSel => IrSel,
          PcSel => PcSel,
          AddrBus => AddrBus,
          DataBus => DataBus,
          nMPREQ => nMPREQ,
          nRD => nRD,
          nWR => nWR,
          nBHE => nBHE,
          nBLE => nBLE,
          oMPREQ => oMPREQ,
          oRD => oRD,
          oWR => oWR,
          oBHE => oBHE,
          oBLE => oBLE,
          z => z,
          cy => cy,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          S4 => S4,
          S5 => S5,
          B => B
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
      -- hold reset state for 100 ns.
		reset <= '1';
		wait for 8 ns;
		reset <= '0';
		DataBus <= "0000000000000100"; -- JMP 04H       0004
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
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
		DataBus <= "0110000000110000"; -- STA R0, 30H    6030
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0100001011111110"; -- MVI R2,FEH     42FE
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0010000000000001"; -- SUB R0, R1    2001
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0111001100110000"; -- LDA R3, 30H    7330
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		wait for clk_period * 2;
		DataBus <= "1111000000001110";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 2; -- add r0, r2  3002
		DataBus <= "0011000000000010";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "1001000000000000"; -- CLR
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;--JZ R2, 03H
		DataBus <= "0001001000000011";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;
		DataBus <= "0001010100000011";--JZ R5, 03H
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;--JZ R5,-03H
		DataBus <= "0001010111111101";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z');
		WAIT FOR clk_period * 6;-- set          
		DataBus <= "1000000000000000";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z'); 
		WAIT FOR clk_period * 6;-- MOV R6,R0    
		DataBus <= "0101011000000000";
		WAIT FOR clk_period * 2;
		DataBus <= (OTHERS => 'Z'); 
      wait;
   end process;

END;
