.mode columns
.headers on
.nullvalue NULL

-- SELECT * FROM (
--         SELECT senderID as first, receiverID as second
--             FROM Friendship
--                 WHERE state IS 1
--     UNION
--         SELECT receiverID as first, senderID as second
--             FROM Friendship
--                 WHERE state IS 1    
-- );

-- SELECT *, 1 FROM (
--         (SELECT senderID as first, receiverID as second
--             FROM Friendship
--                 WHERE state IS 1 AND senderID IS 5
--     UNION
--         SELECT receiverID as first, senderID as second
--             FROM Friendship
--                 WHERE state IS 1 AND receiverID IS 5)
--     INNER JOIN
--         (SELECT COUNT(*) FROM Friendship)
-- );

-- One degree of separation
-- SELECT f1.senderID, f1.receiverID, COUNT(*) > 0
--     FROM Friendship AS f1
--         WHERE f1.state = 1
--             GROUP BY f1.senderID, f1.receiverID;

-- Two degrees of separation
-- SELECT *
--     FROM Friendship AS f1
--         JOIN Friendship AS f2
--             ON f2.senderID = f1.receiverID;

SELECT * FROM (
        (SELECT senderID as first, receiverID as second
            FROM Friendship
                WHERE state IS 1 
    UNION
        SELECT receiverID as first, senderID as second
            FROM Friendship
                WHERE state IS 1)
) GROUP BY first, second;


-- Three degrees
-- SELECT *
--     FROM Friendship AS f1
--         JOIN Friendship AS f2 
--             ON f2.senderID = f1.receiverID
--                 JOIN Friendship AS f3
--                     ON f3.senderID = f2.receiverID
--                         WHERE f1.senderID = 10 AND f3.receiverID = 5;
        