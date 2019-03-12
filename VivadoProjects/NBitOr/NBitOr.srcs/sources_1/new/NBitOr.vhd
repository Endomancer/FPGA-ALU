----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2019 15:20:00
-- Design Name: 
-- Module Name: NBitOr - Behavioral
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

entity NBitOr is
    generic(n:  integer:= 8);
    Port(op1:   in std_logic_vector(n-1 downto 0);
         op2:   in std_logic_vector(n-1 downto 0);
         clk:   in std_logic;
         En:    in std_logic;
         res:   out std_logic_vector(n-1 downto 0));
--  Port ( );
end NBitOr;

architecture Behavioral of NBitOr is

begin
    process (clk, En) 
        begin
        if (rising_edge(clk) and En = '1') then
            for I in 0 to n-1 loop
                res(I) <= op1(I) or op2(I);
            end loop;
        end if;
    end process;
end Behavioral;
