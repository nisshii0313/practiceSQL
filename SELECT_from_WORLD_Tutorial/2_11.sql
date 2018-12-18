/*Show the name and capital where the name and the capital have the same number of characters.*/

SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)
