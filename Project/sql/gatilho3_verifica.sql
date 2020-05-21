.mode	columns
.headers	on
.nullvalue	NULL

SELECT * FROM "Group" JOIN GroupMember USING(groupID)
ORDER BY groupID;

UPDATE "Group" SET adminID = 5 --Should change table
WHERE groupID = 21;

SELECT * FROM "Group" JOIN GroupMember USING(groupID)
ORDER BY groupID;

UPDATE "Group" SET adminID = 4 --Should add new member
WHERE groupID = 21;

SELECT * FROM "Group" JOIN GroupMember USING(groupID)
ORDER BY groupID;