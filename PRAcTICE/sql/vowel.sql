 declare
 x varchar2(10);
 a varchar2(10):= a;
 e varchar2(10):= e;
 i varchar2(10):= i;
 o varchar2(10):= o;
 u varchar2(10):= u;
 begin
 x:=&x;
 if x=a or x=e or x=i or x=o or x=u then
 dbms_output.put_line('vowel=  '||x);
 end if;
 dbms_output.put_line('constant=  '||x);
 end;
 /