-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Question:
-- How many seats were on the FIRST plane leaving JFK to ORD on 12/25?  
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    seats as 'Number of Seats'
FROM
    Planes
WHERE
    tailnum = (SELECT 
            tailnum
        FROM
            Flights
        WHERE
            origin = 'JFK' AND month = 12
                AND day = 25
                AND dest = 'ORD'
        ORDER BY sched_dep_time
        LIMIT 1);

