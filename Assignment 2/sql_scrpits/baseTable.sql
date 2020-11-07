CREATE TABLE STUDENT(
	studentID	INT			NOT NULL,
	lastName	char(30)	NOT NULL,
	firstName	char(30)	NOT NULL,
	dateBirth	char(10)	NOT NULL,
	isActive	char(1)		NOT NULL,
	CONSTRAINT	STUDENT_PK	PRIMARY KEY(studentID)
);

CREATE TABLE PHONE(
	phoneNumber	INT				NOT NULL,
	phoneType	char(25)		NULL,
	studentID	INT				NOT NULL,
	CONSTRAINT	PHONE_PK		PRIMARY KEY(phoneNumber),
	CONSTRAINT	PHO_STUDENT_PK	FOREIGN KEY(studentID)
			REFERENCES STUDENT(studentID)
);

CREATE TABLE COURSE(
	courseID		INT			NOT NULL,
	courseNumber	char(25)	NOT NULL,
	description		char(100)	NULL,
	credit			INT			NOT NULL,
	CONSTRAINT		COURSE_PK	PRIMARY KEY(courseID)
);

CREATE TABLE ENROLLMENT(
	studentID		INT				NOT NULL,
	courseID		INT				NOT NULL,
	grade			char(1)			NULL,
	CONSTRAINT		ENROLLMENT_PK	PRIMARY KEY(studentID,courseID),
	CONSTRAINT		ENR_STUDENT_FK	FOREIGN KEY(studentID)
			REFERENCES STUDENT(studentID),
	CONSTRAINT		ENR_COURSE_FK	FOREIGN KEY(courseID)
			REFERENCES COURSE(courseID)
);

