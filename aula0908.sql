create database bd3;

use bd3;

create table alunos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    nascimento date
);
 
drop database bd3;

create database bd3;

use bd3;

create table alunos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    nascimento date default null
);
alter table alunos
add column idade int(11);


-- insert 
insert into alunos (nome,idade, nascimento) values ('Willian','30', '1992-04-13');
insert into alunos (nome,idade, nascimento) values ('Ruy','33' '1984-04-13');
insert into alunos (nome,idade, nascimento) values ('Rafael','25' '1993-01-24');
insert into alunos (nome,idade, nascimento) values ('Vitor','13' '2008-07-03');
insert into alunos (nome,idade, nascimento) values 	('Vinicius','29' '1992-11-24');
insert into alunos (nome,idade, nascimento) values 	('Luiz',null, null);


-- selecionar todos os registros 
select * from alunos; 

-- selecionar nome 
select nome, nascimento from alunos; 

-- com filtro
select nascimento from alunos 
where nome = 'vinicius'
AND
nascimento is not null;

-- filtrar  os resultados que tenha o campo nascimento nulo
select * from alunos 
where nascimento is  null;

-- selecionar a lista de todos os nomes sem repetição 
select  distinct nome, nascimento
from alunos;

-- lista de presença -a ordenada em ordem alfabetica

select* from alunos 
order by nome asc;

-- lista de presença -a ordenada em ordem decrescente

select *from alunos 
order by nascimento desc;

-- listar somente dois alunos
select*from alunos 
limit 2;

select*from alunos
where nascimento
order by nascimento asc
limit 2;

select*from alunos
where nascimento is null
limit 2;

