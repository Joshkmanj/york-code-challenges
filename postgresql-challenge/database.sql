--Make sure you complete each of the following requirments fully.
--Drop tables employee, contact, and address if they already exist
--Any unspecified field type is text.

--Create a table called employee with fields for id as int, fname, lname, age as int, hiredate as date.

CREATE TABLE "employee" (
  "id" SERIAL PRIMARY KEY,
  "fname" VARCHAR(30),
  "lname" VARCHAR(30),
  "age" INT,
  "hiredate" DATE
);


--"Load employee records with this data:

INSERT INTO "employee" ( "id", "fname", "lname", "age", "hiredate")
VALUES 
(01, 'Alan', 'Palmer', 32, '12/15/2019'),
(02, 'Susan', 'Shepard', 28, '07/21/2015'),
(03, 'Justin', 'Ward',  43,'08/24/2017'),
(04, 'Alan', 'Smith', 30, '06/22/2017'),
(05, 'James', 'Betternot', 26,'06/22/17'),
(06, 'Ralph', 'White', 44, '06/23/17'),
(07, 'Leonard', 'Nimoy', 72,'12/14/07'),
(08, 'Janice', 'Rand', 61,'07/06/16'),
(09, 'Harry', 'Mudd', 65,'07/06/20'),
(10, 'Hikaru', 'Sulu', 58,'03/21/15'),
(11, 'James', 'Kirk', 59,'01/02/14'),
(12, 'Leonard', 'McCoy', 65,'08/21/15'),
(13, 'Pavel', 'Chekov', 44,'10/15/14'),
(14, 'Christopher', 'Pike', 32,'11/24/14'),
(15, 'Darth', 'Vader', 124,'03/22/15'),
(16, 'Boba', 'Fett', 49,'03/22/15'),
(17, 'Luke', 'Skywalker', 66,'11/11/19'),
(18, 'Han', 'Solo', 73,'02/03/12'),
(19, 'Kylo', 'Ren', 34,'06/14/20'),
(20, 'Galen', 'Erso', 55,'06/14/20');

 

--Create a table called address with fields for id as int, address1, address2, city, state, zip.

CREATE TABLE "address" (
	"id" SERIAL PRIMARY KEY,
	"address1" VARCHAR(120),
	"address2" VARCHAR(120),
	"city" VARCHAR(120),
	"state" VARCHAR(120),
	"zip" VARCHAR(20)
);

--Load records with this data:
--01, 1211 Sudan St, n/a, Mobile, AL, 36609
--02,  4800 Barkshire Dr, n/a, Pace, FL, 32571
--03,  12 Nutmeg Ct, n/a, Culver City, CA 90211
--04,  2142 Elmwood Pl, n/a, Johnson City, TN, 37112
--05, 777 Heavenly Ln, Box 13, Pike City, MN, 50877

INSERT INTO "address" ("id", "address1", "address2", "city", "state", "zip")
VALUES
(01, '1211 Sudan St', 'n/a', 'Mobile', 'AL', '36609'),
(02,  '4800 Barkshire Dr', 'n/a', 'Pace', 'FL', '32571'),
(03,  '12 Nutmeg Ct', 'n/a', 'Culver City', 'CA', '90211'),
(04,  '2142 Elmwood Pl', 'n/a', 'Johnson City', 'TN', '37112'),
(05, '777 Heavenly Ln', 'Box 13', 'Pike City', 'MN', '50877');


--Create a table called contact with fields for id as int, cellphone, homephone, email

CREATE TABLE "contact" (
  "id" SERIAL PRIMARY KEY,
  "cellphone" VARCHAR(100),
  "homephone" VARCHAR(100),
  "email" VARCHAR(100)
  );
  
--Load records with this data:

INSERT INTO "contact" ("id", "cellphone", "homephone", "email")
VALUES
(01, '5121325343', '5125234234', 'apalmer@yachtmail.com'),
(02, '5129739834', '5129847873', 'sshepard@yorkdevtraining.com'),
(03, '6453898502', '6459872345',  'jsward2007@yahoo.com'),
(04, '8763238756', '8763736548', 'alsmith999@gmail.com'),
(05, '8880345966', '8888567987', 'james.betternot@hotmail.com'),
(06, '3322827765', '3328760098', 'ralph.white264@aol.com');

--Create a query that joins (inner) employee and address tables on id and returns fname, lname, age, city, state where fname = Alan 

--Create a query that joins (inner) employee, address, and contact tables on id and returns fname, lname, age, city, state, email where email  =  james.betternot@hotmail.com

--Update Susan Shepard's cellphone to be 4383991212 using fname and lname in the where clause. You must use the employee table to find the name and the contact table to update the cellphone. (Hint: You can use a WHERE ??? = (select ??? from ??? where ??? = "???") to reference a value in the employee table that matches the record in the contact table you are updating.

--Create a query that returns all of Susan's data by name

 

--Remember that your code needs to be complete and working before you submit.  All of your SQL code should be contained in the SQL window.  The Log window will not be visable or considered during your review.  Submitting incomplete code will reduce your chances of passing your interview.




CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  fname VARCHAR(30),
  lname VARCHAR(30),
  age INT,
  hiredate DATE
);


INSERT INTO employee ( id, fname, lname, age, hiredate)
VALUES 
(01, 'Alan', 'Palmer', 32, '12/15/2019'),
(02, 'Susan', 'Shepard', 28, '07/21/2015'),
(03, 'Justin', 'Ward',  43,'08/24/2017'),
(04, 'Alan', 'Smith', 30, '06/22/2017'),
(05, 'James', 'Betternot', 26,'06/22/17'),
(06, 'Ralph', 'White', 44, '06/23/17'),
(07, 'Leonard', 'Nimoy', 72,'12/14/07'),
(08, 'Janice', 'Rand', 61,'07/06/16'),
(09, 'Harry', 'Mudd', 65,'07/06/20'),
(10, 'Hikaru', 'Sulu', 58,'03/21/15'),
(11, 'James', 'Kirk', 59,'01/02/14'),
(12, 'Leonard', 'McCoy', 65,'08/21/15'),
(13, 'Pavel', 'Chekov', 44,'10/15/14'),
(14, 'Christopher', 'Pike', 32,'11/24/14'),
(15, 'Darth', 'Vader', 124,'03/22/15'),
(16, 'Boba', 'Fett', 49,'03/22/15'),
(17, 'Luke', 'Skywalker', 66,'11/11/19'),
(18, 'Han', 'Solo', 73,'02/03/12'),
(19, 'Kylo', 'Ren', 34,'06/14/20'),
(20, 'Galen', 'Erso', 55,'06/14/20');

 

CREATE TABLE address (
	id SERIAL PRIMARY KEY,
	address1 VARCHAR(120),
	address2 VARCHAR(120),
	city VARCHAR(120),
	state VARCHAR(120),
	zip VARCHAR(20)
);


INSERT INTO address (id, address1, address2, city, state, zip)
VALUES
(01, '1211 Sudan St', 'n/a', 'Mobile', 'AL', '36609'),
(02,  '4800 Barkshire Dr', 'n/a', 'Pace', 'FL', '32571'),
(03,  '12 Nutmeg Ct', 'n/a', 'Culver City', 'CA', '90211'),
(04,  '2142 Elmwood Pl', 'n/a', 'Johnson City', 'TN', '37112'),
(05, '777 Heavenly Ln', 'Box 13', 'Pike City', 'MN', '50877');


CREATE TABLE contact (
  id SERIAL PRIMARY KEY,
  cellphone VARCHAR(100),
  homephone VARCHAR(100),
  email VARCHAR(100)
  );
  

INSERT INTO contact (id, cellphone, homephone, email)
VALUES
(01, '5121325343', '5125234234', 'apalmer@yachtmail.com'),
(02, '5129739834', '5129847873', 'sshepard@yorkdevtraining.com'),
(03, '6453898502', '6459872345',  'jsward2007@yahoo.com'),
(04, '8763238756', '8763736548', 'alsmith999@gmail.com'),
(05, '8880345966', '8888567987', 'james.betternot@hotmail.com'),
(06, '3322827765', '3328760098', 'ralph.white264@aol.com');


SELECT fname, lname, age, city, state
FROM employee
INNER JOIN address ON employee.id = address.id
WHERE fname = 'Alan'
;


SELECT fname, lname, age, city, state, email
FROM employee
INNER JOIN address ON employee.id = address.id
INNER JOIN contact ON employee.id = contact.id
WHERE email = 'james.betternot@hotmail.com'
;


UPDATE contact
SET cellphone = '4383991212'
WHERE id = ( 
		SELECT id 
		FROM employee
		WHERE fname = 'Susan' AND lname = 'Shepard');


SELECT *
FROM employee
JOIN address ON employee.id = address.id
JOIN contact ON employee.id = contact.id
WHERE fname = 'Susan' AND lname = 'Shepard';