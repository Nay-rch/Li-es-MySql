create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categoria(
id bigint auto_increment,
curso varchar(255) not null,
primary key (id)
);

insert into tb_categoria (curso)
values("inglês");
insert into tb_categoria (curso)
values ("programação");
insert into tb_categoria (curso)
values("ADM");
insert into tb_categoria (curso)
values("logistica");
insert into tb_categoria (curso)
values("enfermagem");


select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
idade float (10),
preco float (5),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
); 

insert into tb_curso (nome, idade, preco, categoria_id)
values ("Maria", 20 , 500.00, 1);
insert into tb_curso (nome, idade, preco, categoria_id)
values ("joão", 25 , 1500.00, 2);
insert into tb_curso (nome, idade, preco, categoria_id)
values ("José", 19 , 1000.00, 3);
insert into tb_curso (nome, idade, preco, categoria_id)
values ("Eduarda", 24 , 750.00, 5);
insert into tb_curso (nome, idade, preco, categoria_id)
values ("Mariana",18 ,500.00 , 4);
insert into tb_curso (nome, idade, preco, categoria_id)
values ("Daniel", 21 , 900.00, 3);
insert into tb_curso (nome, idade, preco, categoria_id)
values ("Vivian", 27 , 1100.00, 2);
insert into tb_curso (nome, idade, preco, categoria_id)
values ("Rodrigo", 30, 1300.00, 1);

select * from tb_curso;

select * from tb_curso where preco > 500;

select * from tb_curso where preco between 600.00 and 1000.00;

select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria
on tb_curso.categoria_id = tb_categoria.id;
 
select * from tb_curso inner join tb_categoria
on tb_curso.categoria_id = tb_categoria.id
where tb_curso.categoria_id= 1;