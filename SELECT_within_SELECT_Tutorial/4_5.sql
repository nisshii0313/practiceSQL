/*Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.*/

SELECT name, CONCAT(ROUND(population*100/(SELECT population FROM world WHERE name = 'Germany'),0),'%') FROM world
WHERE continent = 'Europe'
