/*Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.*/

SELECT name, continent, population FROM world 
WHERE continent 
IN (SELECT continent FROM world  x 
WHERE 25000000 >= (SELECT MAX(population) FROM world y WHERE x.continent = y.continent));

/*wip*/
