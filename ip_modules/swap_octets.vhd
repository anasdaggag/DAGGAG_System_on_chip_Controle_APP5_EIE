library ieee;
use ieee.std_logic_1164.all;

entity swap_octets is
  port(
    data_in  : in  std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0)
  );
end entity swap_octets;

architecture rtl of swap_octets is
begin

  -- Inversion des octets : [3|2|1|0] -> [0|1|2|3]
  data_out <= data_in(7  downto 0)  &
              data_in(15 downto 8)  &
              data_in(23 downto 16) &
              data_in(31 downto 24);

  -- Variante possible : [1|0|3|2]
  -- data_out <= data_in(15 downto 8) &
  --             data_in(7  downto 0) &
  --             data_in(31 downto 24) &
  --             data_in(23 downto 16);

end architecture rtl;