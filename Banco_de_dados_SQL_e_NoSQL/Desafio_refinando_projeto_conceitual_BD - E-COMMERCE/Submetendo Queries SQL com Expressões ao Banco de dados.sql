select Fname, Lname from employee, departament where Dname = 'Research' and Dnumber=Dno;
select concat(Fname, Lname) as Complete_name from employee, departament where Dname = 'Research' and Dnumber=Dno;

--
--
-- Expressões e alias
--
--
-- recolhendo o valor do INSS-*
select Fname, Lname, Salary, Salary*0.011 from employee;
select Fname, Lname, Salary, Salary*0.011 as INSS from employee;
select Fname, Lname, Salary, round(Salary*0.011,2) as INSS from employee;

-- definir um aumento de salário paa os gerentes que trabalham no projeto associado ao ProdutoX
desc works_on;
select * 
	from employee e, works_on as w, project as p
    where (e.Ssn = w.Essn and w.Pno=p.Pnumber);
    
select concat(Fname, ' ', Lname) as Complete_name, Salary, Salary*1.1 as inceased_salary
	from employee e, works_on as w, project as p
    where (e.Ssn = w.Essn and w.Pno=p.Pnumber and p.Pname='ProductX');
    
select concat(Fname, ' ', Lname) as Complete_name, Salary, round(Salary*1.1,2) as inceased_salary
	from employee e, works_on as w, project as p
    where (e.Ssn = w.Essn and w.Pno=p.Pnumber and p.Pname='ProductX');
    
-- definindo alias para legibilidade da consulta 
select concat(e.Fname,' ', e.Lname) as Emploee_Name, e.Address from employee e, departament d
	where d.Dname = 'Research' and d.Dnumber = e.Dno;

-- like e between
select * from project;

select concat(Fname, ' ', Lname) Complete_name, Dname, Address as Departament_Name from employee, departament
	where (Dno=Dnumber and Address like '%Houston%');

select concat(Fname, ' ', Lname) Complete_name, Address from employee 
	where (Address like '%Houston%');

select Fname, Lname, Salary from employee where (Salary > 30000 and Salary < 40000);
select Fname, Lname from employee where (Salary between 20000 and 40000);
    
    
    
    
