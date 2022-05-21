												
												/*AUTHOR : POOJA CHANDWADKAR
												FINAL PROJECT 3
												COURSE : DATABASE DESIGN AND WEB DEVELOPEMENT
*/



drop database if exists forestfirefighting;
create database forestfirefighting;
use forestfirefighting;


-- TABLE CREATION 
DROP TABLE IF EXISTS drones;
CREATE TABLE drones(
DroneID VARCHAR(50) PRIMARY KEY,
Model VARCHAR(50) NOT NULL,
UnitAssigned VARCHAR(50) NOT NULL,
DroneStatus enum('Operational','NonOperational'),
DroneCondition enum('Ready','Not Ready'));

DROP TABLE IF EXISTS fireReport ;
CREATE TABLE fireReport (
ReportNumber INT  NOT NULL AUTO_INCREMENT PRIMARY key,
ReportedBy  VARCHAR(50),
ReportDate  VARCHAR(50),
FireDescription VARCHAR(100),
FireSize VARCHAR(50),
LocX Int,
LocY INT,
LocZ INT,
fireStatus VARCHAR(50));

DROP TABLE IF EXISTS droneUnits ;
CREATE TABLE droneUnits(
UnitID   VARCHAR(20) PRIMARY KEY,
DroneType enum('Jaguar','Tiger','Leopard','Lion'),
UnitLocation VARCHAR(20),
DronesAssigned INT,
DronesAvailable INT,
DronesReady INT,
UnitStrength Decimal(10,2) GENERATED ALWAYS AS ( DronesAvailable/DronesAssigned * 100 ),
UnitReadiness Decimal(10,2) GENERATED ALWAYS AS ( DronesAvailable/DronesReady* 100 ));


DROP TABLE IF EXISTS airfields;
CREATE TABLE airfields (
AFID   VARCHAR(50) PRIMARY KEY,
AFNAME  VARCHAR(50),
LocX INT,
LocY INT,
LocZ INT,
ACCapacity INT);


DROP TABLE IF EXISTS droneTypes ;
CREATE TABLE droneTypes(
Designation    VARCHAR(50) PRIMARY KEY,
Model VARCHAR(50),
MissionRadius INT,
FightSpd  INT,
WaterCapacity INT);



DROP TABLE IF EXISTS fireTargets ;
CREATE TABLE fireTargets(
TargetNumber  VARCHAR(50) PRIMARY KEY,
DetectedOn VARCHAR(50) ,
TargetAge  INT,
TargetStatus ENUM('Uncontained','Contained') default 'Contained',
TargetSize  ENUM('Large','Medium','Small'),
CenterPoint VARCHAR(50));

DROP TABLE IF EXISTS fireTargetAnalysis ;
CREATE TABLE fireTargetAnalysis(
TargetNumber  VARCHAR(50) PRIMARY KEY,
TargetStatus ENUM('Uncontained','Contained') default 'Contained' ,
TargetSize  ENUM('Large','Medium','Small'),
LocX INT,
LocY INT,
LocZ INT,
Distance_AF1 DECIMAL(10,2) GENERATED ALWAYS AS (SQRT(POW((LocX - 0),2) + POW((LocY - 0),2))) STORED,
Distance_AF2 DECIMAL(10,2) GENERATED ALWAYS AS (SQRT(POW((LocY - 0),2) + POW((LocZ - 0),2))) STORED,
Distance_AF3 DECIMAL(10,2) GENERATED ALWAYS AS (SQRT(POW((LocX - 0),2) + POW((LocZ - 0),2))) STORED,
targetPriority ENUM('Urgent','Priority','Routine'),
WaterRequired INT 
);
