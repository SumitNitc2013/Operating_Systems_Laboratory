decl
	integer status;
enddecl
integer main()
{
	//creating the file
	status = Create("jha.dat");
	print(status);

	//opening the file
	status = Open("jha.dat");
	print(status);

	// trying to delete the opened file
	status = Delete("jha.dat");
	print(status);
	return 0;
}
