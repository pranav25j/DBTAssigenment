use assignment3;

create table Department(dept_id int primary key,dept_name varchar(20));
create table Employee(emp_id int primary key,emp_name varchar(20),dept_id int,salary int,manager int,CONSTRAINT FK_employee FOREIGN KEY (dept_id)
    REFERENCES Department(dept_id));
    
    select * from Department;
    select * from Employee;
    
    insert into Department values(1,'Finance');
    insert into Department values(2,'Training');
    insert into Department values(3,'Marketing');
    
    insert into Employee values(1,'Arun',1,8000,4);
      insert into Employee values(2,'Kiran',1,7000,1);
        insert into Employee values(3,'Scott',1,3000,1);
          insert into Employee values(4,'Max',2,9000,0);
            insert into Employee values(5,'Jack',2,6000,4);
              insert into Employee values(6,'King',Null,6000,1);
			
##############################OrderBY#################################################

select * from Employee order by emp_name;

select * from Employee order by emp_name desc;

##############################Group by#####################################################

SELECT dept_id, SUM(salary) 
FROM Employee 
GROUP BY dept_id;

select dept_id, sum(salary) 
from Employee
group by dept_id>17000;

#############################Having ############################################################

select dept_id,sum(salary) 
from Employee
group by dept_id having 
sum(salary)>17000;


select dept_id,sum(salary) 
from Employee
group by dept_id having 
sum(salary)<20000;

              
              