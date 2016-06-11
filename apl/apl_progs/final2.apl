integer main()
{
	integer pid,pid1,pid2,i,m,p,a,f;
	p=1;
	pid=Getpid();
	pid2=Fork();
	if(pid2==-2) then
		f=Write(-pid,32);
	else
		m=Wait(pid2);
		f=Read(-pid2,a);
		print(a);
	endif;
	
return 0;
}
		
		
		
