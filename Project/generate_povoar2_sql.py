from faker import Faker
from faker.providers import profile
from dateutil.relativedelta import relativedelta
from datetime import datetime
from random import randrange,randint,sample


fake = Faker("en_US")

f = open("povoar2.sql", "w") # Write
f.write("PRAGMA FOREIGN_KEYS = ON;\n\n")
f = open("povoar2.sql", "a") # Append


#FRIENDSHIP
possibilities_frienship = []

for i in range(1,11):
    for j in range(1,11):
        if(i != j and randrange(1,10) > 5):
            possibilities_frienship.append((i,j))


for p in possibilities_frienship:

    command = "INSERT INTO Friendship('senderID', 'receiverID','state','date') VALUES(" + str(p[0]) + "," + str(p[1]) + "," + str(randint(1,3)) + ",\'" + fake.date() + "\');\n\n"
    f.write(command)


#EventParticipant

for i in range(41,46):
    for j in sample(list(range(1,11)),randint(2,8)):
        command = "INSERT INTO EventParticipant('participantID', 'eventID') VALUES(" + str(j) + "," + str(i) + ");\n\n"
        f.write(command)


#PageFollower

command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(3) + "," + str(11) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(8) + "," + str(12) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(10) + "," + str(13) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(6) + "," + str(14) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(7) + "," + str(15) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(6) + "," + str(16) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(4) + "," + str(17) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(8) + "," + str(18) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(10) + "," + str(19) + ");\n\n"
f.write(command)
command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(8) + "," + str(20) + ");\n\n"
f.write(command)

for i in range(11,21):
    for j in sample(list(range(1,11)),randint(0,3)):
        command = "INSERT INTO PageFollower('followerID', 'pageID') VALUES(" + str(j) + "," + str(i) + ");\n\n"
        f.write(command)

#Activity

for i in range(46,61):
    command = "INSERT INTO Activity('activityID', 'activityText','activityDate') VALUES(" + str(i) + ",\'" + fake.text(randint(10,60)) + "\',\'" + fake.date() + "\');\n\n"
    f.write(command)

#Chat

for i in range(61,64):
    command = "INSERT INTO Chat('chatID', 'name') VALUES(" + str(i) + ",\'" + fake.text(20) + "\');\n\n"
    f.write(command)


#Chat Participant 

for j in range(1,3): 
    command = "INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(" + str(j) + "," + str(61) + ",\'" + fake.text(15) + "\');\n\n"
    f.write(command)
for j in range(2,6): 
    command = "INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(" + str(j) + "," + str(62) + ",\'" + fake.text(15) + "\');\n\n"
    f.write(command)
for j in range(6,9): 
    command = "INSERT INTO ChatParticipant('participantID', 'chatID','nickname') VALUES(" + str(j) + "," + str(63) + ",\'" + fake.text(15) + "\');\n\n"
    f.write(command)

#Message


command = "INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(" + str(46) + ",\'" + fake.date() + "\'," + str(randint(30,40)) + "," + str(1) + "," + str(61) + ");\n\n"
f.write(command)
command = "INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(" + str(47) + ",\'" + fake.date() + "\'," + str(randint(30,40)) + "," + str(4) + "," + str(62) + ");\n\n"
f.write(command)
command = "INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(" + str(48) + ",\'" + fake.date() + "\'," + str(randint(30,40)) + "," + str(5) + "," + str(62) + ");\n\n"
f.write(command)
command = "INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(" + str(49) + ",\'" + fake.date() + "\'," + str(randint(30,40)) + "," + str(7) +  "," + str(63) + ");\n\n"
f.write(command)
command = "INSERT INTO Message('messageID', 'dateSent','multimediaID','authorID','chatID') VALUES(" + str(50) + ",\'" + fake.date() + "\'," + str(randint(30,40)) + "," + str(8) +  "," + str(63) + ");\n\n"
f.write(command)

#Group participant

command = "INSERT INTO GroupMember('memberID', 'groupID') VALUES(" + str(10) + "," + str(21) + ");\n\n"
f.write(command)
command = "INSERT INTO GroupMember('memberID', 'groupID') VALUES(" + str(5) + "," + str(21) + ");\n\n"
f.write(command)
command = "INSERT INTO GroupMember('memberID', 'groupID') VALUES(" + str(6) + "," + str(21) + ");\n\n"
f.write(command)
command = "INSERT INTO GroupMember('memberID', 'groupID') VALUES(" + str(4) + "," + str(22) + ");\n\n"
f.write(command)
command = "INSERT INTO GroupMember('memberID', 'groupID') VALUES(" + str(4) + "," + str(23) + ");\n\n"
f.write(command)
command = "INSERT INTO GroupMember('memberID', 'groupID') VALUES(" + str(4) + "," + str(24) + ");\n\n"
f.write(command)
command = "INSERT INTO GroupMember('memberID', 'groupID') VALUES(" + str(9) + "," + str(25) + ");\n\n"
f.write(command)

#POST

command = "INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(" + str(51) + "," + str(7) + "," + str(30) + "," + str(15) + ",NULL);\n\n"
f.write(command)
command = "INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(" + str(52) + "," + str(6) + ",NULL," + str(16) + ",NULL);\n\n"
f.write(command)
command = "INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(" + str(53) + "," + str(4) + ",NULL,NULL," + str(24) + ");\n\n"
f.write(command)
command = "INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(" + str(54) + "," + str(4) + ",NULL,NULL," + str(23) + ");\n\n"
f.write(command)
command = "INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') VALUES(" + str(55) + "," + str(9) + ",NULL,NULL," + str(25) + ");\n\n"
f.write(command)

#Comment

for i in range(56,61):
    command = "INSERT INTO Comment('commentID', 'authorID','postID') VALUES(" + str(i) + "," + str(randint(1,11)) + "," + str(randint(51,56)) + ");\n\n"
    f.write(command)


#Reaction

for i in range(46,61):
    for j in sample(list(range(1,11)),randint(0,7)):
        command = "INSERT INTO Reaction('activityID', 'userID','type') VALUES(" + str(i) + "," + str(j) + "," + str(randint(1, 6)) + ");\n\n"
        f.write(command)


f.close()
