/*Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.*/

SELECT winner, subject
  FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject,winner
