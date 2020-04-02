PRAGMA FOREIGN_KEYS = ON;

INSERT INTO Publisher('publisherID', 'name')
	VALUES(1, 'David Clark');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(2, 'Amanda Thomas');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(3, 'Ariana Phillips');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(4, 'Leah Ballard');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(5, 'Mr. Bryce Henry MD');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(6, 'Micheal Wilson');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(7, 'Douglas Roberts');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(8, 'Ashley Chapman');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(9, 'Juan Richardson');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(10, 'Jennifer Mcpherson');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(11, 'Miller-Bates');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(12, 'Weaver PLC');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(13, 'Smith-James');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(14, 'Schneider Group');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(15, 'Parker LLC');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(16, 'Smith-Bennett');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(17, 'Johnson, King and Reynolds');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(18, 'Everett, Mcbride and Keller');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(19, 'Ingram-Ortiz');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(20, 'Johnson Group');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(1, '909370217', 'M', '1950-02-07', 70, '35821 Gabriel Mission\nShannonside, CT 21386');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(2, '911998973', 'F', '1921-06-18', 98, '3617 Fuentes Alley\nWest Tiffanyton, MD 60800');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(3, '910072687', 'F', '1948-12-24', 71, '74817 Tiffany Drive Suite 764\nNew Jennifer, VT 72577');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(4, '906427786', 'F', '1947-12-17', 72, '80806 Natalie Motorway\nCurryberg, MT 39239');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(5, '990399358', 'M', '1952-03-15', 68, '016 Andrew Drive\nSouth Brandon, MN 20158');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(6, '998429222', 'M', '1941-09-22', 78, '856 Rodney Rue Apt. 105\nSouth Richard, SD 37570');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(7, '921158322', 'M', '1923-09-28', 96, 'Unit 6852 Box 7508\nDPO AA 09138');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(8, '985189028', 'F', '1941-05-10', 78, '22867 Ballard Springs Suite 978\nPort Isaacton, IN 71897');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(9, '958177026', 'M', '1993-01-07', 27, '678 Smith Cliff\nWest Davidbury, HI 30413');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(10, '970615992', 'F', '1913-02-08', 107, '9452 Alyssa Forest Suite 952\nHineschester, SC 60969');

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(11, 'http://morgan-davis.com/', 3);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(12, 'https://madden.com/search/homepage.html', 8);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(13, 'http://www.arias.com/privacy/', 10);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(14, 'http://www.graves-mccullough.info/', 6);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(15, 'http://www.becker.net/post.htm', 7);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(16, 'http://www.reynolds.com/tag/explore/index.htm', 6);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(17, 'http://phillips.com/', 4);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(18, 'http://hall.net/search/', 8);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(19, 'http://juarez.com/main/about.jsp', 10);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(20, 'http://www.collins-alvarado.com/home/', 8);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(21, 'Check Skin But Region He Get President.', 10);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(22, 'Choice Budget Politics Remain Seem News.', 4);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(23, 'Most See Reason Tree.', 4);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(24, 'Very Use Serve Kind.', 4);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(25, 'Something Process Bag.', 9);

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(26, 'herself', 'https://www.gilbert-webb.org/', 1847, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(27, 'heart', 'https://www.mullins-garcia.com/', 988, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(28, 'Mrs', 'http://taylor-parsons.com/', 3601, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(29, 'movie', 'https://www.lam-pratt.com/', 995, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(30, 'happen', 'https://www.huff.com/', 1003, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(31, 'word', 'https://www.dorsey.com/', 3036, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(32, 'evidence', 'https://edwards.com/', 1250, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(33, 'young', 'http://hernandez.info/', 1146, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(34, 'hope', 'https://williams.com/', 1876, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(35, 'whose', 'http://soto.com/', 553, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(36, 'style', 'https://www.maddox-lloyd.com/', 258, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(37, 'finish', 'https://rangel.com/', 3633, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(38, 'large', 'http://oconnor.com/', 421, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(39, 'media', 'http://www.jones.com/', 610, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(40, 'either', 'http://www.fletcher.biz/', 4, '.mp4');

INSERT INTO Audio('audioID', 'length')
	VALUES(26, 56);

INSERT INTO Audio('audioID', 'length')
	VALUES(27, 260);

INSERT INTO Audio('audioID', 'length')
	VALUES(28, 156);

INSERT INTO Audio('audioID', 'length')
	VALUES(29, 9);

INSERT INTO Audio('audioID', 'length')
	VALUES(30, 125);

INSERT INTO Image('imageID')
	VALUES(31);

INSERT INTO Image('imageID')
	VALUES(32);

INSERT INTO Image('imageID')
	VALUES(33);

INSERT INTO Image('imageID')
	VALUES(34);

INSERT INTO Image('imageID')
	VALUES(35);

INSERT INTO Video('videoID', 'length')
	VALUES(36, 157);

INSERT INTO Video('videoID', 'length')
	VALUES(37, 132);

INSERT INTO Video('videoID', 'length')
	VALUES(38, 239);

INSERT INTO Video('videoID', 'length')
	VALUES(39, 47);

INSERT INTO Video('videoID', 'length')
	VALUES(40, 128);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(41, 'Life College Teacher Thought.', 'House staff development light woman. Drop early opportunity little your.\nUnder ok star management again. Style sing majority find food affect wait specific.', '2020-04-10 22:34:13', 3);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(42, 'Economy Thousand Cost Kid Person Brother.', 'Rest way information down large imagine executive. Risk follow unit pick. Strategy look class value try.\nEither store develop. Including several suggest hand your.', '2020-04-18 00:50:53', 7);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(43, 'Manager Approach All Just Rich Goal Total.', 'Future control hotel. Tough note computer believe eat top player. Section gas need might collection get red.\nCollege truth should. Artist look provide. Contain he job teach produce technology.', '2020-04-08 05:39:25', 6);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(44, 'Commercial Sure Medical Staff Develop.', 'Information determine skill space. Too enough him eight.\nTown save stop class idea hundred time red.', '2020-04-16 22:50:24', 10);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(45, 'Serve Raise Key Table Field Game.', 'Find present family and question certainly. Benefit glass thus choose. Compare stage behavior remain.', '2020-04-20 17:38:28', 7);

