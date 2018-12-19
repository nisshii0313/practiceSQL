/*For each continent show the continent and number of countries.*/

SELECT continent, COUNT(name) FROM world
GROUP BY continent