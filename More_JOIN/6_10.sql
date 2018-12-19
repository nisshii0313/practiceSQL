/*List the films together with the leading star for all 1962 films.*/

SELECT movie.title, actor.name FROM movie 
JOIN casting ON movie.id = casting.movieid
JOIN actor ON casting.actorid = actor.id
WHERE movie.yr = 1962 AND casting.ord = 1
