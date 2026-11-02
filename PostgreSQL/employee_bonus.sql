--leetcode 577 Employee Bonus

--Employee table
create table Employee(
    empId int unique,
    name varchar(100),
    supervisor int,
    salary int
);

--Bonus table
create table Bonus(
    empId int references employee(empId),
    bonus int
);

--insert values
insert into employee(empId,name,supervisor,salary) values(3,'Brad',null,4000),(1,'john',3,1000),(2,'Dan',3,2000),(4,'thomas',3,4000);
insert into bonus(empId,bonus) values(2,500),(4,2000);

--query
select employee.name,bonus.bonus from Employee left join Bonus on Employee.empId=Bonus.empId where bonus is null or bonus<1000;