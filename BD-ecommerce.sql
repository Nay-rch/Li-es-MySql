create database db_loja;

use db_loja;

create table tb_loja(
id bigint auto_increment,
tipo varchar (20) not null,
marca varchar (20),
preço float (20),
cor varchar (20),
tamanho varchar (2),

primary key (id)
);
select * from tb_loja;
insert into tb_loja(tipo, marca, preço, cor, tamanho) values ("relogio", "chapion", 300.00, "dourado", "p");

select * from tb_loja
where preço > 500;

select * from tb_loja
where preço < 500;

update tb_loja
set marca = "ca&du"
where id = 6;

