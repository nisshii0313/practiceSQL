/*For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'*/

SELECT matchid, mdate, COUNT(matchid)
FROM game JOIN goal ON matchid = id 
WHERE (goal.teamid = 'GER')
GROUP BY matchid, mdate
