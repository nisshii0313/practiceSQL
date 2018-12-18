/*Show who won the 1962 prize for Literature.*/

SELECT winner
  FROM nobel
WHERE yr = 1962
  AND subject = 'Literature'