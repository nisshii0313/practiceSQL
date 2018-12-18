/*Find the country that has all the vowels and no spaces in its name.*/

SELECT name
   FROM world
WHERE name LIKE '%a%' 
   AND name LIKE '%e%'
   AND name LIKE '%i%'
   AND name LIKE '%o%'
   AND name LIKE '%u%'
   AND name NOT LIKE '% %'
