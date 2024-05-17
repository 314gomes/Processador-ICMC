library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;
ENTITY clk_reg IS
	PORT(clock_1khz : IN	STD_LOGIC;
		 clk_reg_ms	: OUT	STD_LOGIC_VECTOR(15 DOWNTO 0);
		 clk_reg_s	: OUT	STD_LOGIC_VECTOR(15 DOWNTO 0));
END clk_reg;

ARCHITECTURE a OF clk_reg IS
	SIGNAL sig_reg_ms : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL sig_reg_s : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN

-- Debounce Button: Filters out mechanical switch bounce for around 40Ms.
-- Debounce clock should be approximately 10ms
process 
begin
  wait until (clock_1khz'EVENT) AND (clock_1khz = '1');
  	sig_reg_ms <= sig_reg_ms + 1;
	
	clk_reg_ms <= sig_reg_ms;
end process;
end a;