.mode	columns
.headers	on
.nullvalue	NULL

DROP VIEW IF EXISTS m1;

CREATE VIEW m1 As
    SELECT messageID, julianday(dateSent) * 24.0 as dateSent, size 
        FROM (Message NATURAL JOIN Multimedia) AS m1
            ORDER BY julianday(dateSent);

SELECT AVG(sizePerHour / 1024) as MBsPerHour FROM(
    SELECT size / hourDifference AS sizePerHour FROM
        (SELECT messageID, min(dateSent - priorDateSent) AS hourDifference, size
            FROM (SELECT t.messageID, t.dateSent, prior.dateSent AS priorDateSent, t.size
                FROM m1 AS t
                    JOIN m1 AS prior ON (prior.dateSent < t.dateSent)
            ) AS dates
        GROUP BY messageID)
    GROUP BY hourDifference, size
);