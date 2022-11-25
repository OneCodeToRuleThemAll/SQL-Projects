-------------------------------------Company--------------------------------------
----------------------------------------Q1----------------------------------------

select 
	dname,count(employee.ssn)
from 
	department
join 
	employee on employee.dno=department.dnumber
group by dname
having max(salary)>42000;
----------------------------------------Q2----------------------------------------

SELECT 
	fname
FROM 
	department, employee
WHERE department.dnumber = employee.dno AND dno IN (SELECT distinct dno FROM employee WHERE salary in (SELECT MIN (salary)
FROM employee));

----------------------------------------Q3----------------------------------------

SELECT 
	distinct fname
FROM 
	employee, department
WHERE salary >5000 +
	(SELECT avg(salary)
	FROM EMPLOYEE,department
	WHERE DNAME = 'Research' AND DNO = DNUMBER);

----------------------------------------Q4----------------------------------------
create view managers1 as
select dname,fname,salary
from employee,department
where ssn=mgrssn

create view managers as
select dname,fname,lname,salary
from employee,department
where ssn=mgrssn

----------------------------------------Q5----------------------------------------

create view q5 as
select
	dname,fname,lname,number_of_workers,number_of_projects
from 
	managers
join	(SELECT  dname,COUNT (pnumber) as number_of_projects
		FROM project, department
		GROUP BY dnum,dnumber
		HAVING dnum = dnumber) as table2 using (dname)
join (select count(fname) as number_of_workers,dname 
	from employee,department
	group by dname,dno,dnumber
	having dno=dnumber) as table3 using (dname)

----------------------------------------Q6----------------------------------------
create view q6 as (
select 
	pname,dname,employees_per_project,males,females,hours
from 
	(SELECT
     	distinct pname,dname,COUNT(pno) AS employees_per_project,pno,sum(hours) as hours
	FROM 
    	works_on,project,department
	group by pno,dnumber,dnum,pnumber
	having dnumber=dnum and pno=pnumber) as table1
join 
	(SELECT 
	 	pno, COUNT(case when sex='F' then 1 end) as females
	,count (case when sex='M' then 1 end) as males
	FROM 
    	employee NATURAL JOIN works_on
	WHERE ssn = essn
	GROUP BY pno) as foo using (pno))

----------------------------------------Q7----------------------------------------
select *
from 
	(select sum(hours) as total_hours_worked,fname
	from works_on 
	join project on pno=pnumber
	join employee on ssn=essn
	group by fname
	having sum(hours) is not null
	order by sum(hours) desc
	Limit 3) as table1
join 
	(select fname,dname,pname,sum(hours) as hours_per_project
	from works_on
	join project on pno=pnumber
	join employee on ssn=essn
	join department on dno=dnumber
	group by fname,dname,pname,hours
	having sum(hours) is Not Null
	order by fname) as table2 using(fname)
order by total_hours_worked desc

-------------------------------------University-----------------------------------
----------------------------------------Q8----------------------------------------

select 
    instructor,
    count(case when grade like 'A%' then 1 end) as A_sum,
    count(case when grade like 'B%' then 1 end) as B_sum,
    count(case when grade like 'C%' then 1 end) as C_sum,
    count(case when grade like 'D%' then 1 end) as D_sum,
    count(case when grade like 'F%' then 1 end) as F_sum
from 
    (select student.name as student,instructor.name as instructor
    ,student.id as studentID,teaches.course_id,instructor.id as instructorID
    ,instructor.dept_name,grade,teaches.semester
    from takes,teaches,instructor,student
    where 
    teaches.id=instructor.id
    and teaches.course_id=takes.course_id
    and student.id=takes.id
    and teaches.sec_id=takes.sec_id
    and teaches.semester=takes.semester) as firstquestion

group by instructor
order by a_sum desc ,b_sum desc ,c_sum desc ,d_sum desc,f_sum desc

----------------------------------------Q9----------------------------------------
create view q9 as(
select 
	building,room_number,semester,Total_hours,total_student_num
from 
	section 
join 
	  (select time_slot_id,round(sum((end_hr-start_hr)+(end_min-start_min)/60),1)*20 as Total_Hours
      from time_slot
      group by time_slot_id) as hourssum using (time_slot_id)
	  
join 
	  (select count (id)as total_student_num, course_id,semester
      from takes
      group by course_id,semester) as number_of_students using (course_id,semester))

----------------------------------------Q10----------------------------------------
create view q10 as
(select
dept_name,instructor.name as instructor,teaches.semester,teaches.year,
course_id,room_number,day,start_hr
from department
join instructor using (dept_name)
join teaches using (id)
join section using(course_id,sec_id,semester,year)
join time_slot using (time_slot_id)
order by dept_name,semester,course_id,start_hr asc,CASE
          WHEN Day = 'M' THEN 1
          WHEN Day = 'T' THEN 2
          WHEN Day = 'W' THEN 3
          WHEN Day = 'R' THEN 4
          WHEN Day = 'F' THEN 5
     END ASC)