library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.STD_LOGIC_arith.ALL;

entity FI is
    Port ( t0 : in  STD_LOGIC;
			  t3 : in  std_logic;
           rst : in  STD_LOGIC;
			  pc_update : in std_logic;
			  pc_new : in std_logic_vector(15 downto 0);
			  pc_out : out std_logic_vector(15 downto 0)
			  ); 
end FI;

architecture Behavioral of FI is
signal pc : std_logic_vector(15 downto 0);
begin
	--取值周期送pc, 回写周期时更新pc
	process(t3, pc_update, pc, t0, rst)
	begin
		if(rst = '1')then
			pc <= "0000000000000000";
		elsif(t0 = '1')then
			pc_out <= pc;
		elsif(t3 = '1' and pc_update = '1')then
			pc <= pc_new;
		end if;
	end process;
	
end Behavioral;

