create table gym
	(
			gno number(10) primary key,
			gname varchar2(40),
      gcity varchar2(20),
      gcharges number(10),
      scheme varchar2(20)
	);

create table member
    (
      mid number(20) primary key,
      mname varchar2(20),
      phone_no number(20) check(phone_no<10),
      address varchar2(40)
    );

insert into gym values (&gno,'&gname','&gcity',&gcharges,'&scheme');

insert into member values (&mid,'&mname',&phone_no,'&address');

declare
cursor c1 is select * from gym,member  order by  gymname;
c c1 %rowtype;
begin
open c1;
loop
fetch c1 into c;
exit when c1%notfound;
dbms_output.put_line(c.gnou||' '||c.gname||' '||c.gcity||' '||c.gcharges||' '||c.scheme||' '||c.mid||' '||c.mname||' '||c.phone_no||' '||c.address);
end loop;
close c1;
end;
/
