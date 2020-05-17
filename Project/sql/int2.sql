.mode    columns
.headers    on
.nullvalue    NULL

SELECT type, num AS number_of_reactions FROM
    (SELECT COUNT(*) AS num, type FROM Reaction GROUP BY type)
    WHERE num like (SELECT MAX(num) FROM 
        (SELECT COUNT(*) AS num, type FROM Reaction GROUP BY type));