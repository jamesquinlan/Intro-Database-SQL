-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	What was the longest delay?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    ROUND(MAX(dep_delay) / 60, 2) AS 'Maximum Delay (in hours)'
FROM
    Flights;

