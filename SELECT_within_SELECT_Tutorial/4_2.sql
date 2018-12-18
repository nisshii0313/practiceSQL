/*Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.*/

SELECT name FROM world
WHERE continent = 'Europe' 
  AND gdp/population > (SELECT gdp/population FROM world WHERE name =  'United Kingdom')
