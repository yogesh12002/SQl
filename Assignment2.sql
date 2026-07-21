--Assignement 2

--1. Write a query to display all employees whose salary is greater than 50,000. 
CREATE TABLE Work
(
   EmployeeID  INT PRIMARY KEY,
    Name VARCHAR(20),
    Department VARCHAR(10),
    Salary MONEY,
    Bonus Int,
    Experience Varchar(10),
    City  Varchar(20)
);
Insert Into Work 
Values
    (101, 'Mahesh', 'Network', 20000, 2000, 1,'A'),
    (102, 'Naresh',  'AI', 22000, 10000, 2,'B'),
    (103, 'Kamlesh', 'ML', 85000, 3000, 3,'c'),
    (104, 'Damlesh', 'Cloud', 75000, 5000, 3,'D'),
    (105, 'Bamlesh', 'ML', 50000  , 8000, 4,'E');

    Select * from Work

    update work Set Department = 'IT' where EmployeeID in (102 , 103)
    update work Set Experience = 6 where EmployeeID in (102 , 103)
    

Select * from Work where Salary>50000

--2. Retrieve employees who work in the IT department and have more than 5 years of experience. 
Select * from Work where Department = 'IT' and Experience >5

--3. Write a query to display employees whose salary is between 45,000 and 60,000. 
Select * from Work where Salary Between 45000 and 60000

-- 4. Display employees whose city is either B or E. 
Select * from Work where City = 'B'  or  City = 'E'

--5. Write a query to display employee name along with their annual income 
Select  Name , Salary from Work

--6. Find employees whose name starts with the letter 'K'. 
Select * from work where name like 'K%'

--7. Find the highest salary among all employees. 
select Max( Salary ) as higestsalary from Work

--8. Find the total bonus paid to employees in the IT department. 
select sum (Bonus) as totalBonus from work where Department = 'IT'

--9. Display the minimum and maximum experience of employees. 
Select min(Experience) as minexprience, max(Experience) as maxexprience from work 

--10. Count the number of employees in each department. 
SELECT Department, COUNT(*) AS Employee_Count FROM work GROUP BY Department;

--11. Find the total bonus paid to employees in the ML department. 
select sum (Bonus) as TotalBonus from work where Department = 'ML'

--12. Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.  
alter table work add Email Varchar(10)

--13. Write an SQL statement to modify the Salary column so that it becomes DECIMAL(10,2). 
alter table work alter Column Salary Decimal(10,2) 

--14. Write an SQL statement to drop the Bonus column from the Employees table. 
alter table work drop column Bonus 