/*Obtain the cast list for the film 'Alien'*/

SELECT name FROM actor 
JOIN casting ON actor.id = casting.actorid
JOIN movie ON casting.movieid = movie.id
WHERE movie.title = 'Alien'
