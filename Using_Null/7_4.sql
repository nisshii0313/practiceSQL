/*Use a different JOIN so that all departments are listed.*/

SELECT teacher.name, dept.name FROM dept
LEFT JOIN teacher ON (dept.id = teacher.dept)