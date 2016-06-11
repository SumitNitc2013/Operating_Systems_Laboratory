decl
	integer a,p,q,r,s;
	string m,n;
enddecl

integer main()
{
	p=Create("file3.dat");
	q=Open("file3.dat");
	integer i;
	i=2;
	while(i<=20) do
		p=Write(q,i);
		i=i+2;
	endwhile;
	p=Create("file4.dat");
	r=Open("file4.dat");
	i=1;
	while(i<=20) do
		p=Write(r,i);
		i=i+2;
	endwhile;
	p=Create("answer.dat");
	s=Open("answer.dat");
	i=1;
	p=Seek(q,0);
	p=Seek(r,0);
	while(i<=10) do
		p=Read(r,m);
		p=Write(s,m);
		p=Read(q,m);
		p=Write(s,m);	
		i=i+1;	
	endwhile;
	return 0;
}
