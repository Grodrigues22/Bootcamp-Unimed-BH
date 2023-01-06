-- subqueries

use company_constraints;

select * from employee;

select distinct Pnumber from project
	where Pnumber in
	(
		select distinct Pno
		from works_on, employee
        where (Essn=Ssn and Lname='Smiyh')
	or
    (
        select Pnumber
        from project, departament, employee
        where (Mgr_ssn = Ssn and Lname = 'Smiyh' and Dnum = Dnumber)
	)
    );