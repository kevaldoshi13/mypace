declare
eno emp.empno%type;
sl emp.sal%type;
begin
eno:=&eno;
select emp,sal into eno,sl from emp where empno=eno;
dbms_output.put_line('empno=   '||eno||'sal=  '||sl);
update emp set sal= sal+1000 where empno=eno;
dbms_output.put_line('  '||eno);
select emp,sal into eno,sl from emp where empno=eno;
dbms_output.put_line('empno=   '||eno||'sal=  '||sl);
end;
/