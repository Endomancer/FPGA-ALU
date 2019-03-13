----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.03.2019 14:27:12
-- Design Name: 
-- Module Name: NBitAnd_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NBitAnd_tb is
--  Port ( );
end NBitAnd_tb;

architecture Behavioral of NBitAnd_tb is
    component NBitAnd
generic(n:  integer:= 8);
Port(op1:   in std_logic_vector(7 downto 0);
     op2:   in std_logic_vector(7 downto 0);
     clk:   in std_logic;
     En:    in std_logic;
     res:   out std_logic_vector(7 downto 0));
 end component;
 
 signal clk:    std_logic;
 signal En:     std_logic;
 signal Val1:   std_logic_vector(7 downto 0);
 signal Val2:   std_logic_vector(7 downto 0);
 signal res:    std_logic_vector(7 downto 0);

begin
AND8: NBitAnd port map ( op1 => Val1, op2 => Val2, res => res, clk => clk, En => En); 
    process begin
        clk <= '0';
        En <= '1';
        Val1 <= "00000000";
        Val2 <= "00000000";
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
        clk <= '0';
        Val1 <= "00000001";
        Val2 <= "00000000";
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
        clk <= '0';
        Val2 <= "10000001";
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
        clk <= '0';
        Val1 <= "11111111";
        Val2 <= "11111111";
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
    end process;


end Behavioral;
