SELECT firstName, lastName, phoneNumber, phoneType
FROM STUDENT, PHONE
WHERE STUDENT.studentID = PHONE.studentID
ORDER BY firstName ASC
;