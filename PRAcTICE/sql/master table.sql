create table client_master
(
clientno varchar2(6) primary key check(clientno like 'c%',
cname varchar2(20) not null,
address1 varchar2(30),
address2 varchar2(30),
city varchar2(15),
pincode number(8),
cstate number(15),
baldue number(10,2)
);
create table product_master
(
productno varchar2(6) primary key check (productno like 'p%'),
description VARCHAR2(15) not NULL,
profitpercent number(4,2) not null,
unitmeasure varchar2(10) not null,
qtyonhhand number(8) not null,
recorderlvl number(8) not null,
sellprice number(8,2) not null check( sellprice > 0),
costprice number(8,2) not null check(costprice>0)
);
create table salesman_master
(
salesmanno  varchar2(6) primary key check(salesmanno like 's%'),
salesmanname varchar2(20) not null,
address1 varchar2(30) not null,
address2 varchar2(30),
city varchar2(20),
pincode number(8),
sstate number(15),
salamit number(8,2),
tgttoget number(6,2)not null check(tgttoget>0),
ytdsales number(6,2) not null check(ytdsales>0),
remarks number(6,2)
);

create table sales_order
(
orderno varchar2(6) primary key check(orderno like 'O%',
clientno varchar2(6) foreign key references clientno from client_master,
orderdate date not null,
delyaddr varchar2(25),
salsmanno varchar2(6) foreign key references salsmanno from salesman_master,
delytype char(1) default'f' check( delytype in ('p','f')),
billyn char(1),
delydate date" check( orderdate < delydate )",
orderstatus varchar2(10) check(orderstatus in('in process','fulfilled','back order','cancelled'))
);

create table 