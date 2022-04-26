create database db_generation_game_online; 
use db_generation_game_online;

CREATE TABLE  tb_classes(
id bigint auto_increment,
classes varchar(100) not null,
selecionado boolean,

PRIMARY KEY (id)
);

insert into tb_classes (classes)
 values ("guerreiro");
insert into tb_classes (classes)
values ("rastreador");
insert into tb_classes (classes)
 values ("mago");
 insert into tb_classes (classes)
 values ("soldados");
 insert into tb_classes (classes)
 values ("arqueiro");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
poder varchar(255),
forca float (10),
defesa float (10), 
classes_id bigint,
primary key(id),
foreign key (classes_id) references tb_classes (id)

);


insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Raiden", "raio", 5000, 3000, 1);

insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Sub-zero", "gelo", 4500, 2500, 4);

insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Tremor", "magia", 4750, 6000, 3);

insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Jax", "armas", 1750, 2000, 5);

insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Shao Khan", "artes marciais", 2500, 3000, 1);

insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Montaro","força", 1500, 1000, 4);

insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Quao Chi", "magia", 4000, 4500,3);

insert into tb_personagens (nome, poder, forca, defesa, classes_id)
values ("Sombra", "sombra", 5500, 6000 ,2);

select * from tb_personagens;

select * from tb_personagens where forca > 2000;

select * from tb_personagens where forca between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_personagens.classes_id = tb_classes.id;
 
select * from tb_personagens inner join tb_classes
on tb_personagens.classes_id = tb_classes.id
where tb_classes.classes="guerreiro";
