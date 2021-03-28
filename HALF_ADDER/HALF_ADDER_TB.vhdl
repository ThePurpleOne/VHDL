library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end half_adder_tb;

architecture test of half_adder_tb is
	component half_adder
		port
		(
			inputA: in std_ulogic;
			inputB: in std_ulogic;
			output: out std_ulogic;
			carryO: out std_ulogic
		);
	end component;

	signal inputA_wire, inputB_wire, output_wire, carryO_wire : std_ulogic;

begin
	half_adder_wires : half_adder port map (inputA => inputA_wire, inputB => inputB_wire, output => output_wire, carryO => carryO_wire);

	process begin
		inputA_wire <= 'X'; 
		inputB_wire <= 'X'; 
		wait for 1 ns;

		inputA_wire <= '0'; 
		inputB_wire <= '0'; 
		wait for 1 ns;

		inputA_wire <= '0'; 
		inputB_wire <= '1'; 
		wait for 1 ns;

		inputA_wire <= '1'; 
		inputB_wire <= '0'; 
		wait for 1 ns;

		inputA_wire <= '1'; 
		inputB_wire <= '1'; 
		wait for 1 ns;

		assert false report "Test finished" severity note;
		wait;

	end process;

end test;