PRAGMA FOREIGN_KEYS = ON;

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(1, 'Jesus Solomon');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(2, 'Zachary Griffith');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(3, 'Marilyn Mueller');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(4, 'Sarah Taylor');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(5, 'John Small');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(6, 'Reginald Fuentes');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(7, 'Megan Ward');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(8, 'Kathleen Velez');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(9, 'Debra Lloyd');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(10, 'David Wang');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(11, 'Wang, Gamble and Cortez');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(12, 'Wilson LLC');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(13, 'Davis LLC');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(14, 'Leonard-Rodriguez');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(15, 'Brown, Lara and Simon');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(16, 'Torres and Sons');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(17, 'Rivas, Vargas and English');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(18, 'Murphy-Myers');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(19, 'Dean, Sharp and Mcdonald');

INSERT INTO Publicador('idPublicador', 'nome')
	VALUES(20, 'Baker-Anderson');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(1, '974335196', 'M', '1932-12-05', 87, '49470 Patricia Ways\nRachelton, WY 07004');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(2, '921982274', 'M', '2003-10-12', 16, '1350 Lopez Spring\nHarrisburgh, GA 26463');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(3, '956344333', 'F', '1990-01-21', 30, '4530 Anna Ranch\nEast Johnton, TN 57505');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(4, '924044361', 'F', '1919-04-22', 100, '745 Turner Run Apt. 468\nPageborough, NC 43246');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(5, '953830554', 'M', '1910-08-03', 109, '4750 Brittney Island Suite 429\nBrownborough, IA 33013');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(6, '928967463', 'M', '1921-12-16', 98, '3568 Wendy Freeway\nKatiemouth, SD 21792');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(7, '963408573', 'F', '1932-05-18', 87, '99380 Guzman Corners Suite 256\nThompsonberg, IL 71352');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(8, '908553485', 'F', '1982-03-07', 38, '17142 Ramirez Port\nLake Savannah, ID 08848');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(9, '945017987', 'F', '1946-09-24', 73, '87696 Kennedy Spurs\nEast Savannah, TX 58369');

INSERT INTO Utilizador('idUtilizador', 'numeroTelemovel', 'genero', 'dataNascimento', 'idade', 'morada')
	VALUES(10, '992458368', 'M', '1940-07-26', 79, '4995 Casey Track\nMcgeefurt, ND 23859');

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(11, 'https://www.clark.com/blog/main/about.jsp', 3);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(12, 'https://chen.com/search/', 3);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(13, 'https://www.park.com/main.html', 1);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(14, 'http://www.andrews.com/index/', 6);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(15, 'https://www.clark-zavala.com/', 8);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(16, 'http://jones.com/', 5);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(17, 'http://butler.org/privacy.htm', 6);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(18, 'http://morse.net/', 9);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(19, 'http://www.conner.com/about.htm', 6);

INSERT INTO Pagina('idPagina', 'website', 'idAdministrador')
	VALUES(20, 'https://lara.biz/faq.htm', 10);

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(21, 'available', 'http://www.hall-hayes.org/', 2844, '.mp3');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(22, 'sea', 'http://buchanan-anderson.com/', 943, '.mp3');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(23, 'believe', 'https://www.harding-sullivan.com/', 2997, '.mp3');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(24, 'simple', 'http://www.taylor.com/', 308, '.mp3');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(25, 'relate', 'http://www.trevino.net/', 3597, '.mp3');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(26, 'head', 'https://wolf.org/', 3191, '.jpg');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(27, 'card', 'http://weber.info/', 158, '.jpg');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(28, 'offer', 'https://hoover-diaz.org/', 3489, '.jpg');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(29, 'visit', 'http://knapp.info/', 1353, '.jpg');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(30, 'course', 'https://shah-coleman.com/', 3537, '.jpg');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(31, 'me', 'https://jackson-williams.net/', 2707, '.mp4');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(32, 'fear', 'http://www.beard-duffy.com/', 3153, '.mp4');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(33, 'simply', 'http://scott.org/', 3248, '.mp4');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(34, 'professor', 'http://phillips.com/', 133, '.mp4');

INSERT INTO Multimedia('idMultimedia', 'titulo', 'url', 'tamanho', 'formato')
	VALUES(35, 'door', 'http://www.gill.com/', 2965, '.mp4');

INSERT INTO Audio('idAudio', 'duracao')
	VALUES(21, 116);

INSERT INTO Audio('idAudio', 'duracao')
	VALUES(22, 165);

INSERT INTO Audio('idAudio', 'duracao')
	VALUES(23, 63);

INSERT INTO Audio('idAudio', 'duracao')
	VALUES(24, 65);

INSERT INTO Audio('idAudio', 'duracao')
	VALUES(25, 32);

INSERT INTO Imagem('idImagem')
	VALUES(26);

INSERT INTO Imagem('idImagem')
	VALUES(27);

INSERT INTO Imagem('idImagem')
	VALUES(28);

INSERT INTO Imagem('idImagem')
	VALUES(29);

INSERT INTO Imagem('idImagem')
	VALUES(30);

INSERT INTO Video('idVideo', 'duracao')
	VALUES(31, 291);

INSERT INTO Video('idVideo', 'duracao')
	VALUES(32, 181);

INSERT INTO Video('idVideo', 'duracao')
	VALUES(33, 96);

INSERT INTO Video('idVideo', 'duracao')
	VALUES(34, 89);

INSERT INTO Video('idVideo', 'duracao')
	VALUES(35, 102);

INSERT INTO Evento('idEvento', 'nome', 'descricao', 'dataRealizacao', 'idCriador')
	VALUES(36, 'Democrat Sort City Choice.', 'Technology within work. Ahead enough down create.\nPay value cause sure chair ground account dinner. Her pattern painting put cut. Foot avoid me across central marriage. Hand space industry after.', '2020-04-15 06:54:27', 4);

INSERT INTO Evento('idEvento', 'nome', 'descricao', 'dataRealizacao', 'idCriador')
	VALUES(37, 'General Key Stock Expect Player Rock Similar.', 'Close nation career better history simple situation. Agency compare close statement full.\nFear live use stop. Trip leg town. Nor appear example marriage magazine phone.', '2020-04-21 20:05:43', 8);

INSERT INTO Evento('idEvento', 'nome', 'descricao', 'dataRealizacao', 'idCriador')
	VALUES(38, 'Attorney Beat Movie Though Friend During Actually Public.', 'Change week more later. Fire woman finally nice authority. Picture all form important its.', '2020-04-01 15:16:12', 6);

INSERT INTO Evento('idEvento', 'nome', 'descricao', 'dataRealizacao', 'idCriador')
	VALUES(39, 'Ever Real Young Cut.', 'Line although player push but. Sometimes itself administration beyond society feeling. Money person report year push father. Information walk talk institution else wonder sell.', '2020-04-22 20:48:48', 2);

INSERT INTO Evento('idEvento', 'nome', 'descricao', 'dataRealizacao', 'idCriador')
	VALUES(40, 'Soldier Among Soon Agree Near.', 'Accept stand part market per stage. Moment future decide out person family represent. Despite task democratic receive growth south.', '2020-04-30 02:47:02', 2);

