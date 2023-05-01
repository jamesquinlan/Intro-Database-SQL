-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	Which airline had most delays?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    carrier 
FROM
    Flights
GROUP BY carrier
HAVING COUNT(dep_delay) >= 0
ORDER BY COUNT(dep_delay) DESC
LIMIT 1;


--
-- Modification: elect the actual name from the Airlines table.alter
-- Subquery
-- 
SELECT 
    name
FROM
    Airlines
WHERE
    carrier = (SELECT 
            carrier
        FROM
            Flights
        GROUP BY carrier
        HAVING COUNT(dep_delay) >= 0
        ORDER BY COUNT(dep_delay) DESC
        LIMIT 1);
 
