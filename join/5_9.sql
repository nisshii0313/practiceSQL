/*Show teamname and the total number of goals scored.*/

SELECT teamname, COUNT(player)
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname
