integer main()
{
	integer pid,pid1,pid2,i;
	//print ("BEFORE FORK");
	pid=Fork();
        pid=Fork();
	pid1=Getpid();
        i=Wait(pid1);
	pid=Fork();
	pid2=Getpid();
	print(pid2);
	//print ("AFTER FORK");
return 0;
}
