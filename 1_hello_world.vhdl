
-- in vhdl new line and spaces are treated equally


-- entity defines the inputs and outputs of the system
entity hello_world is 
end entity;


-- put our logic and algorithms
architecture sim of hello_world is
begin


	--process is similar to thread
	-- code inside it is executed sequentially.
	process is
	begin
		report "Hello world";
		wait;
	
	end process;

end architecture;


