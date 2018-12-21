/*Give a list of the services which connect the stops 'Craiglockhart' and 'Tollcross'*/

SELECT DISTINCT R1.company, R1.num FROM route R1
JOIN route R2 ON (R1.num=R2.num AND R1.company=R2.company)
JOIN stops stopR1 ON (R1.stop=stopR1.id)
JOIN stops stopR2 ON (R2.stop=stopR2.id)
WHERE stopR1.name = 'Craiglockhart' AND stopR2.name = 'Tollcross'