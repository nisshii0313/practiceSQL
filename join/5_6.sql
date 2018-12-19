/*List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.*/

SELECT mdate, teamname FROM game
game JOIN eteam ON (team1=eteam.id)
WHERE coach = 'Fernando Santos'