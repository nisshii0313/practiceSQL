/*Give the id and the name for the stops on the '4' 'LRT' service.*/

SELECT stops.id, stops.name FROM stops
WHERE stops.id IN (
   SELECT route.stop FROM route
   WHERE route.num = 4 AND route.company = 'LRT'
)