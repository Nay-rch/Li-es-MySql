create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (descricao)
values("verde");
insert into tb_categoria (descricao)
values ("maduro");
insert into tb_categoria (descricao)
values("promocao");
insert into tb_categoria (descricao)
values("machucada");
insert into tb_categoria (descricao)
values("congelado");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade float (3),
preco float (5),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
); 

insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("beterraba", 20, 50.00, 1);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("alcachofra", 10 , 20.00, 3);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("batata doce", 30 , 75.00, 2) ;
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("cogumelo",2 , 20.00, 4 );
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("chuchu", 10 , 90.00, 1);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("pepino", 10 , 80.00, 5);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("abóbora", 30 , 200.00, 1);
insert into tb_produto (nome, quantidade, preco, categoria_id)
values ("vagem",5, 30.00, 4);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 50.00 and 150.00;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;
 
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.descricao= "verde";


