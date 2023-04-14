-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	What airline is NK?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    name as Airline
FROM
    Airlines
WHERE
    carrier = 'NK';
