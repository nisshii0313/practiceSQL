/*List the films where 'Harrison Ford' has appeared - but not in the starring role. */

SELECT title FROM movie 
JOIN casting ON movie.id = casting.movieid
JOIN actor ON casting.actorid = actor.id
WHERE actor.name = 'Harrison Ford' AND casting.ord != 1
