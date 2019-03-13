----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.03.2019 10:45:48
-- Design Name: 
-- Module Name: NBitAdder_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NBitAdder_tb is
--  Port ( );
    generic( n : integer := 8);
end NBitAdder_tb;

architecture Behavioral of NBitAdder_tb is
--    component NBitAdder
--    generic( n: integer := 8);
--    port(OP1    :in std_logic_vector(n-1 downto 0);
--         OP2    :in std_logic_vector(n-1 downto 0);
--         clk    :in std_logic;
--         CIN    :in std_logic;
--         RES    :out std_logic_vector(n-1 downto 0);
--         COUT   :out std_logic);
--     end component;
      component FullAdder
      Port ( BIn:     in STD_LOGIC;
             BIn2:    in STD_LOGIC;
             cin:     in STD_LOGIC;
             clk:     in STD_LOGIC;
             En:      in STD_LOGIC;
             COUT:    out STD_LOGIC;
             BOut:    out STD_LOGIC);
       end component;         
--signal val1: std_logic_vector(n-1 downto 0);
--signal val2: std_logic_vector(n-1 downto 0);
--signal result: std_logic_vector(n-1 downto 0);
--signal cIn: std_logic;
--signal cOut: std_logic;
--signal clk: std_logic;
signal OP1: std_logic_vector(n-1 downto 0);
signal OP2: std_logic_vector(n-1 downto 0);
signal CIn: std_logic;
signal COut: std_logic;
signal RES: std_logic_vector(n-1 downto 0);
signal carry: std_logic_vector(n-2 downto 0);
signal clk: std_logic;
signal En: std_logic;
    

begin
    --nbit: NBitAdder port map(OP1 => val1, OP2 => val2, CIN => cIn, COUT => cOut,clk => clk, RES => result);
    fa1: FullAdder port map (Bin =>OP1(0) ,BIn2 =>OP2(0), CIn =>CIN, COut =>carry(0) , BOut =>RES(0),clk => clk, en=> en ); 
        fa2: FullAdder port map (Bin =>OP1(1) ,BIn2 =>OP2(1), CIn =>carry(0), COut =>carry(1) , BOut =>RES(1),clk => clk, en=> en );
        fa3: FullAdder port map (Bin =>OP1(2) ,BIn2 =>OP2(2), CIn =>carry(1), COut =>carry(2) , BOut =>RES(2),clk => clk, en=> en );
        fa4: FullAdder port map (Bin =>OP1(3) ,BIn2 =>OP2(3), CIn =>carry(2), COut =>carry(3) , BOut =>RES(3),clk => clk, en=> en );
        fa5: FullAdder port map (Bin =>OP1(4) ,BIn2 =>OP2(4), CIn =>carry(3), COut =>carry(4) , BOut =>RES(4),clk => clk, en=> en );
        fa6: FullAdder port map (Bin =>OP1(5) ,BIn2 =>OP2(5), CIn =>carry(4), COut =>carry(5) , BOut =>RES(5),clk => clk, en=> en );
        fa7: FullAdder port map (Bin =>OP1(6) ,BIn2 =>OP2(6), CIn =>carry(5), COut =>carry(6) , BOut =>RES(6),clk => clk, en=> en );
        fa8: FullAdder port map (Bin =>OP1(7) ,BIn2 =>OP2(7), CIn =>carry(6), COut =>COUT , BOut =>RES(7),clk => clk, en=> en );
--    Adder: FullAdder port map (Bin =>OP3 ,BIn2 =>OP4, CIn =>CInput, COut =>COutput , BOut =>results );
    process begin
--        clk <= '0';
--        result <= "00000000";
--        val1 <= "00000001";
--        val2 <= "00000000";
--        cIn <= '0';
        --wait for 100 ns;
   --     clk <= '1';
        En <= '1';
        OP1 <= "00000000";
        OP2 <= "00000000";
        CIn <= '0';
        clk <= '1';
        
        wait for 1 ns;
        clk <= '0';
        
        wait for 100 ns;
--        clk <= '0';
--        val1 <= "00010001";
--        val2 <= "01010000";
--        cIn <= '1';
        OP1 <= "00000001";
        OP2 <= "00000000";
        CIn <= '0';
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        En <= '0';
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
        En <= '1';
        OP1 <= "10000011";
        OP2 <= "00100001";
        CIn <= '1';
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
        OP1 <= "10001000";
        OP2 <= "10000010";
        CIn <= '1';
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 100 ns;
    end process;
        

end Behavioral;
