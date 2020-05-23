CREATE TRIGGER GATILHO_2
AFTER INSERT ON EventParticipant
BEGIN
    INSERT INTO Activity('activityText','activityDate') 
        VALUES (CASE
                    WHEN EXISTS (SELECT count(*) FROM Event WHERE New.eventID = Event.eventID AND julianday('now') > julianday(Event.occurrenceDate)) THEN 'I went to ' ||(SELECT name FROM Event WHERE New.eventID = Event.eventID)
                    ELSE 'I will participate in ' ||(SELECT name FROM Event WHERE New.eventID = Event.eventID)
                END, date('now'));
    INSERT INTO Post('postID', 'publisherID','multimediaID','pageID','groupID') 
        VALUES ((SELECT max(activityID) FROM Activity),New.participantID,NULL,NULL,NULL);
END;