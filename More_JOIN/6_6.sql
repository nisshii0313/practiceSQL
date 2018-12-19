/*Obtain the cast list for 'Casablanca'.Use movieid=11768*/

SELECT name FROM actor 
JOIN casting ON actor.id = casting.actorid
JOIN movie ON casting.movieid = movie.id
WHERE casting.movieid = 11768
