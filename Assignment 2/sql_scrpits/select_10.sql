SELECT firstName, lastName,courseNumber, credit, grade
FROM STUDENT, COURSE, ENROLLMENT
WHERE ENROLLMENT.grade IS NOT NULL AND ENROLLMENT.studentID = STUDENT.studentID and ENROLLMENT.courseID = COURSE.courseID
ORDER BY lastName ASC, firstName ASC, courseNumber DESC
;