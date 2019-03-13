----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2019 13:15:36
-- Design Name: 
-- Module Name: TwosCompliment_tb - Behavioral
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

entity TwosCompliment_tb is
--  Port ( );
    --generic(Num : integer := 8)
end TwosCompliment_tb;

architecture Behavioral of TwosCompliment_tb is
    component TwosCompliment
        generic(n:  integer := 8);
        port(En:    in std_logic;
             clk:    in std_logic;
             Val:   in std_logic_vector(n-1 downto 0);
             Res:   out std_logic_vector(n-1 downto 0));
    end component;
    signal Enable:  std_logic;
    signal Value:   std_logic_vector(7 downto 0);
    signal Result:  std_logic_vector(7 downto 0);
    signal clk: std_logic;
begin
    twos: TwosCompliment port map (En => Enable, Val => value, Res => Result, clk => clk);
    process begin
        Enable <= '1';
        Value <= "00000100";
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
        Value <= "00100100";
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
        Enable <= '0';
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100ns;
        Value <= "10000001";
        Enable <= '1';
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
    end process;
        

end Behavioral;
