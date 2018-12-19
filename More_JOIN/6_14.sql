/*List the films released in the year 1978 ordered by the number of actors in the cast, then by title.*/

SELECT movie.title, COUNT(casting.actorid) FROM movie
JOIN casting ON movie.id = casting.movieid
WHERE movie.yr = 1978
GROUP BY movie.title
ORDER BY COUNT(casting.actorid) desc, movie.title