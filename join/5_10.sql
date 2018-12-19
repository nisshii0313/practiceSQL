/*Show the stadium and the number of goals scored in each stadium.*/

SELECT stadium, COUNT(player) FROM eteam
JOIN goal ON goal.teamid = eteam.id
JOIN game ON goal.matchid = game.id
GROUP BY stadium
