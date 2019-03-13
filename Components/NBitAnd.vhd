----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.03.2019 14:19:59
-- Design Name: 
-- Module Name: NBitAnd - Behavioral
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

entity NBitAnd is
--  Port ( );
    generic(n:  integer:=   8);
    port(OP1:   in std_logic_vector(n-1 downto 0);
         OP2:   in std_logic_vector(n-1 downto 0);
         En:    in std_logic;
         clk:   in std_logic;
         RES:   out std_logic_vector(n-1 downto 0));
end NBitAnd;

architecture Behavioral of NBitAnd is

begin
    process (clk,En)
        begin
        if (rising_edge(clk) and En <= '1') then
            for I in 0 to n-1 loop
                RES(I) <= OP1(I) AND OP2(I);
            end loop;
        end if;
    end process;
end Behavioral;
