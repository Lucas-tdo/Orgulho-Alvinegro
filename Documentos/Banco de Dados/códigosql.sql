create database orgulho_alvinegro;
use orgulho_alvinegro;
drop database orgulho_alvinegro;

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
(default,'3° Camisa','image/camisas/camisa2024-3.png','279.90','Reebook','2024'),
(default,'1° Camisa','image/camisas/camisa2023-1.png','129.90','Reebook','2023'),
(default,'2° Camisa','image/camisas/camisa2023-2.png','239.90','Reebook','2023'),
(default,'1° Camisa','image/camisas/camisa2022-1.png','129.90','Reebook','2022'),
(default,'4° Camisa','image/camisas/camisa2022-4.png','179.90','Reebook','2022'),
(default,'3° Camisa','image/camisas/camisa2021-3.png','169.90','Kappa','2021'),
(default,'4° Camisa','image/camisas/camisa2021-4.png','189.90','Kappa','2021'),
(default,'1° Camisa','image/camisas/camisa2020-1.png','225.30','Kappa','2020'),
(default,'3° Camisa','image/camisas/camisa2019-3.png','169.90','Kappa','2019'),
(default,'1° Camisa','image/camisas/camisa2017-1.png','169.90','Topper','2017'),-- não sei preço
(default,'3° Camisa','image/camisas/camisa2017-3.png','169.90','Topper','2017'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa2016-1.png','169.90','Topper','2016'),-- não sei preço
(default,'4° Camisa','image/camisas/camisa2016-4.png','169.90','Topper','2016'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa2015-1.png','169.90','Puma','2015'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa2015-2.png','169.90','Puma','2015'),-- não sei preço
(default,'3° Camisa','image/camisas/camisa2014-3.png','169.90','Puma','2014'),-- não sei preço
(default,'4° Camisa','image/camisas/camisa2014-4.png','169.90','Puma','2014'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa2013-1.png','169.90','Puma','2013'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa2013-2.png','169.90','Puma','2013'),-- não sei preço
(default,'3° Camisa','image/camisas/camisa2013-3.png','169.90','Puma','2013'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa2012-1.png','169.90','Puma','2012'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa2012-2.png','169.90','Puma','2012'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa2008-1.png','169.90','Kappa','2008'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa2008-2.png','169.90','Kappa','2008'),-- não sei preço
(default,'3° Camisa','image/camisas/camisa2008-3.png','169.90','Kappa','2008'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa2006-1.png','169.90','Kappa','2006'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa2006-2.png','169.90','Kappa','2006'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa2002-1.png','169.90','Finta','2002'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa2002-2.png','169.90','Finta','2002'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa1997-1.png','169.90','Finta','1997'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa1996-1.png','169.90','Finta','1996'),-- não sei preço
(default,'3° Camisa','image/camisas/camisa1996-3.png','169.90','Finta','1996'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa1995-1.png','169.90','Finta','1995'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa1995-2.png','169.90','Finta','1995'),-- não sei preço
(default,'3° Camisa','image/camisas/camisa1995-3.png','169.90','Finta','1995'),-- não sei preço
(default,'1° Camisa','image/camisas/camisa1988-1.png','169.90','Finta','1988'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa1988-2.png','169.90','Finta','1988'),-- não sei preço
(default,'2° Camisa','image/camisas/camisa1962-2.png','169.90','','1962'),-- não sei preço
(default,'3° Camisa','image/camisas/camisa1962-3.png','169.90','','1962');-- não sei preço





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

