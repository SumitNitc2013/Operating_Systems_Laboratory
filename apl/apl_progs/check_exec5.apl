// complete replication of current process occurs in case of fork
integer main()
{
   integer result,pid, i,j;
   pid=Fork();
  if(pid==-2) then
  	i=0;
	while(i<=50) do
		print(i);
		i=i+2;
	endwhile;
  else
	//i = Wait(pid);
	//result=Exec("odd.xsm");
	i=1;
	while(i<50) do
		print(i);
		i=i+2;
	endwhile;
  endif;
return 0;    //means INT7 or Exit System call
}
