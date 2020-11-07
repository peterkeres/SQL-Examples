SELECT firstName, lastName
FROM STUDENT
WHERE studentID in (
					SELECT studentID
					FROM ENROLLMENT
					WHERE grade = "A")
;