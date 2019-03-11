----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.02.2019 18:01:55
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.STD_LOGIC_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
--  Port ( );
    generic(N : integer := 4;
            MAX : integer := 9);
    port(
        clr : in std_logic;
        clk : in std_logic;
        q   : out std_logic_vector(N-1 downto 0)
        );
end counter;

architecture Behavioral of counter is
signal count: std_logic_vector(N-1 downto 0);
begin
    process(clk, clr)
    begin
        if clr = '1' OR (rising_edge(clk) AND count = MAX)then
            count <= (others => '0');
        elsif rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;
    q <= count;

end Behavioral;
