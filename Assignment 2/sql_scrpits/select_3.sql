SELECT *
FROM STUDENT
WHERE isActive = "Y" AND dateBirth > "2000-01-01"
ORDER BY lastName ASC, firstName ASC
;