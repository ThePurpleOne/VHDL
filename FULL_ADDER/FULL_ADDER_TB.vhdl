library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

--Definition of Internal Architecture 
architecture test of full_adder_tb is
	component full_adder
		port
		(
			a:  in std_ulogic;
			b:  in std_ulogic;
			cin: in std_ulogic;
			q: out std_ulogic;
			cout: out std_ulogic
		);
	end component;

	signal A, B, CIN, Q, COUT : std_ulogic;

begin
	uut : full_adder port map (a => A, b => B, cin => CIN, q => Q, cout => COUT);

	process begin

		CIN <= 'X'; 
		B  <= 'X'; 
		A  <= 'X'; 
		wait for 1 ns;
		CIN <= '0'; 
		B  <= '0'; 
		A  <= '0'; 
		wait for 1 ns;
		CIN <= '0'; 
		B  <= '0'; 
		A  <= '1'; 
		wait for 1 ns;
		CIN <= '0'; 
		B  <= '1'; 
		A  <= '0'; 
		wait for 1 ns;
		CIN <= '0'; 
		B  <= '1'; 
		A  <= '1'; 
		wait for 1 ns;
		CIN <= '1'; 
		B  <= '0'; 
		A  <= '0'; 
		wait for 1 ns;
		CIN <= '1'; 
		B  <= '0'; 
		A  <= '1'; 
		wait for 1 ns;
		CIN <= '1'; 
		B  <= '1'; 
		A  <= '0'; 
		wait for 1 ns;
		CIN <= '1'; 
		B  <= '1'; 
		A  <= '1'; 
		wait for 1 ns;

		assert false report "Test finished" severity note;
		wait;

	end process;

end test;