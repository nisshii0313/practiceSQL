/*Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine*/

SELECT * FROM nobel
WHERE yr = 1980 AND subject <> 'Chemistry' AND subject <> 'Medicine'