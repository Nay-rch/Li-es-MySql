create database db_recursos_humanos;

use db_recursos_humanos;

Create table tb_recursos_humanos(
id bigint auto_increment,
nome varchar(20) not null,
idade float(3),
CPF float(10),
cargo varchar(20),
salario float(5),

primary key (id)
);
select * from tb_recursos_humanos; 

insert into tb_recursos_humanos(nome,idade,CPF,cargo,salario) values ("Maria",21, 8654357, "assistente", 1700) ;

update tb_recursos_humanos
set CPF = 2134524
where id = 1;

select * from tb_recursos_humanos
where salario > 2000;

select * from tb_recursos_humanos
where salario < 2000;

delete from tb_recursos_humanos
where id = 5;