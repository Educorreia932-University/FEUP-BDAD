.mode columns
.headers on
.nullvalue NULL

SELECT * FROM 
    (SELECT receiverID AS senderID FROM Friendship WHERE senderID IS 1 AND state IS 1 UNION SELECT senderID FROM Friendship WHERE receiverID IS 1 AND state IS 1)
    NATURAL JOIN (SELECT receiverID AS senderID FROM Friendship WHERE senderID IS 2 AND state IS 1 UNION SELECT senderID FROM Friendship WHERE receiverID IS 2 AND state IS 1);