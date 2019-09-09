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

create table Alunos(
id int not null auto_increment,
nome varchar (20) not null,
nascimento date,
sexo enum ("M","F"),
peso decimal (3,2),
nacionalidade varchar (20) default "Brasil",
amigo varchar (10) default "Michael",
primary key (id)
)default charset = utf8;

create table if not exists curso(
nome varchar (20) not null unique, -- Assim o curso tera um nome unico, bem parecido com a primary key?
descricao text,             -- Para textos longos usamos o text ?
carga int unsigned,         -- Para não deixar colocar sinal e sempre ficar positivo? 
totaulas int,
ano year default "2019"
)default charset = utf8;




insert into alunos values( default, 'Nathan', '1999-04-02', 'M', '6.50', default, default);



insert into pessoa
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'ParzzivaII', '1984-12-02', 'M', '66.0', '1.82', default),
(default, 'Aldagiza', '1984-12-02', 'M', '66.0', '1.82', default),
(default, 'Cotovelinho', '1984-12-02', 'M', '66.0', '1.82', default);

select * from alunos;






