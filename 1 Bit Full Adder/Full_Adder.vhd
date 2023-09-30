----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Omar Orozco
-- 
-- Create Date: 09/19/2023 10:51:30 AM
-- Design Name: Full Adder
-- Module Name: Full_Adder - Behavioral
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

use IEEE.NUMERIC_STD.ALL;


entity Full_Adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC); 
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

cout <= (a and b) or (cin and (a or b));
s <= a xor b xor cin;

end Behavioral;
