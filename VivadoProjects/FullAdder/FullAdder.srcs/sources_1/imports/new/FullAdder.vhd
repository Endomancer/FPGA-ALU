----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2019 21:27:29
-- Design Name: 
-- Module Name: HalfAdder - Behavioral
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

entity FullAdder is
    Port ( BIn:     in STD_LOGIC;
           BIn2:    in STD_LOGIC;
           cin:     in STD_LOGIC;
           clk:     in STD_LOGIC;
           En:      in STD_LOGIC;
           COUT:    out STD_LOGIC;
           BOut:    out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is
signal Badd: std_logic;
begin
    process(clk, En)
        begin
        if (rising_edge(clk) and En = '1') then
            Badd <= BIn XOR BIn2; -- Sum function also note the curlys
            BOut <= Badd XOR cin;
            COUT <= (BIn AND BIn2) or (BIn and cin) or (BIn2 and cin); -- Carry " " 
        end if;
    end process;

end Behavioral;
