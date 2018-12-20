/*Use the COALESCE function and a LEFT JOIN to print the teacher name and department name. Use the string 'None' where there is no department.*/

SELECT teacher.name, COALESCE (dept.name, 'None') AS dept FROM teacher
LEFT JOIN dept ON (dept.id = teacher.dept)