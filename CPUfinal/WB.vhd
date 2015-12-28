library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.STD_LOGIC_arith.ALL;

entity WB is
    Port ( t3 : in  STD_LOGIC;
           mem_in : in  STD_LOGIC_VECTOR (8 downto 0);
           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);
           ir : in  STD_LOGIC_VECTOR (15 downto 0);
           pc_update : out  STD_LOGIC;
           pc_new : out  STD_LOGIC_VECTOR (15 downto 0);
           r_update : out  STD_LOGIC;
           r_data : out  STD_LOGIC_VECTOR (7 downto 0);
			  r_cy : out std_logic);
end WB;

architecture Behavioral of WB is

begin
	process(t3, mem_in, pc_in, ir)
	begin
		if(t3 = '1')then
			--»ØĞ´¼Ä´æÆ÷
			case ir(15 downto 11) is
				when "00110" => --add
									 r_data <= mem_in(7 downto 0);
									 r_update <= '1';
									 r_cy <= mem_in(8);
				when "00100" => --sub
									 r_data <= mem_in(7 downto 0);
									 r_update <= '1';
									 r_cy <= mem_in(8);
				when "01010" => --mov
									 r_data <= mem_in(7 downto 0);
									 r_update <= '1';
									 r_cy <= mem_in(8);
				when "01000" => --mvi
									 r_data <= mem_in(7 downto 0);
									 r_update <= '1';
									 r_cy <= mem_in(8);
				when "01110" => --lda
									 r_data <= mem_in(7 downto 0);
									 r_update <= '1';
									 r_cy <= mem_in(8);
				when "10000" => r_update <= '0';
									 r_cy <= '1';--set
				when "10010" => r_update <= '0';
									 r_cy <= '0';--clr
				when "00010" => r_cy <= mem_in(8);
									 r_update <= '0';--jz
				when "00000" => r_cy <= mem_in(8);
									 r_update <= '0';--jmp
				when others =>  r_update <= '0';
			end case;
			--»ØĞ´pc
			pc_update <= '1';
			pc_new <= pc_in;
		elsif(t3 ='0')then
			pc_update <= '0';
			r_update <= '0';
		end if;
	end process;

end Behavioral;

