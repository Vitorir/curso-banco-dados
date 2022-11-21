create database ControleDeBens;
use ControleDeBens;

select * from bem;
select * from usuario;
select * from historico;

drop table bem;

create table usuario (
idUsuario int not null primary key auto_increment,
nome varchar(45) not null,
percentualBem decimal(10,2),
valorPatrimonial decimal(10,2) 
);


create table bem (
idBem int not null primary key auto_increment,
idUsuario int,
nomeBem varchar(45) not null,
dataCompra date,
valor decimal(10, 2),
tipoBem varchar(45),
desgaste enum('V', 'F'),
dataValidade date,
valorSentimental varchar(45)
);

alter table bem
add column taxaValorizacao decimal(10, 2) after desgaste;

create table bem_has_usuario (
  bem_idBem int not null,
  usuario_idUsuario int not null,
  percentualBem decimal(3,2) not null,
  totalInvestido varchar(45) not null,
  primary key(bem_idBem, usuario_idUsuario),
  index fk_bem_has_usuario_usuario (usuario_idUsuario),
  index fk_bem_has_usuario_bem (bem_idBem),
  constraint fk_bem_has_usuario
    foreign key(bem_idBem)
    references bem(idBem),
  constraint fk_bem_has_usuario_usuario
    foreign key(usuario_idUsuario)
    references usuario(idUsuario)
);

create table historico (
idHistorico int not null primary key auto_increment,
idBem int,
nomeBem varchar(45) not null,
dataEspecifica date not null,
valor decimal(10,2)not null
);

alter table bem 
add constraint fk_id_usuario 
foreign key(id_usuario)
references usuario (id_usuario);


alter table historico 
add constraint fk_id_bem 
foreign key (id_bem)
references bem (idBem);