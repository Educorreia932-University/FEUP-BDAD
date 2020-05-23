.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;

-- Friends of each user
CREATE VIEW IF NOT EXISTS friends AS
    SELECT * FROM (
            (SELECT senderID as source, receiverID as target
                FROM Friendship
                    WHERE state IS 1 
        UNION
            SELECT receiverID as source, senderID as target
                FROM Friendship
                    WHERE state IS 1)
    ) GROUP BY source, target;

SELECT source, target, MIN(separationDegree) AS separationDegree FROM (
    -- Zero degree of separation
    SELECT f1.senderID AS source, f1.senderID AS target, 0 AS separationDegree
        FROM Friendship AS f1

    UNION ALL

    -- One degree of separation
    SELECT f1.source, f1.target, 1 AS separationDegree
        FROM friends AS f1
            GROUP BY f1.source, f1.target

    UNION ALL

    -- Two degrees of separation
    SELECT f1.source, f2.target, 2 AS separationDegree
        FROM friends AS f1
            JOIN friends AS f2
                ON f2.source = f1.target 
                    GROUP BY f1.source, f2.target

    UNION ALL

    -- Three degrees of separation
    SELECT f1.source, f3.target, 3 AS separationDegree
        FROM friends AS f1
            JOIN friends AS f2
                ON f2.source = f1.target
                    JOIN friends AS f3
                        ON f3.source = f2.target
                            GROUP BY f1.source, f3.target

    UNION ALL

    -- Four degrees of separation or more
    SELECT *, ">3" AS separationDegree 
        FROM 
            (SELECT userID AS source FROM User AS u1)
        CROSS JOIN 
            (SELECT userID AS target FROM User AS u2)

    ORDER BY f1.source, f1.target
) GROUP BY source, target
        