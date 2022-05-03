/*interactive sql part 2*/
/*hand on exercises*/
/*1.create table describes below:*/
/*name:client_master
description: used to store client information.*/
create table client_master
	(
		clientno varchar2(6)primary key check(clientno LIKE 'c%'),
		name varchar2(20) not null,
		address1 varchar2(30),
		address2 varchar2(30),
		city varchar2(15),
		pincode number(8),
		state varchar2(15),
		baldue number(10,2)
	);

/*name:product_master
description: used to store product information.*/
create table product_master
	(
		productno varchar2(6) primary key check(productno LIKE 'p%'),
		description varchar2(15) not null,
		profitpercent number(4,2)not null,
		unitmeasure varchar2(10) not null,
		qtyonhand number(8) not null,
		reorderlvl number(8) not null,
		sellprice number(8,2) not null check(sellprice > 0),
		costprice number(8,2) not null check(costprice > 0)
	);
/*name: salesman_master description: used to store salesman information working for the company*/
create table salesman_master
	(
		salesmanno varchar2(6)primary key check(salesmanno LIKE 's%'),
		salesmanname varchar2(20) not null,
		address1 varchar2(30) not null,
		address2 varchar2(30),
		city varchar2(8),
		pincode number(8),
		state varchar2(20),
		salamt number(8,2) not null check(salamt>0),
		tgttoget number(6,2) not null check(tgttoget>0),
		ytdsales number(6,2) not null,
		remarks varchar2(60)
	);
--name: sales_order description:used to store cliet's order

CREATE TABLE sales_order	--constraint name should always be in capital letter or it will give an error
	(
		orderno VARCHAR2(6) PRIMARY KEY CHECK(orderno LIKE 'o%'),
		clientno VARCHAR2(6) REFERENCES client_master,
		orderdate DATE not null,
		delyaddr VARCHAR2(25) NULL,
		salesmanno VARCHAR2(6) REFERENCES salesman_master(salesmanno),
		delytype CHAR(1) DEFAULT 'F',
		billyn CHAR(1),
		delydate DATE,
		orderstatus VARCHAR2(10),
		CHECK(orderstatus IN('IN PROCESS','FULLFILLED','BACK ORDER','CANCELLED')),
		CHECK(delytype IN('P','F'))
	);

ALTER TABLE sales_order MODIFY CHECK(orderdate < delydate);		--below query is not executing in the create keyword so i write in alter keyword

CREATE TABLE sales_order_details	--NAME: sales_order_detail description: used to store client's orders with details of each product ordered
(
orderno VARCHAR2(6) REFERENCES sales_order,
productno VARCHAR2(6) REFERENCES product_master,
qtyordered NUMBER(8),
qtydisp NUMBER(8),
productrate NUMBER(10,2)
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

insert into sales_order VALUES('&orderno',
								'&clientno',
								'&orderdate',
								'&delyaddr',
								'&salesmanno',
								'&delytype',
								'&billyn',
								'&delydate',
								'&orderstatus'
								);
o19001
c00001
12-jun-04

s00001
F
N
20-july-02
IN PROCESS
/
o19002
c00002
25-jun-04

s00002
P
N
27-june-02
CANCELLED
/
o46865
c00003
18-feb-04

s00003
F
Y
20-feb-02
FULLFILLED
/
o19003
c00001
03-apr-04

s00001
F
Y
07-apr-02
FULLFILLED
/
o46866
c00004
20-may-04

s00002
P
N
22-may-02
CANCELLED
/
o19008
c00005
20-may-04

s00004
F
N
26-JULY-02
IN PROCESS

INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19001','p00001',4,4,525);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19001','p07965',2,1,8400);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19001','p07885',2,1,5250);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19002','p00001',10,0,525);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o46865','p07868',3,3,3150);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o46865','p07885',3,1,5250);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o46865','p00001',10,10,525);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o46865','p0345',4,4,1050);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19003','p0345',2,2,1050);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19003','p06734',1,1,12000);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o46866','p07965',1,0,8400);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o46866','p07975',1,0,1050);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19008','p00001',10,5,525);
INSERT INTO SALES_ORDER_DETAILS(ORDERNO,PRODUCTNO,QTYORDERED,QTYDISP,PRODUCTRATE) VALUES('o19008','p07975',5,3,1050);

select * from salesman_master;

CLIENT NAME                 ADDRESS1                       ADDRESS2                       CITY               PINCODE STATE            BALDUE
------ -------------------- ------------------------------ ------------------------------ --------------- ---------- --------------- ----------
c00001 ivan bayross                                                                       mumbai              400054 maharashtra       15000
c00002 mamta muzumdar                                                                     madras              780001 tamil nadu            0
c00003 chhaya bankar                                                                      mumbai              400057 maharashtra        5000
c00004 ashwini joshi                                                                      bangalore           560001 karnataka             0
c00005 hansel colaco                                                                      mumbai              400060 maharashtra        2000
c00006 deepak sharma                                                                      mangalore           560050 karnataka             0

6 rows selected.

select * from product_master;

PRODUC DESCRIPTION     PROFITPERCENT UNITMEASUR  QTYONHAND REORDERLVL  SELLPRICE  COSTPRICE
------ --------------- ------------- ---------- ---------- ---------- ---------- ----------
p00001 t-shirts                    5 piece             200         50        350        250
p0345  shirts                      6 piece             150         50        500        350
p06734 cotton jeans                5 piece             100         20        600        450
p07865 jeans                       5 piece             100         20        750        500
p07868 trouser                     2 piece             150         50        850        550
p07885 pull overs                2.5 piece              80         30        700        450
p07965 denim shirts                4 piece             100         40        350        250
p07975 lycra tops                  5 piece              70         30        300        175
p08865 skirts                      5 piece              75         30        450        300

9 rows selected.

select * from salesman_master;

SALESM SALESMANNAME         ADDRESS1                       ADDRESS2                       CITY        PINCODE STATE                    SALAMT   TGTTOGET   YTDSALES REMARKS
------ -------------------- ------------------------------ ------------------------------ -------- ---------- -------------------- ---------- ---------- ---------- ------------------------------------------------------------
s00001 aman                 a/14                           worli                          mumbai       400002 maharashtra                3000        100         50 good
s00002 omkar                65                             nariman                        mumbai       400001 maharashtra                3000        200        100 good
s00003 raj                  p-7                            bandra                         mumbai       400032 maharashtra                3000        200        100 good
s00004 ashish               a/5                            juhu                           mumbai       400044 maharashtra                3500        200        150 good

4 rows selected.

select * from sales_order;

ORDERN CLIENT ORDERDATE DELYADDR                  SALESM D B DELYDATE  ORDERSTATU
------ ------ --------- ------------------------- ------ - - --------- ----------
o19001 c00001 12-JUN-04                           s00001 F N 20-JUL-02 IN PROCESS
o19002 c00002 25-JUN-04                           s00002 P N 27-JUN-02 CANCELLED
o46865 c00003 18-FEB-04                           s00003 F Y 20-FEB-02 FULLFILLED
o19003 c00001 03-APR-04                           s00001 F Y 07-APR-02 FULLFILLED
o46866 c00004 20-MAY-04                           s00002 P N 22-MAY-02 CANCELLED
o19008 c00005 20-MAY-04                           s00004 F N 26-JUL-02 IN PROCESS

6 rows selected.

select * from sales_order_details;

ORDERN PRODUC QTYORDERED    QTYDISP PRODUCTRATE
------ ------ ---------- ---------- -----------
o19001 p00001          4          4         525
o19001 p07965          2          1        8400
o19001 p07885          2          1        5250
o19002 p00001         10          0         525
o46865 p07868          3          3        3150
o46865 p07885          3          1        5250
o46865 p00001         10         10         525
o46865 p0345           4          4        1050
o19001 p00001          4          4         525
o19001 p07965          2          1        8400
o19001 p07885          2          1        5250

ORDERN PRODUC QTYORDERED    QTYDISP PRODUCTRATE
------ ------ ---------- ---------- -----------
o19001 p00001          4          4         525
o19001 p07965          2          1        8400
o19001 p07885          2          1        5250
o19002 p00001         10          0         525
o46865 p07868          3          3        3150
o46865 p07885          3          1        5250
o46865 p00001         10         10         525
o46865 p0345           4          4        1050
o19003 p06734          1          1       12000
o46866 p07965          1          0        8400
o46866 p07975          1          0        1050

ORDERN PRODUC QTYORDERED    QTYDISP PRODUCTRATE
------ ------ ---------- ---------- -----------
o19008 p00001         10          5         525
o19008 p07975          5          3        1050
o19003 p0345           2          2        1050

25 rows selected.

