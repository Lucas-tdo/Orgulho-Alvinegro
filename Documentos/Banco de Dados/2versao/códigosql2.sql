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
pontos int,
fkusuario int,
primary key(idquiz,fkusuario),
foreign key (fkusuario) references usuario (idusuario)
);

select acertos from quiz order by acertos desc limit 10; -- como fazer camisas

create table camisa(
idcamisa int primary key auto_increment,
nome varchar(45),
imagem varchar(255),
preco decimal(5,2),
marca varchar(25),
ano year
);

insert into camisa values
(default,'1° Camisa','image/camisas/camisa2024-1.png','219.90','Reebook','2024'),
(default,'2° Camisa','image/camisas/camisa2024-2.png','219.90','Reebook','2024'),
(default,'3° Camisa','image/camisas/camisa2024-3.png','279.90','Reebook','2024');


select nome,imagem,preco,marca,ano from camisa;



create table favoritas(
idusuario int,
idcamisa int,
primary key(idusuario,idcamisa),
foreign key(idusuario) references usuario (idusuario),
foreign key(idcamisa) references camisa(idcamisa)
);

insert into favoritas values(2,4);
create table idolo(
ididolo int primary key auto_increment,
nome varchar(45),
imagem varchar(255),
descricao varchar(255),
chegada datetime
);

create table titulo(
idtitulo int primary key auto_increment,
nome varchar(45),
imagem varchar(255),
descricao varchar(255),
ano datetime
);

create table titulo_dos_idolos(
ididolo int,
idtitulo int,
primary key(ididolo,idtitulo),
foreign key (ididolo) references idolo(ididolo),
foreign key (idtitulo) references titulo(idtitulo)
);

select * from usuario;

