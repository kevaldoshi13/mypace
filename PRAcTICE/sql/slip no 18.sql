create table student
	(
		s_reg_no number(10)primary key,
		s_name varchar2(20) not null,
		s_class varchar2(10),
		year number(10)
	);

create table competition
	(
		comp_no number(10) primary key,
		comp_name varchar2(20) not null,
		comp_type varchar2(10),
		constraint chk check(comp_type in('sports','academic'))
	);
create table std_year
	(
		s_reg_no number(10) references student,
		comp_no number(10) references competition,
		year number(10) references student
		);
insert into student values(&s_reg_no,'&s_name','&s_class',&year);

insert into competition values(&comp_no,'&comp_name','&comp_type');

insert into std_year(&s_reg_no,&comp_no,&year);

declare
cursor c1 is select * from std_year,competition order by year;
c c1 %rowtype;
begin
open c1;
loop
fetch c1 into c;
exit when c1%notfound;
dbms_output.put_line(c.s_reg_no||' '||c.s_name||' '||c.s_class||' '||c.year||' '||c.comp_no||' '||c.comp_name||' '||c.comp_type);
end loop;
close c1;
end;
/
