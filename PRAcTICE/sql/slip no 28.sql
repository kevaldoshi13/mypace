create table bill
  (
    billno number(10) primary key,
    bday number(10),
    tableno number(10),
    total number(10),
  );

create table menu
  (
    dish_no number(10) primary key,
    dish_desc varchar2(40),
    price number(10) check( price>0),
  );

insert into bill values(&billno,&bday,&tableno,&total);

insert into menu values(&dish_no,'&dish_desc',&price);

  declare
  cursor c1 is select * from bill,menu order by tableno;
  c c1 %rowtype;
  begin
  open c1;
  loop
  fetch c1 into c;
  exit when c1%notfound;
  dbms_output.put_line(c.billno||' '||c.bday||' '||c.tableno||' '||c.total||' '||c.dish_no||' '||c.dish_desc||' '||c.price);
end loop;
close c1;
end;
/
