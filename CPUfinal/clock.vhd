library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library unisim;
use unisim.vcomponents.all;

entity clock is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           t1 : out  STD_LOGIC;
           t2 : out  STD_LOGIC;
           t3 : out  STD_LOGIC;
           t4 : out  STD_LOGIC);
end clock;

architecture Behavioral of clock is

signal temp1 :std_logic_vector(3 downto 0):="0001";
signal clkgp : std_logic;

component bufgp
port (i : in std_logic;
		o : out std_logic);
end component;

begin 
	u1:bufgp port map(clk, clkgp);
	process(clkgp, reset)
	begin 
		if(reset = '1')then
			t1 <= temp1(0);
			t2 <= temp1(1);
			t3 <= temp1(2);
			t4 <= temp1(3);
			temp1 <= "0001";
		elsif(clkgp'event and clkgp = '1')then
			temp1(3 downto 1) <= temp1(2 downto 0);
			temp1(0) <= temp1(3);
			t1 <= temp1(0);
			t2 <= temp1(1);
			t3 <= temp1(2);
			t4 <= temp1(3);
		end if;
	end process;
end Behavioral;