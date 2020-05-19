CREATE TRIGGER GATILHO_1
BEFORE INSERT ON Friendship
FOR EACH ROW
WHEN 
        ((SELECT COUNT(*) FROM
            (SELECT receiverID AS senderID
                FROM Friendship
                    WHERE senderID IS New.senderID AND state IS 1 
        UNION 
            SELECT senderID
                FROM Friendship
                    WHERE receiverID IS New.senderID AND state IS 1)) = 5)
    OR 
        ((SELECT COUNT(*) FROM
            (SELECT receiverID AS senderID
                    FROM Friendship
                        WHERE senderID IS New.receiverID AND state IS 1 
            UNION 
                SELECT senderID
                    FROM Friendship
                        WHERE receiverID IS New.receiverID AND state IS 1)) = 5)
BEGIN
    SELECT RAISE(IGNORE);
END