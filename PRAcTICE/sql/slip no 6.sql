create table employee
(
emp_id number(10) primary key,
emp_name varchar2(10),
emp_address varchar2(10));

create table investment
(
inv_no number(10),
inv_name varchar2(10),
inv_address varchar2(10),
inv_amount number(10) check(inv_amount>0),
inv_date date,
emp_id number(10) references employee);

insert into employee values (&emp_id,'&emp_name','&emp_address');

insert into investment values (&inv_no,'&inv_name','&inv_address',&inv_amount,'&inv_date',&emp_id);

declare
cursor c1 is select * from investment order by inv_date;
c c1 %rowtype;
begin
open c1;
loop
fetch c1 into c;
exit when c1 %notfound;
dbms_output.put_line(c.emp_id
					||' '
					||c.inv_no
					||' '
					||c.inv_name
					||' '
					||c.inv_amount
					||' '
					||c.inv_address
					);
end loop;
close c1;
end;
/