//this is the program to print all prime numbers lesser than n
decl
	integer n,k,prime(integer x);
	                         //returns 1 if x is a prime number else return 0
enddecl

integer prime(integer x)
{
	integer i,flag;
	i=2;
	flag=1;
	while(i<x) do
		if(x%i==0) then
			flag=0;
		endif;
		i=i+1;
	endwhile;
	return flag;
	
}

integer main()
{
	print("Enter n");
	read(n);
	k=2;
	while(k<n) do
		if(prime(k)==1) then
			print(k);
		endif;
		k=k+1;
	endwhile;
	return 0;
}

