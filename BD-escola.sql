create database db_escola;

use bd_escola;

create table tb_escola(
id bigint auto_increment,
nome varchar(20),
idade float(5),
turma varchar(20),
disciplina varchar(20),
nota float(20),

primary key (id)
);
select * from tb_escola;
insert into tb_escola(nome,idade,turma,disciplina,nota) values ("Marco", 17, "3ºA", "port", 3);

select * from tb_escola
where nota > 7;

select * from tb_escola
where nota < 7;

update tb_escola
set nome = "lucas"
where id = 2;