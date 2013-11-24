DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`retrieveEmpRecord` $$
CREATE PROCEDURE `hris`.`retrieveEmpRecord`(IN empID INT)
BEGIN
    SELECT a.EmployeeID, a.ImmediateHead, a.LastName, a.FirstName, a.MiddleName, a.NickName, a.Gender, a.Age, a.Height,
    a.CityAdd, a.CityContact, a.ProvinceAdd, a.ProvinceContact, a.Citizenship, a.BirthPlace, a.BirthDate, a.CivilStatus,
    a.Hobbies_interest, a.Language, a.DateHired, a.DateResigned, a.ProfLicense, a.Weight, a.Religion, a.ResidenceCert, a.SSSID, a.TaxID,

    b.Jobcode, b.CostCenter, f.BranchName, b.Department, b.Status,

    c.LastnameMother, c.FirstnameMother, c.MiddlenameMother, c.ContactNoMother, c.LastnameFather, c.FirstnameFather, c.MiddlenameFather,
    c.ContactNoFather, c.LastnameSpouse, c.FirstnameSpouse, c.MiddlenameSpouse, c.ContactNoSpouse, c.SpouseEmployedBy, c.MotherEmployedBy,
    c.FatherEmployedBy, c.SpouseOccupation, c.MotherOccupation, c.FatherOccupation,

    d.SchoolElem, d.AddressElem, d.AwardsElem, d.DateFromElem, d.DatetoElem, d.SchoolHS, d.AddressHS, d.Awards, d.DateFromHS, d.DatetoHS,
    d.SchoolCollege, d.AddressCollege, d.AwardsCollege, d.Course, d.DateFromCollege, d.DatetoCollege, d.PostGraduate, d.PostAddress, d.PostAwards,

    e.Fullname, e.Address, e.Relationship, e.ContactNo, e.Syscreated, e.Syscreator, e.Sysmodified, e.Sysmodifier

    FROM hris.recpersonalinformation a INNER JOIN hris.recemployeeemployement b ON b.EmployeeID = a.EmployeeID
    JOIN hris.recbranchoffices f ON f.CostCenter = b.CostCenter
    JOIN hris.recfamilybackground c ON c.EmployeeID = a.EmployeeID
    JOIN hris.receducationbackground d ON d.EmployeeID = a.EmployeeID
    JOIN hris.recemergencynotification e ON e.EmployeeID = a.EmployeeID
    WHERE a.EmployeeID=empID;

    /*SELECT ChildName, ChildAge FROM hris.recchildren WHERE EmployeeID = empID;
    SELECT Title, Venue, Date FROM hris.recemployeetrainings WHERE EmployeeID = empID;
    SELECT Name, Age, Status, Occupation, Company, SpouseName, SpouseOccupation, SpouseCompany FROM hris.recsiblings WHERE EmployeeID = empID;
    SELECT Name, Position, Relation, Company FROM hris.recgovrelative WHERE EmployeeID = empID;
    SELECT CompanyName, CompanyAdd, ImmediateHead, Contact, Position, DateFrom, DateTo, Salary, Reason FROM hris.recworkexperience WHERE EmployeeID = empID;
    SELECT Skill FROM hris.recskills WHERE EmployeeID = empID;
    SELECT Name, Position, BranchOffice, Relationship FROM hris.recmlrelatives WHERE EmployeeID = empID;
    SELECT FullName, Address, Contact, Occupation FROM hris.recreferences WHERE EmployeeID = empID;
    SELECT COUNT(EmployeeID) AS totalWorkEx FROM hris.recworkexperience WHERE EmployeeID = empID;
    SELECT COUNT(EmployeeID) AS totalSeminar FROM hris.recemployeetrainings WHERE EmployeeID = empID;
    SELECT COUNT(EmployeeID) AS totalMLRelatives FROM hris.recmlrelatives WHERE EmployeeID = empID;
    SELECT COUNT(EmployeeID) AS totalGovRelatives FROM hris.recgovrelative WHERE EmployeeID = empID;
    SELECT COUNT(EmployeeID) AS totalReferences FROM hris.recreferences WHERE EmployeeID = empID;*/
END $$

DELIMITER ;