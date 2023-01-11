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
    
select distinct * from works_on
	where (Pno, Hours) IN (select Pno, Hours
							from works_on
                            where Essn=123456789);
                            

-- Cláusulas com exists e unique

select e.Fname, e.Lname from employee as e
	where exists (select * from dependent as d
					where d.Essn and Relationship ='Daughter');
 
 -- sem dependentes
select e.Fname, e.Lname from employee as e
	where not exists (select * from dependent as d
					where e.Ssn = d.Essn );

select e.Fname, e.Lname from employee as e
	where exists (select * from departament
					where Ssn = Mgr_ssn);
                    
select e.Fname, e.Lname from employee as e
	where exists (select * from dependent as d
					where Ssn = Mgr_ssn)
                    and
				(select * from departament
					where Ssn = Mgr_ssn);
 
-- resolve a query acima
select e.Fname, e.Lname from employee as e , departament d
	where (e.Ssn = d.Mgr_ssn) and exists (select * from dependent as d where e.Ssn = d.Essn);

select Fname,Lname from employee
	where (select count(*) from dependent where Ssn=Essn) >=2;

select distinct Essn, Pno from works_on where Pno in (1,2,3);

