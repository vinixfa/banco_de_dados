create database bd4;

use bd4;

create table vendas (
id int(11) not null auto_increment,
nome varchar(200) not null,
cidade varchar(200) not null,
primary key (id)
);


create table alugueis (
id int(11) not null auto_increment,
nome varchar(200) not null,
cidade varchar(200) not null,
primary key (id)
);

-- insert 
insert into vendas (nome, cidade) values ('venda 1', 'Rio de Janeiro');
insert into vendas (nome, cidade) values ('venda 2', 'São Paulo');
insert into vendas (nome, cidade) values ('venda 3', 'Rio de Janeiro');

insert into alugueis (nome, cidade) values ('aluguel 1', 'São Paulo');
insert into alugueis (nome, cidade) values ('aluguel 2', 'Belo Horizonte');
insert into alugueis (nome, cidade) values ('aluguel 3', 'Rio de Janeiro');

select cidade from vendas
union
select cidade from alugueis;


select cidade from vendas
union all
select cidade from alugueis;


SELECT cidade from vendas
WHERE id >= 2
UNION
SELECT cidade from alugueis
WHERE id >= 2
ORDER BY cidade ASC;

 -- group by
 
create table inscricoes (
id int(11) not null auto_increment,
nome varchar(200) not null,
cidade varchar(200) not null,
primary key (id)
);



-- insert 
insert into inscricoes (nome, cidade) values ('André', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Bruno', 'São Paulo');
insert into inscricoes (nome, cidade) values ('David', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Wando', 'Recife');
insert into inscricoes (nome, cidade) values ('Paula', 'Belo Horizonte');
insert into inscricoes (nome, cidade) values ('Graciela', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Renata', 'Vitória');
insert into inscricoes (nome, cidade) values ('Leticia', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Milena', 'São Paulo');
insert into inscricoes (nome, cidade) values ('Patricia', 'São Paulo');

select cidade, count(id)
from inscricoes
group by cidade;

-- ordem decrescente 
select cidade, count(id)
from inscricoes
group by cidade
order by count(id) desc;

-- create table
create table vendedores (
	id int primary key auto_increment,
    nome varchar(200)
);

-- inserir dados
insert into vendedores (nome) values ('André');
insert into vendedores (nome) values ('Pedro');
insert into vendedores (nome) values ('João');

drop table vendas;

CREATE TABLE vendas (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(200) NOT NULL,
  vendedor_id int(11),
  PRIMARY KEY (id),
  FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);

insert into vendas (nome, vendedor_id) values ('Venda 1', 1);
insert into vendas (nome, vendedor_id) values ('Venda 2', 1);
insert into vendas (nome, vendedor_id) values ('Venda 3', 1);
insert into vendas (nome, vendedor_id) values ('Venda 4', 2);
insert into vendas (nome, vendedor_id) values ('Venda 5', 2);
insert into vendas (nome, vendedor_id) values ('Venda 6', 3);

-- Desejo ordenar os vendedores começando pelo com maior número de vendas
SELECT vendedores.nome, COUNT(vendas.id) AS QuantidadeDeVendas FROM vendas
INNER JOIN vendedores ON vendas.vendedor_id = vendedores.id
GROUP BY vendedores.nome
ORDER BY COUNT(vendas.id) desc;

