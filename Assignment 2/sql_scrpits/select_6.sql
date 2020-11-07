SELECT 	sum("2019-22-04" - STUDENT.dateBirth) as TotalAge,
		avg("2019-22-04" - STUDENT.dateBirth) as AvgAge,
		min("2019-22-04" - STUDENT.dateBirth) as MinAge,
		max("2019-22-04" - STUDENT.dateBirth) as MaxAge
FROM	STUDENT
;