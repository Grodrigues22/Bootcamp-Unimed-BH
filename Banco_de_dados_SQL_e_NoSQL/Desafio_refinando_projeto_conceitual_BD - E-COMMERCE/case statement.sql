-- case statement

show databases;
use company_constraints;

show tables;

select Fname, Salary, Dno from employee;

-- para realizar a query abaixo precisa desabilitar o safe mode
update employee set Salary =
	case
		when Dno=5 then Salary+ 2000
        when Dno=4 then Salary+ 1500
        when Dno=1 then Salary+ 3000
        else Salary * 0
	end;