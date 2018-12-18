/*Some countries have populations more than three times that of any of their neighbours (in the same continent). Give the countries and continents.*/

SELECT name, continent
FROM world x
WHERE population > ALL(SELECT population*3 FROM world y WHERE x.continent = y.continent AND population > 0 AND y.name != x.name)

/*wipwip*/
