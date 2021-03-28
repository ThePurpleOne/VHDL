library ieee;

use ieee.std_logic_1164.all;

entity bits4_adder is
	port
	(
		a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		q: out std_logic_vector(3 downto 0);
		coutQ: out std_ulogic
	);
end bits4_adder;

architecture behaviour of bits4_adder is

	-- Internal signals
	signal COUT1, COUT2, COUT3 : std_ulogic;

	-- Reminder of port
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

	begin
		-- Link full_adder module pin to bits4_adder pins
		adder1 : full_adder port map (a => a(0), b => b(0), cin => '0' , q => q(0), cout => COUT1);
		adder2 : full_adder port map (a => a(1), b => b(1), cin => '0' , q => q(1), cout => COUT2);
		adder3 : full_adder port map (a => a(2), b => b(2), cin => '0' , q => q(2), cout => COUT3);
		adder4 : full_adder port map (a => a(3), b => b(3), cin => '0' , q => q(3), cout => coutQ);

end behaviour;