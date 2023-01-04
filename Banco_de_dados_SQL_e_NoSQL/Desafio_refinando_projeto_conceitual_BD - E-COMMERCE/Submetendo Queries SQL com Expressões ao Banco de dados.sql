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