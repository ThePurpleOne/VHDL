library ieee;

use ieee.std_logic_1164.all;

entity full_adder is
	port
	(
		a:  in std_ulogic;
		b:  in std_ulogic;
		cin: in std_ulogic;
		q: out std_ulogic;
		cout: out std_ulogic
	);
end full_adder;

architecture behave of full_adder is
begin
	q <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
end behave;
