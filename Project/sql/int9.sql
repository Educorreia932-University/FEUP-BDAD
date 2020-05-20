.mode columns
.headers on
.nullvalue NULL

SELECT
  ID,((IFNULL(friendCount,0) + IFNULL(eventCount,0) + IFNULL(commentCount,0))/3.0) AS influencerScore
FROM (
    (
      (
        SELECT
          ID,
          IFNULL(sendCount, 0) + IFNULL(rcvCount, 0) AS friendCount
        FROM (
            SELECT
              senderID AS ID,
              count(senderID) AS sendCount
            FROM Friendship
            WHERE
              state IS 1
            GROUP BY
              senderID
          )
        LEFT JOIN (
            SELECT
              receiverID AS ID,
              count(receiverID) AS rcvCount
            FROM Friendship
            WHERE
              state IS 1
            GROUP BY
              receiverID
          ) using(ID)
        UNION
        SELECT
          ID,
          IFNULL(sendCount, 0) + IFNULL(rcvCount, 0) AS nrFriends
        FROM (
            SELECT
              receiverID AS ID,
              count(receiverID) AS rcvCount
            FROM Friendship
            WHERE
              state IS 1
            GROUP BY
              receiverID
          )
        LEFT JOIN (
            SELECT
              senderID AS ID,
              count(senderID) AS sendCount
            FROM Friendship
            WHERE
              state IS 1
            GROUP BY
              senderID
          ) USING(ID)
      ) -- Used to get amount of friends from all user
      LEFT JOIN (
          SELECT
            participantID as ID,
            count(eventID) AS eventCount
          FROM EventParticipant
          GROUP BY
            ID
        ) USING(ID)
    ) --Number of events
    LEFT JOIN (
        SELECT
          userID AS ID,
          count(commentID) AS commentCount
        FROM (
            User
            INNER JOIN (
                Comment
                INNER JOIN Post USING(postID)
              ) AS postComment ON User.userID = postComment.publisherID
          )
        GROUP BY
          userID
      ) USING(ID) -- Number of comments in posts
  ) ORDER BY influencerScore DESC;
