
.mode    columns
.headers    on
.nullvalue    NULL

SELECT userID, reactionType, MAX(reactionCount) AS reactionCount FROM
    (SELECT userID, type as reactionType, COUNT(type) AS reactionCount
        FROM User INNER JOIN Reaction USING(userID)
            GROUP BY userID, type)
    GROUP BY userID;