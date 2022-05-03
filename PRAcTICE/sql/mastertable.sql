create table sales_order
(orderno varchar2(6) primary key check(orderno like 'o%'),
clientno varchar2(6) foriegn key references clientno,
orderdate date not null,
delyaddr varchar(25),
salesmanno varchar2(6), foriegn key referneces salesmanno from salesman_master,
delytype char(1) default'f' check (delytype in ('p','f'),
billyn char(1),
delydate date check ( orderno < delydate),
orderstatus varchar2(10) CHECK ( orderstatus in ('in process','fulfilled','backorder','cancelled')));