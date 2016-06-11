integer main()
{
	integer pid,pid1,pid2,i,m,p,a,f;
	p=1;
	pid=Getpid();
	pid2=Fork();
	if(pid2==-2) then
		i=1;
		while(i<=4) do
			pid1=Fork();
			if(pid1!=-2) then
				f=Write(-pid,pid1);
			endif;
			i=i+1;
		endwhile;
	else
			m=Wait(pid2);
			f=Read(-pid1,a);
			f=f*a;
			print(f);
	endif;
return 0;
}
		
		
		
