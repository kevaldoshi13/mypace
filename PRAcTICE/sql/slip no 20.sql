create table driver
	(
		driver_id number(10) primary key,
		driver_name varchar2(20) not null,
		address varchar2(20)
	);

create table car
	(
		license_no varchar2(10) primary key,
		model varchar2(20),
		year number(4)
	);

insert into driver values(&driver_id,'&driver_name','&address');

insert into car values(&license_no,'&model',&year);

declare
cursor c1 is select * from driver,car order by driver_name;
c c1 %rowtype;
begin
open c1;
loop
fetch c1 into c;
exit when c1%notfound;
dbms_output.put_line(c.driver_name||' '||c.driver_id||' '||c.address||' '||c.license_no||' '||c.model||' '||c.year);
end loop;
close c1;
end;
/
