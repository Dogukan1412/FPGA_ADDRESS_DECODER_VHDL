
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use ieee.std_logic_arith.all;


entity addr_decoder is
  GENERIC(n : natural := 3);
  Port ( 
        addr : in std_logic_vector(n-1 downto 0);
        ena : in std_logic;
        word_line : out std_logic_vector(2**n-1 downto 0)
  );
end addr_decoder;

architecture Behavioral of addr_decoder is
    signal s_addr : conv_integer(addr);
begin
    gen: for i in word_line'range generate
        word_line(i) <= '0' when i = s_addr and ena = '1' else '1';
    end generate;

end Behavioral;
