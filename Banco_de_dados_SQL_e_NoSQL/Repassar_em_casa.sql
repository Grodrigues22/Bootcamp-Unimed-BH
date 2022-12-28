-- apenas adiantando algumas atividades do curso, visto que no trabalho não tenho como baixar os programas necessarios 

-- Primeiros passos com SQL --> Persistindo informações no banco de dados Employee

        --> Realizado na tabela nova

                -- Adicionando tabelas
insert into dependent values (3334455555, 'Alice', 'F', '1986-04-05', 'Daughter'),
                            (3334455555, 'Theodore', 'M', '1983-10-25', 'Son'),
                            (3334455555, 'Joy', 'F', '1954-05-03', 'Spouse'),
                            (987654321, 'Abner', 'M', '1942-02-28', 'Spouse'),
                            (123456789, 'Michael', 'M', '1988-01-04', 'Son'),
                            (123456789, 'Alice', 'F', '1988-12-30', 'Daughter'),
                            (123456789, 'Elizabeth', 'F', '1967-05-05', 'Spouse');

insert into departament values ('Research', 5, 3334455555, '1988-05-22', '1986-05-22'),
                                ('Administration', 4, 987654321, '1995-01-01', '1995-01-01'),
                                ('Headquarters', 1, 888665555, '1981-06-19', '1980-06-19');

insert into dept_locations values (1, 'Houston'),
                                (4, 'Stafford'),
                                (5, 'Bellaire'),
                                (5, 'Sugarland'),
                                (5, 'Houston');

insert into work_on values (123456789, 1, 32.5),
                        (123456789, 2, 7.5),
                        (666884444, 3, 40.0),
                        (453453453, 1, 20.0),
                        (453453453, 2, 20.0),
                        (333445555, 2, 10.0),
                        (333445555, 3, 10.0),
                        (333445555, 10, 10.0),
                        (333445555, 20, 10.0),
                        (999887777, 30, 30.0),
                        (999887777, 10, 10.0),
                        (987987987, 10, 35.0),
                        (987987987, 30, 5.0),
                        (987654321, 30, 20.0),
                        (987654321, 20, 15.0),
                        (888665555, 20, 0.0);

select * from employee;
select Ssn, Fname, Dname from employee e, departament d where (e.Ssn = dMgr_ssn);

select Fname, Dependent_name, Relationship from employee, dependent where Essn = Ssn;



        --> Realizado na tabela antiga
        
                -- Retirado a lista referente a idade e colocado a linha "drop"
drop table dependent;
create table dependent(
        Essn char(9) not null,
        Dependent_name varchar(15) not null,
        Sex char,
        Bdate date,
        Relationship varchar(8),
        primary key (Essn, Dependent_name),
        constraint fk_dependent foreign key (Essn) references employee(Ssn)
);

