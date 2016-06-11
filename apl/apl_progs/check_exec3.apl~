integer main()
{
  integer result,pid, i;
  //result=-5;
  print ("before Exec");
  pid=Fork();
  
  if(pid==-2) then
  	result=Exec("odd.xsm");
	//nothing will be there in print(result);
  else
	i = Wait(pid);     //wait for child process untill child process terminates
	print("after Exec");
	//print(result);  
  endif;
  

return 0;    //means INT7 or Exit System call
}
