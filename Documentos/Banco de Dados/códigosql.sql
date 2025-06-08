create database orgulho_alvinegro;
use orgulho_alvinegro;
drop database orgulho_alvinegro;

create table usuario (
idusuario int primary key auto_increment,
Nome varchar(45),
email varchar(255),
senha varchar(45),
imagem varchar(255),
nivel varchar(45) default 'Usuário',
constraint chknivel check (nivel in ("Usuário","Administrador"))
);

insert into usuario values
(1,'Lucas','lucas@gmail.com','Urubu100@','','Administrador');

create table quiz(
idquiz int auto_increment,
acertos int,
pontos int,
fkusuario int,
primary key(idquiz,fkusuario),
foreign key (fkusuario) references usuario (idusuario)
);

create table camisa(
idcamisa int auto_increment,
idusuario int,
nome varchar(45),
imagem varchar(255),
preco decimal(5,2),
marca varchar(25),
ano year,
situacao varchar(45) default 'analise',
primary key(idcamisa,idusuario),
foreign key (idusuario) references usuario (idusuario),
constraint chksituacao check (situacao in ('analise','aprovado','recusada'))
);

insert into camisa values
(default,1,'1° Camisa','image/camisas/camisa2024-1.png','219.90','Reebook','2024','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2024-2.png','219.90','Reebook','2024','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa2024-3.png','279.90','Reebook','2024','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2023-1.png','129.90','Reebook','2023','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2023-2.png','239.90','Reebook','2023','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2022-1.png','129.90','Reebook','2022','aprovado'),
(default,1,'4° Camisa','image/camisas/camisa2022-4.png','179.90','Reebook','2022','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa2021-3.png','169.90','Kappa','2021','aprovado'),
(default,1,'4° Camisa','image/camisas/camisa2021-4.png','189.90','Kappa','2021','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2020-1.png','225.30','Kappa','2020','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa2019-3.png','169.90','Kappa','2019','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2017-1.png','200.90','Topper','2017','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa2017-3.png','140.90','Topper','2017','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2016-1.png','250.90','Topper','2016','aprovado'),
(default,1,'4° Camisa','image/camisas/camisa2016-4.png','120.90','Topper','2016','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2015-1.png','200.90','Puma','2015','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2015-2.png','200.90','Puma','2015','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa2014-3.png','220.90','Puma','2014','aprovado'),
(default,1,'4° Camisa','image/camisas/camisa2014-4.png','180.90','Puma','2014','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2013-1.png','220.90','Puma','2013','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2013-2.png','200.90','Puma','2013','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa2013-3.png','200.90','Puma','2013','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2012-1.png','240.90','Puma','2012','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2012-2.png','170.90','Puma','2012','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2008-1.png','189.90','Kappa','2008','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2008-2.png','169.90','Kappa','2008','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa2008-3.png','139.90','Kappa','2008','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2006-1.png','140.90','Kappa','2006','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2006-2.png','130.90','Kappa','2006','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa2002-1.png','230.90','Finta','2002','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa2002-2.png','190.90','Finta','2002','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa1997-1.png','190.90','Finta','1997','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa1996-1.png','180.90','Finta','1996','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa1996-3.png','110.90','Finta','1996','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa1995-1.png','270.90','Finta','1995','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa1995-2.png','250.90','Finta','1995','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa1995-3.png','250.90','Finta','1995','aprovado'),
(default,1,'1° Camisa','image/camisas/camisa1988-1.png','189.90','Finta','1988','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa1988-2.png','165.90','Finta','1988','aprovado'),
(default,1,'2° Camisa','image/camisas/camisa1962-2.png','270.90','','1962','aprovado'),
(default,1,'3° Camisa','image/camisas/camisa1962-3.png','300.90','','1962','aprovado');

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
(default, 'Marlon Freitas', 'image/jogadores/marlonfreitas.png', 'O grande ídolo do time de 2024 Marlon. Símbolo de redenção pelo Glorioso em uma temporada histórica. Com seus passes incríveis marcou história e é um ídolo indiscutível', '2023', '2025'),
(default, 'Luiz Henrique', 'image/jogadores/luizhenrique.png', 'A grande liderança técnica, o craque do time de 2024 campeão da Libertadores e do Campeonato Brasileiro. Luiz Henrique assumiu a histórica camisa 7 e entregou o que dela se espera: dribles, gols e títulos marcantes.', '2024', '2024'),
(default, 'Jefferson', 'image/jogadores/jefferson.png', 'Em duas passagens pelo Botafogo, Jefferson defendeu a meta alvinegra em 459 partidas. Símbolo de qualidade, segurança e sobretudo amor ao clube.', '2009', '2018'),
(default, 'Wagner', 'image/jogadores/wagner.png', 'As defesas de Wagner extremamentes importantes para a conquista do brasileiro de 1995. A final contra o Santos, no Pacaembu, entregou uma das maiores atuações individuais de um goleiro na história do Brasileirão por mata-mata.', '1993', '2002'),
(default, 'Túlio Maravilha', 'image/jogadores/tulio.png', 'A personalidade eternamente brincalhona de Túlio Maravilha um dos maiores artilheiros da história do futebol.O principal destaque do título de brasileiro de 1995, usando a gloriosa camisa 7 se tornando inesquecível na história do Botafogo', '1994', '1996'),
(default, 'Maurício', 'image/jogadores/mauricio.png', 'Com a mítica camisa 7 às costas, fez o gol que acabou com o jejum de 21 anos sem títulos, no Campeonato Carioca de 1989, e iniciou uma nova era de conquistas para o Botafogo.', '1986', '1988'),
(default, 'Paulo Cezar Caju', 'image/jogadores/paulocezarcaju.png', 'Revelado pelo Botafogo, foi um dos jogadores mais polêmicos e habilidosos de sua época. Foi campeão diversas vezes no clube marcando sua grande passagem.', '1967', '1972'),
(default, 'Gerson', 'image/jogadores/gerson.png', 'O Canhotinha de Ouro é um dos melhores meio-campistas da história do Brasil. Autor de lançamentos espetaculares,ajudou o alvinegro a manter o alto nível de seu meio-campo ficando eternizado.', '1963', '1969'),
(default, 'Jairzinho', 'image/jogadores/jairzinho.png', 'Conhecido como Furacão, Jairzinho brilhou com a camisa do Botafogo. Foi protagonista na conquista da Copa do Mundo de 1970.Ídolo incontestável, sua força, velocidade e poder de decisão marcaram época no futebol brasileiro e no Glorioso.', '1963', '1974'),
(default, 'Amarildo', 'image/jogadores/amarildo.png', 'O "Possesso", como ficou conhecido, revelado pelo Botafogo, foi um atacante de técnica refinada e coragem impressionante, deixando seu nome na história do clube.', '1958', '1963'),
(default, 'Didi', 'image/jogadores/didi.png', ' Um dos maiores meio-campistas de todos os tempos no futebol, foi o craque do título mundial do Brasil em 1958 e imortalizou uma técnica de batida na bola que ganhou o nome de Folha Seca.', '1956', '1959'),
(default, 'Quarentinha', 'image/jogadores/quarentinha.png', 'Waldir Cardoso Lebrego é o maior artilheiro da história do Botafogo. Marcou 313 gols em 444 jogos.Quarentinha uma figura exótica, que não via motivos para comemorações nos gols que fazia.', '1954', '1964'),
(default, 'Garrincha', 'image/jogadores/garrincha.png', 'Um dos maiores jogadores de todos os tempos,Garrincha é provavelmente o maior driblador da história do futebol. É o segundo jogador com mais partidas pelo clube (612 jogos) e o terceiro maior artilheiro botafoguense (261 gols).', '1953', '1965'),
(default, 'Nilton Santos', 'image/jogadores/niltonsantos.png', 'Poucos jogadores podem ser considerados sinônimos de seus clubes. Nilton Santos é um deles. Craque, revolucionou a função do lateral-esquerdo. Por isso, é considerado o maior da história em sua posição.', '1948', '1964');


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
idcamisa int,
data datetime default current_timestamp,
primary key(idcomentario,idusuario),
foreign key (idusuario) references usuario (idusuario),
foreign key (ididolo) references idolo(ididolo),
foreign key (idtitulo) references titulo(idtitulo),
foreign key (idcamisa) references camisa(idcamisa)
);

