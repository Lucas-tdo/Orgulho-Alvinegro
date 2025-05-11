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

truncate quiz;
select * from quiz;
select idquiz,acertos,pontos from quiz where fkusuario=2 order by idquiz desc limit 5; 

create table camisa(
idcamisa int primary key auto_increment,
nome varchar(45),
imagem varchar(255),
preco decimal(4,2),
marca varchar(25),
ano datetime
);

create table favoritas(
idusuario int,
idcamisa int,
primary key(idusuario,idcamisa),
foreign key(idusuario) references usuario (idusuario),
foreign key(idcamisa) references camisa(idcamisa)
);

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