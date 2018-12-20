/*Use COALESCE to print the mobile number. Use the number '07986 444 2266' if there is no number given. Show teacher name and mobile number or '07986 444 2266'*/

SELECT teacher.name, COALESCE(teacher.mobile, '07986 444 2266') AS mobile FROM teacher