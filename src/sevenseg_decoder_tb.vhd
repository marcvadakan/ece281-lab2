----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2026 08:34:56 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

component sevenseg_decoder
    port(
        i_sel   : in std_logic_vector(3 downto 0);
        o_D : out std_logic_vector(6 downto 0)
        );
end component;

signal tb_i_sel : std_logic_vector(3 downto 0);
signal tb_o_D   : std_logic_vector(6 downto 0);

begin

    uut_inst : sevenseg_decoder
    port map (
        i_sel   => tb_i_sel,
        o_D     => tb_o_D
    );
    
    stimulus : process
    begin
        tb_i_sel <= "0000"; wait for 10 ns; -- 0
        tb_i_sel <= "0001"; wait for 10 ns; -- 1
        tb_i_sel <= "0010"; wait for 10 ns; -- 2
        tb_i_sel <= "0011"; wait for 10 ns; -- 3
        tb_i_sel <= "0100"; wait for 10 ns; -- 4
        tb_i_sel <= "0101"; wait for 10 ns; -- 5
        tb_i_sel <= "0110"; wait for 10 ns; -- 6
        tb_i_sel <= "0111"; wait for 10 ns; -- 7
        tb_i_sel <= "1000"; wait for 10 ns; -- 8
        tb_i_sel <= "1001"; wait for 10 ns; -- 9
        tb_i_sel <= "1010"; wait for 10 ns; -- A
        tb_i_sel <= "1011"; wait for 10 ns; -- B
        tb_i_sel <= "1100"; wait for 10 ns; -- C
        tb_i_sel <= "1101"; wait for 10 ns; -- D
        tb_i_sel <= "1110"; wait for 10 ns; -- E
        tb_i_sel <= "1111"; wait for 10 ns; -- F
        wait;
    end process;
    
end test_bench;
