--leetcode 183:customers who never Order
--Customers Table
create table customers(
    id int primary key,
    name varchar(50)
);
--Orders Table
create table orders(
    id int primary key,
    customerId int references Customers(id)
);
--Values
insert into customers(id,name) values(1,'Joe'),
(2,'Henry'),(3,'Sam'),(4,'Max');
insert into orders(id,customerId) values(1,3),(2,1);

--query
 select Customers.name as Customers from customers left join Orders on customers.id=orders.customerId where Orders.CustomerId is null;