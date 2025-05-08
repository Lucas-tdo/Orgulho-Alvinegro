create database orgulho_alvinegro;
use orgulho_alvinegro;

create table usuario (
idusuario int primary key auto_increment,
Nome varchar(45),
Telefone char(11),
email varchar(255),
senha varchar(45)
);

create table quiz(
idquiz int auto_increment,
acertos int,
ponto int,
fkusuario int,
primary key(idquiz,fkusuario),
foreign key (fkusuario) references usuario (idusuario)
);

create table favoritas(
idfavoritas int,
nome varchar(45),
imagem varchar(45),
preco decimal(4,2),
marca varchar(25),
ano datetime,
fkusuario int,
primary key(idfavoritas,fkusuario)
);

select*from usuario;