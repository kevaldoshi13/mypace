create table manga
(
mno number(10) primary key,
mname varchar(40),
mstatus varchar2(20),
mchapters number(10),
constraint chk check(mstatus in('ongoing','completed'))
);

create table reader
  (
    rno number(10)  primary key,
    rstatus varchar2(20),
    rwebsite_name varchar2(40),
    rchapters number(20),
    constraint chk1 check(rstatus in('reading','finished'))
  );

insert into manga values(&mno,'&mname','&mstatus');

insert into reader (&rno,'&rstatus','&rwebsite_name','&rchapters');
