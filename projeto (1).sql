create database projetos;

use projetos;

create table funcionario
(  codfunc int(11) primary key,
	nome varchar(255) not null,
    sexo varchar (1),
    idade int,
    cargo varchar (20)
);

create table projeto (
codProjeto int primary key,
descricao varchar (30) not null,
totalHoras int
);


create table trabalhaEm(
codfunc 		int,
codProjeto 		int,
horasSemanal 	int,
primary key (codfunc, codProjeto),
foreign key (codfunc) references funcionario (codfunc),
foreign key (codProjeto) references projeto (codProjeto)
);


-- Funcionário

insert into funcionario (codfunc, nome, sexo, idade, cargo) values ('10','Mel Santos', 'F', '25', 'Analista');
insert into funcionario (codfunc, nome, sexo, idade, cargo) values ('20','Lia Silva', 'F', '18', 'Programador');
insert into funcionario (codfunc, nome, sexo, idade, cargo) values ('30','José Carlos', 'M', '35', 'Programador');


-- Projeto 

insert into Projeto (codProjeto, descricao, totalHoras) values ('5050','Sistema A', '800');
insert into Projeto (codProjeto, descricao, totalHoras) values ('6060','Sistema B', '1000');
insert into Projeto (codProjeto, descricao, totalHoras) values ('7070','Sistema C', '600');
insert into Projeto (codProjeto, descricao, totalHoras) values ('8080','Sistema D', null);


-- TrabalhaEm

insert into trabalhaEm ( codfunc, codProjeto, horasSemanal) values ('10','5050', '20');
insert into trabalhaEm ( codfunc, codProjeto, horasSemanal) values ('20','5050', '20');
insert into trabalhaEm ( codfunc, codProjeto, horasSemanal) values ('10','6060', '10');
insert into trabalhaEm ( codfunc, codProjeto, horasSemanal) values ('30','6060', '30');
insert into trabalhaEm ( codfunc, codProjeto, horasSemanal) values ('20','7070', '10');
insert into trabalhaEm ( codfunc, codProjeto, horasSemanal) values ('10','7070', '20');
insert into trabalhaEm ( codfunc, codProjeto, horasSemanal) values ('30','7070', '20');

-- Questão 1

select * from funcionario
where codfunc = 10;

-- Questão 2

select nome, cargo, sexo 
from funcionario
where  idade =20;


