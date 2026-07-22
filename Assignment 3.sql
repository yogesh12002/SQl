--  Assignment 3 

select * from work

--1. Write a query to display each Department and the total number of employees working in that department from the Employee table. 
select  Department, count (*) as total_number_of_emp from work group by Department

--2.  Write a query to find the Department, the highest salary (MAX), and the average salary (AVG)  for each department. 
select Department, max (Salary) as max_salary , avg (Salary) as min_salary  from work group by Department;

--3. Write a query to count how many employees are in each Department. 
SELECT Department, COUNT(*) AS Total_Employees FROM work GROUP BY Department 

--4. Write a query to find the minimum salary in each Department 
select department, min(salary) as min_salary from work group by Department

--5. Write a query to show departments that have more than 2 employees 
select department, count (*) as total_emp from work group by department having count(*)>2

--6. Write a query to show departments where the total salary payout is greater than 100,000 
select department , sum (salary) as total_payout from work group by department having sum(salary) > 50000

--7. Write a query to find departments where the average salary is above 60,000
select department, AVG (salary) as avg_salary from work group by department having avg (salary) >60000

--8. Write a query to show departments that have exactly 1 employee  
select department , count(*) as total_count from work group by department having count(*)= 1

--9. Write a query to list all employees sorted by Salary from highest to lowest
select * from work order by salary DEsc

--10. Write a query to list all employees sorted by Ename in alphabetical order 
select * from work order by name asc 

--11. Write a query to list all employees sorted by Department alphabetically, and then by Ename alphabetically. 
select * from work order by  Department  ,name 
