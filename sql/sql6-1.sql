-- +++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	Which of the three airports had the most 
--              flights?
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    origin AS Airport
FROM
    (SELECT 
        origin, COUNT(fid) AS NumFlights
    FROM
        Flights
    GROUP BY origin
    ORDER BY NumFlights DESC) AS X
LIMIT 1; 
