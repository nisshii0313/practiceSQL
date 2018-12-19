/*Obtain a list, in alphabetical order, of actors who've had at least 30 starring roles.*/

SELECT actor.name FROM movie
JOIN casting ON movie.id = casting.movieid AND ord = 1
JOIN actor ON casting.actorid = actor.id
GROUP BY actor.name
HAVING SUM(casting.ord) >= 30