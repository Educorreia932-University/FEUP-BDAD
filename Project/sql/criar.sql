DROP TABLE IF EXISTS Publisher;
CREATE TABLE Publisher (
    publisherID INTEGER,
    name TEXT NOT NULL,
    PRIMARY KEY (publisherID)
);

DROP TABLE IF EXISTS User;
CREATE TABLE User (
    userID INTEGER REFERENCES Publisher(publisherID) ON DELETE SET NULL
                                                     ON UPDATE CASCADE,
    phoneNumber INTEGER UNIQUE,
    gender CHAR CHECK(gender = 'M' or gender = 'F'), 
    birthDate TEXT NOT NULL CHECK(julianday(birthDate) - julianday('now') > julianday('13-01-01')),
    age INTEGER CHECK(age >= 13),
    address TEXT,
    PRIMARY KEY (userID)
);

DROP TABLE IF EXISTS Friendship;
CREATE TABLE Friendship (
    senderID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                             ON UPDATE CASCADE,
    receiverID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                               ON UPDATE CASCADE,
    state INTEGER CHECK(state >= 1 and state <= 3), 
    date TEXT NOT NULL CHECK(julianday(date) <= julianday('now')),
    PRIMARY KEY (senderID, receiverID)
);

DROP TABLE IF EXISTS Page;
CREATE TABLE Page (
    pageID INTEGER REFERENCES Publisher(publisherID) ON DELETE SET NULL
                                                     ON UPDATE CASCADE,
    website TEXT,
    adminID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                            ON UPDATE CASCADE,
    PRIMARY KEY (pageID)
);

DROP TABLE IF EXISTS PageFollower;
CREATE TABLE PageFollower (
    followerID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                               ON UPDATE CASCADE,
    pageID INTEGER REFERENCES Page(pageID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,   
    PRIMARY KEY (followerID, pageID)
);

DROP TABLE IF EXISTS "Group";
CREATE TABLE "Group" (
    groupID INTEGER,
    name TEXT NOT NULL,
    adminID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                            ON UPDATE CASCADE,
    PRIMARY KEY (groupID)
);

DROP TABLE IF EXISTS GroupMember;
CREATE TABLE GroupMember (
    memberID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                             ON UPDATE CASCADE,
    groupID INTEGER REFERENCES "Group"(groupID) ON DELETE SET NULL
                                                ON UPDATE CASCADE,
    PRIMARY KEY (memberID, groupID)
);

DROP TABLE IF EXISTS Chat;
CREATE TABLE Chat (
    chatID INTEGER,
    name TEXT NOT NULL,
    PRIMARY KEY (chatID)
);

DROP TABLE IF EXISTS ChatParticipant;
CREATE TABLE ChatParticipant (
    participantID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                                  ON UPDATE CASCADE,
    chatID INTEGER REFERENCES Chat(chatID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,
    nickname TEXT,
    PRIMARY KEY (participantID, chatID)
);

DROP TABLE IF EXISTS Multimedia;
CREATE TABLE Multimedia (
    multimediaID INTEGER,
    title TEXT,
    uri TEXT,
    size REAL CHECK(size > 0),
    format TEXT CHECK(format='.mp3' or format='.jpg' or format='.png' or format='.wav' or format='.mp4'),
    length INTEGER CHECK((format<>'.jpg' or format<>'.png') and length > 0),
    PRIMARY KEY (multimediaID)
);

DROP TABLE IF EXISTS Activity;
CREATE TABLE Activity (
    activityID INTEGER,
    activityText TEXT,
    activityDate TEXT, --CHECK(julianday(activityDate) <= julianday('now')),
    PRIMARY KEY (activityID)
);

DROP TABLE IF EXISTS Message;
CREATE TABLE Message (
    messageID INTEGER REFERENCES Activity(activityID) ON DELETE SET NULL
                                                      ON UPDATE CASCADE,
    dateSent TEXT NOT NULL,
    multimediaID INTEGER REFERENCES Multimedia(multimediaID) ON DELETE SET NULL
                                                             ON UPDATE CASCADE,
    authorID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                             ON UPDATE CASCADE,
    chatID INTEGER REFERENCES Chat(chatID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,
    PRIMARY KEY (messageID)
);

DROP TABLE IF EXISTS Post;
CREATE TABLE Post (
    postID INTEGER REFERENCES Activity(activityID) ON DELETE SET NULL
                                                   ON UPDATE CASCADE,
    publisherID INTEGER REFERENCES Publisher(publisherID) ON DELETE SET NULL
                                                          ON UPDATE CASCADE,
    multimediaID INTEGER REFERENCES Multimedia(multimediaID) ON DELETE SET NULL
                                                             ON UPDATE CASCADE,
    pageID INTEGER REFERENCES Page(pageID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,
    groupID INTEGER REFERENCES "Group"(groupID) ON DELETE SET NULL
                                                ON UPDATE CASCADE,
    PRIMARY KEY (postID)
);

DROP TABLE IF EXISTS Comment;
CREATE TABLE Comment (
    commentID INTEGER REFERENCES Activity(activityID) ON DELETE SET NULL
                                                      ON UPDATE CASCADE,
    authorID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                             ON UPDATE CASCADE,
    postID INTEGER REFERENCES Post(postID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,
    PRIMARY KEY (commentID)
);

DROP TABLE IF EXISTS Reaction;
CREATE TABLE Reaction (
    activityID INTEGER REFERENCES Activity(activityID) ON DELETE SET NULL
                                                       ON UPDATE CASCADE,
    userID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,
    type INTEGER CHECK(type >= 1 and type <=6),
    PRIMARY KEY (activityID, userID)
);

DROP TABLE IF EXISTS Event;
CREATE TABLE Event (
    eventID INTEGER,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    occurrenceDate TEXT NOT NULL CHECK(julianday(occurrenceDate) > julianday('now')),
    creatorID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                              ON UPDATE CASCADE,
    PRIMARY KEY (eventID)
);

DROP TABLE IF EXISTS EventParticipant;
CREATE TABLE EventParticipant (
    participantID INTEGER REFERENCES User(userID) ON DELETE SET NULL
                                                  ON UPDATE CASCADE,
    eventID INTEGER REFERENCES Event(eventID) ON DELETE SET NULL
                                              ON UPDATE CASCADE,
    PRIMARY KEY (participantID, eventID)
);
