/*Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.*/

SELECT name, 
    ROUND(population/1000000,2),
    ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'
