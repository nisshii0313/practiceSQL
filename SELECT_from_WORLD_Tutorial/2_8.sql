/*Exclusive OR (XOR). Show the countries that are big by area or big by population but not both. Show name, population and area. 
area:more than 3 million sq km, population: more than 250 million.*/

SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000
