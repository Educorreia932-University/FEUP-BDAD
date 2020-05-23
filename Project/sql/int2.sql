.mode    columns
.headers    on
.nullvalue    NULL

PRAGMA FOREIGN_KEYS = ON;

SELECT userID, name, reactionType, MAX(reactionCount) AS reactionCount FROM
        Publisher
    INNER JOIN
        (SELECT userID, type as reactionType, COUNT(type) AS reactionCount
            FROM User  INNER JOIN Reaction USING(userID) 
                GROUP BY userID, type) 
    ON userID = publisherID
GROUP BY userID;