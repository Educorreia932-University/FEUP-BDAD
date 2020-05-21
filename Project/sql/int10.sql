.mode columns
.headers on
.nullvalue NULL

-- Friends of each user
CREATE VIEW IF NOT EXISTS friends AS
    SELECT * FROM (
            (SELECT senderID as first, receiverID as second
                FROM Friendship
                    WHERE state IS 1 
        UNION
            SELECT receiverID as first, senderID as second
                FROM Friendship
                    WHERE state IS 1)
    ) GROUP BY first, second;

SELECT first, second, MIN(separationDegree) AS separationDegree FROM (
    -- Zero degree of separation
    SELECT f1.senderID AS first, f1.senderID AS second, 0 AS separationDegree
        FROM Friendship AS f1

    UNION ALL

    -- One degree of separation
    SELECT f1.first, f1.second, 1 AS separationDegree
        FROM friends AS f1
            GROUP BY f1.first, f1.second

    UNION ALL

    -- Two degrees of separation
    SELECT f1.first, f2.second, 2 AS separationDegree
        FROM friends AS f1
            JOIN friends AS f2
                ON f2.first = f1.second 
                    GROUP BY f1.first, f2.second

    ORDER BY f1.first, f1.second
) GROUP BY first, second



-- Three degrees
-- SELECT *
--     FROM Friendship AS f1
--         JOIN Friendship AS f2 
--             ON f2.senderID = f1.receiverID
--                 JOIN Friendship AS f3
--                     ON f3.senderID = f2.receiverID
--                         WHERE f1.senderID = 10 AND f3.receiverID = 5;
        