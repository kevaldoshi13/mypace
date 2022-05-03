set autocommit on[off] --for auto save inserting data 

set linesize [number] -- set liinesize based on numbers

easylogin in cmd 
syntax :
sqlplus <username>/<password>


basic data types for sql

char()

number()

date

varchar2()



the create table command

create table <tablename>

(<columnname> <datatype>(<size>),<columnname2> <datatype>(<size>));



inserting table into tables

insert into <tablename> (<columnname1>,<columnname2>) values(<expression>,<expression2>);

insert into <tablename> (&columnname1,&columnname2);



viewing data in the table 

all rows and all columns

syntax

select <columnnname 1> to <columnnname N> from <tablename>;

syntax

select * from <tablename>;



filtering table data

selected column and all rows

syntax

select <columnname1>,<columnname2> from <tablename>;



select rows and all columns

syntax:

select * from <tablename> where <condition>;



selected columns and selected rows

syntax:

select <columnname1>,<columnname2> from <tablename> where <condition>;

eliminating duplicating rows when using a select statement

syntax:

select distinct <columnname1>,<columnname2> from <tablename>;

syntax:

select * from <tablename> ;

sorting data in a table

syntax:

select * from <tablename>

order by <columnname1>,<columnname2> <sortorder>;

creating a table rom a table from another table

syntax:

create table <tablename> (<columnname>,<columnname2>)

as select <coluumnname>,<columnname> from <tablename>;

inserting data into a table from another table

syntax:

insert into <tablename>

select <columnname 1>,<columnname N> from <tablename>;

insertion of data set into a table from another table

syntax:

insert into <tablename> select <columname 1>,<columnname N>

from <tablename> where <condition>;

delete operations

removal of all rows

syntax:

delete from <tablename>;

removal of specific rows

syntax:

delete from <tablename> where <condition>;

removal of specific row(s) based on the data held by the other table

delete from <tablename> where exists(select <columnname> from <tablename2> where <tablename>.<columname> = <tablename>.<columnname> and <tablename>.<columnname> <condition>);

updating the contents of table 

updating all rows

syntax:

update <tablename>

set <columnname1> = <expression1>,<columnname2> = <expression2>;

update records conditionally

syntax:

update <tablename>

set <columname1> = <exprression1>, <columnname2> = <expression2> where <condition>;

modifying the structure of tables

adding new columns

syntax:

alter table <tablename>

add(<newcolumnname> <datatype> (<size>),

 <newcolumnname2> <datatype>(<size>)….);

Drop a column from a table

Alter table <tablename> drop column <columnname>;

Modifying existing columns 

Syntax:

Alter table <tablename>

Modify (<columname> <newdatatype> (<newsize>));

Renaming tables

Syntax:

Rename <tablename> to <new tablename>;

Truncating tables

Syntax:

Truncate table <tablename>;

Destroying tables

Syntax:

Drop table <tablename>;

Creating synonyms

Syntax:

Create [or replace] [public] synonyms [schema .]

Synonyms_name for[schema .]

Object_name [@dblink];

Syntax:

Create public synonym <schemaname> for <tablename>;

Dropping synonyms

Drop [public] synonyms [schema.] synonyms_name [force];

Examing objects created by user

Finding out the table/s created by user

syntax:
Select * from tab;

Displaying the table structure


Describe /desc <tablename>;

DATA CONSTRAINTS

primary key

primary key constrainst defined at column level

syntax:

<columname> <datatype> (<size>) primary key

primary key constraint defined at table level
syntax:
primary key (<columnname>,<columnname>)

FOREIGN KEY

foreign key constraint defined at column level
<coluumnname> <datatype> (<size >)
references <tablename> [(<columnname>)]
[ON DELETE CASADE]

foreign key constraint defined at table level
syntax:
foreign key (<columnname> [,<columnname>] )
references <tablename> [(<columnname>,<columnname>)];

assigning user defined names to constraints 
constraint <connstraint name > <constraint definition>

THE UNIQUE KEY CONSTRAINT 
unique constraint defined at the column level 
syntax:
<columnname> <datatype>(<size>) unique
unique constraint defined at table level
create table tablename
(<columnname1> <datatype>(<size>), <columnname2>

NULL CONSTRAINTS 
syntax:
<columnname> <datatype> (<size>) null
NOT NULL CONSTRAINTS 
syntax:
<columnname> <datatype> (<size>) not null

THE CHECK CONSTRAINTS

check constraints at the columnn level
syntax:
<columnname> <datatype> (<size>) check( <logical ecpression>)
check constraint defined at the table level
syntax:
check (<logical expression>)

DEFAULT VALUE CONCEPTS 
syntax:
<columnname> <datatype>(<size>) default <value>;

COMPUTATIONS DONE ON TABLE DATA 

ARITHMETIC OPERATORS

+ addition
- subraction
/ division
* multiplication
** exponentiation
() enclosed operation 

RENAMING COLUMNS USED WITH EXPRESSION LISTS 
SYNTAX:
SELECT <COLUUMNNAME <ALIASNAME>, <COLUMNAME> <ALIASNAME>            --ALIAS is alternative name used for column in query it doesn't change the name of column permanently
FROM <TABLENAME>;

LOGICAL OPERATORS

the AND OPERATOR:
example:
select * from hr.employees where salary>=3000 and salary<=10000 order by salary desc; --and operator is using when u want to add multiple condition to queries

THE OR OPERATOR:

select * from employees where (first_name='Kevin' and last_name='Feeney'); -- or is use when you want to fulfilled first or second condition

COMBINING AND and OR OPERATOR

AND AND OR OPERATOR CONDITION CAN BE COMBINED IN ONE SQL STATEMENT

SELECT * FROM HR.EMPLOYEES WHERE (salary>=3000 OR salary<=10000) AND (DEPARTMENT_ID>=50 AND DEPARTMENT_ID<=80);

NOT OPERATOR
SYNTAX:
SELECT * FROM HR.EMPLOYEES WHERE NOT(DEPARTMENT_ID=50);

RANGE SEARCHING

BETWEEN operator allows the selection of the rows that contains values with a specified lower and upper limit. the range coded after the word between is inclusive
and is use to diffeciate between lower and upper limit.

syntax:
--TO_CHAR (datetime) converts a datetime or interval value of DATE, TIMESTAMP, TIMESTAMP WITH TIME ZONE, or TIMESTAMP WITH LOCAL TIME ZONE datatype to a value of VARCHAR2 datatype in the format specified by the date format fmt.
select <columnname> from <tablename> where <columnname> BETWEEN <lower limit> and <upper limit>;

ex:

SELECT * FROM SALES_ORDER WHERE TO_CHAR(orderdate,'mm') BETWEEN 04 AND 10;

or 

select * from SALES_ORDER
    where to_char(orderdate,'mm')>=04 and to_char(orderdate,'mm') <=10;

PATTERN MATCHING
THE USE OF THE LIKE PREDICATE

LIKE PREDICATE allows comparsion of one string value with another string value, which is not identical.

ex:
select * from client_master where name like 'i%';

IN AND NOT IN PREDICATE

ex:
select * from client_master where name in ('ivan bayross');

ex:
select * from client_master where name not in ('ivan bayross');

DUAL

SYNTAX:

ex:
select * from dual;
--you can use dual as a calculator to calculate to equation
sysdate

syntax:
select sysdate from dual;

oracle funtions

function_name(arguement1,arguement2,...)
oracle function can be clubbed together depending upon whether they operate on single row or a group of the rows retrived from table.
accordingly function can be classified as follows:
group function(aggregate function)
function that act on set of the values are called as scalar functions. for example, length, is a function  which 
scalar function(single row function)agregate function
function that act on only one value at a time are called scalar fuctions for example, length, is a function.
