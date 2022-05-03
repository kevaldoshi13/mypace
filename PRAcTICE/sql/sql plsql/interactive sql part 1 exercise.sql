/*1.create the table described below: */
/*client_master table */
create table client_master
(
	clientno varchar2(6),
	name varchar2(20),
	address1 varchar2(30),
	address2 varchar2(30),
	city varchar2(15),
	pincode number(15),
	state varchar2(15),
	baldue number(10,2)
);
/*product_master table */
create table product_master
(
	productno varchar2(6),
	description varchar2(15),
	profitpercent number(4,2),
	unitmeasure varchar2(10),
	qtyonhand number(8),
	reorderlvl number(8),
	sellprice number(8,2),
	costprice number(8,2)
);
/*salesman_master table */
create table salesman_master
(
salesmanno varchar2(6),
salesmanname varchar2(20),
address1 varchar2(30),
address2 varchar2(30),
city varchar2(20),
pincode NUMBER(8),
state varchar2(20),
salamt number(8,2),
tgttoget number(6,2),
ytdsales number(6,2),
remarks varchar2(60)
);
/*inserting data into client_master table */
insert into client_master values
	(
	'&clientno',
	'&name',
	'&address1',
	'&address2',
	'&city',
	&pincode,
	'&state',
	&baldue
	);
c00001
ivan bayross


mumbai
400054
maharashtra
15000
/
c00002
mamta muzumdar


madras
780001
tamil nadu
0
/
c00003
chhaya bankar


mumbai
400057
maharashtra
5000
/
c00004
ashwini joshi


bangalore
560001
karnataka
0
/
c00005
hansel colaco


mumbai
400060
maharashtra
2000
/
c00006
deepak sharma


mangalore
560050
karnataka
0
/*inserting into product_master table */
insert INTO PRODUCT_MASTER values
(
'&productno',
'&description',
&profitpercent,
'&unitmeasure',
&qtyonhand,
&reorderlvl,
&sellprice,
&costprice
);
p00001
t-shirts
5
piece
200
50
350
250
/
p0345
shirts
6
piece
150
50
500
350
/
p06734
cotton jeans
5
piece
100
20
600
450
/
p07865
jeans
5
piece
100
20
750
500
/
p07868
trouser
2
piece
150
50
850
550
/
p07885
pull overs
2.5
piece
80
30
700
450
/
p07965
denim shirts
4
piece
100
40
350
250
/
p07975
lycra tops
5
piece
70
30
300
175
/
p08865
skirts
5
piece
75
30
450
300
/*inserting into salesman_master table */
INSERT INTO SALESMAN_MASTER VALUES
(
'&salesmanno',
'&salesmanname',
'&address1',
'&address2',
'&city',
&pincode,
'&state',
&salamt,
&tgttoget,
&ytdsales,
'&remarks'
);
s00001
aman
a/14
worli
mumbai
400002
maharashtra
3000
100
50
good
/
s00002
omkar
65
nariman
mumbai
400001
maharashtra
3000
200
100
good
/
s00003
raj
p-7
bandra
mumbai
400032
maharashtra
3000
200
100
good
/
s00004
ashish
a/5
juhu
mumbai
400044
maharashtra
3500
200
150
good
/*3.excerise on retriving records from a table */
/*a.find out all names of all the client_master */
select name from client_master;
/*b.retrieve the entire contents of the client_master table */
select * from client_master;
/*c.retrieve the list name,city and the state of all clients. */
select name,city,state from client_master;
/*d. list the various products available from the product_master table. */
select description from product_master;
/*e.list all clients who are located in mumbai. */
select * from client_master where city='mumbai';
/* find the names of salesman who have a salary equal to Rs.3000. */
select salesmanname from SALESMAN_MASTER where salamt=3000;
/*4.exercise on updatinng records in a table */
/*a. change the city of client no 'c00005' to 'banglore'.*/
update client_master set city='bangalore' where clientno='c00005';
/*b.change baldue of clientno'c00001' to Rs. 1000.*/
update client_master set baldue=1000 where clientno='c00001';
/*c.change the cost price of 'trousers' to Rs.950.0*/
update PRODUCT_MASTER set costprice=950 where description='trousers';
/*d.change the city of the salesman to pune*/
update SALESMAN_MASTER set city= 'pune';
/*5.exercise on deleting records in a table.*/
/*a.delete all salesman from the salesman_master whose salaries are equal to rs.3500*/
delete from SALESMAN_MASTER where salamt=3500;
/*b.delete all products from product_master where the quantity on hand is equal to 100*/
delete from product_master where qtyonhand = 100;
/*c.delete from client_master where the column state holds the value 'tamil nadu'*/ 
delete from client_master where  state = 'tamil nadu';
/*exercise on deleting the table structure along with the data. */
/*a. add a column called "telephone" of data type 'number' and size */
alter table client_master
add telephone number(10);
/*b. change the size of sellprice column  in product_master to 10,2.*/
alter table product_master
modify sellprice number(10,2);
/*7.exercise on deleting the table structure along with the data.*/
/*a. destroy the table client_master along with its data.*/
drop table client_master;
/*8.exerciseson renaming the table*/
/*change the name of the salesman_master table to sman_mast*/
rename salesman_master to sman_mast;