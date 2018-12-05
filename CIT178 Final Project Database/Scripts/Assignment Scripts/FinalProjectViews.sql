/*

-- Updatable View with multiple tables:
 
USE Cronos_Frontier
GO
CREATE VIEW VI_Active_Mining_Operator_Locations
AS 
SELECT A.AutoOpID, A.CodeName, A.JobCode, SUM(O.Quantity) AS 'Active Units', Facilities.FacilityLocation AS [Location]
FROM Autonomous_Operators AS A JOIN Operator_Assignment AS O ON O.AutoOpID = A.AutoOpID
JOIN Facilities ON O.FacilityID = Facilities.FacilityID
WHERE A.JobCode = 'AO-MN'
GROUP BY A.AutoOpID, A.CodeName, A.JobCode, Facilities.FacilityLocation;
GO 


SELECT* FROM VI_Active_Mining_Operator_Locations;
*/

-- Read Only View:
/*
GO
CREATE VIEW VI_Active_Operators_Limited
AS 
SELECT A.AutoOpID, A.CodeName, A.JobCode, SUM(O.Quantity) AS 'Active Units'
FROM Autonomous_Operators AS A JOIN Operator_Assignment AS O ON O.AutoOpID = A.AutoOpID
GROUP BY A.AutoOpID, A.CodeName, A.JobCode
WITH CHECK OPTION;
GO

SELECT * FROM VI_Active_Operators_Limited; */


-- Updateable View:
/*
GO
CREATE VIEW VI_Phoebe_Ops
AS
SELECT A.AutoOpID, A.CodeName AS [Name], A.[Role] AS [Function], O.Quantity, F.FacilityName AS [Assigned To]
FROM Autonomous_Operators AS A 
JOIN Operator_Assignment AS O ON O.AutoOpID = A.AutoOpID
JOIN Facilities AS F ON F.FacilityID = O.FacilityID
WHERE O.FacilityID = 'PHB-02' OR O.FacilityID = 'PHB-01';
GO

SELECT * FROM VI_Phoebe_Ops;

-- Using View to Update Table (We shipped 3 more Shredders to Phoebe Refinery)

UPDATE VI_Phoebe_Ops
SET Quantity = '5'
WHERE Quantity = '2';

SELECT * FROM VI_Phoebe_Ops;
*/

-- System Catalog
/*
USE Cronos_Frontier;
SELECT [name], create_date, modify_date FROM sys.views
*/