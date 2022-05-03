create table project
			(
pno number(10) primary key,
pname varchar2(10),
start_date date,
budget number(20),
status char(1),
constraint chk check(status in('c','i','p')));

create table department
(
dno number(10) primary key,
dname varchar2(10),
HOD varchar2(10),
loc varchar2(10)
);

insert into project values(&pno,'&pname','&start_date',&buget,'&status');

insert into department values(&dno,'&dname','&hod','&loc');

declare
cursor c2 is select * from department,project order by status;
c c2 %rowtype;
begin
open c2;
loop
fetch c2 into c;
exit when c2%notfound;
dbms_output.put_line(c.pno
					||' '
					||c.pname
					||' '
					||c.start_date
					||' '
					||c.budget
					||' '
					||c.status
					||' '
					||c.dno
					||' '
					||c.dname
					||' '
					||c.hod
					||' '
					||c.loc
					);
end loop;
close c2;
end;
/
