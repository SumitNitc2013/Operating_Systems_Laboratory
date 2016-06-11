decl
	integer status;
enddecl
integer main()
{
	status = Open("FILE.dat");
	print(status);
	return 0;
}
