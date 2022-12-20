show databases;
create database first_example;
use first_example;
CREATE TABLE person(
	person_id smallint unsigned,
    fname varchar(20),
    lname varchar(20),
    gender enum('M','F'),
    birth_data DATE,
    street varchar(30),
    city varchar(20),
    state varchar(20),
    country varchar(20),
    postal_code varchar(20),
	constraint pk_person primary key (person_id)
);
desc person;

create table favorite_food(
	person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id,food),
    constraint fk_favorite_food_person_id foreign key (person_id)
    references person(person_id)
);

desc favorite_food;
show databases;
desc information_schema.table_constraints;
select * from information_schema.table_constraints
where constraint_schema = 'first_example';

desc person;

insert into person value ('1', 'Gabriel', 'Nass', 'M', '1998-01-22', 'rua natalino', 'Vitoria', 'ES', 'Brasil', '25854-89'),
						('3', 'Jathan', 'Rodrigues', 'M', '1979-06-04', 'rua oliveira', 'Vitoria', 'ES', 'Brasil', '26065-00');

select * from person;

delete from person where person_id=2
					or person_id=3;

insert into favorite_food values (1, 'lasanha'),
								(2, 'carne'),
                                (3, 'batata frita');
                                
select * from favorite_food;
                  

