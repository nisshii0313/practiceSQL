/*Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10*/

SELECT player, teamid, coach, gtime FROM goal 
goal JOIN eteam on teamid=id
WHERE gtime<=10