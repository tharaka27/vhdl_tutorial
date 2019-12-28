

entity loop_tb is
end entity;

architecture sim of loop_tb is
begin
	
	process is
	begin
	
		report "hello";
		
		loop 
			report "looping";
			wait for 10 ns;
			
			-- Uncomment following line to exit from loop
			
			-- exit; 
		end loop;
		
		report "good bye";
		wait;
		
	end process;
	
end architecture;