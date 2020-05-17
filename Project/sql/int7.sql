.mode columns
.headers on
.nullvalue NULL

SELECT * FROM (Comment INNER JOIN Activity ON Comment.commentID = Activity.activityID)
    WHERE julianday(activityDate) >=
        (SELECT julianday(occurrenceDate) 
            FROM (SELECT occurrenceDate
                FROM Event 
                    WHERE eventID = 41)) - 30