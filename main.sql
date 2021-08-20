/* 
	This line loads the database so you have access to 
	the data. Do not change or remove this line. 
	
	You can always click "Run" to start over.
*/
.read m1.sql

/* 
	This line will print the schematics of the "Students"
	table. You'll be able to see query used to create the table. Keep in mind that it does not print out the data rows, but only the headers.
*/
.schema Students

/*** WRITE YOUR QUERIES BELOW ***/
.print ''
.print New Student:
INSERT INTO Students(FirstName, LastName)
VALUES("Bobby", "Di'angelo");
SELECT * FROM Students
WHERE FirstName="Bobby"AND LastName="Di'angelo";

.print ''
.print New Student, New Exam:
UPDATE Students
SET Grade = 100, HonorRoll = 1    
WHERE 
    FirstName = "Bobby" AND LastName = "Di'angelo";
SELECT * FROM Students
WHERE FirstName="Bobby"AND LastName="Di'angelo";

.print ''
.print Farewell:
DELETE FROM Students
WHERE ID=9;
SELECT FirstName, LastName, 
CASE
WHEN FirstName || LastName = "BobbyDi'angelo" THEN 'Record Deleted'
END
FROM Students
WHERE FirstName='Bobby' AND LastName="Di'angelo";

.print ''
.print Honor Roll:
SELECT * FROM Students
WHERE HonorRoll = 1;

.print ''
.print Club Advisor:
create table Members (
  ID INTEGER not null primary key autoincrement,
  FirstName TEXT not null,
  LastName TEXT not null,
  GradeLevel INTEGER not null,
  Competitions INTEGER
);
.schema Members
