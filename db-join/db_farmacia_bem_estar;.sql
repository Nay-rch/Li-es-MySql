
create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (descricao)
values("higiene");
insert into tb_categoria (descricao)
values ("beleza");
insert into tb_categoria (descricao)
values("suplemento");
insert into tb_categoria (descricao)
values("dores");
insert into tb_categoria (descricao)
values("gripes/alergias");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade varchar (10),
preco float (5),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
); 

insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("paracetamol", "1 caixa", 10.00, 5);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("complexo B", "2 caixas" , 20.00, 3);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("escova de dentes", "1 un" , 7.00, 1) ;
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("nimesulide","3 caixa" , 25.00, 4 );
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("hidratante", "1 un" , 45.00, 2);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("shampo", "1 un" , 30.00, 5);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("sabonete", "3 un" , 15.00, 1);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("vitamina c","3 caixas", 30.00, 3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 5.00 and 60.00;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;
 
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.descricao= "higiene";
