declare
eno emp.empno%type;
sl emp.sal%type;
begin
eno:=&eno;
select empno,sal into eno,sl from emp where empno=eno;
dbms_output.put_line('  '||eno||'  '||sl);
if sl<3000 then
dbms_output.put_line('3000 is greater then    '||sl);
else
dbms_output.put_line('3000 is less then    '||sl);
end if;
end;
/
