.mode	columns
.headers	on
.nullvalue	NULL

SELECT * FROM Friendship 
    WHERE (senderID IS 5 OR receiverID IS 5) AND STATE IS 1;

INSERT INTO	Friendship VALUES (5,3,1,'2017-02-13');

SELECT * FROM Friendship 
    WHERE (senderID IS 5 OR receiverID IS 5) AND STATE IS 1;