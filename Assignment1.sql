--Assignment 1
-- 1.  Execute a literal select statement that returns your name. 
select 'Yogesh' as name

-- 2.  Write the literal select statement that evaluates the product of 7 and 4
select 7*4

-- 3. Write the literal select statement that takes the difference of 7 and 4 then multiplies that difference by 8.
select (7-4)*8

-- 4. Write a literal select statement that returns the phrase “Brewster’s SQL Training Class”. (Hint: note the single apostrophe in the string). 
select 'Brewster’s SQL Training Class' as phrase 

-- 5. Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one column and the result of 5*3 in another column.   
select 'Day 1 of Training' as day ,(5*3) as Number

--Insert/Update/Delete 
-- 1. Insert a new employee record with all details provided directly. 
use july2026
Create table employee
(EID INT,
EName Varchar (20),
EAge INT,
ESalary Money,
EDepartment Varchar(10))

select * from employee

 Insert into employee Values 
  (103,'Mahesh',21,20000,'Network'),
  (104,'Naresh',33, 22000,'AI'),
  (105,'Kamlesh',24,85000,'ML'),
  (106,'Damlesh',24,75000,'Cloud'),
  (107,'Bamlesh',34,Null,'ML'),

  -- 2. Add multiple new team members to the HR department at once
  Insert into employee Values 
  (108,'Sita',34,20000,'HR'),
  (109,'Gita',34,25000,'HR'),
  (109,'Rita',34,35000,'HR')

  -- 3. Register an employee who hasn't been assigned a salary yet. 
   Insert into employee Values 
  (110,'Ramesh',34,Null,'ML')

  -- 4. Update the salary to 85,000 for everyone working in the 'Cloud' department.
   update employee set ESalary = 85000
  where EDepartment =  'Cloud'

  -- 5. Change both the department and salary for a specific employee by name. 
  update employee set ESalary = 100000, EDepartment = 'AI'
  where EName = 'Mahesh'

  -- 6. Give a flat 10% appraisal boost to employee working in AI department.
  UPDATE Employee
  SET Esalary = ESalary * 1.10
  WHERE EDepartment = 'AI'

  -- 7. Assign an initial entry-level salary of 30,000 to anyone whose salary column is completely blank (NULL). 
   UPDATE Employee
  SET Esalary = 30000
  where ESalary is Null
  
  -- 8. Remove a specific employee from the system using their unique ID. 
  Delete from employee
where EID = 110

--9.  Remove all records belonging to a department that has been completely shut down. 
Delete from employee
where EDepartment = 'ML'

-- 10. Drop records of any employee earning less than 20,000 in the Finance division. 
Insert into employee Values 
  (110,'Goku',21,18000,'Finance'),
  (111,'Gohan',33, 22000,'Finance');

 Delete from employee
 where  EDepartment = 'Finance' and Esalary <20000;