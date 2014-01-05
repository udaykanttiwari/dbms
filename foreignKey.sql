--------1. What is the total count of employees in each of the departments ?---

	select dept.deptName,count(*) as NoOfEmployees from employees,dept where dept.dept_id = employees.dept_id 
 	group by employees.dept_id ;

---2. How many direct report employees are present for every HOD ?-------------------------------------------
	select e1.manager_id,e2.hod_id,e1.name as directReport,count(*) from employees e1, employees e2  where e1.manager_id = e2.hod_id
	group by e1.manager_id; 

---3.3. List all employees along with their department names, including who are not staffed yet.------------
	select * from employees left join  dept on  employees.dept_id = dept.dept_id; 

----4. List all departments with the names of the HOD, including departments that dont have any staff.-----

	select dept.deptName,employees.name from dept left outer join employees on employees.id = dept.hod_id; 
	
-- 5. Get a list of all employee id, employee name and the department names. Include all employees and 
--all departments even if they are not staffed	
	
	select employees.id,employees.name,dept.deptName from dept left outer join employees on 
	dept.dept_id = employees.dept_id; 
	
-- 6. How many employees in each department are not managers ? Give me the count by each department with its name
	
	select count(e1.dept_id)from employees e1,employees e2 
	where e1.manager_id <> e2.id group by e1.dept_id;

-- 7. What is the total strength employees in the company ?
	select count(*) from employees;
	
	
