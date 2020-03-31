DROP TABLE IF EXISTS Publisher;
CREATE TABLE Publisher (
    publisherID INTEGER,
    name TEXT,
    PRIMARY KEY (publisherID)
);

DROP TABLE IF EXISTS Page;
CREATE TABLE Page (
    pageID INTEGER REFERENCES Publisher(publisherID),
    website TEXT,
    adminID INTEGER REFERENCES User(userID),
    PRIMARY KEY (pageID)
);

DROP TABLE IF EXISTS User;
CREATE TABLE User (
    userID INTEGER REFERENCES Publisher(publisherID),
    phoneNumber INTEGER,
    gender TEXT, --??????
    birthDate DATE,
    age INTEGER,
    address TEXT,
    PRIMARY KEY (userID)
);

DROP TABLE IF EXISTS Friendship;
--VERIFICAR FOREIGN KEYS
CREATE TABLE Friendship (
    senderID INTEGER REFERENCES User(userID),
    receiverID INTEGER REFERENCES User(userID),
    state INTEGER, --??????
    date DATE,
    PRIMARY KEY (senderID, receiverID)
);

DROP TABLE IF EXISTS Chat;
CREATE TABLE Chat (
    chatID INTEGER,
    name TEXT,
    PRIMARY KEY (chatID)
);

DROP TABLE IF EXISTS ChatParticipant;
CREATE TABLE ChatParticipant (
    participantID INTEGER REFERENCES User(userID),
    chatID INTEGER REFERENCES Chat(chatID),
    nickname TEXT,
    PRIMARY KEY (participantID)
);

DROP TABLE IF EXISTS Multimedia;
CREATE TABLE Multimedia (
    multimediaID INTEGER,
    title TEXT,
    uri TEXT,
    size REAL,
    format TEXT,
    PRIMARY KEY (multimediaID)
);

DROP TABLE IF EXISTS Activity;
CREATE TABLE Activity (
    activityID INTEGER,
    text TEXT,
    date DATE,
    PRIMARY KEY (activityID)
);

DROP TABLE IF EXISTS Message;
CREATE TABLE Message (
    messageID INTEGER REFERENCES Activity(activityID),
    dateSent DATE,
    multimediaID INTEGER REFERENCES Multimedia(messageID),
    authorID INTEGER REFERENCES User(userID),
    chatID INTEGER REFERENCES Chat(chatID),
    PRIMARY KEY (messageID)
);

DROP TABLE IF EXISTS Event;
CREATE TABLE Event (
    eventID INTEGER,
    name TEXT,
    description TEXT,
    occurrenceDate DATE,
    creatorID INTEGER REFERENCES User(userID),
    PRIMARY KEY (eventID)
);

DROP TABLE IF EXISTS EventParticipant;
CREATE TABLE EventParticipant (
    participantID INTEGER REFERENCES User(userID),
    eventID INTEGER REFERENCES Event(eventID),
    PRIMARY KEY (participantID, eventID)
);

DROP TABLE IF EXISTS PageFollower;
CREATE TABLE PageFollower (
    followerID INTEGER REFERENCES User(userID),
    pageID INTEGER REFERENCES Page(pageID),   
    PRIMARY KEY (followerID, pageID)
);

DROP TABLE IF EXISTS "Group";
CREATE TABLE "Group" (
    groupID INTEGER,
    name TEXT,
    adminID INTEGER REFERENCES User(userID),
    PRIMARY KEY (groupID)
);

DROP TABLE IF EXISTS GroupMember;
CREATE TABLE GroupMember (
    memberID INTEGER REFERENCES User(userID),
    groupID INTEGER REFERENCES "Group"(groupID),
    PRIMARY KEY (memberID, groupID)
);

DROP TABLE IF EXISTS Audio;
CREATE TABLE Audio (
    audioID INTEGER REFERENCES Multimedia(multimediaID),
    length REAL,
    PRIMARY KEY (audioID)
);

DROP TABLE IF EXISTS Image;
CREATE TABLE Image (
    imageID INTEGER REFERENCES Multimedia(multimediaID),
    PRIMARY KEY (imageID)
);

DROP TABLE IF EXISTS Video;
CREATE TABLE Video (
    videoID INTEGER REFERENCES Multimedia(multimediaID),
    length REAL,
    PRIMARY KEY (videoID)
);

DROP TABLE IF EXISTS Reaction;
CREATE TABLE Reaction (
    activityID INTEGER REFERENCES Activity(activityID),
    userID INTEGER REFERENCES User(userID),
    type INTEGER, --?
    PRIMARY KEY (activityID, userID)
);

DROP TABLE IF EXISTS Post;
CREATE TABLE Post (
    postID INTEGER REFERENCES Activity(activityID),
    publisherID INTEGER REFERENCES Publisher(publisherID),
    multimediaID INTEGER REFERENCES Multimedia(messageID),
    pageID INTEGER REFERENCES Page(pageID),
    groupID INTEGER REFERENCES "Group"(groupID),
    PRIMARY KEY (postID)
);

DROP TABLE IF EXISTS Comment;
CREATE TABLE Comment (
    commentID INTEGER REFERENCES Activity(activityID),
    authorID INTEGER REFERENCES User(userID),
    postID INTEGER REFERENCES Post(postID),
    PRIMARY KEY (commentID)
);
