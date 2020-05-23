.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;

SELECT activityID, activityText, activityDate, publisherID FROM (Activity INNER JOIN Post ON Activity.activityID = Post.postID);

INSERT INTO EventParticipant('participantID', 'eventID') VALUES(4,45);

SELECT activityID, activityText, activityDate, publisherID FROM (Activity INNER JOIN Post ON Activity.activityID = Post.postID);
