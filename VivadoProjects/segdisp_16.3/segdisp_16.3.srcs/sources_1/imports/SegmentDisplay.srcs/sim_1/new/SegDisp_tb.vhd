----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.02.2019 16:19:29
-- Design Name: 
-- Module Name: SegDisp_tb - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SegDisp_tb is
--  Port ( );
    
end SegDisp_tb;

architecture Behavioral of SegDisp_tb is
--    component SegDisp
--        Port ( SW : in STD_LOGIC_VECTOR (3 downto 0);
--               C : out STD_LOGIC_VECTOR (0 to 6);
--               AN : out STD_LOGIC_VECTOR (7 downto 0));
--    end component;
--    signal SW: std_logic_vector (3 downto 0);
--    signal C: std_logic_vector (0 to 6);
--    signal AN: std_logic_vector (7 downto 0);
--    signal bcd_in:  std_logic_vector (3 downto 0);	-- Input BCD vector
--    signal leds_out: std_logic_vector (0 to 6);
    component counter
    --generic(N : integer := 4);
    port(
        clr : in std_logic;
        clk : in std_logic;
        q   : out std_logic_vector(3 downto 0)
        );
    end component;
    signal clr  : std_logic;
    signal clk  : std_logic;
    signal q    : std_logic_vector(3 downto 0);
    
begin
    --UTT: SegDisp port map (SW => SW, C => C, AN => AN); 
    --variable v_count: std_logic_vector range x"00" to x"09" := x"00";
    UTT: counter port map (clr => clr, clk => clk, q => q);
    process
        begin
        clr <= '1';
        clk <= '1';
        wait for 10 ns;
        clk <= '0';
        clr <= '0';
        for i in 0 to 500 loop
            if i mod 2 = 0 then
                clk <= '1';
            else 
                clk <= '0';
            end if;
            wait for 10 ns;
        end loop;
                
--        AN <= "11111110";
--        for i in 0 to 9 loop
--            SW <= std_logic_vector(to_unsigned(i, SW'length));
--            wait for 100 ns;
--        end loop;
--        SW <= "0001";
--        wait for 100 ns;
--        SW <= "0010";
--        wait for 100 ns;
--        SW <= "0011";
--        wait for 100ns;
--        SW <= "0100";
--        wait for 100ns;
--        SW <= 
    end process;
end Behavioral;
