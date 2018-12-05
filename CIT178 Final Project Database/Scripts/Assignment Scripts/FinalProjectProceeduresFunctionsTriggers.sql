USE Cronos_Frontier; 
-- [Final Project Procedures]

/*
-- Proceedure that retrieves and displays data:

GO 
CREATE PROC sp_Project_Assignments
AS
SELECT P.StartDate, P.ProjectID, P.ProjectDescription AS 'Description',CONCAT(E.FirstName, ' ', E.LastName) AS 'Assigned To', F.FacilityName AS 'Facility', F.FacilityLocation AS 'Colony'
FROM CFProjects AS P
JOIN Facilities AS F ON F.FacilityID = P.FacilityID  
JOIN Project_Assignment AS PA ON PA.ProjectID = P.ProjectID
JOIN Employees AS E ON E.EmployeeID = PA.EmployeeID
ORDER BY P.StartDate ASC

EXECUTE sp_Project_Assignments; */

-- Proceedure that takes 1 or more input parameters and retrieves results based on the value: 

/*
GO 
CREATE PROC sp_Find_Operator_Quantity
@Name nvarchar(20) = '%'
AS 
BEGIN
SELECT A.AutoOpID AS 'Autonomous Operator ID', SUM(O.Quantity) AS 'Total Active Units'
FROM Autonomous_Operators AS A
JOIN Operator_Assignment AS O ON A.AutoOpID = O.AutoOpID 
WHERE CodeName LIKE @Name
GROUP BY A.AutoOpID 
END
GO

EXECUTE sp_Find_Operator_Quantity 'Goblin%';
EXECUTE sp_Find_Operator_Quantity 'Ogre%';
EXECUTE sp_Find_Operator_Quantity 'Scorp%';
EXECUTE sp_Find_Operator_Quantity 'Tri%';
*/

/* 
GO 
CREATE PROC sp_Operator_Catalog
@JobCode varchar(10) = NULL 
AS 
BEGIN
IF @JobCode IS NULL
	SELECT * FROM Autonomous_Operators;
ELSE 
	SELECT * FROM Autonomous_Operators 
	WHERE JobCode = @JobCode;
END
GO 

EXECUTE sp_Operator_Catalog;
GO
EXECUTE sp_Operator_Catalog 'AO-MN';
EXECUTE sp_Operator_Catalog 'AO-MIL';
*/

-- Proceedure that takes 1 or more input parameters and includes 1 or more output parameters
/*

IF OBJECT_ID('sp_Operator_Count') IS NOT NULL 
DROP PROC sp_Operator_Count;

GO
CREATE PROC sp_Operator_Count
@FacilityID varchar(10), @NumberOfBots int OUTPUT
AS
SELECT FacilityID, NumberOfBots = SUM(Quantity)
FROM Operator_Assignment 
WHERE FacilityID = @FacilityID
GROUP BY FacilityID
GO

DECLARE @NumberOfBots int;
EXECUTE sp_Operator_Count 'PHB-02', @NumberOfBots OUTPUT;
PRINT @NumberOfBots;
*/

-- Proceedure that includes a return value:
/*
GO 
CREATE PROC sp_Operator_Facility_Allocation
@AutoOpID varchar(15)
AS
DECLARE @FacilityCount int

SELECT  @FacilityCount = COUNT (AutoOpID)
FROM Operator_Assignment
WHERE (AutoOpID = @AutoOpID) 
GROUP BY AutoOpID

RETURN @FacilityCount
GO 
*/
/*
DECLARE @FacilityCount int;
EXECUTE @FacilityCount = sp_Operator_Facility_Allocation 'JOA M1-A';
PRINT 'This operator class is assigned to ' + CONVERT(varchar,@FacilityCount) + ' facilities.';
*/

-- [Final Project User Defined Functions]

-- Scalar Function with One Argument:
/*GO
CREATE FUNCTION fn_Get_Operator_ID
(@OperatorName VARCHAR(20))
RETURNS char(15)
BEGIN 
RETURN (SELECT AutoOpID 
		FROM Autonomous_Operators
		WHERE CodeName = @OperatorName)
END;

SELECT AutoOpID, SUM(Quantity) AS 'Active Units'
FROM Operator_Assignment
WHERE AutoOpID = dbo.fn_Get_Operator_ID ('Scorpion') 
GROUP BY AutoOpID
SELECT AutoOpID, SUM(Quantity) AS 'Active Units'
FROM Operator_Assignment
WHERE AutoOpID = dbo.fn_Get_Operator_ID ('Kraken') 
GROUP BY AutoOpID
SELECT AutoOpID, SUM(Quantity) AS 'Active Units'
FROM Operator_Assignment
WHERE AutoOpID = dbo.fn_Get_Operator_ID ('Triton') 
GROUP BY AutoOpID
*/

-- Table Function 1:
/*
GO
CREATE FUNCTION fn_Find_Operator_By_Counts
(@Quantity int)
RETURNS table 
RETURN (SELECT AutoOpID, FacilityID FROM Operator_Assignment
	WHERE @Quantity = Quantity) 

SELECT * FROM dbo.fn_Find_Operator_By_Counts(10)
*/

-- Table Function 2:
/*GO
CREATE FUNCTION fn_Find_Operator_Quantity_By_ID
(@OpID VARCHAR(15))
RETURNS table 
RETURN (SELECT FacilityID, Quantity FROM Operator_Assignment
	WHERE @OpID = AutoOpID) 

SELECT * FROM dbo.fn_Find_Operator_Quantity_By_ID (dbo.fn_Get_Operator_ID ('Scorpion'))
*/

-- [Final Project Triggers]

/*
CREATE TABLE OperatorLogs(
    AutoOpID varchar(15),
	status varchar(30)
);
*/

-- Archiveist Trigger:
/*
GO
CREATE TRIGGER Operator_Assignment_INSERT ON Operator_Assignment
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @AutoOpID VARCHAR(15)
    SELECT @AutoOpID =INSERTED.AutoOpID
    FROM INSERTED

    INSERT INTO OperatorLogs
    VALUES(@AutoOpID, 'Inserted')
END
*/

/*
INSERT INTO Operator_Assignment (FacilityID, AutoOpID, Quantity)
VALUES ('TN-02', 'CF-R BCM-100', '18');
*/

/*
GO
CREATE TRIGGER Operator_Assignment_DELETE ON Operator_Assignment
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @AutoOpID VARCHAR(15)
    SELECT @AutoOpID =DELETED.AutoOpID
    FROM DELETED

    INSERT INTO OperatorLogs
    VALUES(@AutoOpID, 'Deleted')
END

DELETE Operator_Assignment
WHERE AutoOpID = 'CF-R BCM-100' AND FacilityID = 'PHB-02' 

SELECT * FROM VI_Phoebe_Ops
ORDER BY 'Assigned To';


GO
CREATE TRIGGER Operator_Assignment_UPDATE ON Operator_Assignment
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @AutoOpID VARCHAR(15)
	DECLARE @Action varchar(50)
    SELECT @AutoOpID = INSERTED.AutoOpID
    FROM INSERTED 
	
	IF UPDATE(AutoOpID)
        SET @Action = 'Updated ID'   

    IF UPDATE(FacilityID)
        SET @Action = 'Updated Location'

    IF UPDATE(Quantity)
        SET @Action = 'Updated Quantity'  
    INSERT INTO OperatorLogs
    VALUES(@AutoOpID, @Action)
END

UPDATE Operator_Assignment
SET Quantity = 16
WHERE AutoOpID = 'JOA SRG-1' AND FacilityID = 'OM-03'

SELECT * FROM OperatorLogs;*/