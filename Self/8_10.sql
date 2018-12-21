/*Find the routes involving two buses that can go from Craiglockhart to Lochend.
Show the bus no. and company for the first bus, the name of the stop for the transfer,
and the bus no. and company for the second bus.*/

SELECT DISTINCT to_craiglockhart.num, to_craiglockhart.company, to_craiglockhart.transfer_stop, to_Lochend.num, to_Lochend.company
FROM (SELECT stopa.name AS transfer_stop, a.company, a.num, stopb.name
      FROM route a JOIN route b ON (a.company = b.company AND a.num = b.num)
      JOIN stops stopa ON (a.stop = stopa.id)
      JOIN stops stopb ON (b.stop = stopb.id)
      WHERE stopb.name = 'Craiglockhart') to_craiglockhart
JOIN (SELECT stopa.name AS transfer_stop, a.company, a.num, stopb.name
      FROM route a JOIN route b ON (a.company = b.company AND a.num = b.num)
      JOIN stops stopa ON (a.stop = stopa.id)
      JOIN stops stopb ON (b.stop = stopb.id)
      WHERE stopb.name = 'Lochend') to_Lochend
ON to_craiglockhart.transfer_stop = to_Lochend.transfer_stop
ORDER BY CAST(to_craiglockhart.num AS int)