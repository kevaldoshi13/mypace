create table client_master
	(
		client_no varchar2(6),
		cname varchar2(20),
		address1 varchar2(30),
		address2 varchar2(30),
		city varchar2(15),
		pincode number(8),
		state varchar2(15),
		baldue number(10,2),
	);

insert into client_master
	(
		'&client_no',
		'&cname',
		'&address1',
		'&address2',
		'&city',
		&pincode,
		'&state',
		&baldue,
	);

create table product_master
	(
		product_no varchar2(6),
		description varchar2(15),
		profitpercent varchar2(4,2),
		unitmeasure varchar2(10),
		qtyonhand number(8),
		reorderlvl number(8),
		sellprice number(8,2),
		costprice number(8,2),
	);

insert into product_master
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

create table sales_master
	(
		salesmanno varchar2(6),
		salesmanname varchar2(20),
		address1 varchar2(30),
		city varchar2(20),
		pincode number(8),
		state varchar2(20),
		salamt number(8,2),
		tgttoget number(6,2),
		ytdsales number(6,2),
		remarks varchar2(60),
		);

insert into salesmaster
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
		)