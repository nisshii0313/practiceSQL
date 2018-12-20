/*List the teachers who have NULL for their department.*/

SELECT teacher.name FROM teacher
WHERE teacher.dept IS NULL