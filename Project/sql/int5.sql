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

SELECT source as User, target as Suggestion
FROM (SELECT *, source || target as conc
        FROM (SELECT f1.source, f2.target
            FROM friends f1
            JOIN friends f2
            ON f2.source = f1.target
            LEFT JOIN friends f3
            ON f3.source = f1.source
            AND f3.target = f2.target
        WHERE f2.target <> f1.source
            AND f3.target IS NULL)
    GROUP BY conc
    HAVING COUNT(*) > 1);