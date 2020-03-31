PRAGMA FOREIGN_KEYS = ON;

INSERT INTO Publisher('publisherID', 'name')
	VALUES(1, 'Michael West');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(2, 'Andrew Collins');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(3, 'Patrick Perez');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(4, 'Matthew Hanson');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(5, 'Ronald Campbell');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(6, 'Manuel Walker');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(7, 'Catherine Hill');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(8, 'Jeanette Copeland');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(9, 'Derrick Moore');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(10, 'Erin Martinez');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(11, 'Wilson, Harvey and Young');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(12, 'Roth-Goodwin');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(13, 'Anderson, Cox and Morgan');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(14, 'Rios-Brown');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(15, 'Estrada-Walters');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(16, 'Allen LLC');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(17, 'Mullen, White and Mcdonald');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(18, 'Mcgrath LLC');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(19, 'Porter, Rojas and Vaughn');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(20, 'Hood, Santiago and Estrada');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(1, '980697595', 'M', '1973-02-05', 47, '0008 Perkins Motorway\nDaniellebury, SD 81520');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(2, '922571468', 'M', '1918-01-11', 102, '670 Elizabeth Squares Suite 044\nNew Kathytown, MI 74701');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(3, '937320884', 'M', '1966-07-11', 53, '3781 Jackson Camp Suite 816\nFloreshaven, AZ 14265');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(4, '908529263', 'M', '1918-10-12', 101, '37630 Jessica Spring\nSmithburgh, AK 09400');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(5, '915811111', 'M', '2000-01-30', 20, 'USNV Wilson\nFPO AP 96157');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(6, '993072417', 'M', '1949-12-10', 70, '2062 Baird Center\nKrystalmouth, FL 08875');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(7, '912644941', 'F', '1990-10-30', 29, '413 Robinson Points Suite 105\nPaulburgh, NY 10617');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(8, '996930149', 'F', '1956-07-24', 63, '410 Christopher Knoll Suite 882\nDavishaven, MO 11584');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(9, '943006723', 'M', '1941-11-17', 78, '080 Christina Park\nSouth Brianside, NE 52034');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(10, '970974344', 'F', '1961-09-01', 58, '01957 Sheryl Well Suite 275\nWest Rodneyland, OR 17921');

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(11, 'https://baker.com/search.php', 10);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(12, 'http://www.huffman-payne.com/tag/terms.htm', 5);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(13, 'https://www.houston.com/wp-content/wp-content/categories/home.htm', 10);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(14, 'http://alexander-williams.com/', 2);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(15, 'https://www.valenzuela-holmes.com/', 4);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(16, 'http://bowman.com/privacy.htm', 6);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(17, 'https://www.hill.biz/homepage/', 8);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(18, 'https://barnett.info/categories/app/categories/home.html', 2);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(19, 'https://www.garcia-martin.biz/', 9);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(20, 'https://esparza.org/', 3);

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(21, 'sit', 'https://benson.com/', 3770, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(22, 'particularly', 'http://www.clarke-ramirez.com/', 1669, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(23, 'process', 'http://www.thompson.com/', 550, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(24, 'picture', 'https://www.kirby-glass.info/', 593, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(25, 'final', 'https://www.freeman.com/', 3787, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(26, 'finally', 'https://carrillo.com/', 2472, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(27, 'process', 'https://www.riley.org/', 3428, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(28, 'enjoy', 'https://www.burns.com/', 1341, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(29, 'bill', 'http://www.watson-king.info/', 3278, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(30, 'sense', 'https://www.bishop-smith.info/', 1908, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(31, 'other', 'http://cunningham-lee.org/', 189, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(32, 'themselves', 'http://www.porter.net/', 2118, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(33, 'institution', 'https://www.rose.com/', 1493, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(34, 'sound', 'https://sampson.biz/', 1658, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(35, 'former', 'http://stewart-brooks.info/', 2370, '.mp4');

INSERT INTO Audio('audioID', 'length')
	VALUES(21, 28);

INSERT INTO Audio('audioID', 'length')
	VALUES(22, 150);

INSERT INTO Audio('audioID', 'length')
	VALUES(23, 92);

INSERT INTO Audio('audioID', 'length')
	VALUES(24, 197);

INSERT INTO Audio('audioID', 'length')
	VALUES(25, 176);

INSERT INTO Image('imageID')
	VALUES(26);

INSERT INTO Image('imageID')
	VALUES(27);

INSERT INTO Image('imageID')
	VALUES(28);

INSERT INTO Image('imageID')
	VALUES(29);

INSERT INTO Image('imageID')
	VALUES(30);

INSERT INTO Video('videoID', 'length')
	VALUES(31, 70);

INSERT INTO Video('videoID', 'length')
	VALUES(32, 114);

INSERT INTO Video('videoID', 'length')
	VALUES(33, 258);

INSERT INTO Video('videoID', 'length')
	VALUES(34, 229);

INSERT INTO Video('videoID', 'length')
	VALUES(35, 207);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(36, 'Than Both Guy Fly Too Southern Bar.', 'Energy until sell. Public interview mind by require section. Ok sport impact maintain as campaign week.\nToward boy feel oil draw add outside age. Spring treat move itself behavior defense.', '2020-04-04 01:48:03', 7);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(37, 'Section Audience Paper Direction Over Animal Statement.', 'Find hotel hold would. Image lose can simple still skin. Hope station bar agent girl yourself.\nEasy high whom moment. Itself can meeting help choose environment.', '2020-04-28 20:09:14', 9);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(38, 'Mouth Economy These Out Nation.', 'Particular nor issue chair skin because study. Daughter artist natural.\nWish prevent red recognize collection theory majority house. Mind conference these teach serious month director.', '2020-04-17 00:15:22', 8);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(39, 'Other Indeed Appear Customer Air Race.', 'Energy important two growth visit simply none. Argue here travel issue clear their. Everybody them brother.\nSafe old grow PM dark. Second article check meet few during.', '2020-04-30 03:17:58', 9);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(40, 'Edge Whose Final Spring Art Decision Near.', 'Seek rest region safe spend stop police home. Miss site attention newspaper someone.\nIndividual own chair single. Common marriage explain nice score move during. Team operation month stage first.', '2020-04-08 12:13:12', 1);

