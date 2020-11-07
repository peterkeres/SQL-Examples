SELECT courseNumber
FROM COURSE
WHERE courseID in (SELECT courseID
					FROM ENROLLMENT)
;