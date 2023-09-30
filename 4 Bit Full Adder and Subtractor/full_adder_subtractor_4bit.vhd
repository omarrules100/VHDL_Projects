----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2023 10:57:09 AM
-- Design Name: 
-- Module Name: full_adder_subtractor_4bit - Behavioral
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

entity full_adder_subtractor_4bit is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           k : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end full_adder_subtractor_4bit;

architecture Behavioral of full_adder_subtractor_4bit is

component Full_Adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC); 
end component Full_Adder;

SIGNAL c : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL internal : STD_LOGIC_VECTOR (3 downto 0);

begin
    internal(0) <= b(0) xor k;
    internal(1) <= b(1) xor k;
    internal(2) <= b(2) xor k;
    internal(3) <= b(3) xor k;
    FA1 : Full_Adder port map (a => a(0),b => internal(0), cin => k, cout => c(0), s =>s(0));
    FA2 : Full_Adder port map (a => a(1),b => internal(1), cin => c(0), cout => c(1), s =>s(1));
    FA3 : Full_Adder port map (a => a(2),b => internal(2), cin => c(1), cout => c(2), s =>s(2));
    FA4 : Full_Adder port map (a => a(3),b => internal(3), cin => c(2), cout => cout, s =>s(3));
    
end Behavioral;
