create database dt_pizzaria_legal;
use dt_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
descricao varchar (255) not null,
primary key (id)
);

insert into tb_categorias (descricao)
values("doce");
insert into tb_categorias (descricao)
values("salgada");

select * from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
sabor varchar (255),
tamanho char (1),
preco float (4),
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);

insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("brigadeiro","p", 25.00, 1 );
insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("calabreza", 'g', 50.00, 2);
insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("mussarela de bufala", 'g', 100.00, 2);
insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("mussarela", 'm', 35.00, 2);
insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("churros", 'm', 45.00, 1);
insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("4queijos com borda", 'g', 70.00, 2);
insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("frango com catupiry", 'g', 60.00, 2);
insert into tb_pizzas (sabor, tamanho, preco, categorias_id)
values("creme de maracuja", 'm', 50.00, 1);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where sabor like "%M%" ;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id
where tb_categorias.descricao= "doce";


