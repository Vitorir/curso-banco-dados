create database ControleDeBens;
use ControleDeBens;

select * from bem;
select * from usuario;
select * from historico;
select * from bem_has_usuario;

desc historico;
desc bem;
desc usuario;
desc bem_has_usuario;

drop database controledebens;

create table usuario (
idUsuario int not null primary key auto_increment,
nome varchar(45) not null,
valorPatrimonial decimal(10,2) 
);

create table bem (
idBem int not null primary key auto_increment,
idUsuario int,
nomeBem varchar(45) not null,
dataCompra date,
valor decimal(10, 2),
tipoBem varchar(45),
desgaste char(1),
dataValidade date,
taxaValorizacao decimal(10, 2)
);

create table bem_has_usuario (
  bem_idBem int not null,
  nomeBem varchar(45),
  usuario_idUsuario int not null,
  nomeUsuario varchar(45),
  percentualBem decimal(10, 2),
  totalInvestido decimal(10,2),
  valorSentimental varchar(45),
  primary key(bem_idBem, usuario_idUsuario),
  index fk_bem_has_usuario_usuario(usuario_idUsuario, bem_idBem)
);



alter table bem_has_usuario
  add constraint fk_bem_has_usuario
    foreign key(bem_idBem)
    references bem(idBem),
  add constraint fk_bem_has_usuario_usuario
    foreign key(usuario_idUsuario)
    references usuario(idUsuario);


create table historico (
idHistorico int not null primary key auto_increment,
idBem int,
nomeBem varchar(45) not null,
dataEspecifica date not null,
valor decimal(10,2) not null
);

alter table bem 
add constraint fk_idUsuario 
foreign key(idUsuario)
references usuario(idUsuario);


alter table historico 
add constraint fk_idBem 
foreign key (idBem)
references bem(idBem);