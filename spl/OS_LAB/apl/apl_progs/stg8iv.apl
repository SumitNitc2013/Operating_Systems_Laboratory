decl
	integer status;
	integer fd;
enddecl
integer main()
{
	//opening the file
	status = Open("jha.dat");
	fd=status;
	//print(status);

	//closing the opened file
	status=Close(fd);
	print(status);

	// trying to delete the closed file
	status = Delete("jha.dat");
	print(status);
	return 0;
}
