entity signal_tb is
end entity;


architecture sim of signal_tb is 

	signal MySignal : integer := 0;

begin
	
	process is
	
		-- 
		-- variables are updated every time it is called.
		-- signals are updated only in a "wait" state
		--
		-- So in the following code signal will update half the 
		-- time of variable
		--
		-- If we change value of signal few times before wait
		-- statement only last one(closest to wait) will get executed.
		-- in this example signal will increment only by 2.
		
		variable MyVariable : integer := 0;
	begin
		MyVariable := MyVariable +1;
		MySignal   <= MySignal + 1;
		
		report "MyVariable is " & integer'image(MyVariable) & 
				" MySignal is " & integer'image(MySignal);
				
						
		MyVariable := MyVariable +1;
		MySignal   <= MySignal + 2;
		
		report "MyVariable is " & integer'image(MyVariable) & 
				" MySignal is " & integer'image(MySignal);
				
		wait for 10 ns;
	
	end process;

end architecture;