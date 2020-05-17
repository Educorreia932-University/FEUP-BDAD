.mode    columns
.headers    on
.nullvalue    NULL

SELECT authorID as Author, COUNT(*) as total_messages, name as chat_name 
    FROM Message NATURAL JOIN Chat AS c
    WHERE ((SELECT COUNT(*) FROM ChatParticipant NATURAL JOIN Chat
        WHERE (Chat.chatID like c.chatID) GROUP BY chatID) > 2)
    GROUP BY authorID;


