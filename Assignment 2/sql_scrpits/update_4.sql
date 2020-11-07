UPDATE STUDENT
SET	isActive = "Y"
WHERE studentID in (
					SELECT studentID
					FROM ENROLLMENT
					WHERE grade is NULL)
;