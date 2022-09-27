#SectionA
#1
create table Employee
(Id integer not null,
 Name varchar(10) not null,
 Salary integer not null,
 DepartmentId integer not null,
 primary key(Id));
 insert into Employee values(1,'Joe',70000,1);
 insert into Employee values(2,'Henry',80000,2);
 insert into Employee values(3,'Sam',60000,2);
 insert into Employee values(4,'Max',90000,1);
 
create table Department
(Id integer not null,
 Name varchar(10) not null,
 primary key(Id));
 insert into Department values(1,'IT');
 insert into Department values(2,'Sales');
 
 select SP.Name as Department,
		P.Name as Employee,
        Max(P.Salary) as Salary
   from Department as SP
inner join Employee as P
	on SP.Id=P.DepartmentId
    group by SP.Name;
 
 drop table employee;
 drop table Department;
 
 
#2
#不会
create table seat
(id integer not null,
 student varchar(10) not null,
 primary key(id));
 insert into seat values(1,'Abbot');
 
#3
create table grade
(class integer not null,
 score_avg integer not null,
 primary key(class));
 insert into grade values(1,93);
 insert into grade values(2,93);
 insert into grade values(3,93);
 insert into grade values(4,91);
 
select class,
	   score_avg,
       rank() over(order by score_avg desc) as rank1,
       dense_rank() over(order by score_avg desc) as rank2,
       row_number() over(order by score_avg desc) as rank3
  from grade;
  
#4
#buhui