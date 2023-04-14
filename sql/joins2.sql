-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	How many flights on Christmas to Chicago 
--  			(ORD) from LGA?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    visib, wind_speed, wind_gust
FROM
    Flights AS F
        INNER JOIN
    Weather AS W ON F.origin = W.origin
WHERE
    F.dep_delay > 60 AND F.origin = 'JFK';