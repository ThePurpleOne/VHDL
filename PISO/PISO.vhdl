library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity piso is
	port
	(
		parallel_in :  in std_logic_vector(7 downto 0);
		clk         :  in std_logic;
		lat         :  in std_logic;
		serial_out  :  out std_logic
	);
end piso;

architecture behave of piso is
	--BEGIN DECLARATIONS
		signal buffer_in : std_logic_vector(7 downto 0) := "00000000";
		signal cnt : integer range 0 to 7 := 0;
	--END DECLARATIONS

	--BEGIN BEHAVE
	begin 
		-- CLOCKING PROCESS
		risingClock : process(clk)
			begin
				if rising_edge(clk) then
					--push new bit every rising clock, lsb first
					serial_out <= buffer_in(cnt);

					-- increment shifting counter
					if cnt = 7 then 
						cnt <= 0;
					else cnt <= cnt + 1;
					end if;

				end if;
		end process;

		-- LATCHING PROCESS
		risingLatch : process(lat)
			begin
				if rising_edge(lat) then
					--Add new bit every rising clock
					buffer_in <= parallel_in;
				end if;
		end process;
end behave;
--END BEHAVE