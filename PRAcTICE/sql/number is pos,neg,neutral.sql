DECLARE
x number(8):=&x;
BEGIN
IF x < 0 THEN
DBMS_OUTPUT.PUT_LINE ('The number '||x||' is a negative number');
ELSIF x = 0 THEN
DBMS_OUTPUT.PUT_LINE ('The number '||x||' is equal to zero');
ELSE
DBMS_OUTPUT.PUT_LINE ('The number '||x||' is a positive number');
END IF;
END;
/
