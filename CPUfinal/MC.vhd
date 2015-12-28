library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MC is
    Port ( reset : in std_logic; 
			  pc : in  STD_LOGIC_VECTOR (15 downto 0);
			  t0 : in std_logic;
			  t1 : in std_logic;
			  t2 : in std_logic;
			  alu_in : in std_logic_vector(8 downto 0);--ALU的数据
			  addr_in : in std_logic_vector(15 downto 0);--访存的地址
			  ir : out std_logic_vector(15 downto 0);--读出的指令
			  data_out : out std_logic_vector(7 downto 0);--从主存取出的数据
			  nMREQ: out std_logic;--片选
			  nRD: out std_logic;
			  nWR : out std_logic;
			  nBLE: out std_logic;
			  nBHE : out std_logic;--读、写、读低位、读高位
			  DataBus : inout std_logic_vector(15 downto 0);
			  AddBus : out std_logic_vector(15 downto 0);
			  S2 : out std_logic_vector(7 downto 0);
			  S5 : out std_logic_vector(7 downto 0)
	 );
end MC;

architecture Behavioral of MC is
signal ir_temp : std_logic_vector(15 downto 0);
begin

	process(t0, t1, t2, alu_in, addr_in, pc, ir_temp)
	--variable ir_temp : std_logic_vector(15 downto 0);
	begin
		if(reset = '1')then
			DataBus <= (OTHERS => 'Z');
		elsif(t0 = '1')then--取指令
			nMREQ <= '0';
			nRD <= '0';
			nWR <= '1';
			nBHE<= '0';
			nBLE<= '0';
			DataBus <= (OTHERS => 'Z');
			AddBus <= pc;
			S2 <= pc(15 downto 8);
			S5 <= pc(7 downto 0);
			ir_temp <= DataBus;
			ir <= DataBus;			
		elsif(t1 = '1')then--t1的时候把地址线和数据线上的东西准备好
			case ir_temp(15 downto 11) is
				when "01100" => AddBus <= addr_in;--存数,sta
									 S2 <= addr_in(15 downto 8);
									 S5 <= addr_in(7 downto 0);
									 DataBus <= "00000000"&alu_in(7 downto 0);
				when "01110" => AddBus <= addr_in;--取数,lda
									 DataBus <=(OTHERS => 'Z');
									 S2 <= addr_in(15 downto 8);
									 S5 <= addr_in(7 downto 0);
				when others => DataBus <= (OTHERS => 'Z');
			end case;
			nMREQ <= '1';
			nRD <= '1';
			nWR <= '1';
			nBHE<= '1';
			nBLE<= '1';
		elsif(t2 = '1')then--t2的时候发出存数\取数的控制信号
			case ir_temp(15 downto 11) is
				when "01100" =>nMREQ <= '0';--存数,sta
									nRD <= '1';
									nWR <= '0';
									nBHE<= '0';
									nBLE<= '0';
				when "01110" =>nMREQ <= '0';--取数,lda
									nRD <= '0';
									nWR <= '1';
									nBHE<= '0';
									nBLE<= '0';
									data_out <= DataBus(7 downto 0);
									DataBus <= (OTHERS => 'Z');
				when others => nMREQ <= '1';
									nRD <= '1';
									nWR <= '1';
									nBHE<= '1';
									nBLE<= '1';
									DataBus <= (OTHERS => 'Z');
			end case;
		elsif (t2 = '0')then
			nMREQ <= '1';
			nRD <= '1';
			nWR <= '1';
			nBHE<= '1';
			nBLE<= '1';
			DataBus <= (OTHERS => 'Z');
		else
			DataBus <= (OTHERS => 'Z');
		end if;
	end process;	
end Behavioral;

