entity ifElse is
end entity;


architecture sim of ifElse is 

	signal CountUp : integer := 0;
	signal CountDown : integer := 10;

begin
	
	process is
	begin
		
		CountUp <= CountUp + 1;
		CountDown <= CountDown -1 ;
		wait for 10 ns;
	
	end process;
	
	
	process is
	begin
		 
		
		wait on CountDown, CountUp;
		if CountUp > CountDown then
			report "CountUp is larger";
			
		elsif CountUp < CountDown then
			report "CountDown is Larger";
			
		else 
			report "They are equal";
		
		end if;
		--report "CountUp is " & integer'image(CountUp) & " CountDown is " & integer'image(CountDown);
				
		
	
	end process;

end architecture;