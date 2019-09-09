desc pessoa;

alter table pessoa
add column profissao varchar (10) after nome; -- After serve para definir a posição da noa coluna// First para colocar em primeiro ?

alter table pessoa 
add column codigo int first;

alter table pessoa
modify column profissao  varchar(24) not null default "";     --  Modificar tipo do dado e a quantidade, ex: varchar?

alter table pessoa                -- Mais uado para renomear nome de coluns?
change column profissao prof varchar (20);

alter table pessoa           --  Para renomear as Tabelas? 
rename to gafanhotos;

alter table pessoa 
drop column profissao;

alter table curso
add column idcurso int first;

alter table curso             -- Usado para definir a primary key?
add primary key(idcurso);

drop table curso;           -- Usado para apagar tabelas?

select * from pessoa; 