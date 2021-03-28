library ieee;
use ieee.std_logic_1164.all;

entity sipo_tb is
end sipo_tb;

--Definition of Internal Architecture 
architecture test of sipo_tb is
--BEGIN DECLARATIONS
	component sipo
		port
		(
			serial_in   :  in std_logic;
			clk         :  in std_logic;
			lat         :  in std_logic;
			parallel_out:  out std_logic_vector(7 downto 0)
		);
	end component;

	signal SERIAL_IN, CLK, LAT : std_logic := '0';
	signal PARALLEL_OUT : std_logic_vector(7 downto 0);
--END DECLARATIONS

begin
	uut : sipo port map (serial_in => SERIAL_IN, clk => CLK, lat => LAT, parallel_out => PARALLEL_OUT);

	process begin

		wait for 1 ns;
		for index in 0 to 7 loop
			CLK <= '1';
			wait for 1 ns;
			SERIAL_IN <= SERIAL_IN xor '1';
			CLK <= '0';
			wait for 1 ns;
		end loop;
		
		LAT <= '1';
		wait for 1 ns;

		assert false report "Test finished" severity note;
		wait;

	end process;

end test;