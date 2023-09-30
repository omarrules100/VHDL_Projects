----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Omar Orozco
-- 
-- Create Date: 09/19/2023 04:45:35 PM
-- Design Name: 
-- Module Name: Full_Adder_TB - Behavioral
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

entity Full_Adder_TB is
--  Port ( );
end Full_Adder_TB;

architecture Behavioral of Full_Adder_TB is

component Full_Adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC); 
end component Full_Adder;

signal a_tb, b_tb, cin_tb, cout_tb, s_tb : STD_LOGIC;

begin

UUT: Full_Adder port map(a => a_tb, b => b_tb, cin => cin_tb, cout => cout_tb, s => s_tb);

process begin
    a_tb <= '0';
    b_tb <= '0';
    cin_tb <= '0';
    wait for 10 ns;
    a_tb <= '1';
    b_tb <= '0';
    cin_tb <= '0';
    wait for 10 ns;
    a_tb <= '0';
    b_tb <= '1';
    cin_tb <= '0';
    wait for 10 ns;
    a_tb <= '1';
    b_tb <= '1';
    cin_tb <= '0';
    wait for 10 ns;
    a_tb <= '0';
    b_tb <= '0';
    cin_tb <= '1';
    wait for 10 ns;
    a_tb <= '1';
    b_tb <= '0';
    cin_tb <= '1';
    wait for 10 ns;
    a_tb <= '0';
    b_tb <= '1';
    cin_tb <= '1';
    wait for 10 ns;
    a_tb <= '1';
    b_tb <= '1';
    cin_tb <= '1';
    wait for 10 ns;
end process;

end Behavioral;
