-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.58-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hris
--

CREATE DATABASE IF NOT EXISTS hris;
USE hris;

--
-- Definition of table `discaseattachments`
--

DROP TABLE IF EXISTS `discaseattachments`;
CREATE TABLE `discaseattachments` (
  `caseNo` int(11) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discaseattachments`
--

/*!40000 ALTER TABLE `discaseattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `discaseattachments` ENABLE KEYS */;


--
-- Definition of table `discaseescalation`
--

DROP TABLE IF EXISTS `discaseescalation`;
CREATE TABLE `discaseescalation` (
  `caseNo` int(11) NOT NULL,
  `escalatedBy` varchar(45) NOT NULL,
  `escalatedTo` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `comments` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discaseescalation`
--

/*!40000 ALTER TABLE `discaseescalation` DISABLE KEYS */;
/*!40000 ALTER TABLE `discaseescalation` ENABLE KEYS */;


--
-- Definition of table `discasepenalty`
--

DROP TABLE IF EXISTS `discasepenalty`;
CREATE TABLE `discasepenalty` (
  `typeCode` varchar(45) NOT NULL,
  `penaltyCode` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discasepenalty`
--

/*!40000 ALTER TABLE `discasepenalty` DISABLE KEYS */;
/*!40000 ALTER TABLE `discasepenalty` ENABLE KEYS */;


--
-- Definition of table `discases`
--

DROP TABLE IF EXISTS `discases`;
CREATE TABLE `discases` (
  `caseNo` int(11) NOT NULL,
  `caseType` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  `reportDate` date NOT NULL,
  `employeeId` int(11) NOT NULL,
  `manager` varchar(45) NOT NULL,
  `costcenter` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discases`
--

/*!40000 ALTER TABLE `discases` DISABLE KEYS */;
/*!40000 ALTER TABLE `discases` ENABLE KEYS */;


--
-- Definition of table `discasetype`
--

DROP TABLE IF EXISTS `discasetype`;
CREATE TABLE `discasetype` (
  `typeCode` varchar(45) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discasetype`
--

/*!40000 ALTER TABLE `discasetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `discasetype` ENABLE KEYS */;


--
-- Definition of table `dispenalty`
--

DROP TABLE IF EXISTS `dispenalty`;
CREATE TABLE `dispenalty` (
  `penaltyCode` varchar(45) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispenalty`
--

/*!40000 ALTER TABLE `dispenalty` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispenalty` ENABLE KEYS */;


--
-- Definition of table `distypeincident`
--

DROP TABLE IF EXISTS `distypeincident`;
CREATE TABLE `distypeincident` (
  `typeCode` varchar(45) NOT NULL,
  `incidents` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distypeincident`
--

/*!40000 ALTER TABLE `distypeincident` DISABLE KEYS */;
/*!40000 ALTER TABLE `distypeincident` ENABLE KEYS */;


--
-- Definition of table `employeeovertime`
--

DROP TABLE IF EXISTS `employeeovertime`;
CREATE TABLE `employeeovertime` (
  `EmployeeId` int(11) NOT NULL,
  `OTCode` int(11) NOT NULL,
  `OTDate` date NOT NULL,
  `totalMin` int(11) DEFAULT NULL,
  `OTyear` int(11) NOT NULL,
  `OTMonth` int(11) NOT NULL,
  `periodCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeovertime`
--

/*!40000 ALTER TABLE `employeeovertime` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeovertime` ENABLE KEYS */;


--
-- Definition of table `ereapplicannogen`
--

DROP TABLE IF EXISTS `ereapplicannogen`;
CREATE TABLE `ereapplicannogen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MonthGen` int(10) unsigned NOT NULL,
  `YearGen` int(10) unsigned NOT NULL,
  `SeriesNumber` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ereapplicannogen`
--

/*!40000 ALTER TABLE `ereapplicannogen` DISABLE KEYS */;
/*!40000 ALTER TABLE `ereapplicannogen` ENABLE KEYS */;


--
-- Definition of table `erecapplicantaccounts`
--

DROP TABLE IF EXISTS `erecapplicantaccounts`;
CREATE TABLE `erecapplicantaccounts` (
  `ApplicantNo` varchar(12) NOT NULL,
  `AccountNo` varchar(45) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecapplicantaccounts`
--

/*!40000 ALTER TABLE `erecapplicantaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecapplicantaccounts` ENABLE KEYS */;


--
-- Definition of table `erecapplicantdesignation`
--

DROP TABLE IF EXISTS `erecapplicantdesignation`;
CREATE TABLE `erecapplicantdesignation` (
  `ApplicantNo` varchar(12) NOT NULL,
  `DateEmployment` datetime DEFAULT NULL,
  `Designation` varchar(60) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecapplicantdesignation`
--

/*!40000 ALTER TABLE `erecapplicantdesignation` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecapplicantdesignation` ENABLE KEYS */;


--
-- Definition of table `erecapplicantjobinfo`
--

DROP TABLE IF EXISTS `erecapplicantjobinfo`;
CREATE TABLE `erecapplicantjobinfo` (
  `ApplicantNo` varchar(12) NOT NULL DEFAULT '0',
  `DateApplied` datetime NOT NULL,
  `PositionApplied` varchar(25) NOT NULL,
  `SalaryDesired` float DEFAULT NULL,
  `location` char(6) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecapplicantjobinfo`
--

/*!40000 ALTER TABLE `erecapplicantjobinfo` DISABLE KEYS */;
INSERT INTO `erecapplicantjobinfo` (`ApplicantNo`,`DateApplied`,`PositionApplied`,`SalaryDesired`,`location`,`SysCreated`,`SysModified`,`SysCreator`,`SysModifier`) VALUES 
 ('20123-000001','2012-03-09 00:00:00','Programmer',5000,'Luzon','2012-03-09 13:05:07','2012-03-09 13:05:07',99999,99999),
 ('20123-000001','2012-03-09 00:00:00','Programmer',5000,'Luzon','2012-03-09 13:05:07','2012-03-09 13:05:07',99999,99999);
/*!40000 ALTER TABLE `erecapplicantjobinfo` ENABLE KEYS */;


--
-- Definition of table `erecapplicantpersonalinfo`
--

DROP TABLE IF EXISTS `erecapplicantpersonalinfo`;
CREATE TABLE `erecapplicantpersonalinfo` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Surname` varchar(60) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `MiddleName` varchar(60) NOT NULL,
  `NickName` varchar(25) DEFAULT NULL,
  `Sex` char(6) NOT NULL,
  `Height` char(3) NOT NULL,
  `Weight` char(3) NOT NULL,
  `CityAdd` varchar(500) NOT NULL,
  `CityContact` varchar(20) NOT NULL,
  `ProvinceAddress` varchar(500) NOT NULL,
  `ProvinceContact` varchar(20) NOT NULL,
  `Citizenship` varchar(25) NOT NULL,
  `Religion` varchar(25) NOT NULL,
  `DateBirth` datetime NOT NULL,
  `CivilStatus` varchar(25) NOT NULL,
  `HobbiesInterest` varchar(250) DEFAULT NULL,
  `Language` varchar(30) NOT NULL,
  `MachineOperated` varchar(100) DEFAULT NULL,
  `AssignNCR` char(3) NOT NULL,
  `Aboutyourself` varchar(1000) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(4) NOT NULL,
  `Sysmodifier` int(4) NOT NULL,
  `Age` int(2) NOT NULL,
  PRIMARY KEY (`ApplicantNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecapplicantpersonalinfo`
--

/*!40000 ALTER TABLE `erecapplicantpersonalinfo` DISABLE KEYS */;
INSERT INTO `erecapplicantpersonalinfo` (`ApplicantNo`,`Surname`,`FirstName`,`MiddleName`,`NickName`,`Sex`,`Height`,`Weight`,`CityAdd`,`CityContact`,`ProvinceAddress`,`ProvinceContact`,`Citizenship`,`Religion`,`DateBirth`,`CivilStatus`,`HobbiesInterest`,`Language`,`MachineOperated`,`AssignNCR`,`Aboutyourself`,`SysCreated`,`SysModified`,`SysCreator`,`Sysmodifier`,`Age`) VALUES 
 ('20123-000001','Barillo','Adrian','Duhig','Adz','Male','5\"5','40','Cebu City','092648484484','Negros','092465123132','Filipino','Roman Catholic','2012-03-14 00:00:00','Single','Basketball','English','Computer','Yes','sadfsdafsdafsdafsda','2012-03-09 13:05:07','2012-03-09 13:05:07',9999,9999,20);
/*!40000 ALTER TABLE `erecapplicantpersonalinfo` ENABLE KEYS */;


--
-- Definition of table `erecapplicantprocedure`
--

DROP TABLE IF EXISTS `erecapplicantprocedure`;
CREATE TABLE `erecapplicantprocedure` (
  `ApplicantNo` varchar(12) NOT NULL,
  `ProcCode` varchar(15) NOT NULL,
  `Passed` char(1) NOT NULL,
  `ProcDate` datetime DEFAULT NULL,
  `HandledBy` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecapplicantprocedure`
--

/*!40000 ALTER TABLE `erecapplicantprocedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecapplicantprocedure` ENABLE KEYS */;


--
-- Definition of table `erecattchements`
--

DROP TABLE IF EXISTS `erecattchements`;
CREATE TABLE `erecattchements` (
  `ApplicantNo` varchar(12) NOT NULL,
  `FileName` varchar(150) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecattchements`
--

/*!40000 ALTER TABLE `erecattchements` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecattchements` ENABLE KEYS */;


--
-- Definition of table `ereccrimehealthinfo`
--

DROP TABLE IF EXISTS `ereccrimehealthinfo`;
CREATE TABLE `ereccrimehealthinfo` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `Answer` char(3) NOT NULL,
  `Specific` varchar(30) DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ereccrimehealthinfo`
--

/*!40000 ALTER TABLE `ereccrimehealthinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ereccrimehealthinfo` ENABLE KEYS */;


--
-- Definition of table `erecedcbackground`
--

DROP TABLE IF EXISTS `erecedcbackground`;
CREATE TABLE `erecedcbackground` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Shool` varchar(150) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Awards` varchar(500) NOT NULL,
  `Course` varchar(150) NOT NULL,
  `DateFrom` datetime NOT NULL,
  `DateTo` datetime NOT NULL,
  `Type` varchar(15) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecedcbackground`
--

/*!40000 ALTER TABLE `erecedcbackground` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecedcbackground` ENABLE KEYS */;


--
-- Definition of table `erecemergencynotification`
--

DROP TABLE IF EXISTS `erecemergencynotification`;
CREATE TABLE `erecemergencynotification` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Fullname` varchar(180) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Relationship` varchar(15) NOT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecemergencynotification`
--

/*!40000 ALTER TABLE `erecemergencynotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecemergencynotification` ENABLE KEYS */;


--
-- Definition of table `ereclivinginfo`
--

DROP TABLE IF EXISTS `ereclivinginfo`;
CREATE TABLE `ereclivinginfo` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `WithWhom` varchar(10) DEFAULT NULL,
  `DateStart` datetime DEFAULT NULL,
  `ResidenceNo` varchar(30) DEFAULT NULL,
  `IssuedDate` datetime DEFAULT NULL,
  `IssuedPlace` varchar(500) DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ereclivinginfo`
--

/*!40000 ALTER TABLE `ereclivinginfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ereclivinginfo` ENABLE KEYS */;


--
-- Definition of table `erecmlrelatives`
--

DROP TABLE IF EXISTS `erecmlrelatives`;
CREATE TABLE `erecmlrelatives` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Fullname` varchar(180) DEFAULT NULL,
  `Position` varchar(25) DEFAULT NULL,
  `Office` varchar(100) DEFAULT NULL,
  `Relationship` varchar(20) DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecmlrelatives`
--

/*!40000 ALTER TABLE `erecmlrelatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecmlrelatives` ENABLE KEYS */;


--
-- Definition of table `erecproceduresettings`
--

DROP TABLE IF EXISTS `erecproceduresettings`;
CREATE TABLE `erecproceduresettings` (
  `ProcCode` varchar(12) NOT NULL,
  `Description` varchar(60) NOT NULL,
  `HandledBy` varchar(25) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL,
  PRIMARY KEY (`ProcCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecproceduresettings`
--

/*!40000 ALTER TABLE `erecproceduresettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecproceduresettings` ENABLE KEYS */;


--
-- Definition of table `erecreferences`
--

DROP TABLE IF EXISTS `erecreferences`;
CREATE TABLE `erecreferences` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Fullname` varchar(180) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `Occupation` varchar(60) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecreferences`
--

/*!40000 ALTER TABLE `erecreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecreferences` ENABLE KEYS */;


--
-- Definition of table `erecreqnomanpow`
--

DROP TABLE IF EXISTS `erecreqnomanpow`;
CREATE TABLE `erecreqnomanpow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RegCode` varchar(3) NOT NULL,
  `MonthGen` int(10) unsigned NOT NULL,
  `YearGen` int(10) unsigned NOT NULL,
  `SeriesNo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecreqnomanpow`
--

/*!40000 ALTER TABLE `erecreqnomanpow` DISABLE KEYS */;
INSERT INTO `erecreqnomanpow` (`id`,`RegCode`,`MonthGen`,`YearGen`,`SeriesNo`) VALUES 
 (1,'16',3,2012,1);
/*!40000 ALTER TABLE `erecreqnomanpow` ENABLE KEYS */;


--
-- Definition of table `erecrequestapproval`
--

DROP TABLE IF EXISTS `erecrequestapproval`;
CREATE TABLE `erecrequestapproval` (
  `ReqNo` varchar(20) NOT NULL,
  `EscalatedBy` int(11) NOT NULL,
  `EscalatedTo` int(11) NOT NULL,
  `Remarks` varchar(45) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecrequestapproval`
--

/*!40000 ALTER TABLE `erecrequestapproval` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecrequestapproval` ENABLE KEYS */;


--
-- Definition of table `erecrequests`
--

DROP TABLE IF EXISTS `erecrequests`;
CREATE TABLE `erecrequests` (
  `ReqNo` varchar(20) NOT NULL,
  `ReqDate` datetime NOT NULL,
  `RequestorId` int(11) NOT NULL,
  `DepartMentID` char(3) NOT NULL,
  `Designation` varchar(60) NOT NULL,
  `DateNeeded` datetime NOT NULL,
  `PositionNeeded` varchar(60) NOT NULL,
  `Reason` varchar(150) NOT NULL,
  `employmentStatus` varchar(30) DEFAULT NULL,
  `EducQualification` varchar(60) DEFAULT NULL,
  `Experience` varchar(50) DEFAULT NULL,
  `Status` varchar(10) NOT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL,
  PRIMARY KEY (`ReqNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecrequests`
--

/*!40000 ALTER TABLE `erecrequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecrequests` ENABLE KEYS */;


--
-- Definition of table `erecsiblings`
--

DROP TABLE IF EXISTS `erecsiblings`;
CREATE TABLE `erecsiblings` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Fullname` varchar(180) NOT NULL,
  `Age` smallint(6) NOT NULL,
  `CivilStatus` varchar(25) NOT NULL,
  `Occupation` varchar(30) DEFAULT NULL,
  `Company` varchar(150) DEFAULT NULL,
  `SpouseName` varchar(180) DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL,
  KEY `ApplicantNo` (`ApplicantNo`),
  CONSTRAINT `ApplicantNo` FOREIGN KEY (`ApplicantNo`) REFERENCES `erecapplicantpersonalinfo` (`ApplicantNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecsiblings`
--

/*!40000 ALTER TABLE `erecsiblings` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecsiblings` ENABLE KEYS */;


--
-- Definition of table `erecskills`
--

DROP TABLE IF EXISTS `erecskills`;
CREATE TABLE `erecskills` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Skills` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecskills`
--

/*!40000 ALTER TABLE `erecskills` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecskills` ENABLE KEYS */;


--
-- Definition of table `erectrainings`
--

DROP TABLE IF EXISTS `erectrainings`;
CREATE TABLE `erectrainings` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Venue` varchar(500) DEFAULT NULL,
  `TrainingDate` datetime DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erectrainings`
--

/*!40000 ALTER TABLE `erectrainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `erectrainings` ENABLE KEYS */;


--
-- Definition of table `erecwokexperience`
--

DROP TABLE IF EXISTS `erecwokexperience`;
CREATE TABLE `erecwokexperience` (
  `ApplicantNo` varchar(12) NOT NULL,
  `Company_Address` varchar(500) NOT NULL,
  `ImmediateHead` varchar(180) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Position` varchar(25) NOT NULL,
  `Datefrom` datetime NOT NULL,
  `DateTo` datetime NOT NULL,
  `Salary` float DEFAULT NULL,
  `ReasonForLeaving` varchar(150) DEFAULT NULL,
  `SysCreated` datetime NOT NULL,
  `SysModified` datetime NOT NULL,
  `SysCreator` int(11) NOT NULL,
  `SysModifier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erecwokexperience`
--

/*!40000 ALTER TABLE `erecwokexperience` DISABLE KEYS */;
/*!40000 ALTER TABLE `erecwokexperience` ENABLE KEYS */;


--
-- Definition of table `hrisformpermission`
--

DROP TABLE IF EXISTS `hrisformpermission`;
CREATE TABLE `hrisformpermission` (
  `JobCode` varchar(10) NOT NULL,
  `FormCode` varchar(10) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`JobCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrisformpermission`
--

/*!40000 ALTER TABLE `hrisformpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `hrisformpermission` ENABLE KEYS */;


--
-- Definition of table `hrismodularform`
--

DROP TABLE IF EXISTS `hrismodularform`;
CREATE TABLE `hrismodularform` (
  `FormCode` varchar(10) NOT NULL,
  `PortalCode` varchar(10) NOT NULL,
  `FormName` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`FormCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrismodularform`
--

/*!40000 ALTER TABLE `hrismodularform` DISABLE KEYS */;
/*!40000 ALTER TABLE `hrismodularform` ENABLE KEYS */;


--
-- Definition of table `hrisportals`
--

DROP TABLE IF EXISTS `hrisportals`;
CREATE TABLE `hrisportals` (
  `PortalCode` varchar(10) NOT NULL,
  `PortalName` varchar(15) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Sycreated` datetime NOT NULL,
  `Sycreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`PortalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrisportals`
--

/*!40000 ALTER TABLE `hrisportals` DISABLE KEYS */;
/*!40000 ALTER TABLE `hrisportals` ENABLE KEYS */;


--
-- Definition of table `hrisuseraccounts`
--

DROP TABLE IF EXISTS `hrisuseraccounts`;
CREATE TABLE `hrisuseraccounts` (
  `EmployeeID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrisuseraccounts`
--

/*!40000 ALTER TABLE `hrisuseraccounts` DISABLE KEYS */;
INSERT INTO `hrisuseraccounts` (`EmployeeID`,`Username`,`Password`,`Sysmodified`,`Sysmodifier`,`Syscreated`,`Syscreator`) VALUES 
 (12345678,'clark.mlhuillier1.com','mlclark','2012-03-14 13:50:12',87654321,'2012-03-14 13:50:12',87654321),
 (12345679,'mark.mlhuillier1.com','mlmarksison','2012-03-14 13:51:09',87654321,'2012-03-14 13:51:09',87654321),
 (12345680,'rj.mlhuillier1.com','mlrjgarcia','2012-03-14 13:52:04',87654321,'2012-03-14 13:52:04',87654321);
/*!40000 ALTER TABLE `hrisuseraccounts` ENABLE KEYS */;


--
-- Definition of table `payrallowance`
--

DROP TABLE IF EXISTS `payrallowance`;
CREATE TABLE `payrallowance` (
  `allowanceCode` varchar(10) NOT NULL,
  `Description` varchar(45) NOT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`allowanceCode`,`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrallowance`
--

/*!40000 ALTER TABLE `payrallowance` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrallowance` ENABLE KEYS */;


--
-- Definition of table `payrbankaccounts`
--

DROP TABLE IF EXISTS `payrbankaccounts`;
CREATE TABLE `payrbankaccounts` (
  `accNo` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(45) DEFAULT NULL,
  `Type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`accNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrbankaccounts`
--

/*!40000 ALTER TABLE `payrbankaccounts` DISABLE KEYS */;
INSERT INTO `payrbankaccounts` (`accNo`,`description`,`Type`) VALUES 
 ('',NULL,NULL),
 ('12345','BPI','SA'),
 ('22222','BPI','SA'),
 ('44444','BPI','SA'),
 ('54545','BPI','SA'),
 ('5599','BPI','SA'),
 ('7777','BPI','SA'),
 ('787878','BPI','SA'),
 ('88888','BPI','CA'),
 ('989899','BPI','CA');
/*!40000 ALTER TABLE `payrbankaccounts` ENABLE KEYS */;


--
-- Definition of table `payrbankremittancedetails`
--

DROP TABLE IF EXISTS `payrbankremittancedetails`;
CREATE TABLE `payrbankremittancedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batchNo` varchar(10) NOT NULL,
  `accNo` varchar(20) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `netPay` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrbankremittancedetails`
--

/*!40000 ALTER TABLE `payrbankremittancedetails` DISABLE KEYS */;
INSERT INTO `payrbankremittancedetails` (`id`,`batchNo`,`accNo`,`EmployeeID`,`netPay`) VALUES 
 (1,'600','500',300,1000);
/*!40000 ALTER TABLE `payrbankremittancedetails` ENABLE KEYS */;


--
-- Definition of table `payrbankremittanceheader`
--

DROP TABLE IF EXISTS `payrbankremittanceheader`;
CREATE TABLE `payrbankremittanceheader` (
  `batchNo` varchar(10) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `periodcode` varchar(5) DEFAULT NULL,
  `file` mediumblob,
  `type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`batchNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrbankremittanceheader`
--

/*!40000 ALTER TABLE `payrbankremittanceheader` DISABLE KEYS */;
INSERT INTO `payrbankremittanceheader` (`batchNo`,`year`,`month`,`periodcode`,`file`,`type`) VALUES 
 ('1000',2012,1,'A',0x72656D697474616E6365,'legal');
/*!40000 ALTER TABLE `payrbankremittanceheader` ENABLE KEYS */;


--
-- Definition of table `payrbenefits`
--

DROP TABLE IF EXISTS `payrbenefits`;
CREATE TABLE `payrbenefits` (
  `benefitCode` varchar(10) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`benefitCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrbenefits`
--

/*!40000 ALTER TABLE `payrbenefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrbenefits` ENABLE KEYS */;


--
-- Definition of table `payrcalendardetails`
--

DROP TABLE IF EXISTS `payrcalendardetails`;
CREATE TABLE `payrcalendardetails` (
  `calendarCode` varchar(10) NOT NULL,
  `areaCode` varchar(10) DEFAULT NULL,
  `attachment` mediumblob,
  `filename` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrcalendardetails`
--

/*!40000 ALTER TABLE `payrcalendardetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrcalendardetails` ENABLE KEYS */;


--
-- Definition of table `payrcalendarheader`
--

DROP TABLE IF EXISTS `payrcalendarheader`;
CREATE TABLE `payrcalendarheader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendarCode` varchar(10) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`calendarCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrcalendarheader`
--

/*!40000 ALTER TABLE `payrcalendarheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrcalendarheader` ENABLE KEYS */;


--
-- Definition of table `payrdivision`
--

DROP TABLE IF EXISTS `payrdivision`;
CREATE TABLE `payrdivision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `divCode` varchar(10) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `acroName` varchar(10) NOT NULL,
  `hoCode` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`divCode`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrdivision`
--

/*!40000 ALTER TABLE `payrdivision` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrdivision` ENABLE KEYS */;


--
-- Definition of table `payrdownloadfiles`
--

DROP TABLE IF EXISTS `payrdownloadfiles`;
CREATE TABLE `payrdownloadfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` mediumblob NOT NULL,
  `filename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrdownloadfiles`
--

/*!40000 ALTER TABLE `payrdownloadfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrdownloadfiles` ENABLE KEYS */;


--
-- Definition of table `payrdtr`
--

DROP TABLE IF EXISTS `payrdtr`;
CREATE TABLE `payrdtr` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL,
  `dateDate` datetime NOT NULL,
  `timeIn` time NOT NULL,
  `timeOut` time NOT NULL,
  `shiftCode` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrdtr`
--

/*!40000 ALTER TABLE `payrdtr` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrdtr` ENABLE KEYS */;


--
-- Definition of table `payrdutyplanner`
--

DROP TABLE IF EXISTS `payrdutyplanner`;
CREATE TABLE `payrdutyplanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `OT` float DEFAULT '0',
  `shiftcode` int(11) NOT NULL,
  `dayofWeek` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrdutyplanner`
--

/*!40000 ALTER TABLE `payrdutyplanner` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrdutyplanner` ENABLE KEYS */;


--
-- Definition of table `payremployeeaccounts`
--

DROP TABLE IF EXISTS `payremployeeaccounts`;
CREATE TABLE `payremployeeaccounts` (
  `EmployeeID` int(11) NOT NULL,
  `accNo` varchar(20) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payremployeeaccounts`
--

/*!40000 ALTER TABLE `payremployeeaccounts` DISABLE KEYS */;
INSERT INTO `payremployeeaccounts` (`EmployeeID`,`accNo`,`status`) VALUES 
 (11060985,'11111',''),
 (123,'222','1');
/*!40000 ALTER TABLE `payremployeeaccounts` ENABLE KEYS */;


--
-- Definition of table `payremployeeallowance`
--

DROP TABLE IF EXISTS `payremployeeallowance`;
CREATE TABLE `payremployeeallowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeID` int(11) NOT NULL,
  `allownaceCode` varchar(10) NOT NULL,
  `dateStart` date DEFAULT NULL,
  `dateEnd` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payremployeeallowance`
--

/*!40000 ALTER TABLE `payremployeeallowance` DISABLE KEYS */;
/*!40000 ALTER TABLE `payremployeeallowance` ENABLE KEYS */;


--
-- Definition of table `payremployeebenefits`
--

DROP TABLE IF EXISTS `payremployeebenefits`;
CREATE TABLE `payremployeebenefits` (
  `EmployeeId` int(11) NOT NULL,
  `benefitCode` varchar(10) NOT NULL,
  `amount` float DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payremployeebenefits`
--

/*!40000 ALTER TABLE `payremployeebenefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `payremployeebenefits` ENABLE KEYS */;


--
-- Definition of table `payremployeeleave`
--

DROP TABLE IF EXISTS `payremployeeleave`;
CREATE TABLE `payremployeeleave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL,
  `deduction` float DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `leaveCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payremployeeleave`
--

/*!40000 ALTER TABLE `payremployeeleave` DISABLE KEYS */;
/*!40000 ALTER TABLE `payremployeeleave` ENABLE KEYS */;


--
-- Definition of table `payremployeeleavesummary`
--

DROP TABLE IF EXISTS `payremployeeleavesummary`;
CREATE TABLE `payremployeeleavesummary` (
  `id` int(11) NOT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `LeaveCount` float DEFAULT NULL,
  `LeaveCode` float DEFAULT NULL,
  `PeriodCode` varchar(5) DEFAULT NULL,
  `Month` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payremployeeleavesummary`
--

/*!40000 ALTER TABLE `payremployeeleavesummary` DISABLE KEYS */;
INSERT INTO `payremployeeleavesummary` (`id`,`EmployeeID`,`LeaveCount`,`LeaveCode`,`PeriodCode`,`Month`,`Year`) VALUES 
 (1,1234,3,4,'a',2222012,2012);
/*!40000 ALTER TABLE `payremployeeleavesummary` ENABLE KEYS */;


--
-- Definition of table `payremployeeloans`
--

DROP TABLE IF EXISTS `payremployeeloans`;
CREATE TABLE `payremployeeloans` (
  `EmployeeID` int(11) NOT NULL,
  `loanCode` varchar(10) NOT NULL,
  `loanAmount` float DEFAULT NULL,
  `dateIssued` date DEFAULT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date DEFAULT NULL,
  `deduction` float DEFAULT NULL,
  `accountNo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payremployeeloans`
--

/*!40000 ALTER TABLE `payremployeeloans` DISABLE KEYS */;
/*!40000 ALTER TABLE `payremployeeloans` ENABLE KEYS */;


--
-- Definition of table `payrjobtitle`
--

DROP TABLE IF EXISTS `payrjobtitle`;
CREATE TABLE `payrjobtitle` (
  `jobCode` varchar(10) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Basis` varchar(1) DEFAULT NULL,
  `basicSalary` float NOT NULL,
  `noOfDays` float NOT NULL,
  PRIMARY KEY (`jobCode`,`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrjobtitle`
--

/*!40000 ALTER TABLE `payrjobtitle` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrjobtitle` ENABLE KEYS */;


--
-- Definition of table `payrjobtitleallowance`
--

DROP TABLE IF EXISTS `payrjobtitleallowance`;
CREATE TABLE `payrjobtitleallowance` (
  `jobCode` varchar(10) NOT NULL,
  `allowanceCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrjobtitleallowance`
--

/*!40000 ALTER TABLE `payrjobtitleallowance` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrjobtitleallowance` ENABLE KEYS */;


--
-- Definition of table `payrleave`
--

DROP TABLE IF EXISTS `payrleave`;
CREATE TABLE `payrleave` (
  `leaveCode` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) NOT NULL,
  `type` varchar(10) NOT NULL,
  `hoCode` varchar(10) NOT NULL COMMENT 'applies to to Luzon or Vismin',
  `limit` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaveCode`,`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrleave`
--

/*!40000 ALTER TABLE `payrleave` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrleave` ENABLE KEYS */;


--
-- Definition of table `payrloans`
--

DROP TABLE IF EXISTS `payrloans`;
CREATE TABLE `payrloans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loanCode` varchar(10) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`loanCode`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrloans`
--

/*!40000 ALTER TABLE `payrloans` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrloans` ENABLE KEYS */;


--
-- Definition of table `payrotsummary`
--

DROP TABLE IF EXISTS `payrotsummary`;
CREATE TABLE `payrotsummary` (
  `id` int(11) NOT NULL,
  `EmployeeId` int(11) DEFAULT NULL,
  `OtCount` float DEFAULT NULL,
  `OtCode` float DEFAULT NULL,
  `PeriodCode` varchar(5) DEFAULT NULL,
  `Month` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrotsummary`
--

/*!40000 ALTER TABLE `payrotsummary` DISABLE KEYS */;
INSERT INTO `payrotsummary` (`id`,`EmployeeId`,`OtCount`,`OtCode`,`PeriodCode`,`Month`,`Year`) VALUES 
 (1,123456,5,4,'b',2212012,NULL);
/*!40000 ALTER TABLE `payrotsummary` ENABLE KEYS */;


--
-- Definition of table `payrovertime`
--

DROP TABLE IF EXISTS `payrovertime`;
CREATE TABLE `payrovertime` (
  `OTCode` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) NOT NULL,
  `rate` float NOT NULL,
  PRIMARY KEY (`OTCode`,`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrovertime`
--

/*!40000 ALTER TABLE `payrovertime` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrovertime` ENABLE KEYS */;


--
-- Definition of table `payrperiod`
--

DROP TABLE IF EXISTS `payrperiod`;
CREATE TABLE `payrperiod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodCode` varchar(5) NOT NULL,
  `dayStart` int(11) NOT NULL,
  `dayEnd` int(11) NOT NULL,
  PRIMARY KEY (`id`,`periodCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrperiod`
--

/*!40000 ALTER TABLE `payrperiod` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrperiod` ENABLE KEYS */;


--
-- Definition of table `payrtransactiondetails`
--

DROP TABLE IF EXISTS `payrtransactiondetails`;
CREATE TABLE `payrtransactiondetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transacrtionCode` varchar(10) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `specific` varchar(10) DEFAULT NULL COMMENT 'divsionCode or region Code\n',
  PRIMARY KEY (`id`,`transacrtionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrtransactiondetails`
--

/*!40000 ALTER TABLE `payrtransactiondetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrtransactiondetails` ENABLE KEYS */;


--
-- Definition of table `payrtransactionheader`
--

DROP TABLE IF EXISTS `payrtransactionheader`;
CREATE TABLE `payrtransactionheader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactionCode` varchar(10) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `periodcode` varchar(5) NOT NULL,
  `Specific` varchar(10) DEFAULT NULL COMMENT 'Division Code or Region Code\n',
  `accessCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`transactionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrtransactionheader`
--

/*!40000 ALTER TABLE `payrtransactionheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrtransactionheader` ENABLE KEYS */;


--
-- Definition of table `payrworkinformation`
--

DROP TABLE IF EXISTS `payrworkinformation`;
CREATE TABLE `payrworkinformation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeID` int(11) NOT NULL,
  `divCode` varchar(10) NOT NULL,
  `depCode` varchar(10) NOT NULL,
  `jobCode` varchar(10) NOT NULL,
  `headID` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `accLevel` varchar(1) DEFAULT NULL,
  `dateEmployed` date DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `increase` float DEFAULT NULL,
  `resign` date DEFAULT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrworkinformation`
--

/*!40000 ALTER TABLE `payrworkinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrworkinformation` ENABLE KEYS */;


--
-- Definition of table `recattachments`
--

DROP TABLE IF EXISTS `recattachments`;
CREATE TABLE `recattachments` (
  `EmployeeID` int(11) NOT NULL,
  `AttachmentType` varchar(150) NOT NULL,
  `Filename` varchar(150) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recattachments`
--

/*!40000 ALTER TABLE `recattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `recattachments` ENABLE KEYS */;


--
-- Definition of table `recattachmenttype`
--

DROP TABLE IF EXISTS `recattachmenttype`;
CREATE TABLE `recattachmenttype` (
  `AttachmentType` int(11) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`AttachmentType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recattachmenttype`
--

/*!40000 ALTER TABLE `recattachmenttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `recattachmenttype` ENABLE KEYS */;


--
-- Definition of table `recbranchoffices`
--

DROP TABLE IF EXISTS `recbranchoffices`;
CREATE TABLE `recbranchoffices` (
  `SubCode` varchar(10) NOT NULL,
  `CostCenter` varchar(10) NOT NULL,
  `BranchName` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CostCenter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recbranchoffices`
--

/*!40000 ALTER TABLE `recbranchoffices` DISABLE KEYS */;
INSERT INTO `recbranchoffices` (`SubCode`,`CostCenter`,`BranchName`,`Description`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 ('001','001','MIS','Management Information System','2012-06-26 11:49:20',710113,'2012-06-26 11:49:20',710113),
 ('002','102','FSD','Finance','2012-06-26 11:49:47',710113,'2012-06-26 11:49:47',710113);
/*!40000 ALTER TABLE `recbranchoffices` ENABLE KEYS */;


--
-- Definition of table `recchildren`
--

DROP TABLE IF EXISTS `recchildren`;
CREATE TABLE `recchildren` (
  `EmployeeID` int(11) NOT NULL,
  `ChildName` varchar(50) NOT NULL,
  `ChildAge` int(11) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recchildren`
--

/*!40000 ALTER TABLE `recchildren` DISABLE KEYS */;
INSERT INTO `recchildren` (`EmployeeID`,`ChildName`,`ChildAge`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Vaughn Loui Compasion',4,'2012-06-26 13:15:53',710113,'2012-06-26 13:15:53',710113),
 (12064267,'Xander Kodi Compasion',1,'2012-06-26 13:16:08',710113,'2012-06-26 13:16:08',710113),
 (12064268,'Xander Kodi Compasion2',1,'2012-06-26 13:33:13',710113,'2012-06-26 13:33:13',710113);
/*!40000 ALTER TABLE `recchildren` ENABLE KEYS */;


--
-- Definition of table `recclearanceapprovers`
--

DROP TABLE IF EXISTS `recclearanceapprovers`;
CREATE TABLE `recclearanceapprovers` (
  `ApprovedID` int(11) NOT NULL,
  `AlternaterApproverID` int(11) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ApprovedID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recclearanceapprovers`
--

/*!40000 ALTER TABLE `recclearanceapprovers` DISABLE KEYS */;
/*!40000 ALTER TABLE `recclearanceapprovers` ENABLE KEYS */;


--
-- Definition of table `reccompanyjobroles`
--

DROP TABLE IF EXISTS `reccompanyjobroles`;
CREATE TABLE `reccompanyjobroles` (
  `JobRoleCode` varchar(10) NOT NULL,
  `JobTitleCode` varchar(10) NOT NULL,
  `JobRoleName` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`JobRoleCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reccompanyjobroles`
--

/*!40000 ALTER TABLE `reccompanyjobroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `reccompanyjobroles` ENABLE KEYS */;


--
-- Definition of table `reccompanyjobtitlecategory`
--

DROP TABLE IF EXISTS `reccompanyjobtitlecategory`;
CREATE TABLE `reccompanyjobtitlecategory` (
  `CategoryCode` varchar(10) NOT NULL,
  `LevelNo` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reccompanyjobtitlecategory`
--

/*!40000 ALTER TABLE `reccompanyjobtitlecategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `reccompanyjobtitlecategory` ENABLE KEYS */;


--
-- Definition of table `reccompanylevel`
--

DROP TABLE IF EXISTS `reccompanylevel`;
CREATE TABLE `reccompanylevel` (
  `LevelNo` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`LevelNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reccompanylevel`
--

/*!40000 ALTER TABLE `reccompanylevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `reccompanylevel` ENABLE KEYS */;


--
-- Definition of table `reccompanyoffices`
--

DROP TABLE IF EXISTS `reccompanyoffices`;
CREATE TABLE `reccompanyoffices` (
  `Codes` varchar(10) NOT NULL,
  `CostCenter` varchar(10) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `CodeName` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Codes`,`CostCenter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reccompanyoffices`
--

/*!40000 ALTER TABLE `reccompanyoffices` DISABLE KEYS */;
INSERT INTO `reccompanyoffices` (`Codes`,`CostCenter`,`Type`,`CodeName`,`Description`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 ('001','001','Division','Division','Division','2012-06-26 11:42:46',710113,'2012-06-26 11:42:46',710113);
/*!40000 ALTER TABLE `reccompanyoffices` ENABLE KEYS */;


--
-- Definition of table `reccompanysuboffices`
--

DROP TABLE IF EXISTS `reccompanysuboffices`;
CREATE TABLE `reccompanysuboffices` (
  `SubCode` varchar(10) NOT NULL,
  `Codes` varchar(10) NOT NULL,
  `SubCodeName` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`SubCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reccompanysuboffices`
--

/*!40000 ALTER TABLE `reccompanysuboffices` DISABLE KEYS */;
INSERT INTO `reccompanysuboffices` (`SubCode`,`Codes`,`SubCodeName`,`Description`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 ('101','001','MIS','Management Information System','2012-06-26 11:45:56',710113,'2012-06-26 11:45:56',710113);
/*!40000 ALTER TABLE `reccompanysuboffices` ENABLE KEYS */;


--
-- Definition of table `receducationbackground`
--

DROP TABLE IF EXISTS `receducationbackground`;
CREATE TABLE `receducationbackground` (
  `EmployeeID` int(11) NOT NULL DEFAULT '0',
  `SchoolElem` varchar(300) NOT NULL,
  `AddressElem` varchar(300) NOT NULL,
  `AwardsElem` varchar(100) DEFAULT NULL,
  `DateFromElem` year(4) NOT NULL,
  `DatetoElem` year(4) NOT NULL,
  `SchoolHS` varchar(300) NOT NULL DEFAULT '',
  `AddressHS` varchar(300) NOT NULL,
  `Awards` varchar(100) DEFAULT NULL,
  `DateFromHS` year(4) NOT NULL,
  `DatetoHS` year(4) NOT NULL,
  `SchoolCollege` varchar(300) NOT NULL,
  `AddressCollege` varchar(300) NOT NULL,
  `AwardsCollege` varchar(100) DEFAULT NULL,
  `Course` varchar(150) NOT NULL,
  `DateFromCollege` year(4) NOT NULL,
  `DatetoCollege` year(4) NOT NULL,
  `PostGraduate` varchar(300) DEFAULT NULL,
  `PostAddress` varchar(300) DEFAULT NULL,
  `PostAwards` varchar(100) DEFAULT NULL,
  `Syscreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Syscreator` int(10) unsigned NOT NULL DEFAULT '0',
  `Sysmodified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Sysmodifier` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receducationbackground`
--

/*!40000 ALTER TABLE `receducationbackground` DISABLE KEYS */;
INSERT INTO `receducationbackground` (`EmployeeID`,`SchoolElem`,`AddressElem`,`AwardsElem`,`DateFromElem`,`DatetoElem`,`SchoolHS`,`AddressHS`,`Awards`,`DateFromHS`,`DatetoHS`,`SchoolCollege`,`AddressCollege`,`AwardsCollege`,`Course`,`DateFromCollege`,`DatetoCollege`,`PostGraduate`,`PostAddress`,`PostAwards`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'West City Elementary School','Cervantes St., Dumaguete City, Negros Oriental','None',1997,2003,'Negros Oriental High School','Kagawasan Ave., Dumaguete City, Negros Oriental','None',2003,2007,'Asian College of Science and Technology','Dr. V. Locsin St., Dumaguete City, Negros Oriental','TASCAA Awardee','BS Computer Science',2007,2011,NULL,NULL,NULL,'2012-06-26 13:25:57',710113,'2012-06-26 13:25:57',710113);
/*!40000 ALTER TABLE `receducationbackground` ENABLE KEYS */;


--
-- Definition of table `recemergencynotification`
--

DROP TABLE IF EXISTS `recemergencynotification`;
CREATE TABLE `recemergencynotification` (
  `EmployeeID` int(11) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Relationship` varchar(50) NOT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemergencynotification`
--

/*!40000 ALTER TABLE `recemergencynotification` DISABLE KEYS */;
INSERT INTO `recemergencynotification` (`EmployeeID`,`Fullname`,`Address`,`Relationship`,`ContactNo`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Francisco M. Compasion','Batinguel, Dumaguete City, Negros Oriental','Father','09177324825','2012-06-26 13:30:47',710113,'2012-06-26 13:30:47',710113);
/*!40000 ALTER TABLE `recemergencynotification` ENABLE KEYS */;


--
-- Definition of table `recemployeeape`
--

DROP TABLE IF EXISTS `recemployeeape`;
CREATE TABLE `recemployeeape` (
  `EmployeeID` int(11) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Filename` varchar(100) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` varchar(50) NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeeape`
--

/*!40000 ALTER TABLE `recemployeeape` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeeape` ENABLE KEYS */;


--
-- Definition of table `recemployeeclearance`
--

DROP TABLE IF EXISTS `recemployeeclearance`;
CREATE TABLE `recemployeeclearance` (
  `ClearanceNo` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `EffectiveDate` date NOT NULL,
  `ClearanceStatus` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ClearanceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeeclearance`
--

/*!40000 ALTER TABLE `recemployeeclearance` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeeclearance` ENABLE KEYS */;


--
-- Definition of table `recemployeeclearancedetails`
--

DROP TABLE IF EXISTS `recemployeeclearancedetails`;
CREATE TABLE `recemployeeclearancedetails` (
  `ClearanceNo` int(11) NOT NULL,
  `ApproveID` int(11) NOT NULL,
  `DivCode` varchar(10) NOT NULL,
  `ApprovedDate` date NOT NULL,
  `Accountability` mediumint(9) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeeclearancedetails`
--

/*!40000 ALTER TABLE `recemployeeclearancedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeeclearancedetails` ENABLE KEYS */;


--
-- Definition of table `recemployeeemployement`
--

DROP TABLE IF EXISTS `recemployeeemployement`;
CREATE TABLE `recemployeeemployement` (
  `EmployeeID` int(11) NOT NULL,
  `JobCode` varchar(10) NOT NULL,
  `CostCenter` varchar(10) NOT NULL,
  `ImmediateHead` varchar(100) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeeemployement`
--

/*!40000 ALTER TABLE `recemployeeemployement` DISABLE KEYS */;
INSERT INTO `recemployeeemployement` (`EmployeeID`,`JobCode`,`CostCenter`,`ImmediateHead`,`Department`,`Status`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'001','001','Juan dela Cruz','MIS-BOS','Trainee','2012-06-26 12:14:17',710113,'2012-06-26 12:14:17',710113);
/*!40000 ALTER TABLE `recemployeeemployement` ENABLE KEYS */;


--
-- Definition of table `recemployeeevaluation`
--

DROP TABLE IF EXISTS `recemployeeevaluation`;
CREATE TABLE `recemployeeevaluation` (
  `EvaluationCode` varchar(10) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `Specific` varchar(100) NOT NULL,
  `DateFrom` date NOT NULL,
  `DateTo` date NOT NULL,
  `EmployeeStatus` varchar(50) NOT NULL,
  `DepID` varchar(10) NOT NULL,
  `EvaluationDate` date NOT NULL,
  `TotalGrades` mediumint(9) NOT NULL,
  `SelfAssessment` varchar(300) DEFAULT NULL,
  `MajorAccomplishment` varchar(150) DEFAULT NULL,
  `Recommendations` varchar(300) DEFAULT NULL,
  `EvaluationStatus` varchar(50) DEFAULT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`EvaluationCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeeevaluation`
--

/*!40000 ALTER TABLE `recemployeeevaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeeevaluation` ENABLE KEYS */;


--
-- Definition of table `recemployeehistory`
--

DROP TABLE IF EXISTS `recemployeehistory`;
CREATE TABLE `recemployeehistory` (
  `EmployeeID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Filename` varchar(100) NOT NULL,
  `Company` varchar(200) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeehistory`
--

/*!40000 ALTER TABLE `recemployeehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeehistory` ENABLE KEYS */;


--
-- Definition of table `recemployeemovement`
--

DROP TABLE IF EXISTS `recemployeemovement`;
CREATE TABLE `recemployeemovement` (
  `MovementNo` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Reason` varchar(150) NOT NULL,
  `DateRequested` date NOT NULL,
  `EffectiveDate` date NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`MovementNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeemovement`
--

/*!40000 ALTER TABLE `recemployeemovement` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeemovement` ENABLE KEYS */;


--
-- Definition of table `recemployeemovementdetails`
--

DROP TABLE IF EXISTS `recemployeemovementdetails`;
CREATE TABLE `recemployeemovementdetails` (
  `MovementNo` int(11) NOT NULL,
  `JobCode` varchar(10) NOT NULL,
  `CostCenter` varchar(10) NOT NULL,
  `DivFrom` varchar(100) NOT NULL,
  `DivTo` varchar(100) NOT NULL,
  `DepFrom` varchar(100) NOT NULL,
  `DepTo` varchar(100) NOT NULL,
  `DesignationFrom` varchar(50) NOT NULL,
  `DesignationTo` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeemovementdetails`
--

/*!40000 ALTER TABLE `recemployeemovementdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeemovementdetails` ENABLE KEYS */;


--
-- Definition of table `recemployeetrainings`
--

DROP TABLE IF EXISTS `recemployeetrainings`;
CREATE TABLE `recemployeetrainings` (
  `EmployeeID` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Venue` varchar(300) NOT NULL,
  `Date` datetime NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeetrainings`
--

/*!40000 ALTER TABLE `recemployeetrainings` DISABLE KEYS */;
INSERT INTO `recemployeetrainings` (`EmployeeID`,`Title`,`Venue`,`Date`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Earning Dollars Online','Bethel Guest House Dumaguete','2010-06-25 01:00:00','2012-06-26 13:36:18',710113,'2012-06-26 13:36:18',710113),
 (12064267,'Leadership Training','Neg. Or. Convention Center','2010-07-25 01:00:00','2012-06-26 13:36:53',710113,'2012-06-26 13:36:53',710113),
 (12064267,'Adobe Photoshop Seminar','ACSAT - AVR','2010-03-25 01:00:00','2012-06-26 13:37:17',710113,'2012-06-26 13:37:17',710113),
 (12064268,'Adobe Photoshop Seminar','ACSAT - AVR','2010-03-25 01:00:00','2012-06-26 13:37:45',710113,'2012-06-26 13:37:45',710113);
/*!40000 ALTER TABLE `recemployeetrainings` ENABLE KEYS */;


--
-- Definition of table `recemployeeundertaking`
--

DROP TABLE IF EXISTS `recemployeeundertaking`;
CREATE TABLE `recemployeeundertaking` (
  `EmployeeID` int(11) NOT NULL,
  `UtCode` varchar(10) NOT NULL,
  `Filename` varchar(100) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recemployeeundertaking`
--

/*!40000 ALTER TABLE `recemployeeundertaking` DISABLE KEYS */;
/*!40000 ALTER TABLE `recemployeeundertaking` ENABLE KEYS */;


--
-- Definition of table `recevaluationdetails`
--

DROP TABLE IF EXISTS `recevaluationdetails`;
CREATE TABLE `recevaluationdetails` (
  `FactorCode` varchar(10) NOT NULL,
  `Rater` int(11) NOT NULL,
  `EvaluationCode` varchar(10) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `RatingCode` varchar(10) NOT NULL,
  `Points` mediumint(9) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recevaluationdetails`
--

/*!40000 ALTER TABLE `recevaluationdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `recevaluationdetails` ENABLE KEYS */;


--
-- Definition of table `recevaluationescalation`
--

DROP TABLE IF EXISTS `recevaluationescalation`;
CREATE TABLE `recevaluationescalation` (
  `EvaluationCode` varchar(10) NOT NULL,
  `EscalatedBy` int(11) NOT NULL,
  `EscalatedTo` varchar(10) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recevaluationescalation`
--

/*!40000 ALTER TABLE `recevaluationescalation` DISABLE KEYS */;
/*!40000 ALTER TABLE `recevaluationescalation` ENABLE KEYS */;


--
-- Definition of table `recevaluationfactor`
--

DROP TABLE IF EXISTS `recevaluationfactor`;
CREATE TABLE `recevaluationfactor` (
  `FactorCode` varchar(10) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Details` varchar(150) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Percentage` mediumint(9) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`FactorCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recevaluationfactor`
--

/*!40000 ALTER TABLE `recevaluationfactor` DISABLE KEYS */;
/*!40000 ALTER TABLE `recevaluationfactor` ENABLE KEYS */;


--
-- Definition of table `recevaluationrating`
--

DROP TABLE IF EXISTS `recevaluationrating`;
CREATE TABLE `recevaluationrating` (
  `RatingCode` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `RatingFrom` varchar(10) NOT NULL,
  `RatingTo` varchar(10) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  PRIMARY KEY (`RatingCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recevaluationrating`
--

/*!40000 ALTER TABLE `recevaluationrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `recevaluationrating` ENABLE KEYS */;


--
-- Definition of table `recfamilybackground`
--

DROP TABLE IF EXISTS `recfamilybackground`;
CREATE TABLE `recfamilybackground` (
  `EmployeeID` int(11) NOT NULL DEFAULT '0',
  `LastnameMother` varchar(50) NOT NULL DEFAULT '',
  `FirstnameMother` varchar(50) NOT NULL DEFAULT '',
  `MiddlenameMother` varchar(50) NOT NULL DEFAULT '',
  `ContactNoMother` varchar(20) DEFAULT NULL,
  `LastnameFather` varchar(50) NOT NULL DEFAULT '',
  `FirstnameFather` varchar(50) NOT NULL DEFAULT '',
  `MiddlenameFather` varchar(50) NOT NULL DEFAULT '',
  `ContactNoFather` varchar(20) DEFAULT NULL,
  `LastnameSpouse` varchar(50) DEFAULT NULL,
  `FirstnameSpouse` varchar(50) DEFAULT NULL,
  `MiddlenameSpouse` varchar(50) DEFAULT NULL,
  `ContactNoSpouse` varchar(20) DEFAULT NULL,
  `SpouseEmployedBy` varchar(200) DEFAULT NULL,
  `MotherEmployedBy` varchar(200) DEFAULT NULL,
  `FatherEmployedBy` varchar(200) DEFAULT NULL,
  `SpouseOccupation` varchar(100) DEFAULT NULL,
  `MotherOccupation` varchar(100) NOT NULL DEFAULT '0',
  `FatherOccupation` varchar(100) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Syscreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Syscreator` int(10) unsigned NOT NULL DEFAULT '0',
  `Sysmodified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Sysmodifier` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recfamilybackground`
--

/*!40000 ALTER TABLE `recfamilybackground` DISABLE KEYS */;
INSERT INTO `recfamilybackground` (`EmployeeID`,`LastnameMother`,`FirstnameMother`,`MiddlenameMother`,`ContactNoMother`,`LastnameFather`,`FirstnameFather`,`MiddlenameFather`,`ContactNoFather`,`LastnameSpouse`,`FirstnameSpouse`,`MiddlenameSpouse`,`ContactNoSpouse`,`SpouseEmployedBy`,`MotherEmployedBy`,`FatherEmployedBy`,`SpouseOccupation`,`MotherOccupation`,`FatherOccupation`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Navarro','Emegdia','Pedros','09177874521','Compasion','Francisco','Man-on','09177324825',NULL,NULL,NULL,NULL,NULL,'None','DENR',NULL,'Housewife','Government Employee','2012-06-26 11:59:57',710113,'2012-06-26 11:59:57',710113);
/*!40000 ALTER TABLE `recfamilybackground` ENABLE KEYS */;


--
-- Definition of table `recgovrelative`
--

DROP TABLE IF EXISTS `recgovrelative`;
CREATE TABLE `recgovrelative` (
  `EmployeeID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(200) NOT NULL DEFAULT '',
  `Position` varchar(100) NOT NULL DEFAULT '',
  `Relation` varchar(100) NOT NULL DEFAULT '',
  `Company` varchar(300) NOT NULL DEFAULT '',
  `Syscreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Syscreator` int(10) unsigned NOT NULL DEFAULT '0',
  `Sysmodified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Sysmodifier` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recgovrelative`
--

/*!40000 ALTER TABLE `recgovrelative` DISABLE KEYS */;
INSERT INTO `recgovrelative` (`EmployeeID`,`Name`,`Position`,`Relation`,`Company`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Franicsco M. Compasion','Forester II','Father','DENR','2012-06-26 14:03:24',710113,'2012-06-26 14:03:24',710113),
 (12064267,'Jesila A. Ocariza','TESDA Specialist I','Friend','TESDA','2012-06-26 14:03:58',710113,'2012-06-26 14:03:58',710113);
/*!40000 ALTER TABLE `recgovrelative` ENABLE KEYS */;


--
-- Definition of table `recjobtitles`
--

DROP TABLE IF EXISTS `recjobtitles`;
CREATE TABLE `recjobtitles` (
  `JobTitleCode` varchar(10) NOT NULL,
  `JobCategoryCode` varchar(10) NOT NULL,
  `JobTitleName` varchar(50) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`JobTitleCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recjobtitles`
--

/*!40000 ALTER TABLE `recjobtitles` DISABLE KEYS */;
INSERT INTO `recjobtitles` (`JobTitleCode`,`JobCategoryCode`,`JobTitleName`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 ('001','Category 1','President','2012-03-13 17:56:54',12045213,'2012-03-13 17:56:54',12045213),
 ('002','Category 2','Vice-President','2012-03-13 17:58:08',12354825,'2012-03-13 17:58:08',12354825),
 ('003','Category 3','Manager','2012-03-14 08:34:09',12458789,'2012-03-14 08:34:09',12458789);
/*!40000 ALTER TABLE `recjobtitles` ENABLE KEYS */;


--
-- Definition of table `recmlrelatives`
--

DROP TABLE IF EXISTS `recmlrelatives`;
CREATE TABLE `recmlrelatives` (
  `EmployeeID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(200) NOT NULL DEFAULT '',
  `Position` varchar(100) NOT NULL DEFAULT '',
  `BranchOffice` varchar(200) NOT NULL DEFAULT '',
  `Relationship` varchar(100) NOT NULL DEFAULT '',
  `Syscreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Syscreator` int(10) unsigned NOT NULL DEFAULT '0',
  `Sysmodified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Sysmodifier` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recmlrelatives`
--

/*!40000 ALTER TABLE `recmlrelatives` DISABLE KEYS */;
INSERT INTO `recmlrelatives` (`EmployeeID`,`Name`,`Position`,`BranchOffice`,`Relationship`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Juvy Ann J. Paira','Programmer','MIS-BOS','Friend','2012-06-26 14:17:25',710113,'2012-06-26 14:17:25','710113'),
 (12064267,'Adrian James Barillo','Programmer','MIS-BOS','Friend','2012-06-26 14:17:36',710113,'2012-06-26 14:17:36','710113');
/*!40000 ALTER TABLE `recmlrelatives` ENABLE KEYS */;


--
-- Definition of table `recpersonalinformation`
--

DROP TABLE IF EXISTS `recpersonalinformation`;
CREATE TABLE `recpersonalinformation` (
  `EmployeeID` int(11) NOT NULL DEFAULT '0',
  `ImmediateHead` varchar(100) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) NOT NULL,
  `NickName` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Age` int(11) NOT NULL,
  `Height` decimal(20,2) NOT NULL,
  `CityAdd` varchar(200) NOT NULL,
  `CityContact` varchar(20) DEFAULT NULL,
  `ProvinceAdd` varchar(300) DEFAULT NULL,
  `ProvinceContact` varchar(20) DEFAULT NULL,
  `Citizenship` varchar(20) NOT NULL DEFAULT '',
  `BirthPlace` varchar(300) NOT NULL,
  `BirthDate` date NOT NULL,
  `CivilStatus` varchar(50) NOT NULL,
  `Hobbies_interest` varchar(200) NOT NULL,
  `Language` varchar(100) NOT NULL,
  `DateHired` date NOT NULL,
  `DateResigned` date DEFAULT NULL,
  `ProfLicense` varchar(100) NOT NULL,
  `Weight` decimal(20,2) NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  `Syscreated` datetime NOT NULL,
  `RecSetIDNo_EmployeeID` int(11) NOT NULL,
  `hrisuseraccounts_EmployeeID` int(11) NOT NULL,
  `Religion` varchar(50) NOT NULL DEFAULT '',
  `ResidenceCert` varchar(50) NOT NULL DEFAULT '',
  `SSSID` varchar(45) NOT NULL DEFAULT '',
  `TaxID` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`EmployeeID`,`RecSetIDNo_EmployeeID`,`hrisuseraccounts_EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recpersonalinformation`
--

/*!40000 ALTER TABLE `recpersonalinformation` DISABLE KEYS */;
INSERT INTO `recpersonalinformation` (`EmployeeID`,`ImmediateHead`,`LastName`,`FirstName`,`MiddleName`,`NickName`,`Gender`,`Age`,`Height`,`CityAdd`,`CityContact`,`ProvinceAdd`,`ProvinceContact`,`Citizenship`,`BirthPlace`,`BirthDate`,`CivilStatus`,`Hobbies_interest`,`Language`,`DateHired`,`DateResigned`,`ProfLicense`,`Weight`,`Syscreator`,`Sysmodified`,`Sysmodifier`,`Syscreated`,`RecSetIDNo_EmployeeID`,`hrisuseraccounts_EmployeeID`,`Religion`,`ResidenceCert`,`SSSID`,`TaxID`) VALUES 
 (12064267,'Juan dela Cruz','Compasion','Clark Francis','Navarro','Clarky','Male',21,'5.11','Lahug, Cebu City','09067139696','Dumaguete City, Negros Oriental','(035) 422 - 6321','Filipino','Sta. Cruz, Sagbayan, Bohol','1990-11-27','Single','abcdefghijklmnopqrstuvwxyz 1234567890','English, Tagalog, Cebuano','2012-02-17',NULL,'Civil Service No: 123456','60.00',710113,'2012-06-26 10:45:31',710113,'2012-06-26 10:45:31',12064267,12064267,'Roman Catholic','07-635-8745-54','07-2643224-0','309-618-456');
/*!40000 ALTER TABLE `recpersonalinformation` ENABLE KEYS */;


--
-- Definition of table `recreferences`
--

DROP TABLE IF EXISTS `recreferences`;
CREATE TABLE `recreferences` (
  `EmployeeID` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recreferences`
--

/*!40000 ALTER TABLE `recreferences` DISABLE KEYS */;
INSERT INTO `recreferences` (`EmployeeID`,`FullName`,`Address`,`Contact`,`Occupation`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Jerome A. Pueblos','Amlan, Negros Oriental','09287481212','IT Instructor','2012-06-26 14:21:08',710113,'2012-06-26 14:21:08',710113),
 (12064267,'Gelyn G. Tulabing','Tanjay, Negros Oriental','09155248963','IT Instructor','2012-06-26 14:21:36',710113,'2012-06-26 14:21:36',710113),
 (12064267,'Marte M. Dagpin','Valencia, Negros Oriental','09177854444','IT Instructor','2012-06-26 14:21:56',710113,'2012-06-26 14:21:56',710113);
/*!40000 ALTER TABLE `recreferences` ENABLE KEYS */;


--
-- Definition of table `recsetidno`
--

DROP TABLE IF EXISTS `recsetidno`;
CREATE TABLE `recsetidno` (
  `EmployeeID` int(11) NOT NULL,
  `YearHired` year(4) NOT NULL,
  `SeriesNo` int(11) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recsetidno`
--

/*!40000 ALTER TABLE `recsetidno` DISABLE KEYS */;
/*!40000 ALTER TABLE `recsetidno` ENABLE KEYS */;


--
-- Definition of table `recsiblings`
--

DROP TABLE IF EXISTS `recsiblings`;
CREATE TABLE `recsiblings` (
  `EmployeeID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(200) NOT NULL DEFAULT '',
  `Age` int(10) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) NOT NULL DEFAULT '',
  `Occupation` varchar(200) NOT NULL DEFAULT '',
  `Company` varchar(300) NOT NULL DEFAULT '',
  `SpouseName` varchar(200) DEFAULT NULL,
  `SpouseOccupation` varchar(200) DEFAULT NULL,
  `SpouseCompany` varchar(300) DEFAULT NULL,
  `Syscreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Syscreator` int(10) unsigned NOT NULL DEFAULT '0',
  `Sysmodified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Sysmodifier` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recsiblings`
--

/*!40000 ALTER TABLE `recsiblings` DISABLE KEYS */;
INSERT INTO `recsiblings` (`EmployeeID`,`Name`,`Age`,`Status`,`Occupation`,`Company`,`SpouseName`,`SpouseOccupation`,`SpouseCompany`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Francis Wella N. Compasion',28,'Single','Bank Teller','Metrobank Group of Company',NULL,NULL,NULL,'2012-06-26 13:56:52',710113,'2012-06-26 13:56:52',710113),
 (12064267,'Shandi N. Compasion',26,'Married','Housewife','None','Orlando Angot Jr.','Bank Teller','Metrobank Group of Company','2012-06-26 13:58:02',710113,'2012-06-26 13:58:02',710113),
 (12064267,'Alvedon N. Compasion',24,'Single','Freelance Article Writer','Unknown',NULL,NULL,NULL,'2012-06-26 13:59:19',710113,'2012-06-26 13:59:19',710113);
/*!40000 ALTER TABLE `recsiblings` ENABLE KEYS */;


--
-- Definition of table `recskills`
--

DROP TABLE IF EXISTS `recskills`;
CREATE TABLE `recskills` (
  `EmployeeID` int(11) NOT NULL,
  `Skill` varchar(150) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recskills`
--

/*!40000 ALTER TABLE `recskills` DISABLE KEYS */;
INSERT INTO `recskills` (`EmployeeID`,`Skill`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Typing','2012-06-26 14:15:12',710113,'2012-06-26 14:15:12',710113);
/*!40000 ALTER TABLE `recskills` ENABLE KEYS */;


--
-- Definition of table `rectrainingrequestdetails`
--

DROP TABLE IF EXISTS `rectrainingrequestdetails`;
CREATE TABLE `rectrainingrequestdetails` (
  `RequestNo` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `AreaCode` varchar(10) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rectrainingrequestdetails`
--

/*!40000 ALTER TABLE `rectrainingrequestdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `rectrainingrequestdetails` ENABLE KEYS */;


--
-- Definition of table `recundertakings`
--

DROP TABLE IF EXISTS `recundertakings`;
CREATE TABLE `recundertakings` (
  `UtCode` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`UtCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recundertakings`
--

/*!40000 ALTER TABLE `recundertakings` DISABLE KEYS */;
/*!40000 ALTER TABLE `recundertakings` ENABLE KEYS */;


--
-- Definition of table `recworkexperience`
--

DROP TABLE IF EXISTS `recworkexperience`;
CREATE TABLE `recworkexperience` (
  `EmployeeID` int(11) NOT NULL,
  `CompanyName` varchar(150) NOT NULL,
  `CompanyAdd` varchar(300) NOT NULL,
  `ImmediateHead` varchar(100) NOT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Position` varchar(100) NOT NULL,
  `DateFrom` date NOT NULL,
  `DateTo` date NOT NULL,
  `Salary` mediumint(9) DEFAULT NULL,
  `Reason` varchar(200) DEFAULT NULL,
  `Syscreated` datetime NOT NULL,
  `Syscreator` int(10) unsigned NOT NULL,
  `Sysmodified` datetime NOT NULL,
  `Sysmodifier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recworkexperience`
--

/*!40000 ALTER TABLE `recworkexperience` DISABLE KEYS */;
INSERT INTO `recworkexperience` (`EmployeeID`,`CompanyName`,`CompanyAdd`,`ImmediateHead`,`Contact`,`Position`,`DateFrom`,`DateTo`,`Salary`,`Reason`,`Syscreated`,`Syscreator`,`Sysmodified`,`Sysmodifier`) VALUES 
 (12064267,'Direct Access Corporation','IT Park Lahug, Cebu City','Ms. Anna Guzman','09177896552','Call Center Agent','2011-07-20','2012-02-15',16000,'Dumb','2012-06-26 14:11:16',710113,'2012-06-26 14:11:16',710113);
/*!40000 ALTER TABLE `recworkexperience` ENABLE KEYS */;


--
-- Definition of table `try`
--

DROP TABLE IF EXISTS `try`;
CREATE TABLE `try` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date1` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try`
--

/*!40000 ALTER TABLE `try` DISABLE KEYS */;
INSERT INTO `try` (`id`,`name`,`date1`) VALUES 
 (1,'adz','2012-03-09 00:00:00'),
 (2,'adz','2012-03-09 09:07:15');
/*!40000 ALTER TABLE `try` ENABLE KEYS */;


--
-- Definition of table `trydate`
--

DROP TABLE IF EXISTS `trydate`;
CREATE TABLE `trydate` (
  `id` varchar(12) NOT NULL DEFAULT '',
  `name` varchar(45) DEFAULT NULL,
  `date1` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trydate`
--

/*!40000 ALTER TABLE `trydate` DISABLE KEYS */;
/*!40000 ALTER TABLE `trydate` ENABLE KEYS */;


--
-- Definition of procedure `addTrainingModules`
--

DROP PROCEDURE IF EXISTS `addTrainingModules`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addTrainingModules`(IN cor_type VARCHAR(150), IN cor_desc VARCHAR(200), IN cor_facilitator VARCHAR(300), IN sys_user INT)
BEGIN
    INSERT INTO hris.rectrainingmodules (Type, Description, Facilitator, Syscreated, Syscreator, Sysmodified, Sysmodifier)
    VALUES (cor_type, cor_desc, cor_facilitator, now(), sys_user, now(), sys_user);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `addUndertakings`
--

DROP PROCEDURE IF EXISTS `addUndertakings`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUndertakings`(IN ut_code VARCHAR(10), IN ut_desc VARCHAR(100), IN sys_user INT)
BEGIN
    INSERT INTO hris.recundertakings VALUES (ut_code, ut_desc, now(),sys_user,now(),sys_user);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `appTrainingRequest`
--

DROP PROCEDURE IF EXISTS `appTrainingRequest`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `appTrainingRequest`(IN rec_No INT, IN stat VARCHAR(50), IN sys_user INT)
BEGIN
    UPDATE hris.rectrainingrequest SET ReqStatus = stat, Syscreated = now(), Syscreator = sys_user, Sysmodified = now(), Sysmodifier = sys_user
    WHERE RequestNo = rec_No;

    SELECT * FROM hris.rectrainingrequest;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `createClearance`
--

DROP PROCEDURE IF EXISTS `createClearance`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `createClearance`(IN empID INT, IN clear_num INT, IN clear_date DATE, IN stat VARCHAR(50), IN sys_user INT)
BEGIN
    INSERT INTO hris.recemployeeclearance VALUES (clear_num,empID,clear_date,stat,now(),sys_user,now(),sys_user);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `deleteTrainingModules`
--

DROP PROCEDURE IF EXISTS `deleteTrainingModules`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteTrainingModules`(IN cor_ID INT)
BEGIN
    DELETE FROM hris.rectrainingmodules WHERE CourseID = cor_ID;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `loadUndertakings`
--

DROP PROCEDURE IF EXISTS `loadUndertakings`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `loadUndertakings`()
BEGIN
    SELECT Description FROM hris.recundertakings;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `retrieveAPEResult`
--

DROP PROCEDURE IF EXISTS `retrieveAPEResult`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieveAPEResult`(IN empID INT, IN ape_type VARCHAR(150))
BEGIN
    SELECT a.EmployeeID, CONCAT(a.FirstName," ",LEFT(a.MiddleName,1),". ",LastName), b.Description, b.Date, b.Filename
    FROM hris.recpersonalinformation a INNER JOIN hris.recemployeeape b ON b.EmployeeID = a.EmployeeID
    WHERE a.EmployeeID = empID AND b.Description = ape_type;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `retrieveAttachment`
--

DROP PROCEDURE IF EXISTS `retrieveAttachment`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieveAttachment`(IN emp_id INT, IN attach_type VARCHAR(150))
BEGIN
    SELECT EmployeeID, Filename FROM hris.recattachments WHERE EmployeeID = emp_id AND AttachmentType = attach_type;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `retrieveEmpHistory`
--

DROP PROCEDURE IF EXISTS `retrieveEmpHistory`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieveEmpHistory`(IN emp_ID INT, IN his_type VARCHAR(50))
BEGIN
    SELECT CONCAT(a.LastName,", ",a.FirstName," ",LEFT(a.MiddleName,1),"."), b.Date, b. Description, b.Type, b.Filename, b.Company, b.Designation
    FROM hris.recpersonalinformation a INNER JOIN
    hris.recemployeehistory b ON b.EmployeeID = a.EmployeeID WHERE a.EmployeeID = emp_ID AND b.Type = his_type;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `retrieveEmpName`
--

DROP PROCEDURE IF EXISTS `retrieveEmpName`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieveEmpName`(IN empID INT)
BEGIN
    Select EmployeeID, CONCAT(FirstName," ",LEFT(MiddleName,1),". ",LastName) FROM hris.recpersonalinformation WHERE EmployeeID = empID;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `retrieveEmpRecord`
--

DROP PROCEDURE IF EXISTS `retrieveEmpRecord`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieveEmpRecord`(IN empID INT)
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

    SELECT ChildName, ChildAge FROM hris.recchildren WHERE EmployeeID = empID;
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
    SELECT COUNT(EmployeeID) AS totalReferences FROM hris.recreferences WHERE EmployeeID = empID;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `retrieveReceiveMovement`
--

DROP PROCEDURE IF EXISTS `retrieveReceiveMovement`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieveReceiveMovement`(IN move_num INT, IN empID INT)
BEGIN
    SELECT a.MovementNo, a.EmployeeID, a.Reason, a.DateRequested, a.EffectiveDate,
    CONCAT(b.FirstName," ", LEFT(b.MiddleName,1),". ",b.LastName), b.DateHired, c.JobCode, c.CostCenter,
    c.DivFrom, c.DivTo, c.DepFrom, c.DepTo, c.DesignationFrom, c.DesignationTo FROM
    hris.recemployeemovement a INNER JOIN hris.recpersonalinformation b ON b.EmployeeID = a.EmployeeID
    JOIN hris.recemployeemovementdetails c ON c.MovementNo = a.MovementNo WHERE a.MovementNo = move_num AND a.EmployeeID = empID;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `retrieveTrainingModules`
--

DROP PROCEDURE IF EXISTS `retrieveTrainingModules`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieveTrainingModules`(IN cor_ID INT)
BEGIN
    IF cor_id <=0 then
        SELECT * FROM hris.rectrainingmodules;
    ELSE
        SELECT * FROM hris.rectrainingmodules WHERE CourseID = cor_ID;
    END IF;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `searchUndertakings`
--

DROP PROCEDURE IF EXISTS `searchUndertakings`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchUndertakings`(IN empID INT)
BEGIN
    SELECT a.Date, b.Description, a.UtCode FROM hris.recemployeeundertaking a INNER JOIN hris.recundertakings b
    ON b.UtCode = a.UtCode WHERE a.EmployeeID = empID;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `updateTrainingModules`
--

DROP PROCEDURE IF EXISTS `updateTrainingModules`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTrainingModules`(IN cor_ID INT, IN cor_type VARCHAR(150), IN cor_desc VARCHAR(200), IN cor_facilitator VARCHAR(300), IN sys_user INT)
BEGIN
    UPDATE hris.rectrainingmodules SET Type = cor_type, Description = cor_desc, Facilitator = cor_facilitator,
    Syscreated = now(), Syscreator = sys_user, Sysmodified = now(), Sysmodifier = sys_user WHERE CourseID = cor_ID;

    SELECT * FROM hris.rectrainingmodules;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `uploadAPEResult`
--

DROP PROCEDURE IF EXISTS `uploadAPEResult`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `uploadAPEResult`(IN empID INT, IN ape_desc VARCHAR(150), IN ape_filename VARCHAR(100), IN ape_date DATE, IN sys_user INT)
BEGIN
    INSERT INTO hris.recemployeeape VALUES (empID,ape_desc,ape_filename,ape_date,now(),sys_user,now(),sys_user);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `uploadUndertakings`
--

DROP PROCEDURE IF EXISTS `uploadUndertakings`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `uploadUndertakings`(IN ut_desc VARCHAR(200),IN empID INT, IN file_name VARCHAR(100), IN sys_user INT, IN ut_date DATE)
BEGIN
    declare ut_code Varchar(100);

    SELECT UtCode INTO ut_code FROM hris.recundertakings WHERE Description = ut_desc;
    INSERT INTO hris.recemployeeundertaking VALUES (empID,ut_code,file_name,ut_date,now(),sys_user,now(),sys_user);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
