/*List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.*/

SELECT name, continent FROM world
WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina') 
OR continent = (SELECT continent FROM world WHERE name = 'Australia')
ORDER BY name
