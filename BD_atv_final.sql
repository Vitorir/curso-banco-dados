create database ControleDeBens;
use ControleDeBens;

select * from bem;
select * from usuario;
select * from historico;

drop table bem;

create table usuario (
id_usuario int not null primary key auto_increment,
nome varchar(45) not null,
percentualBem decimal(3,2) not null,
valorPatrimonial decimal(10,2) not null
);


create table bem (
id_bem int not null primary key auto_increment,
id_usuario int not null,
nomeBem varchar(45) not null,
dataCompra date not null,
valor varchar(20) not null,
tipoBem varchar(45) not null,
desgaste boolean not null, 
dataValidade boolean not null,
valorSentimental varchar(45)
);

create table bem_has_usuario(
  bem_idBem int not null,
  usuario_idUsuario int not null,
  percentualBem double(3,2) not null,
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

alter table bem add constraint fk_id_usuario foreign key(id_usuario)
references usuario (id_usuario);


create table historico(
id_historico int not null primary key auto_increment,
id_bem int not null,
nomeBem varchar(45) not null,
dataEspecifica date not null,
valor decimal(10,2)not null
);

alter table historico add constraint fk_id_bem foreign key (id_bem)
references bem (id_bem);