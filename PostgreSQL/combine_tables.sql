--leetcode 175 Combine two tables
--person table
create table person(
    personId int primary key,
    firstName varchar(100),
    lastName varchar(100)
);

--address table
create table address(
    addressId int primary key,
    personId int,
    city varchar(50),
    state varchar(50)
);

--inserting values
insert into person(personId,firstName,lastName) values(1,'Allen','Wang'),(2,'Bob','Alice');
insert into address(addressId,personId,city,state) values(1,2,'new york city','new york'),(2,3,'leetcode','california');

--query
select Person.firstName,Person.lastName,Address.city,Address.state from Person left join Address on Person.personId=Address.personId;