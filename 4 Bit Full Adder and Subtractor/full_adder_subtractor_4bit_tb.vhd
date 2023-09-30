----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2023 11:27:48 PM
-- Design Name: 
-- Module Name: full_adder_subtractor_4bit_tb - Behavioral
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


entity full_adder_subtractor_4bit_tb is
--  Port ( );
end full_adder_subtractor_4bit_tb;

architecture Behavioral of full_adder_subtractor_4bit_tb is

component full_adder_subtractor_4bit is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           k : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end component full_adder_subtractor_4bit;

SIGNAL a_tb, b_tb, s_tb : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL k_tb, cout_tb : STD_LOGIC;

begin

UUT : full_adder_subtractor_4bit port map(a => a_tb, b => b_tb, k => k_tb, cout => cout_tb, s => s_tb);

process begin
    a_tb <= "1011";
    b_tb <= "0001";
    k_tb <= '0'; 
    wait for 10 ns;
    a_tb <= "1001";
    b_tb <= "1101";
    k_tb <= '0'; 
    wait for 10 ns;
    a_tb <= "1011";
    b_tb <= "0001";
    k_tb <= '1'; 
    wait for 10 ns;
    a_tb <= "1101";
    b_tb <= "1001";
    k_tb <= '0'; 
    wait for 10 ns;
    wait;
end process;

end Behavioral;
