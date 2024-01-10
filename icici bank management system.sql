# CREATING DATABASE FOR ICIC BANK MANAGEMENT SYSTEM

create database ICICBMSYSTEM;
USE ICICBMSYSTEM;

# CREATING TABLE NAME AS ACCOUNT_TYPE
create table Account_Types
(
Account_no int,
Type_Account varchar(50),
Manager_id int,
opening_table date,
primary key(Account_no)
);
alter table Account_Types
add column Department_name varchar(50) after Manager_id 

# CREATING TABLE NAME AS Department
create table Department
(
Department_id int,
Department_name varchar(20),
Manager_id int,
Employee_id int,
Account_no int,
primary key(Department_id),
foreign key(Account_no) references Account_types(Account_no)
on delete cascade
);

# CREATING A TABLE NAME AS BANK_DETAILS
create table Bank_Details
(
Branch_code int,
Address varchar(50),
Dipartment_id int,
Branch_name varchar(50),
State varchar(30),
primary key(Branch_code),
foreign key(Dipartment_id) references Department(Department_id)
on delete cascade
);

# CREATING A TABLE NAME AS Employees
create table Employees
(
Employee_id int,
First_name varchar(30),
Department_id int,
Manager_id int,
Job_id varchar(20),
Email varchar(30),
Hire_date date,
Phone_no varchar(20),
Salary int,
primary key(Employee_id),
foreign key(Department_id) references Department(Department_id)
on delete cascade
);

# CREATING TABLE NAME AS  A Customer

create table Customer
(
Account_no int,
First_name varchar(30),
city varchar(30),
Branch_code int,
Employee_id int,
Phone_no varchar(20),
ATM_no int unique,
Exp_Date date,
Pin_no int unique,
primary key(Account_no),
foreign key(Branch_code) references Bank_Details(Branch_code)
on delete cascade,
foreign key(Employee_id) references Employees(Employee_id)
on delete cascade
);

# CREATING A TABLE NAME AS A Job_Details
create table Job_Details
(
Job_id varchar(20),
Department_id int,
Branch_code int,
primary key(Job_id),
foreign key(Department_id) references Department(Department_id)
on delete cascade,
foreign key(Branch_code) references Bank_Details(Branch_code)
on delete cascade
);

# INSERTING VALUES IN TABLE OF Account_Types
	insert into Account_Types
	values
	(12345,'saving',20,'Account','2003-04-23'),
	(67899,'loan',21,'Loan','2004-05-24'),
    (10112,'saving',22,'HR','2006-01-04'),
	(13145,'loan',23,'Admin','2003-04-23'),
	(15167,'Current',24,'sales','2004-05-24'),
	(18190,'Business',25,'Security','2006-01-04'),
	(20210,'loan',26,'account','2003-04-23'),
	(22230,'saving',27,'loan','2004-05-24'),
	(24250,'loan',28,'HR','2006-01-04'),
	(26270,'current',29,'admin','2003-04-23'),
	(28290,'business',30,'Sales','2004-05-24'),
	(30310,'current',31,'Security','2006-01-04'),
	(32330,'Saving',32,'account','2003-04-23'),
	(34350,'loan',33,'loan','2004-05-24'),
	(36370,'current',34,'HR','2006-01-04'),
	(38390,'current',35,'admin','2003-04-23'),
	(40410,'business',36,'Sales','2004-05-24'),
	(42430,'current',37,'Security','2006-01-04'),
	(44450,'Saving',38,'account','2003-04-23'),
	(46470,'loan',39,'loan','2004-05-24'),
	(48490,'saving',40,'HR','2006-01-04');

# SHOWING ALL COLUMNS PRESENT IN TABLE OF Account_Types
select * from Account_Types;

# INSERTING VALUES IN TABLE OF Department
insert into Department(Department_id,Department_name,Manager_id,Employee_id,Account_no)
	values
	(1,'Account',20,50,12345),
	(8,'Loan',21,51,67899),
	(11,'HR',22,52,10112),
	(16,'Admin',23,53,13145),
	(19,'Sales',24,54,15167),
	(21,'Security',25,55,18190);
   
# SHOWING ALL COLUMNS PRESENT IN TABLE OF Department
select * from Department

	# INSERTING VALUES IN TABLE OF Bank_Details
	insert into Bank_Details
	values
	(100,'Nagpur',1,'ICIC_N','Maharashtra'),
	(101,'pune',1,'ICIC_P','Maharashtra'),
	(102,'Mumbai',1,'ICIC_M','Maharashtra'),
	(103,'Delhi',1,'ICIC_d','DEL'),
	(104,'Mumbai',1,'ICIC_M','Maharashtra'),
	(105,'delhi',1,'ICIC_D','DEL'),
	(106,'Nagpur',1,'ICIC_N','Maharashtra'),
	(107,'Pune',8,'ICIC_P','Maharashtra'),
	(108,'Mumbai',8,'ICIC_M','Maharashtra'),
	(109,'Nagpur',8,'ICIC_N','Maharashtra'),
	(110,'pune',11,'ICIC_P','Maharashtra'),
	(111,'Mumbai',11,'ICIC_M','Maharashtra'),
	(112,'Delhi',11,'ICIC_D','DEL'),
	(113,'Nagpur',11,'ICIC_N','Maharashtra'),
	(114,'Pune',11,'ICIC_P','Maharashtra'),
	(115,'Mumbai',16,'ICIC_M','Maharashtra'),
	(116,'Nagpur',16,'ICIC_N','Maharashtra'),
	(117,'Pune',16,'ICIC_P','Maharashtra'),
	(118,'Mumbai',19,'ICIC_M','Maharashtra'),
	(119,'Delhi',19,'ICIC_D','DEL'),
	(120,'Pune',21,'ICIC_P','Maharashtra');
   
# SHOWING ALL COLUMNS PRESENT IN TABLE OF Bank_Details
select * from Bank_Details;

 	# INSERTING VALUES IN TABLE OF Employees
 	insert into Employees(Employee_id,First_name,Department_id,Manager_id,Job_id,Email,Hire_Date,Phone_no,Salary)
	values
 	(50,'Samuel',1,20,'ST_CLERK','SMCCAIN','2007-11-23','650.505.1876',3800),
 	(51,'Allan',8,21,'ST_CLERK','SSEWALL','2004-01-30','650.505.2876',3600),
 	(52,'Irene',11,22,'ST_CLERK','SSTILES','2004-03-04','650.505.3876',2900),
 	(53,'Kevin',16,23,'ST_CLERK','STOBIAS','2004-08-01','650.505.4876',2500),
 	(54,'Julia',19,24,'ST_CLERK','SVOLLMAN','2005-03-10','650.501.1876',4000),
 	(55,'Donald',21,25,'ST_CLERK','TFOX','2005-12-15','650.501.2876',39000),
	(56,'Christopher',1,26,'ST_CLERK','TGATES','2006-11-03','650.501.3876',3200),
	(57,'TJ',8,27,'ST_MAN','TJOLSON','2005-11-11','650.501.4876',2800),
 	(58,'Lisa',11,28,'ST_MAN','TRAJS','2007-03-19','650.507.9811',3100),
 	(59,'Karen',16,29,'ST_MAN','VJONES','2004-01-24','650.507.9822',3000),
 	(60,'Valli',19,30,'ST_MAN','VPATABAL','2008-02-23','650.507.9833',2600),
 	(61,'Joshua',21,31,'ST_MAN','WGIETZ','2003-05-01','650.507.9844',6400),
	(62,'Randall',1,32,'FI_ACCOUNT','WSMITH','2005-10-10','515.123.4444',6200),
	(63,'Hazel',8,33,'FI_ACCOUNT','WTAYLOR','2007-11-16','515.123.5555',11500),
	(64,'Luis',11,34,'FI_ACCOUNT','JNAYER','2005-07-16','603.123.6666',10000),
	(65,'Trenna',16,35,'FI_ACCOUNT','JPATEL','2006-09-28','515.123.7777',9600),
	(66,'Den',19,36,'FI_ACCOUNT','JRUSSEL','2007-01-14','515.123.8888',7400),
	(67,'Michael',21,37,'SA_REP','JSEO','2008-03-08','515.123.8080',7300),
	(68,'John',1,38,'SA_REP','JTAYLOR','2005-07-20','011.44.1346.329268',6100),
	(69,'Nandita',8,39,'SA_REP','JWHALEN','2005-10-30','011.44.1346.529268',11000),
	(70,'Ismael',11,40,'SA_REP','KCHUNG','2005-02-16','011.44.1346.52',8800);

 	# SHOWING ALL COLUMNS PRESENT IN TABLE OF Employees
 	select * from Employees;   

select * from Job_Details
 	# INSERTING VALUES IN TABLE OF Job_Details
 	insert into Job_Details(Job_id,Department_id,Branch_code)
 	values
 	('ST_CLERK',1,101),
 	('ST_MAN',8,108),
 	('FI_ACCOUNT',11,113),
 	('SA_REP',19,118);

# [QUERIES WITH SOLUTION]

# query 1: Find an employee’s whose id is 52 and branch name is icicp (ICIC_P).
SELECT * FROM employees, bank_details
WHERE employee_id = 52 AND branch_name = 'ICIC_P';

# query 2: Count the number of employees working in the loan department and show its opening dates and address.

select count(*)  As "Number of Employess" , Department_name ,opening_table,Address from Account_Types,bank_details 
where Department_name ="Loan" 
group by opening_table ,Address;

# query 3: Find details department name, address, branch code, dept _id, city of the account no 18190.
SELECT account_types.department_name, Bank_Details.address, Bank_Details.branch_code, Bank_Details.Department_id, customer.city
FROM Bank_Details,account_types,customer
JOIN Department ON Department.department_id = Bank_Details.Department_id
WHERE account_no = 18190;



