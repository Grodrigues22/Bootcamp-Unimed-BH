-- explorando os comandos ddl

select now () as Timestamp;

drop database maniulation;
create database if not exists manipulation;
use manipulation;

CREATE TABLE bankAccounts (
        id_account INT auto_increment PRIMARY KEY,
        Ag_num INT NOT NULL,
        Ac_num INT NOT NULL,
        Saldo FLOAT,
        CONSTRAINT identification_account_constraint UNIQUE (Ag_num, Ac_num)
);

insert into bankAccounts (Ag_num, Ac_num, Saldo) values(156, 264358, 0);
select * from bankAccounts;

alter table bankAccounts add LimiteCredito float 
        not null default 500.00;
alter table bankAccounts add email VARCHAR(60);
alter table bankAccounts drop email;

-- alter table nome_tabela modify column nome_atributo tipo_dados condicao;
-- alter table nome_tabela add constraint nome_constraint condicoes;

desc bankAccounts;

CREATE TABLE bankClient(
        id_cliente INT auto_increment,
        ClientAccont INT,
        CPF CHAR(11) NOT NULL,
        RG CHAR(9) NOT NULL,
        Nome VARCHAR(50) NOT NULL,
        Endereço VARCHAR(100) NOT NULL,
        Renda_mensal FLOAT,
        primary key (id_cliente, ClientAccont),
        CONSTRAINT fk_account_client foreign key (ClientAccont) REFERENCES bankAccounts(id_account)
        ON UPDATE CASCADE
);

drop table bankClient;

alter table bankClient add UFF char (2) not null default 'RJ';

insert into bankClient (ClientAccont, CPF, RG, Nome, Endereço, Renda_mensal) values(1, 12345678913, 123456789,  'Fulano', 'rua de lá', 6500.6);
select * from bankClient;


update bankClient set Endereço='MG' where Nome='fulano';

CREATE TABLE bankTransactions(
        id_transcation INT auto_increment PRIMARY KEY,
        Ocorrencia datetime,
        Status_transaction VARCHAR(20),
        Source_account INT,
        Destination_account INT,
        CONSTRAINT fk_source_transaction foreign key (Source_account) REFERENCES
        bankAccounts(id_account),
        CONSTRAINT fk_destination_transaction foreign key (Destination_account) REFERENCES
        bankAccounts(id_account)
);