create database orgulho_alvinegro;
use orgulho_alvinegro;
drop database orgulho_alvinegro;

create table usuario (
idusuario int primary key auto_increment,
Nome varchar(45),
email varchar(255),
senha varchar(45),
imagem varchar(255)
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

create table titulo(
idtitulo int primary key auto_increment,
nome varchar(45),
imagem varchar(255),
descricao varchar(255),
ano year
);

insert into titulo values
(default, "Campeonato Brasileiro", "image/titulos/campeonatobrasileiro24.png", "desc", "2024"),
(default, "Libertadores", "image/titulos/libertadores.png", "desc", "2024"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "2018"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "2013"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "2010"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "2006"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1997"),
(default, "Campeonato Brasileiro", "image/titulos/campeonatobrasileiro95.png", "desc", "1995"),
(default, "Copa Conmebol", "image/titulos/copaconmebol.png", "desc", "1993"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1990"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1989"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1968"),
(default, "Campeonato Brasileiro", "image/titulos/campeonatobrasileiro68.png", "desc", "1968"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1967"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1962"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1961"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1957"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1948"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1935"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1934"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1933"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1932"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1930"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1912"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1910"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "desc", "1907");




create table idolo(
ididolo int primary key auto_increment,
nome varchar(45),
imagem varchar(255),
descricao varchar(255),
chegada year,
saida year
);

insert into idolo values
(default, 'Marlon Freitas', 'image/jogadores/marlonfreitas.png', 'desc', '2023', '2025'),
(default, 'Luiz Henrique', 'image/jogadores/luizhenrique.png', 'desc', '2024', '2024'),
(default, 'Jefferson', 'image/jogadores/jefferson.png', 'desc', '2009', '2018'),
(default, 'Wagner', 'image/jogadores/wagner.png', 'desc', '1993', '2002'),
(default, 'Túlio Maravilha', 'image/jogadores/tulio.png', 'desc', '1994', '1996'),
(default, 'Maurício', 'image/jogadores/mauricio.png', 'desc', '1986', '1988'),
(default, 'Paulo Cezar Caju', 'image/jogadores/paulocezarcaju.png', 'desc', '1967', '1972'),
(default, 'Gerson', 'image/jogadores/gerson.png', 'desc', '1963', '1969'),
(default, 'Jairzinho', 'image/jogadores/jairzinho.png', 'desc', '1963', '1974'),
(default, 'Amarildo', 'image/jogadores/amarildo.png', 'desc', '1958', '1963'),
(default, 'Didi', 'image/jogadores/didi.png', 'desc', '1956', '1959'),
(default, 'Quarentinha', 'image/jogadores/quarentinha.png', 'desc', '1954', '1964'),
(default, 'Garrincha', 'image/jogadores/garrincha.png', 'desc', '1953', '1965'),
(default, 'Nilton Santos', 'image/jogadores/niltonsantos.png', 'desc', '1948', '1964');

create table titulo_dos_idolos(
ididolo int,
idtitulo int,
primary key(ididolo,idtitulo),
foreign key (ididolo) references idolo(ididolo),
foreign key (idtitulo) references titulo(idtitulo)
);

insert into titulo_dos_idolos values
(1, 1),  
(1, 2),  
(2, 1), 
(2, 2),  
(3, 3),
(3, 4),  
(3, 5), 
(4, 7), 
(4, 8), 
(4, 9),  
(5, 8),  
(7, 12),
(7, 13), 
(7, 14),
(8, 12), 
(8, 13), 
(8, 14),
(9, 12), 
(9, 13), 
(9, 14), 
(10, 15),
(10, 16),
(11,15),
(11,16),
(11, 17),
(12, 15),
(12, 16),
(12, 17),
(13, 15),
(13, 16),
(13, 17),
(14, 15),
(14, 16),
(14, 17),
(14, 18);

create table comentario(
idcomentario int auto_increment,
idusuario int,
comentario varchar(255),
ididolo int,
idtitulo int,
data datetime default current_timestamp,
primary key(idcomentario,idusuario),
foreign key (idusuario) references usuario (idusuario),
foreign key (ididolo) references idolo(ididolo),
foreign key (idtitulo) references titulo(idtitulo)
);


select * from comentario;

select comentario,year(data) as ano,month(data) as mes,day(data) as dia,u.nome from comentario c join usuario u on
        u.idusuario=c.idusuario where c.idtitulo=2 order by data desc;
select date(data) from comentario;

drop table comentario;

select * from usuario;


 select * from usuario where email='lucas@gmail.com';

