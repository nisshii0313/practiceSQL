/*For every match involving 'POL', show the matchid, date and the number of goals scored.*/

SELECT matchid,mdate, COUNT(matchid)
FROM game JOIN goal ON matchid = id 
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate
