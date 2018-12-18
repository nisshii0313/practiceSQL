/*Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.*/

SELECT yr, subject, winner FROM nobel
WHERE subject = 'Literature' AND yr >= 1980 AND 1989 >= yr