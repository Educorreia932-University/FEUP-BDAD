SELECT * 
    FROM ("Group" NATURAL JOIN (Page NATURAL JOIN Publisher))
        WHERE pageID = publisherID