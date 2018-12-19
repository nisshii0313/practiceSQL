/*Sort your result by mdate, matchid, team1 and team2.*/

SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON id = matchid
GROUP BY mdate, matchid, team1, team2
