Create table branch_mstr
(branch_no varchar2(10),
name varchar2(25));

create table emp_mstr
(emp_no varchar2(10),
branch_no varchar2(10),
fname varchar2(25),
mname varchar2(25),
lname varchar2(25),
dept varchar2(30),
design varchar2(30),
mngr_no varchar2(10),
);

create table cust_mstr
	(
		cust_nno varchar2(10),
		fname varchar2(25),
		mname varchar2(25),
		lname varchar2(25),
		dob_inc date/time,
		occup varchar2(25),
		photograph varchar2(25),
		signature varchar2(25),
		pancopy varchar2(1),
		form60 varchar(1)
	);

create table acct_mstr
	(
		acct_no varchar2(10),
		sf_no varchar2())