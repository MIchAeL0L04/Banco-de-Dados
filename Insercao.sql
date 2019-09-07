create database cadastroo
default character set utf8
default collate utf8_general_ci;

create table pessoa(
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum ("M","F"),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar (20) default 'Brasil',
primary key (id)
)default charset = utf8;

insert into pessoa
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'ParzzivaII', '1984-12-02', 'M', '66.0', '1.82', default),
(default, 'Aldagiza', '1984-12-02', 'M', '66.0', '1.82', default),
(default, 'Cotovelinho', '1984-12-02', 'M', '66.0', '1.82', default);

select * from pessoa;






