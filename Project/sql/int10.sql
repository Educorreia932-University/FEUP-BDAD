.mode columns
.headers on
.nullvalue NULL

-- Friends of each user
CREATE VIEW friends AS
    SELECT * FROM (
            (SELECT senderID as first, receiverID as second
                FROM Friendship
                    WHERE state IS 1 
        UNION
            SELECT receiverID as first, senderID as second
                FROM Friendship
                    WHERE state IS 1)
    ) GROUP BY first, second;

-- One degree of separation
SELECT f1.first, f1.second, COUNT(*) > 0
    FROM friends AS f1
        GROUP BY f1.first, f1.second;

-- Two degrees of separation
SELECT *
    FROM Friendship AS f1
        JOIN Friendship AS f2
            ON f2.senderID = f1.receiverID;





-- Three degrees
-- SELECT *
--     FROM Friendship AS f1
--         JOIN Friendship AS f2 
--             ON f2.senderID = f1.receiverID
--                 JOIN Friendship AS f3
--                     ON f3.senderID = f2.receiverID
--                         WHERE f1.senderID = 10 AND f3.receiverID = 5;
        