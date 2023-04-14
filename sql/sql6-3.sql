-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	What was the average delay?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    round(AVG(Delays.dep_delay),0) as 'Average Delay (in minutes)'
FROM
    (SELECT 
        dep_delay
    FROM
        Flights
    WHERE
        dep_delay > 0) as Delays;
