library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bits4_adder_tb is
end bits4_adder_tb;

--Definition of Internal Architecture 
architecture test of bits4_adder_tb is
	component bits4_adder
		port
		(
			a: in std_logic_vector(3 downto 0);
			b: in std_logic_vector(3 downto 0);
			q: out std_logic_vector(3 downto 0);
			coutQ: out std_ulogic
		);
	end component;

	signal A, B, Q : std_logic_vector(3 downto 0) := "0000";
	signal COUT_Q  : std_ulogic := '0';

begin
	uut : bits4_adder port map (a => A, b => B, q => Q, coutq => COUT_Q);

	process begin

		for i in 0 to 15 loop
			A <= std_logic_vector( unsigned(A) + 1);
			for y in 0 to 15 loop
				B <= std_logic_vector( unsigned(B) + 1); 
				wait for 1 ns;
			end loop ;
		end loop ;
		
		assert false report "Test finished";
		wait;

	end process;

end test;