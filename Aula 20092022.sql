DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;
-- create table
create table categorias (
	id int(11) primary key auto_increment,
    nome varchar(200) not null
);

create table produtos (
  id int(11) primary key auto_increment,
  nome varchar(200) not null,
  valor float,
  categoria_id int(11),
	foreign key (categoria_id) references categorias(id)
);
-- insert categorias 
insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');

-- insert produtos 
insert into produtos (nome, valor, categoria_id) values ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) values ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) values ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) values ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) values ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) values ('cadeira', 80, 3);

-- selecionar todos os dados da tabela categorias
select * from categorias;

-- selecionar todos os dados da tabela produtos
select * from produtos;

-- inner join das duas tabelas
SELECT * FROM produtos
INNER JOIN categorias ON produtos.categoria_id = categorias.id;

select c.nome as 'categosria_mome', p.nome 'produto_nome', p.valor 
from produtos p inner join categorias c on p.categoria_id = c.id;


create table vendas
(   id int(11) primary key auto_increment,
	nota_fiscal float,
    data date,
    produto_id int(11)
);
drop table vendas;

create table vendas
(   id int(11) primary key auto_increment,
	nota_fiscal char(8),
    data date,
    produto_id int(11),
    foreign key (produto_id) references produtos(id)
);
drop table vendas;
create table vendas
(   id int(11) primary key auto_increment,
	nota_fiscal char(8),
    data date,
    produto_id int(11),
    foreign key (produto_id) references produtos(id)
);

insert into vendas (nota_fiscal, data, produto_id) values ('0001', '2022-09-13', 1);
insert into vendas (nota_fiscal, data, produto_id) values ('0001', '2022-09-13', 2);
insert into vendas (nota_fiscal, data, produto_id) values ('0002', '2022-09-12', 3);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 1);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 5);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 6);
insert into vendas (nota_fiscal, data, produto_id) values ('0004', '2022-09-13', 4);

select * from vendas;


SELECT  c.nome  AS 'categoria_nome', 
        p.nome 	AS 'produto_nome', 
        v.nota_fiscal AS 'venda_nota_fiscal', 
        v.data AS ' venda_data',  
        p.valor
FROM produtos p
inner join categorias c ON p.categoria_id = c.id
inner join vendas v ON v.produto_id = p.id;




