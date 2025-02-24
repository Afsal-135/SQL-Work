create database office;
use office;
create  table employee(id int primary key auto_increment,
                       fullname varchar(50)not null,
                       Department varchar(20)not null,
                       position varchar(20)not null,
                       DateOfJoining date,
                       salary int ,
                       city varchar(50) not null,
                       status enum("active","inactive","onleave"));
                       
                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Alice Johnson","HR","Manager","2015-06-01",70000,"New York","Active");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Bob Smith","IT","Developer","2018-03-15",85000,"Los Angeles","Active");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Charlie Brown","IT","Developer","2019-07-21",82000,"Chicago","Onleave");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Daisy Ridely","Finance","Analyst","2020-01-10",60000,"New York","Active");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Ethan Hunt","IT","Team Lead","2014-11-05",95000,"Chicago","Active");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Flona Gallager","HR","Recruiter","2016-08-19",58000,"San Francisco","inactive");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("George Clarkson","IT","Manager","2013-02-11",90000,"Miami","Active");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Hannah Cooper","Finance","Developer","2021-05-22",80000,"New York","onleave");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Lan Wright","Sales","Executive","2017-09-30",72000,"Boston","Active");                       
insert into employee(fullname,Department,position,DateOfJoining,salary,city,status)values("Jane Eyere","HR","Manager","2012-12-01",75000,"San Francisco","Active");      
drop table employee;     

select * from employee;  
select fullname from employee where status="active";      
select fullname,DateOfJoining from employee where DateOfJoining>"2018-01-01";
select count(*)as total_employees_in_IT  from employee where department="it" ;
select avg(salary) from employee ;
select * from employee where salary>80000;
select city,count(*) from employee group by city;
select * from employee where status="onleave";
select fullname ,salary from employee where salary=(select max(salary)from employee);
select fullname from employee where datediff(curdate(),DateOfJoining) >5*365 and status in ("active","onleave"); 
select * from employee order by dateofjoining desc;
select fullname from employee where fullname like "a%";
select sum(salary) from employee where department="HR";
select department,status,count(*) from employee group by department, status;
select fullname,city from employee where city in("chicago","new york");
select fullname,salary from employee where salary between 60000 and 90000;
select fullname,position from employee where position="manager";
select avg(datediff(curdate(),dateofjoining)) as average from employee;
select fullname,position from employee where position="developer";
select distinct city from employee ; 
select fullname,department from employee where department not in ("HR","IT");
