/*creating a new table
column name 		data type		optional constraint

Numeric(number of digits, decimal places) eg Numeric(7,3)*/
Use classwork;
CREATE TABLE SEMICOLON(
Native_Name		char(35)		NOT NULL,
Cohort			char(30)		NOT NULL,
Background		char(10)		NULL,
Origin			char(36)		NULL,
CONSTRAINT		SEMICOLON_PK	PRIMARY KEY(Native_Name));

CREATE TABLE JOB(
Company_Name		char(35)		NOT NULL,
Candidate_Name		char(35)		NOT NULL,
Position			char(30)		NOT NULL,
Expertise_Level		INTEGER			NOT NULL,
Department			char(35)		NOT NULL,
Hobby				char(30)		NULL,
CONSTRAINT			JOB_PK			PRIMARY KEY (Candidate_Name));
