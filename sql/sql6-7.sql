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
    COUNT(fid) as 'Number of Flights LGA --> ORD Christmas'
FROM
    Flights
WHERE
    month = 12 AND day = 25 AND dest = 'ORD'
        AND origin = 'LGA';
