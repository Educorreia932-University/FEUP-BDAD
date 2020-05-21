CREATE TRIGGER GATILHO_3
BEFORE UPDATE ON "Group"
FOR EACH ROW
WHEN 
    New.adminID NOT IN 
        (SELECT memberID FROM GroupMember
        WHERE GroupMember.groupID = New.groupID)
BEGIN
    --SELECT RAISE(ABORT, 'Novo adminstrador não pertence ao grupo!');
    INSERT INTO GroupMember VALUES (New.adminID, New.groupID);
END;