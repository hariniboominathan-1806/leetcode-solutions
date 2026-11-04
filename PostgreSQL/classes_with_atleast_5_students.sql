--leetcode 596 classes with at least 5 students
--Courses table
create table Courses(
    student varchar(100),
    class varchar(100)
);

--insert values
insert into courses(student,class) values ('A','math'),('B','english'),('C','math'),('D','biology'),('E','math'),('F','computer'),('G','math'),('H','math'),('I','math');

--query
select courses.class from courses group by class having count(class)>5;