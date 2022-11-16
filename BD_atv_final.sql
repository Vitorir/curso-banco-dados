create database ControleDeBens;
use ControleDeBens;

create table bem(
id_bem int not null primary key auto_increment,
id_usuario int not null,
nome_bem varchar(45) not null,
data_compra date not null,
valor varchar(20) not null,
tipo_bem varchar(45) not null,
desgaste boolean not null, 
data_validade boolean not null,
valor_sentimental varchar(45) not null
);

create table usuario(
id_usuario int not null primary key auto_increment,
nome varchar(45) not null,
percentual_bem decimal(3,2) not null,
valor_patrimonial decimal(10,2) not null
);

create table historico(
id_historico int not null primary key auto_increment,
id_bem int not null,
nome_do_bem varchar(45) not null,
data_especifica date not null,
valor_bem decimal(10,2)not null
);

