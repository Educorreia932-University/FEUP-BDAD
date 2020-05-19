.mode columns
.headers on
.nullvalue NULL

SELECT publisherID,userID,max(userCount) AS nrReactions
    FROM (SELECT publisherID,userID,count(userID) AS userCount 
        FROM Post INNER JOIN Activity ON Post.postID = Activity.activityID
            INNER JOIN Reaction ON Reaction.activityID = Activity.activityID GROUP BY publisherID,userID)
                GROUP BY publisherID;
