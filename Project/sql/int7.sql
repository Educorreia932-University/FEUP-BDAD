.mode columns
.headers on
.nullvalue NULL

SELECT day, IFNULL(numberOfComments, 0) FROM

(WITH RECURSIVE days(activityDate) AS (
    VALUES('2020-05-30')
    UNION ALL
    SELECT date(activityDate, '-1 day')
    FROM days
    WHERE julianday(activityDate) > julianday('2020-05-30') - 30
)

SELECT days.activityDate AS day FROM days)

LEFT JOIN

(SELECT activityDate as day, COUNT(commentID) AS numberOfComments 
    FROM (Comment INNER JOIN Activity ON Comment.commentID = Activity.activityID)
        WHERE julianday(activityDate) >=
            (SELECT julianday(occurrenceDate) 
                FROM (SELECT occurrenceDate
                    FROM Event WHERE eventID = 41)) - 30 
                        GROUP BY activityDate)
                        
USING(day);