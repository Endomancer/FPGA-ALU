----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2019 12:56:00
-- Design Name: 
-- Module Name: TwosCompliment - Behavioral
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
use ieee.std_logic_arith.all;
--use ieee.std_logic_textio.all;

use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TwosCompliment is
--  Port ( );
    generic(n:  integer := 8);
    Port(En:    in std_logic;
         clk:    in std_logic;
         Val:   in std_logic_vector(n-1 downto 0);
         Res:   out std_logic_vector(n-1 downto 0));
end TwosCompliment;

architecture Behavioral of TwosCompliment is
--signal temp: std_logic_vector(n-1 downto 0);
begin
    process (En, clk) 
    begin 
        --if En = '1' then
        --temp <= not val;
        if (rising_edge(clk) and En = '1' ) then
            Res <= std_logic_vector((not Val) + "00000001"); 
        elsif (rising_edge(clk)) then
            Res <= Val;
        end if;
    end process;
        

end Behavioral;
