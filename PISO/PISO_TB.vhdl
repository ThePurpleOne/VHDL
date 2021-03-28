library ieee;
use ieee.std_logic_1164.all;

entity piso_tb is
end piso_tb;

--Definition of Internal Architecture 
architecture test of piso_tb is
--BEGIN DECLARATIONS
	component piso
		port
		(
			parallel_in :  in std_logic_vector(7 downto 0);
			clk         :  in std_logic;
			lat         :  in std_logic;
			serial_out  :  out std_logic
		);
	end component;

	signal SERIAL_OUT, CLK, LAT : std_logic := '0';
	signal PARALLEL_IN : std_logic_vector(7 downto 0) := "11110000";
--END DECLARATIONS

begin
	uut : piso port map (serial_out => SERIAL_OUT, clk => CLK, lat => LAT, parallel_in => PARALLEL_IN);

	process begin

		LAT <= '1';
		wait for 1 ns;
		LAT <= '0';

		for index in 0 to 30 loop
			CLK <= CLK xor '1';
			

			if index = 15 then
				LAT <= '1';
				wait for 1 ns;
				LAT <= '0';
			else
				wait for 1 ns;
			
			end if ;
			
		end loop;
		
		assert false report "Test finished" severity note;
		wait;

	end process;

end test;