/*show the player, teamid, stadium and mdate for every German goal.*/

SELECT player,teamid, stadium, mdate FROM game
JOIN goal ON (game.id=goal.matchid AND teamid='GER')