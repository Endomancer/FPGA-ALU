----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2019 12:09:52
-- Design Name: 
-- Module Name: NBitRegister - Behavioral
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

entity NBitRegister is
--  Port ( );
    generic(n: integer :=8);
    Port(clk:in std_logic;
         En:in std_logic;
         EnOut: in std_logic;
         RIn:in std_logic_vector(n-1 downto 0);
         ROut:out std_logic_vector(n-1 downto 0));
    end NBitRegister;

architecture Behavioral of NBitRegister is
signal hold: std_logic_vector(n-1 downto 0);
begin
    process(clk,En) begin
        if rising_edge(clk) then
            if En = '1' then
                hold <= RIn;
            end if;
            -- update the output if its needed, else high impedance.
            if (EnOut = '1') then
                ROut <= hold;
            else
                ROut <= (others => 'Z');
            end if;
        end if;
    end process;   
end Behavioral;
