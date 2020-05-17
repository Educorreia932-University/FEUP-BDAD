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
	VALUES(41, 'Life College Teacher Thought.', 'House staff development light woman. Drop early opportunity little your.\nUnder ok star management again. Style sing majority find food affect wait specific.', '2021-04-10 22:34:13', 3);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(42, 'Economy Thousand Cost Kid Person Brother.', 'Rest way information down large imagine executive. Risk follow unit pick. Strategy look class value try.\nEither store develop. Including several suggest hand your.', '2021-04-18 00:50:53', 7);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(43, 'Manager Approach All Just Rich Goal Total.', 'Future control hotel. Tough note computer believe eat top player. Section gas need might collection get red.\nCollege truth should. Artist look provide. Contain he job teach produce technology.', '2021-04-08 05:39:25', 6);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(44, 'Commercial Sure Medical Staff Develop.', 'Information determine skill space. Too enough him eight.\nTown save stop class idea hundred time red.', '2021-04-16 22:50:24', 10);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(45, 'Serve Raise Key Table Field Game.', 'Find present family and question certainly. Benefit glass thus choose. Compare stage behavior remain.', '2021-04-20 17:38:28', 7);

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(1,2,3,'2000-03-04');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(1,3,2,'2006-09-29');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(1,4,2,'1971-07-02');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(1,10,2,'1972-02-25');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(2,3,2,'1987-11-05');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(2,4,2,'2018-11-03');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(2,5,1,'2007-04-17');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(2,7,2,'1996-04-06');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(3,6,1,'2000-04-22');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(3,9,3,'1997-11-17');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(4,1,1,'1996-03-28');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(4,3,3,'1970-06-22');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(4,6,2,'2015-06-20');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(4,7,2,'1982-11-15');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(4,10,3,'1991-01-04');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(5,1,3,'2010-09-27');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(5,7,1,'1972-10-08');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(6,2,3,'1971-12-06');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(6,8,1,'2008-11-19');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(6,10,2,'1971-12-07');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(7,1,2,'2014-09-09');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(7,3,2,'1980-07-21');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(7,4,3,'1994-03-24');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(8,2,3,'2012-03-01');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(8,4,3,'1995-07-16');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(8,5,2,'2013-10-14');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(8,6,2,'1979-04-28');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(8,7,2,'1977-12-23');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(9,1,1,'2015-09-30');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(9,2,2,'2002-10-28');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(9,4,2,'2010-03-05');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(9,10,2,'1991-09-24');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(10,4,1,'2008-05-07');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(10,8,3,'1971-05-03');

INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(10,9,3,'2017-02-13');

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(4,41);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(7,41);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(2,41);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(6,42);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(4,42);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(7,42);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(10,42);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(3,43);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(5,43);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(2,43);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(4,44);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(2,44);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(3,45);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(7,45);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(3,11);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(8,12);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(10,13);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(6,14);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(7,15);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(6,16);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(4,17);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(8,18);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(10,19);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(8,20);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(5,11);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(2,11);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(10,12);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(5,12);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(6,12);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(2,13);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(4,13);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(4,15);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(10,15);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(8,17);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(9,17);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(2,18);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(5,18);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(7,18);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(10,20);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(4,20);

INSERT INTO PageFollower('followerID', 'pageID') VALUES(9,20);

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(46,'Serve also fact.','1970-09-08');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(47,'Science nation.','1988-10-16');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(48,'News whom grow.','1981-05-13');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(49,'Including.','1972-05-18');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(50,'Care history technology sport.','1988-08-31');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(51,'School and appear finally.','2006-05-20');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(52,'Just off must seven.','1995-09-26');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(53,'Because high wait manager too.','2003-07-04');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(54,'Yes guy woman third under art. Listen mother worker.','1997-01-10');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(55,'Instead keep for ball.','1972-06-02');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(56,'Be of evidence light.','1974-05-15');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(57,'Under late need.','1993-10-17');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(58,'Fast skin each.','1980-07-20');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(59,'Still operation draw account evening.','1976-08-21');

INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(60,'Training politics public.','2009-04-01');

INSERT INTO Chat('chatID', 'name') VALUES(61,'Until recent low.');

INSERT INTO Chat('chatID', 'name') VALUES(62,'Player form company.');

INSERT INTO Chat('chatID', 'name') VALUES(63,'She difficult bring.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(1,61,'Avoid out.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(2,61,'Director left.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(2,62,'Stay ok safe.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(3,62,'Talk history.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(4,62,'Side ask sense.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(5,62,'Daughter son.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(6,63,'Tree special.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(7,63,'Guess ten.');

INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(8,63,'Issue month.');

INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(46,'1994-02-20',30,1,61);

INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(47,'1986-05-27',37,4,62);

INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(48,'1977-04-25',34,5,62);

INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(49,'1986-10-19',38,7,63);

INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(50,'1973-05-26',31,8,63);

INSERT INTO GroupMember('memberID', 'groupID') VALUES(10,21);

INSERT INTO GroupMember('memberID', 'groupID') VALUES(5,21);

INSERT INTO GroupMember('memberID', 'groupID') VALUES(6,21);

INSERT INTO GroupMember('memberID', 'groupID') VALUES(4,22);

INSERT INTO GroupMember('memberID', 'groupID') VALUES(4,23);

INSERT INTO GroupMember('memberID', 'groupID') VALUES(4,24);

INSERT INTO GroupMember('memberID', 'groupID') VALUES(9,25);

INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(51,7,30,15,NULL);

INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(52,6,NULL,16,NULL);

INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(53,4,NULL,NULL,24);

INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(54,4,NULL,NULL,23);

INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(55,9,NULL,NULL,25);

INSERT INTO Comment('commentID', 'authorID','postID') VALUES(56,8,55);

INSERT INTO Comment('commentID', 'authorID','postID') VALUES(57,8,52);

INSERT INTO Comment('commentID', 'authorID','postID') VALUES(58,4,52);

INSERT INTO Comment('commentID', 'authorID','postID') VALUES(59,4,55);

INSERT INTO Comment('commentID', 'authorID','postID') VALUES(60,7,53);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(46,9,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(46,5,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(46,8,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(46,6,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(46,2,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(47,7,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(47,4,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(47,5,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(47,9,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(47,10,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(47,3,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(48,6,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(48,1,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(48,10,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(48,3,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(49,8,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(49,6,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(49,2,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(49,3,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(49,1,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(50,3,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(50,5,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(50,2,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(50,10,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(50,4,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(51,1,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(51,7,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(51,10,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(51,8,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(52,6,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(52,9,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(52,2,4);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(52,4,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(52,1,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(52,5,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(53,2,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(53,7,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(53,5,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(53,6,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(54,6,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(54,10,1);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(55,2,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(55,10,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(56,2,4);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(56,3,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(56,10,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(56,9,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(57,6,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(57,10,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(59,3,4);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(59,2,4);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(59,7,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(59,8,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(59,4,4);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(59,10,6);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(60,10,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(60,4,5);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(60,6,3);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(60,8,2);

INSERT INTO Reaction('activityID', 'userID','type') VALUES(60,3,3);


