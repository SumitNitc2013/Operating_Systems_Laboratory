integer main()
{
	integer f,a,b,pid;
	string fn;
	f=1;
	while(f==1) do
		print("Welcome!!");
		read(fn);
		if(fn=="exit") then
			Exit();
		endif;
		pid=Fork();
		if(pid==-2) then  //this is for child process
			a=Exec(fn);
		else
			b=Wait(pid);  //parent waits for child to finish execution
			//waiting is over now!!
		endif;
	endwhile;
return 0;
}
		
		
	
