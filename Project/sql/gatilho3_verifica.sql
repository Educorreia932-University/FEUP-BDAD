.mode	columns
.headers	on
.nullvalue	NULL

SELECT * FROM "Group" JOIN GroupMember USING(groupID);

UPDATE "Group" SET adminID = 5 --Should change table
WHERE groupID = 21;

SELECT * FROM "Group" JOIN GroupMember USING(groupID);

UPDATE "Group" SET adminID = 4 --Should not change table displaying error message
WHERE groupID = 21;

SELECT * FROM "Group" JOIN GroupMember USING(groupID);