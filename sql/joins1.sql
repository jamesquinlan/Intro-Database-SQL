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
    distinct P.tailnum, CONCAT(P.manufacturer, ' ', P.model) AS Plane, P.seats, F.dest
FROM
    Planes AS P
        INNER JOIN
    Flights AS F ON P.tailnum = F.tailnum where origin = 'JFK';
    
    
    
-- =================================    
SELECT 
    distinct P.tailnum, CONCAT(P.manufacturer, ' ', P.model) AS Plane,  P.seats
FROM
    Planes AS P
        INNER JOIN
    Flights AS F ON P.tailnum = F.tailnum where origin = 'JFK' and dest = 'ATL';
    
    
-- ===================================

SELECT 
    COUNT(seats) AS Flights,
    ROUND(AVG(seats), 0) AS Seats,
    COUNT(seats) * ROUND(AVG(seats), 0) as Volume
FROM
    (SELECT DISTINCT
        P.tailnum, P.seats
    FROM
        Planes AS P
    INNER JOIN Flights AS F ON P.tailnum = F.tailnum
    WHERE
        origin = 'JFK' AND dest = 'ATL') AS X;