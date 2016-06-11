// complete replication of current process occurs in case of fork
integer main()
{
   integer result,pid, i,c1,c2,n;
   pid=Fork();
   c1=0;
   c2=0;
  if(pid==-2) then
	i=0;
	while(i<=50) do
		print(i);
		c1=c1+1;
		if(c1==5) then
			result=Signal();
			result=Wait(Getppid());
			c1=0;
		endif;
		i=i+2;
	endwhile;
  else
	result=Wait(pid);
	i=1;
	while(i<50) do
		print(i);
		c2=c2+1;
		if(c2==5) then
			result=Signal();
			result=Wait(pid);
			c2=0;
		endif;
		i=i+2;
	endwhile;
  endif;
return 0;    //means INT7 or Exit System call
}
