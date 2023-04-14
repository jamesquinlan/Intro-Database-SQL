-- ****************************************************
-- Description:	Which cities does that plane fly?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- ****************************************************

use nycFlights;
SELECT 
    distinct dest
FROM
    Flights
WHERE
    tailnum = (SELECT 
            tailnum
        FROM
            Flights
        WHERE
            month = 12 AND day = 25
                AND origin = 'JFK'
                AND dest = 'ORD'
        ORDER BY sched_dep_time DESC
        LIMIT 1);