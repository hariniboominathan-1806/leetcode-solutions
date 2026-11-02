--leetcode 584 find customer referee
--Customer table 
create table customer(
    id int primary key,
    name varchar(100),
    referee_id int
);

--insert values
insert into customer(id,name,referee_id) values(1,'will',null),(2,'jane',null),(3,'alex',2),(4,'bill',null),(5,'zack',1),(6,'mark',2);

--query
-- Write your PostgreSQL query statement below
select customer.name from customer where referee_id!=2 or referee_id is null;