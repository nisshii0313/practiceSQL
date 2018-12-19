/*List all the people who have worked with 'Art Garfunkel'.*/

SELECT actor.name FROM actor
JOIN casting ON actor.id = casting.actorid
JOIN movie ON casting.movieid = movie.id
WHERE actor.name != 'Art Garfunkel' AND movie.id IN (
  SELECT casting.movieid FROM casting
  WHERE casting.actorid IN (
          SELECT actor.id FROM actor
          WHERE actor.name='Art Garfunkel'))