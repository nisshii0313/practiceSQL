/*Give a list of all the services which connect stops 115 and 137 ('Haymarket' and 'Leith')*/

SELECT DISTINCT R1.company, R1.num FROM route R1, route R2
WHERE R1.num=R2.num AND R1.company=R2.company AND R1.stop=115 AND R2.stop=137