SELECT firstName, lastName,courseNumber, credit, grade
FROM STUDENT, COURSE, ENROLLMENT
WHERE ENROLLMENT.grade IS NOT NULL AND ENROLLMENT.studentID = STUDENT.studentID AND ENROLLMENT.courseID = COURSE.courseID AND COURSE.courseNumber = "MISM4221"
ORDER BY lastName ASC, firstName ASC, courseNumber DESC
;