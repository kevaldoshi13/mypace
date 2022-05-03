create table game
	(
		game_no number(10) primary key,
		game_name varchar2(10),
		no_of_player number(10) check(no_of_player>0),
		coach_name varchar2(20),
	);

create table player
	(
		pid number(10) primary key,
		pname varchar2(20),
		address varchar2(20),
		club_name varchar2(20)
	);

insert into game values(&game_no,'&game_name',&no_of_player,'&coach_name');

insert into player values(&pid,'&pname','&address','&club_name');

declare
cursor c1 is select * from game,player order by club_name;
c c1 %rowtype;
begin
open c1;
loop
fetch c1 into c;
exit when c1%not found;
dbms_output.put_line(c.game_no
					||' '
					||c.game_name
					||' '
					||c.no_of_player
					||' '
					||c.coach_name
					||' '
					||c.pid
					||' '
					||c.pname
					||' '
					||c.address
					||' '
					||c.club_name
					);
end loop;
close c1;
end;
/