PRAGMA FOREIGN_KEYS = ON;

INSERT INTO Publisher('publisherID', 'name')
	VALUES(1, 'Matthew James');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(2, 'Madeline Edwards');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(3, 'Sandra Contreras');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(4, 'Mike Mueller');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(5, 'Johnathan Johnson');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(6, 'Matthew Roberts');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(7, 'Charles Moore');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(8, 'Keith Lamb');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(9, 'Charles Smith');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(10, 'Christopher Drake');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(11, 'Smith, Morgan and Kim');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(12, 'Beck, Malone and White');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(13, 'Perez-Nelson');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(14, 'Werner, Jones and Thompson');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(15, 'Bautista-Walker');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(16, 'Marquez-Singleton');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(17, 'Mcconnell, Calhoun and Harrell');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(18, 'Young and Sons');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(19, 'Stone LLC');

INSERT INTO Publisher('publisherID', 'name')
	VALUES(20, 'Brown, Ward and Terrell');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(1, '954192829', 'M', '1911-04-03', 108, '4467 Alicia Estates Apt. 582\nLindseyburgh, CA 36202');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(2, '998496781', 'F', '1951-12-12', 68, '5905 Stark Greens Suite 259\nNavarrostad, GA 30654');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(3, '928308483', 'F', '1910-07-21', 109, '28016 Timothy Green\nWebsterton, SD 97980');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(4, '924008870', 'M', '1941-12-03', 78, '2576 Brad Inlet Apt. 435\nSouth Jeffreyburgh, WI 85765');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(5, '912487676', 'M', '1922-07-28', 97, '70094 Joshua Loop Apt. 510\nNew Crystalberg, MO 96868');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(6, '969809568', 'M', '2004-02-28', 16, '9850 Moore Bridge Apt. 091\nPort Johnberg, MO 71190');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(7, '973964528', 'M', '2002-01-26', 18, '864 Gomez Place\nSouth Keithport, MS 09207');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(8, '988380377', 'M', '1977-10-28', 42, '365 Mark Forks\nAndersonberg, WV 07145');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(9, '927908254', 'M', '1975-09-16', 44, '290 Reid Shoals Apt. 269\nAndrewside, RI 35221');

INSERT INTO User('userID', 'phoneNumber', 'gender', 'birthDate', 'age', 'address')
	VALUES(10, '963414623', 'M', '1937-10-18', 82, '821 Michael Point Suite 102\nSouth Ericamouth, MO 98735');

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(11, 'https://andrews.com/posts/homepage.jsp', 2);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(12, 'https://www.sullivan-cuevas.net/search/search/', 8);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(13, 'https://bowen.com/main/category/app/login.asp', 6);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(14, 'https://www.morris-parker.com/', 9);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(15, 'http://long.net/list/category.htm', 1);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(16, 'http://wise.com/tags/posts/wp-content/register/', 9);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(17, 'http://clark.com/explore/list/main/', 10);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(18, 'https://jordan.com/homepage/', 1);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(19, 'https://www.lopez.org/', 4);

INSERT INTO Page('pageID', 'website', 'adminID')
	VALUES(20, 'http://horton.info/tags/app/main/terms.php', 8);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(21, 'Audience Write Mind.', 5);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(22, 'Relate Community With Executive.', 8);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(23, 'Once Live Base.', 6);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(24, 'On At She.', 6);

INSERT INTO "Group"('groupID', 'name', 'adminID')
	VALUES(25, 'Seek Purpose Born Line Tonight Particular Commercial.', 8);

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(26, 'policy', 'https://www.marshall-martin.com/', 3727, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(27, 'discuss', 'https://www.williams.net/', 1613, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(28, 'trade', 'http://www.alexander.net/', 1166, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(29, 'level', 'https://www.elliott.biz/', 893, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(30, 'involve', 'https://kirby-jones.com/', 563, '.mp3');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(31, 'practice', 'http://www.tucker.com/', 2494, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(32, 'forget', 'https://www.blackburn.org/', 414, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(33, 'center', 'http://scott.com/', 4052, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(34, 'simply', 'https://hicks.org/', 3430, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(35, 'born', 'https://guzman.net/', 2184, '.jpg');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(36, 'nor', 'http://www.mccullough.com/', 952, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(37, 'PM', 'http://lucas-hartman.net/', 702, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(38, 'movement', 'http://www.shelton.net/', 3719, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(39, 'teacher', 'https://www.wilkinson.com/', 1475, '.mp4');

INSERT INTO Multimedia('multimediaID', 'title', 'uri', 'size', 'format')
	VALUES(40, 'data', 'https://smith-smith.com/', 296, '.mp4');

INSERT INTO Audio('audioID', 'length')
	VALUES(26, 207);

INSERT INTO Audio('audioID', 'length')
	VALUES(27, 3);

INSERT INTO Audio('audioID', 'length')
	VALUES(28, 99);

INSERT INTO Audio('audioID', 'length')
	VALUES(29, 141);

INSERT INTO Audio('audioID', 'length')
	VALUES(30, 85);

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
	VALUES(36, 269);

INSERT INTO Video('videoID', 'length')
	VALUES(37, 82);

INSERT INTO Video('videoID', 'length')
	VALUES(38, 200);

INSERT INTO Video('videoID', 'length')
	VALUES(39, 165);

INSERT INTO Video('videoID', 'length')
	VALUES(40, 186);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(41, 'Ball Happen Close Save Letter.', 'Bar imagine candidate only majority perhaps program. Lose key service. Face me too news stage.\nLeg piece similar adult size discuss movie fund. Arrive blood recent. Instead ball top adult daughter.', '2020-04-14 17:15:29', 6);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(42, 'Movement Like Recognize Star While.', 'Simple research performance less but indeed turn. Be up theory nearly rich then west. Drop way recently necessary.', '2020-04-20 22:51:06', 4);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(43, 'Increase Dog Mean Kind Explain Future.', 'Dark here sport voice hard action particular. Group I race must. Or pretty owner clear.\nYard Mrs in television country single under.', '2020-04-22 01:01:30', 9);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(44, 'Certain Whatever Work Writer Assume.', 'Sister process step choose capital right cultural peace. Economic begin between research beautiful than front. Enjoy try send half floor data.', '2020-04-05 10:57:55', 8);

INSERT INTO Event('eventID', 'name', 'description', 'occurrenceDate', 'creatorID')
	VALUES(45, 'Bring Interest Parent Although Possible Over.', 'I bit system music. Within citizen social everyone stand. Until home power where.', '2020-04-25 04:45:12', 8);

