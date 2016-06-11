decl
integer n, a, b, c,d, temp, n1, n2, ctr, temp1, temp2;
string r;
enddecl

integer main(){
	c= Create("int1.dat");
	a= Open("int1.dat");

	ctr=400;
	while(ctr < 1000) do
		c= Write(a,ctr);
		ctr= ctr+1;
	endwhile;
	c=Write(a, -1);

	c= Create("int2.dat");
	b= Open("int2.dat");

	ctr=300;
	while(ctr<900) do
		c= Write(b,ctr);
		ctr= ctr+1;
	endwhile;
	c=Write(b, -1);

	c= Create("out.dat");
	d= Open("out.dat");

	c= Seek(a,0);
	c= Seek(b,0);
	temp1=-2;
	temp2=-2;
	ctr=1;
	while(ctr==1) do
		//read from first file
		if(temp1==-2) then
			c=Read(a, n1);
			temp1=n1;
		endif;

		//read from second file
		if(temp2==-2) then
			c=Read(b, n2);
			temp2=n2;
		endif;

		if(temp1==-1 || temp2==-1) then
			break;
		endif;

		if(temp1<=temp2) then
			c=Write(d, temp1);
			temp1=-2;
		else
			c=Write(d, temp2);
			temp2=-2;	
		endif;
	endwhile;

	if(temp1==-1) then
		while(temp2!=-1) do
			c=Read(b, n2);
			c=Write(d, n2);
			temp2=n2;
		endwhile;
	else
		while(temp1!=-1) do
			c=Read(a, n1);
			c=Write(d, n1);
			temp1=n1;
		endwhile;
	endif;

	c=Close(a);
	c=Close(b);
	c=Close(d);
	return 0;
}