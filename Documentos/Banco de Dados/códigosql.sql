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
(default,'1° Camisa','image/camisas/camisa2017-1.png','200.90','Topper','2017'),
(default,'3° Camisa','image/camisas/camisa2017-3.png','140.90','Topper','2017'),
(default,'1° Camisa','image/camisas/camisa2016-1.png','250.90','Topper','2016'),
(default,'4° Camisa','image/camisas/camisa2016-4.png','120.90','Topper','2016'),
(default,'1° Camisa','image/camisas/camisa2015-1.png','200.90','Puma','2015'),
(default,'2° Camisa','image/camisas/camisa2015-2.png','200.90','Puma','2015'),
(default,'3° Camisa','image/camisas/camisa2014-3.png','220.90','Puma','2014'),
(default,'4° Camisa','image/camisas/camisa2014-4.png','180.90','Puma','2014'),
(default,'1° Camisa','image/camisas/camisa2013-1.png','220.90','Puma','2013'),
(default,'2° Camisa','image/camisas/camisa2013-2.png','200.90','Puma','2013'),
(default,'3° Camisa','image/camisas/camisa2013-3.png','200.90','Puma','2013'),
(default,'1° Camisa','image/camisas/camisa2012-1.png','240.90','Puma','2012'),
(default,'2° Camisa','image/camisas/camisa2012-2.png','170.90','Puma','2012'),
(default,'1° Camisa','image/camisas/camisa2008-1.png','189.90','Kappa','2008'),
(default,'2° Camisa','image/camisas/camisa2008-2.png','169.90','Kappa','2008'),
(default,'3° Camisa','image/camisas/camisa2008-3.png','139.90','Kappa','2008'),
(default,'1° Camisa','image/camisas/camisa2006-1.png','140.90','Kappa','2006'),
(default,'2° Camisa','image/camisas/camisa2006-2.png','130.90','Kappa','2006'),
(default,'1° Camisa','image/camisas/camisa2002-1.png','230.90','Finta','2002'),
(default,'2° Camisa','image/camisas/camisa2002-2.png','190.90','Finta','2002'),
(default,'1° Camisa','image/camisas/camisa1997-1.png','190.90','Finta','1997'),
(default,'1° Camisa','image/camisas/camisa1996-1.png','180.90','Finta','1996'),
(default,'3° Camisa','image/camisas/camisa1996-3.png','110.90','Finta','1996'),
(default,'1° Camisa','image/camisas/camisa1995-1.png','270.90','Finta','1995'),
(default,'2° Camisa','image/camisas/camisa1995-2.png','250.90','Finta','1995'),
(default,'3° Camisa','image/camisas/camisa1995-3.png','250.90','Finta','1995'),
(default,'1° Camisa','image/camisas/camisa1988-1.png','189.90','Finta','1988'),
(default,'2° Camisa','image/camisas/camisa1988-2.png','165.90','Finta','1988'),
(default,'2° Camisa','image/camisas/camisa1962-2.png','270.90','','1962'),
(default,'3° Camisa','image/camisas/camisa1962-3.png','300.90','','1962');

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
(default, "Campeonato Brasileiro", "image/titulos/campeonatobrasileiro24.png", "O terceiro título brasileiro do Botafogo. Com o time com uma campanha histórica, após vitória de 2x1 contra o São Paulo. Com gols de Savariono e Gregore.", "2024"),
(default, "Libertadores", "image/titulos/libertadores.png", "O primeiro título de Libertadores do Botafogo. Com o time ganhando em cima do Atlético Mineiro por 3x1. Com gols de Luiz Henrique, Alex Telles e Junior Santos.", "2024"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O vigésimo primeiro título carioca do Botafogo . Com o time ganhando em cima do Vasco nos pênaltis após empate em 1x1. Com gol de Joel Carli no tempo normal e defesas decisivas de Gatito Fernández nos pênaltis.", "2018"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O vigésimo título carioca do Botafogo. Com o time ganhando em cima do Fluminense por 1x0. Com gol de Rafael Marques.", "2013"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo nono título carioca do Botafogo Com o time ganhando em cima do Flamengo por 2x1. Com gols de Herrera e Abreu.", "2010"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo oitavo título carioca do Botafogo . Com o time ganhando em cima do Madureira por 3x1. Com dois gols de Dodô e Reinaldo.", "2006"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo sétimo título carioca do Botafogo . Com o time ganhando em cima do Vasco por 1x0. Com gol de Dimba.", "1997"),
(default, "Campeonato Brasileiro", "image/titulos/campeonatobrasileiro95.png", "O segundo título brasileiro do Botafogo. Com o time ganhando em cima do Santos por 1x1 no segundo jogo, após vitória de 2x1 no primeiro. Com dois gols de Túlio Maravilha no primeiro jogo e Maurício no segundo.", "1995"),
(default, "Copa Conmebol", "image/titulos/copaconmebol.png", "O primeiro título da Copa Conmebol do Botafogo. Com o time vencendo o Peñarol nos penaltis, após empate por 1x1 no primeiro e 2x2 no segundo. Com gol de Perivaldo no primeiro jogo e gols de Eliel e Sinval no segundo.", "1993"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo sexto título carioca do Botafogo . Com o time ganhando em cima do Vasco por 1x0. Com gol de Carlos Alberto Dias.", "1990"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo quinto título carioca do Botafogo. Com o time ganhando em cima do Flamengo por 1x0. Com gol de Maurício", "1989"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo quarto título carioca do Botafogo . Com o time ganhando em cima do Vasco por 4x0. Com gols de Jairzinho, Gerson , Roberto Miranda e Paulo César.", "1968"),
(default, "Campeonato Brasileiro", "image/titulos/campeonatobrasileiro68.png", " O primeiro título brasileiro do Botafogo . Com o time ganhando em cima do Fortaleza por 4x0. Com dois gols de Ferretti, um de Roberto Miranda e um de Paulo César.", "1968"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo terceiro título carioca do Botafogo. Com o time ganhando em cima do Bangu por 2x1. Com gols de Roberto Miranda e Gérson.", "1967"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo segundo título carioca do Botafogo . Com o time ganhando em cima do Flamengo por 3x0. Com dois gols de Garrincha e um contra de Vanderlei.", "1962"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo primeiro título carioca do Botafogo. Com o time ganhando em cima do Flamengo por 3x0. Com dois gols de Amarildo e um de Luís Antônio.", "1961"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O décimo título carioca do Botafogo . Com o time ganhando em cima do Fluminense por 6x2. Com cinco gols de Paulinho Valentim e um Garrincha.", "1957"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O nono título carioca do Botafogo . Com o time ganhando em cima do Vasco por 3x1. Com gols de Paraguaio, Octávio e Braguinha.", "1948"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O oitavo título carioca do Botafogo . Com o time ganhando em cima do Andarahy por 5x4. Com dois gols de Álvaro, um de Patesko,um de Carvalho Leite e um de Russinho.", "1935"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", " O sétimo título carioca do Botafogo . Com o time ganhando em cima do Andarahy por 2x1. Com gols de Nilo e Áttila.", "1934"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O sexto título carioca do Botafogo . Com o time se sagrando campeão contra o Olaria em um empate de 1x1. Com gol de Áttila.", "1933"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", " O quinto título carioca do Botafogo . Com o time se sagrando campeão contra o Bonsucesso em uma vitória de 5x4. Com quatro gols de Nilo e um de Paulinho.", "1932"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O quarto título carioca do Botafogo . Com o time se sagrando campeão contra o Fluminense em um empate de 2x2. Com gols de Nilo e Celso.", "1930"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O terceiro título carioca do Botafogo . Com o time se sagrando campeão contra o Germânia em uma vitória de 1x0. Com gol de Mimi Sodré", "1912"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O segundo título carioca do Botafogo . Com o time se sagrando campeão contra o Fluminense em uma vitória de 6x1.Com três gols de Abelardo de Lamare e dois de Décio Viccari e um de Mimi Sodré.", "1910"),
(default, "Campeonato Carioca", "image/titulos/campeonatocarioca.png", "O primeiro título carioca do Botafogo", "1907");




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

