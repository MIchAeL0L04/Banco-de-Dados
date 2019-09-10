create database if not exists especialidades;
use especialidades;

create table if not exists tipos(
codigo int,
nome varchar (20),
duracao varchar (20),
preco decimal (5,2),
descricao text,
primary key (codigo)
)default charset = utf8;

alter table tipos 
modify column codigo int not null auto_increment;


insert into tipos values 
(default, "Mecatrônica", "12 meses", "250.00", "Consete ventilador"),
(default, "Mecânica", "12 meses", "250.00", "Construa robos"),
(default, "Programação", "18 meses", "400.00", "Desenvolva apps"),
(default, "Redes", "6 meses", "200.00", "Gerencie empresas");

select * from tipos;





select * from curso;
select * from gafanhotos;

insert into curso values 
("2", "Mysql", "Programe em Java", "200", "100", "2020"),
("3", "Sql", "Programe em Swl", "2030", "00", "2040"),
("4", "C#", "Programe em C#", "200", "100", "2020"),
("5", "Php", "Programe em Java", "200", "100", "2020"),
("6", "Html", "Programe em Java", "200", "100", "2020"),
("7", "Css", "Programe em Java", "200", "100", "2020"),
("8", "JavaScript", "Programe em Java", "200", "100", "2020"),
("9", "Bootstrap", "Programe em Java", "200", "100", "2020");


select * from curso;

update curso
set nome = "HTML5"
where idcurso = 1
limit 1;                     -- Limitar quantas linhas serem afetadas ?
 

update curso 
set carga = "100", ano = "2035"
where ano = '2020';

delete from curso 
where idcurso = 1;

select * from curso;

 truncate table curso;     -- Apagar todas as linhas de uma tabela ?

