-- apenas adiantando algumas atividades do curso, visto que no trabalho não tenho como baixar os programas necessarios 

--> Explorando Queries com SQL
        --> Manipulando o BD com comandos da DDL 

-- explorando os comandos ddl

select now () as Timestamp;

select database maniulation;
create database if not exists manipulation;
use manipulation;

CREATE TABLE bankAccounts (
        id_account INT auto_increment PRIMARY KEY,
        Ag_num INT NOT NULL,
        Ac_num INT NOT NULL,
        Saldo FLOAT,
        CONSTRAINT identification_account_constraint UNIQUE (Ag_num, Ac_num)
);

alter table bankAccounts add LimiteCredito float 
        not null default 500.00;
alter table bankAccounts add email VARCHAR(60);
alter table bankAccounts drop email;

desc bankAccounts;

CREATE TABLE bankClient(
        id_cliente INT auto_increment,
        ClientAccont INT,
        CPF VARCHAR(11) NOT NULL,
        RG VARCHAR(9) NOT NULL,
        Nome VARCHAR(50) NOT NULL,
        Endereço VARCHAR(100) NOT NULL,
        Renda_mensal FLOAT,
        primary key (id_cliente, ClientAccont),
        CONSTRAINT fk_account_client foreign key (ClientAccont) REFERENCES bankAccounts(id_account)
        ON UPDATE CASCADE
);

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