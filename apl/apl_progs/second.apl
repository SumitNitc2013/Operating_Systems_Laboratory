//this is the program to find the factorial of a given natural number

decl
	integer a,fact;
	integer factorial(integer n);
enddecl

integer factorial(integer n)
{
	if(n==0 || n==1) then
		fact=1;
	else
		fact=n*factorial(n-1);
	endif;
return fact;
}

integer main()
{
	integer f;
	read(a);
	f=factorial(a);
	print(f);
	return 0;
}

