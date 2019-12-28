entity For_loop is
end entity;


architecture sim of For_loop is 
begin
	
	process is
	begin
	
		for i in 1 to 10 loop
			report integer'image(i) ;
			
		end loop;
		wait;
	
	end process;

end architecture;


