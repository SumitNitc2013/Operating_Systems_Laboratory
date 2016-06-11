integer main()
{
  integer result,pid;
  result=-5;
  print ("before Exec");
  pid=Fork();
  if(pid==-2) then
  result=Exec("odd.xsm");
  endif;
  print("after Exec");
  print(result);
return 0;    //means INT7 or Exit System call
}
