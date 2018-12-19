/*show the matchid and player name for all goals scored by Germany.*/

SELECT matchid, player FROM goal 
WHERE teamid = 'GER'