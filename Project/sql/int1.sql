.mode	columns
.headers	on
.nullvalue	NULL

PRAGMA FOREIGN_KEYS = ON;

SELECT postID, MAX(numberOfLikes) AS numberOfLikes FROM
    (SELECT postID, COUNT(type) AS numberOfLikes
        FROM Post INNER JOIN Reaction 
            ON Post.postID = Reaction.activityID
                -- A reaction of type 1 corresponds to a like
                WHERE type = 1  
                    GROUP by postID);
                