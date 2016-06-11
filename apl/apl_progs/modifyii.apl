decl
	integer a,p,q,r,s,b,c;
	integer m,n,ctr;
enddecl

integer main()
{
	p=Create("input11.dat");
	q=Open("input11.dat");
	integer i,j,f;
	i=200;
	while(i<=800) do
		p=Write(q,i);
		i=i+1;
	endwhile;
	p=Write(q,-1);
	p=Create("input22.dat");
	r=Open("input22.dat");
	i=300;
	while(i<=1000) do
		p=Write(r,i);
		i=i+1;
	endwhile;
	p=Write(r,-1);
	p=Create("output33.dat");
	s=Open("output33.dat");
	//i=1;
	p=Seek(q,0);
	p=Seek(r,0);
	j=1;
	//f=0;
	ctr=1;
	while(ctr==1) do
		if(j==1) then
		p=Read(r,m);
		p=Read(q,b);
		endif;
		j=2;
		if(m==-1 || b==-1) then
			break;
		endif;

		if(m<=b) then
			p=Write(s,m);
			p=Read(r,m);
		else
			p=Write(s,b);
			p=Read(q,b);
		endif;
	endwhile;


	if(m==-1) then
		 		while(b!=-1) do
					p=Write(s,b);
					p=Read(q,b);
				endwhile;
	else 
				while(m!=-1) do
					p=Write(s,m);
					p=Read(r,m);
				endwhile;
	endif;
p=Close(q);
p=Close(r);
p=Close(s);	
return 0;
}
