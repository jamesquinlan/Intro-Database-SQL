-- +++++++++++++++++++++++++++++++++++++++++++++++++++
-- Description:	How many more flights did the airport  
--              with the most number of flights have
--              over the average of the other two?
-- 
-- Course: 		Intro. to Database
-- Author: 		Quinlan, J.
-- Date:		2023-04-13
-- +++++++++++++++++++++++++++++++++++++++++++++++++++

use nycFlights;
SELECT 
    ROUND(MAX(X.NumFlights) - (SUM(X.NumFlights) - MAX(X.NumFlights)) / 2,
            0) AS Difference
FROM
    (SELECT 
        COUNT(fid) AS NumFlights
    FROM
        Flights
    GROUP BY origin
    ORDER BY NumFlights DESC) AS X;
