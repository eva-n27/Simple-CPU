library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.STD_LOGIC_arith.ALL;

entity ED is
    Port ( t1 : in  STD_LOGIC;
			  t3 : in  STD_LOGIC;
			  reset : in std_logic;
           ir : in  STD_LOGIC_VECTOR (15 downto 0);
           pc : in  STD_LOGIC_VECTOR (15 downto 0);
			  r_update : in std_logic;
			  r_data : in std_logic_vector(7 downto 0);
			  r_cy : in std_logic;--回写的进位
			  pc_out : out std_logic_vector(15 downto 0);--pc的新值
           ALUOUT : out  STD_LOGIC_VECTOR (8 downto 0);
			  cy_out : out std_logic;--进位位
			  z_out : out std_logic;--零位
			  reg_v : out std_logic_vector(63 downto 0);
			  addr : out std_logic_vector(15 downto 0)--R7//x的地址
			  );
end ED;

architecture Behavioral of ED is
	type my_register is array(7 downto 0) of std_logic_vector(7 downto 0);--通用寄存器
	signal reg : my_register :=(others => "00000000");
	--signal cy : std_logic := '0';
	--signal z : std_logic := '0';
begin
	--运算
	process(ir, t1, reg, pc, ir, reset, t3, r_update, r_data, r_cy)
		variable pc_new : STD_LOGIC_VECTOR (15 downto 0);--pc的新值
		variable a : STD_LOGIC_VECTOR (8 downto 0);
		variable b : STD_LOGIC_VECTOR (8 downto 0);
		variable a_index, b_index : integer;--两个操作数的对应的寄存器索引
		variable alu : std_logic_vector(8 downto 0);--alu的运算结果
		variable cy_temp : std_logic_vector(8 downto 0);--cy的临时值
		variable reg_index : integer;--寄存器的标号
		variable pc_temp : STD_LOGIC_VECTOR (15 downto 0);
		variable cy : std_logic := '0';
		variable z : std_logic := '0';		
	begin
		if(reset = '1')then
			z := '0';
			cy := '0';
			cy_out <= '0';
			z_out <= '0';
		elsif(t3 = '1' )then
			if(r_update = '1')then
				reg_index := CONV_INTEGER(ir(10 downto 8));
				reg(reg_index) <= r_data;	
			end if;
			cy_out <= r_cy;
			cy := r_cy;
		elsif(t1 = '1')then
			cy_temp := "00000000"&cy;
			case ir(15 downto 11) is
				when "00110"=>	a_index := CONV_INTEGER(ir(10 DOWNTO 8));--add
									b_index := CONV_INTEGER(ir(2 DOWNTO 0));
									a := '0'&reg(a_index);
									b := '0'&reg(b_index);									
									alu := a + b + cy_temp;
									pc_new := pc+ "0000000000000001";
									if(alu = "0000000000")then
										z := '1';
									else
										z := '0';
									end if;
				when "00100"=> a_index := CONV_INTEGER(ir(10 DOWNTO 8));--sub
									b_index := CONV_INTEGER(ir(2 DOWNTO 0));
									a := '0'&reg(a_index);
									b := '0'&reg(b_index);	
									alu := a - b - cy_temp;
									pc_new := pc+ "0000000000000001";
									if(alu = "0000000000")then
										z := '1';
									else
										z := '0';
									end if;			
				when "01000"=> alu := cy&ir(7 downto 0);--mvi,立即数
									pc_new := pc+ "0000000000000001";
				when "01010"=> b_index := CONV_INTEGER(ir(2 DOWNTO 0));--mov
									b := '0'&reg(b_index);
									alu := b;
									pc_new := pc+ "0000000000000001";
				when "01100"=> a_index := CONV_INTEGER(ir(10 DOWNTO 8));--sta
									a := '0'&reg(a_index);
									alu := a;
									pc_new := pc+ "0000000000000001";
									addr <= reg(7)&ir(7 downto 0);
				when "01110"=> alu :=(others=>'0');--lda
									pc_new := pc+ "0000000000000001";
									addr <= reg(7)&ir(7 downto 0);
				when "00000"=> pc_new := reg(7)&ir(7 downto 0);--JMP
									alu(8) := cy;--将cy传递给回写模块
				when "00010"=> a_index := CONV_INTEGER(ir(10 DOWNTO 8));--JZ
									a := '0'&reg(a_index);
									if(a = "00000000")then
										if(ir(7) = '1')then
											pc_temp := "11111111"&ir(7 downto 0);
											pc_new := pc + pc_temp + "0000000000000001";
										else
											pc_temp := "00000000"&ir(7 downto 0);
											pc_new := pc + pc_temp + "0000000000000001";
										end if;
									else
										pc_new := pc+ "0000000000000001";
									end if;
									alu(8) := cy;--将cy传递给回写模块
				when "10000" => alu(8) := '1';--SET置位
									 z := '1';
									 pc_new := pc+ "0000000000000001";
				when "10010" => alu(8) := '0';--CLR复位
									 z := '0';
									 pc_new := pc+ "0000000000000001";
				when others => NULL;
			end case;
		end if;
			
		aluout <= alu;
		pc_out <= pc_new;	
		z_out <= z;
	end process;
	
	reg_v <= reg(7)&reg(6)&reg(5)&reg(4)&reg(3)&reg(2)&reg(1)&reg(0);
	
end Behavioral;

