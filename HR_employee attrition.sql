-- ===========================================
-- HR_EMPLOYEE ATTRITION ANALYSIS
-- AUTHOR- Saumya Mathur
-- ===========================================

-- Database created to import data
CREATE DATABASE Datab;
use datab;

-- show the table imported
SELECT * FROM hr_employee_attrition;

-- check number of rows... 1470
select count(*)
from hr_employee_attrition;

-- dropping unnecesary column
alter table hr_employee_attrition
drop column EmployeeCount;

alter table hr_employee_attrition
drop column Employeenumber;

alter table hr_employee_attrition
drop column Over18;

-- change name for column 
alter table hr_employee_attrition
change column `ï»¿Age` age int;

-- create view for further calculations
create view employee_view as
select * from hr_employee_attrition;
select * from employee_view;

-- check for duplicates
SELECT count(employeeNumber)
FROM employee_view
GROUP BY employeeNumber
having count(employeeNumber)>1;

-- null values check
select concat(
'select * from employee_view', group_concat(concat(column_name, ' IS NULL ') separator ' OR ')) AS checking
FROM information_schema.columns
WHERE table_schema= 'datab'
and table_name= 'employee_view';

-- verifying the datatype of every column by describing the data
describe employee_view;

-- kpi card
-- rate of attrition
select 
(count(case
when Attrition= 'yes' THEN 1
end)) * 100 / count(*) AS attrition_Rate
FROM employee_view;

-- average attrition age
select attrition,
avg(age)
from employee_view
group by attrition;

-- attrition by gender
select gender, count(*) as total_count_ofEmployee,
count(case 
when attrition = 'yes' then 1 
end) as count_attrition_byGender,
count(case
when attrition= 'yes' then 1
end) * 100/count(*) as rate_ofAttrition
from employee_view
group by gender;

-- attrition by department
select count(*) as employees_inEach_BeforeAttr , department,
count(case
when attrition = 'yes' then 1 
end) as count_ofAttrition_by_Department,
count(case
when attrition= 'yes' then 1
end) * 100/count(*) as rate_ofAttrition
from employee_view
group by department;

 -- attrition on the basis of marital status
 select count(*) as total_count, maritalStatus,
 count(case
 when attrition = 'yes' then 1 
 end) as count_of_Attrition
 from employee_view
 group by maritalStatus;
 
 -- attrition on basis of distance
 select Attrition,
 count(DistanceFromHome) as basis_ofDistance
 from employee_view
 group by Attrition;
 
 -- attrition on basis of jobrole
 select count(*) as before_attriton, jobrole,
 count(case
 when attrition= 'yes' then 1
 end) as people_left,
 count(case
 when attrition= 'No' then 1
 end) as people_whoStayed
 from employee_view
 group by jobrole;
 
 -- attrition on basis of promotion
 select attrition,
 count(yearsSinceLastPromotion) as promotion_influenced
 from employee_view
 group by attrition;
 
 -- attrition on basis of overtime
 select attrition,
 count(*) as Total_count,
 count(case
 when overtime= 'yes' then 1
 end) as count_ofAttrition,
 count(case
when overtime= 'yes' then 1
end) * 100/count(*) as rate_ofovertime
 from employee_view
 group by attrition;
 
 select 
 count(case
 when attrition = 'yes' then 1 end)
 from employee_view;
 
 
 
 
 
 
 






 








