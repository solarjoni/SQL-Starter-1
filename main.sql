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
INSERT INTO Students(FirstName, LastName)
VALUES("Bobby", "Di'angelo");
UPDATE Students
SET Grade = 100    
WHERE 
    FirstName = "Bobby" AND LastName = "Di'angelo";
DELETE FROM Students
WHERE ID = 9;
SELECT * FROM Students
WHERE HonorRoll = 1;

create table Members (
  ID INTEGER not null primary key autoincrement,
  FirstName TEXT not null,
  LastName TEXT not null,
  Grade INTEGER not null,
  Competitions INTEGER
);

/* SELECT * FROM Students; */

