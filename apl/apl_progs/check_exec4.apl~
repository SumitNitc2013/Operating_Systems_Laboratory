// complete replication of current process occurs in case of fork
//if timer is not disabled then it will print result in interleaved manner if Wait() is not used
integer main()
{
   integer result,pid, i,j;
   pid=Fork();
  if(pid==-2) then
  	result=Exec("odd.xsm");
  else
	//i = Wait(pid);
	i=2;
	while(i<=50) do
		print(i);
		i=i+2;
	endwhile;
  endif;
return 0;    //means INT7 or Exit System call
}
