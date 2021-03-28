library ieee;

use ieee.std_logic_1164.all;

entity half_adder is
	port
	(
		inputA: in std_ulogic;
		inputB: in std_ulogic;
		output: out std_ulogic;
		carryO: out std_ulogic
	);
end half_adder;

architecture behave of half_adder is
begin
	output <= inputA xor inputB;
	carryO <= inputA and inputB;
end behave;
