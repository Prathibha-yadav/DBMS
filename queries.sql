-- Change name of worker of Anil Kumar to Anil Prasad
-- Change the salary of workers to 5500 whose salary is less than 6000
--- Display the worker details drawing max salary
--- Display the worker details drawing min salary
-- display the highest 2 worker salary
-- display oldest worker as per DOJ
-- display newest worker as per DOJ
-- Display name of all workers and department in format "Anil is working in Account"
-- Display name of a workers and salary in format “Anil salary is 10000”
-- sort the worker data based on Salary and then dept
-- sort the worker data based on Salary reverse order and then dept in ascending order
-- Display the first character of all workers
-- display whose name ends with S
-- display workers who are working in Account, Security
-- Display workers who are not working in HR
-- Display workers whose salary is greater than 8000 and less than 12000
-- Display unique departments
--Display count of all workers
-- Display count of workers in each department
-- Display avg salary for each department
-- Display departments where count of workers is more than 1

CREATE TABLE WORKER (
  WORKERID int primary key,
  WORKERNAME varchar(20) not null,
  Department varchar(50) not null,
  Salary int not null,
  DOJ datetime not null
);
select*from WORKER;

insert into WORKER values(1,'Anil','Accounts',10000,'01-01-2020');
insert into WORKER values(2,'Anu','Admin',11000,'01-10-2020');
insert into WORKER values(3,'Anil Kumar','HR',5000,'03-11-2020');
insert into WORKER values(4,'Anuradh','Marketing',12000,'11-12-2021');
insert into WORKER values(5,'Anuradh Kumar','Establishment',8000,'01-01-2020');
insert into WORKER values(6,'Anoop','Finance',10000,'01-01-1998');
insert into WORKER values(7,'Anoop Kumar','Stores',9000,'01-01-2001');
insert into WORKER values(8,'Adarsh','Security',7000,'01-01-2008');
select*from WORKER;


update WORKER set WORKERNAME= 'Anil Prasad' where WORKERNAME='Anil Kumar' ;
select*from WORKER;

update WORKER set Salary= 5500 where Salary<6000 ;
select*from WORKER;

select*from WORKER where Salary = (select min(Salary) from WORKER);

select*from WORKER where Salary = (select max(Salary) from WORKER);

SELECT Salary FROM WORKER ORDER BY Salary DESC OFFSET 1 ROW FETCH NEXT 1 ROW ONLY;

SELECT * FROM WORKER where DOJ=(SELECT min(DOJ) FROM WORKER);

SELECT * FROM WORKER where DOJ=(SELECT max(DOJ) FROM WORKER);

SELECT concat(WORKERNAME, ' is working in ',Department) as 'worker and Department' FROM WORKER;


SELECT concat(WORKERNAME, ' salary is ',Salary) as 'worker and Salary' FROM WORKER;

SELECT * FROM WORKER ORDER BY Salary DESC, Department;

SELECT left(WORKERNAME, 1) as 'First Character' FROM WORKER;

SELECT * FROM WORKER where WORKERNAME LIKE '%s';

SELECT WORKERNAME FROM WORKER where Department in ('Accounts','Security');

SELECT * FROM WORKER where Department != 'HR';

SELECT * FROM WORKER where Salary > 8000 and Salary < 12000;

SELECT distinct Department FROM WORKER;

SELECT count(*) as 'Total Workers' from WORKER;

SELECT Department,count(*) as 'Worker Count' from WORKER group BY Department;

SELECT Department,avg(Salary) as 'Average Salary' from WORKER group BY Department;


select Department from WORKER group by Department having count(*) > 1;











