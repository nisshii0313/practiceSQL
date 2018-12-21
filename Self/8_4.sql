/*Run the query and notice the two services that link these stops have a count of 2. Add a HAVING clause to restrict the output to these two routes.*/

SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*) = 2