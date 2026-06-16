SELECT * FROM employee.employee_data;

Select `ID`, `position`
from employee.employee_data;

select *
from employee.employee_data
Where Gender = 'f';

select *
from employee.employee_data
Where Gender = 'm';

use employee;

select *
from employee.employee_data
where salary > 100000;

select*
from employee.employee_data
where salary < 60000;

select Distinct position
from employee.employee_data;

select count(*) AS Total_number
from employee.employee_data;

select *
from employee.employee_data
order by salary desc;

select avg(salary) AS AVG_Salary
from employee.employee_data;

select max(salary) AS MAX_Salary
from employee.employee_data;

select MIN(salary) AS MIN_Salary
from employee.employee_data;


SELECT Gender, count(*) As Total_employee
from employee.employee_data
Group by gender;

SELECT Position, count(*) As Total_employee_position
from employee.employee_data
Group by position;

Select AVG(Salary),Gender
from employee.employee_data
Group by Gender;

Select AVG(Salary),Position
from employee.employee_data
Group by Position;

Select position, count(*)
from employee.employee_data
Group by Position
Having count(*) > 5;

select Sum(Salary), Position
from employee.employee_data
Group by Position;

select Max(Salary) As Max_salary, position
From employee.employee_data
Group by Position
order by Max_Salary desc;

select Min(Salary) As Min_salary, position
From employee.employee_data
Group by Position
order by Min_Salary;

Select *
from employee.employee_data
where salary > (
	Select Avg(Salary) from employee.employee_data);
    
    select *
    from employee.employee_data
    Order by Salary desc
    Limit 3;
    
     select *
    from employee.employee_data
    Order by Salary asc
    Limit 3;

Select *
From employee.employee_data
where Position Like '%Engineer%';

SELECT position, AVG(salary) AS avg_salary
FROM employee.employee_data
GROUP BY position
HAVING AVG(salary) > 100000;

SELECT position, gender, COUNT(*) AS total
FROM  employee.employee_data
GROUP BY position, gender
ORDER BY position;

SELECT 
CASE 
    WHEN salary < 60000 THEN 'Low'
    WHEN salary BETWEEN 60000 AND 100000 THEN 'Medium'
    ELSE 'High'
END AS salary_band,
COUNT(*) AS total_employees
FROM employee.employee_data
GROUP BY salary_band;
