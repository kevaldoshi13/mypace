create table country
	(
		cid number(10) primary key,
		cname varchar2(10),
		no_of_states number(10),
		area varchar2(10) not null,
		location varchar2(10),
		population number(10)
	);

create table citizen
	(
		id number(10) primary key ,
		ciname varchar2(20),
		mother_tongue varchar2(20),
		state_name varchar2(20),
	);

insert into country(&cid,'&cname',&no_of_states,'&area','&location',&population);

insert into citizen(&id,'&ciname','&mother_tongue','&state_name');

declare
cursor c1 is select * from country,citizen order by cname;
c c1 %rowtype;
begin
open c1;
loop
fetch c1 into c;
exit when c1%notfound;
dbms_output.put_line(c.id
					||' '
					||c.cname
					||' '
					||c.no_of_states
					||' '
					||c.area
					||' '
					||c.location
					||' '
					||c.population
					||' '
					||c.id
					||' '
					||c.ciname
					||' '
					||c.mother_tongue
					||' '
					||c.state_name
					);
end loop;
close c1;
end;
/