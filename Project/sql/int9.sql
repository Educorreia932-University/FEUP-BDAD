.mode columns
.headers on
.nullvalue NULL

SELECT ID, ((IFNULL(friendCount, 0) + IFNULL(eventCount, 0) + IFNULL(commentCount,0)) / 3.0) AS influencerScore FROM (
		-- Used to get amount of friends from all users
			-- We have to do a FULL OUTER JOIN to get the total amount of friends of a user
			-- However, SQLite doesn't support this operator (nor it does support RIGHT JOIN)
			-- So, to simulate it, we perform two LEFT JOINs with the table order reversed the second time (RIGHT JOIN) and then a UNION between them
		(SELECT ID, IFNULL(sendCount, 0) + IFNULL(rcvCount, 0) AS friendCount FROM (
						SELECT senderID AS ID, count(senderID) AS sendCount FROM Friendship
							WHERE state IS 1
								GROUP BY senderID)
				LEFT JOIN 
					(SELECT receiverID AS ID, count(receiverID) AS rcvCount FROM Friendship
						WHERE state IS 1
							GROUP BY receiverID) 
					USING(ID)
			UNION 
					SELECT ID, IFNULL(sendCount, 0) + IFNULL(rcvCount, 0) AS nrFriends FROM (
						SELECT receiverID AS ID, count(receiverID) AS rcvCount FROM Friendship
							WHERE state IS 1
								GROUP BY receiverID)
				LEFT JOIN (
					SELECT senderID AS ID, count(senderID) AS sendCount FROM Friendship
						WHERE state IS 1 
							GROUP BY senderID) 
					USING(ID)
		) 
	
	LEFT JOIN (
		-- Used to get amount of events that the user already went or plans to go
		SELECT participantID as ID, count(eventID) AS eventCount 
			FROM EventParticipant
				GROUP BY ID
	) USING(ID)

	LEFT JOIN (
		-- Used to get the amount of comments in the user's posts
		SELECT userID AS ID, count(commentID) AS commentCount
			FROM (User INNER JOIN (Comment INNER JOIN Post USING(postID)) AS postComment 
				ON User.userID = postComment.publisherID)
					GROUP BY userID
	) USING(ID) 
) ORDER BY influencerScore DESC;