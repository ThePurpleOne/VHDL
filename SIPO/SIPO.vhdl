library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sipo is
	port
	(
		serial_in   :  in std_logic;
		clk         :  in std_logic;
		lat         :  in std_logic;
		parallel_out:  out std_logic_vector(7 downto 0)
	);
end sipo;

architecture behave of sipo is
--BEGIN DECLARATIONS
	signal buffer_out : std_logic_vector(7 downto 0) := "00000000";
--END DECLARATIONS

--BEGIN BEHAVE
begin 
	-- CLOCKING PROCESS
	risingClock : process(clk)
		begin
			if rising_edge(clk) then
				--Add new bit every rising clock
				buffer_out <= buffer_out(6 downto 0) & serial_in;
			end if;
	end process;

	-- LATCHING PROCESS
	risingLatch : process(lat)
		begin
			if rising_edge(lat) then
				--Add new bit every rising clock
				parallel_out <= buffer_out;
			end if;
	end process;
end behave;
--END BEHAVE