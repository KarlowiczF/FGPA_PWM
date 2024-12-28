library ieee;

use ieee.std_logic_1164.all;

entity FullAdderVhdl is
    port(
    a0, a1, a2, a3, b0, b1, b2, b3 : in std_logic;
    f : out std_logic 
);
end entity;

architecture FullAdderVhdl of FullAdderVhdl is


        signal s1, s2, s3 : std_logic := '0';
begin

f <= (a0 and not b3 and not b2 and not b1 and not b0) or (a1 and not
b3
and not b2 and not b1) or (a1 and a0 and not b3 and not b2 and not b0)

or (a2 and not b3 and not b2) or (a2 and a0 and not b3 and not b1 and
not b0) or (a2 and a1 and not b3 and not b1) or (a2 and a1 and a0 and
not b3 and not b0) or (a3 and not b3) or (a3 and a0 and not b2 and not

b1 and not b0) or (a3 and a1 and not b2 and not b1) or (a3 and a1 and
a0
and not b2 and not b0) or (a3 and a2 and not b2) or (a3 and a2 and a0
and not b1 and not b0) or (a3 and a2 and a1 and not b1) or (a3 and a2
and a1 and a0 and not b0);

end architecture;