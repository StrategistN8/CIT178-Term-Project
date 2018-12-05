
--#1: 
USE Cronos_Frontier;
SELECT AutoOpID, SUM(Quantity) AS [Total Units]
FROM Operator_Assignment
GROUP BY AutoOpID;

--#2
SELECT FacilityID, AVG(Quantity) AS [Average Number of Operators In Facility]
FROM Operator_Assignment 
GROUP BY FacilityID;

--#3
SELECT FacilityID, MIN(Quantity) AS [Minimum Number of Operators In Facility]
FROM Operator_Assignment 
GROUP BY FacilityID;

--#4
SELECT FacilityID, MAX(Quantity) AS [Maximum Number of Operators In Facility]
FROM Operator_Assignment 
GROUP BY FacilityID;