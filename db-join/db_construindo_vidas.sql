create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (descricao)
values("pisos");
insert into tb_categoria (descricao)
values ("material hidráulicos");
insert into tb_categoria (descricao)
values("madeira");
insert into tb_categoria (descricao)
values("material elétrico");
insert into tb_categoria (descricao)
values("telha");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade float (10),
preco float (5),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
); 

insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("ceramica", 30 , 145.00, 1);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("tubo de PVC", 10 , 100.00, 2);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("chapa de madeira", 50 , 300.00, 3);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("telhas de policarbonato", 50 , 250.00, 5);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("cabos",100 , 40.00, 4);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("lâmpadas", 2 , 10.00, 4);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("registro", 1 , 20.00, 2);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("porcelanato", 5 , 130.00, 1);

select * from tb_produto;

select * from tb_produto where preco > 100;

select * from tb_produto where preco between 70.00 and 150.00;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;
 
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.descricao= "pisos";