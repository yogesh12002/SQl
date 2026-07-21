-- 1. Create the table
CREATE TABLE employee1
(
    EID INT PRIMARY KEY,
    EName VARCHAR(20),
    EAge INT,
    ESalary MONEY,
    EDepartment VARCHAR(10),
    EDOJ DATE
);

-- 2. Insert the records (table name matches 'employee1')
INSERT INTO employee1 (EID, EName, EAge, ESalary, EDepartment, EDOJ) 
VALUES 
    (103, 'Mahesh',  21, 20000, 'Network', '2002-01-01'),
    (104, 'Naresh',  33, 22000, 'AI',      '2026-02-02'),
    (105, 'Kamlesh', 24, 85000, 'ML',      '2026-03-03'),
    (106, 'Damlesh', 24, 75000, 'Cloud',   '2003-04-04'),
    (107, 'Bamlesh', 34, NULL,  'ML',      '2012-02-07');

-- 3. Verify the inserted data
SELECT * FROM employee1;

update employee1
set ESalary=30000
where EAge =24 and EDOJ > '2012-02-07'


--comaprisoion oprator >= ,<, <= ,=, <>, !=
-- Fetch all the employees whose salary is greather than 25000

select * from employee1
where ESalary is null

select * from employee1
where ESalary<> 30000

-- Like operator (look for the maching string)
select * from employee1
where EName like '%l%'

-- Arithmetic opretor *,/,+,-

Select top 2 percent * from employee

-- autoincrement - Increment (onlY AVL for INT)
create table emp
(Eid int identity,
Ename varchar(20),
Department varchar(20))

insert into emp values ('Suresh','cloud')

insert into emp values ('A','DA')

set identity_insert emp off

alter table emp add emailid varchar(38)

select * from emp

sp_help emp

alter table emp 
alter column Eid varchar (20)

--Aggregate function: Count , MAx , Min ,Sum ,Avg
select MAx (esalary) from employee1

select Min (esalary) from employee1

select sum  (esalary) as  totalSalary from employee1


select Avg  (esalary) as  totalSalary from employee1