INSERT INTO COURSE (courseID,courseNumber,description,credit) 
VALUES
(10001,"MISM4221","System Analysis",3),
(10002,"MISM4222","System Desgin",3),
(10003,"CPSC3131","DataBase 1",-1),
(10004,"CPSC3132","DataBase 2",-1),
(10005,"CPSC4231","Cyber Security",-1),
(10006,"MISM3136","Database",3),
(10007,"ECON3221","Principles of Economics",3)
;

INSERT INTO STUDENT (studentID,lastName,firstName,dateBirth,isActive)
VALUES
(100001, "Johnson", "Ariel", "1999-07-10", "N"),
(100002, "Green", "Robin", "2001-11-02", "N"),
(100003, "Johnson", "Charles", "1995-01-12", "N"),
(100004, "Pearson", "Jeffery", "1996-02-06", "N"),
(100005, "Sears", "Miguel", "1998-10-31", "N"),
(100006, "Kyle", "Leah", "2000-05-29", "N"),
(100007, "Myers", "Lynda", "1980-08-24", "N")
;

INSERT INTO PHONE (phoneNumber,phoneType,studentID)
VALUES
(16542432938,"Primary",100006),
(16541456552,"Alternate",100006),
(18465584153,"Primary",100001),
(19638527415,"Alternate",100001),
(17894561231,"Primary",100002),
(14755621326,"Alternate",100002),
(18795324456,"Primary",100003),
(14896572315,"Primary",100004),
(14856812354,"Primary",100005),
(14896571264,"Alternate",100005)
;

INSERT INTO ENROLLMENT (studentID,courseID,grade)
VALUES
(100001,10001,"A"),
(100001,10003,NULL),
(100001,10004,"A"),
(100002,10006,NULL),
(100002,10004,"B"),
(100002,10005,"B"),
(100003,10004,NULL),
(100004,10002,"A"),
(100004,10003,"B"),
(100004,10005,NULL),
(100005,10001,NULL),
(100006,10001,"C"),
(100006,10003,"C"),
(100006,10004,NULL)
;