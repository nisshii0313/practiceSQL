/*List the film title and the leading actor for all of the films 'Julie Andrews' played in.*/

SELECT movie.title, actor.name FROM movie
JOIN casting ON movie.id = casting.movieid AND ord = 1
JOIN actor ON casting.actorid = actor.id
WHERE movie.id IN (
  SELECT casting.movieid FROM casting
  WHERE casting.actorid IN (
          SELECT actor.id FROM actor
          WHERE actor.name='Julie Andrews'))