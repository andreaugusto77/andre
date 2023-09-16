CREATE DATABASE Blibioteca;

USE Blibioteca;

create table produtos (
   id            int primary key auto_increment,
   nome          varchar(255) not null,
   valor         float(8,2)  not null,
   total_do_estoque      int default 0
);

create table orcamento (
    id                     int primary key auto_increment,
    data_orcamento         datetime,
    status_orcamento       int default 0,
    valor_total            float(22,2) default 0,
    cliente                varchar(255) not null,
    validade               datetime
);

create table orcamento_produtos(
id_orcamento int,
id_produto int,
valor_produto float (8,2) not null,
qtd_produto int not null
);

alter table orcamento_produtos
add foreign key (id_orcamento) references orcamento (id);

alter table orcamento_produtos
add foreign key (id_produto) references produto;


insert into produtos
(nome, valor, total_em estoque) values
('produto 1', 10.00 , 50),
('produto 1', 20.00 , 150),
('produto 1', 5.00 , 5),
('produto 1', 0.50 , 1050);

insert into orcamento 
(data_orcamento, status_orcamneto, valor_total, cliente, validade) values
(sysdate(), 0,0, 'andre', 'beatriz', sysdate());

insert into orcamento_produto
(id_orcamento, id_produto, valor_produto, qtd_produto)
select 1, id, valor, 2 from produtos;

select * from produtos;

select *from orcamento;

select *from orcamento_produto;

update orcamento_produto set id_orcamento = 2 where id_produto = 2

select *, produtos.nome  from orcamento 
	   inner join orcamento_produtos on

 orcamento.id = orcamento_produto.id_orcamento
       inner join produtos
  
 orcamento_produto.id_produto = produtos.id
       where orcamento.id = 1 

