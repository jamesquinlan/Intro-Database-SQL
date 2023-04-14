-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	What was the flight number of the first 
--              flight on Christmas to Chicago from JFK?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    flight
FROM
    Flights
WHERE
    origin = 'JFK' AND month = 12
        AND day = 25 AND dest = 'ORD'
ORDER BY sched_dep_time limit 1;
