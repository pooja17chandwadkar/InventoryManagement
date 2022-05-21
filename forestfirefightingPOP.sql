USE forestfirefighting;

INSERT INTO FireReport (ReportedBy,ReportDate,FireDescription,FireSize,LocX,LocY,LocZ,FireStatus)
VALUES('Satellite','4-01-22','Forest','Large',50,70,14,'Active');
INSERT INTO FireReport (ReportedBy,ReportDate,FireDescription,FireSize,LocX,LocY,LocZ,FireStatus)
VALUES('Park Ranger','4-08-22','Grass-Forest','Medium',150,270,12,'Active');
INSERT INTO FireReport (ReportedBy,ReportDate,FireDescription,FireSize,LocX,LocY,LocZ,FireStatus)
VALUES('Civillian','4-11-22','Forest Hillside','Large',350,170,14,'Active');
INSERT INTO FireReport(ReportedBy,ReportDate,FireDescription,FireSize,LocX,LocY,LocZ,FireStatus)
VALUES('Park Ranger','4-21-22','Grass','Medium',450,270,14,'Active');
INSERT INTO FireReport(ReportedBy,ReportDate,FireDescription,FireSize,LocX,LocY,LocZ,FireStatus)
VALUES('Satellite','4-21-22','Forest','Small',50,470,12,'Active');
INSERT INTO FireReport(ReportedBy,ReportDate,FireDescription,FireSize,LocX,LocY,LocZ,FireStatus)
VALUES('Satellite','4-25-22','Forest','Large',150,370,11,'Active');

INSERT INTO FireTargetAnalysis (TargetNumber,TargetStatus,TargetSize,LocX,LocY,LocZ,TargetPriority,WaterRequired)
VALUES(1,'Uncontained','Large',50,70,14,'Priority',200000);
INSERT INTO FireTargetAnalysis (TargetNumber,TargetStatus,TargetSize,LocX,LocY,LocZ,TargetPriority,WaterRequired)
VALUES(2,'Uncontained','Medium',150,270,12,'Priority',150000);
INSERT INTO FireTargetAnalysis (TargetNumber,TargetStatus,TargetSize,LocX,LocY,LocZ,TargetPriority,WaterRequired) 
VALUES(3,'Uncontained','Large',350,170,14,'Priority',200000);
INSERT INTO FireTargetAnalysis (TargetNumber,TargetStatus,TargetSize,LocX,LocY,LocZ,TargetPriority,WaterRequired)
VALUES(4,'Uncontained','Medium',450,270,14,'Priority',150000);
INSERT INTO FireTargetAnalysis (TargetNumber,TargetStatus,TargetSize,LocX,LocY,LocZ,TargetPriority,WaterRequired)
VALUES(5,'Uncontained','Small',50,470,12,'Priority',100000);
INSERT INTO FireTargetAnalysis (TargetNumber,TargetStatus,TargetSize,LocX,LocY,LocZ,TargetPriority,WaterRequired)
VALUES(6,'Uncontained','Large',150,370,11,'Priority',200000);

INSERT INTO Airfields VALUES('AF-001','Alpha Field',25,25,10,144);
INSERT INTO Airfields VALUES('AF-002','Beta Field',250,500,15,72);
INSERT INTO Airfields VALUES('AF-003','Gamma Field',450,250,12,96);

INSERT INTO DroneTypes VALUES('FFD1','Jaguar',100,50,1000);
INSERT INTO DroneTypes VALUES('FFD2','Tiger',150,75,1500);
INSERT INTO DroneTypes VALUES('FFD3','Leopard',175,80,2200);
INSERT INTO DroneTypes VALUES('FFD4','Lion',225,80,4000);

INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-001','Jaguar','Alpha Field',12,10,8);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-002','Leopard','Beta Field',12,8,8);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-003','Jaguar','Gamma Field',12,11,9);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-004','Lion','Alpha Field',12,12,9);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-005','Tiger','Beta Field',12,12,8);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-006','Tiger','Gamma Field',12,8,8);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-007','Leopard','Beta Field',12,10,10);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-008','Jaguar','Gamma Field',12,9,6);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-009','Lion','Alpha Field',12,7,3);
INSERT INTO DroneUnits (UnitID,DroneType,UnitLocation,DronesAssigned,DronesAvailable,DronesReady) 
VALUES('DU-010','Tiger','Alpha Field',12,10,8);



INSERT INTO Drones VALUES('D-1','Jaguar','DU-001','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-2','Jaguar','DU-001','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-3','Jaguar','DU-001','Operational','Not Ready');
INSERT INTO Drones VALUES('D-4','Jaguar','DU-001','Operational','Not Ready');
INSERT INTO Drones VALUES('D-5','Jaguar','DU-001','Operational','Ready');
INSERT INTO Drones VALUES('D-6','Jaguar','DU-001','Operational','Ready');
INSERT INTO Drones VALUES('D-7','Jaguar','DU-001','Operational','Ready');
INSERT INTO Drones VALUES('D-8','Jaguar','DU-001','Operational','Ready');
INSERT INTO Drones VALUES('D-9','Jaguar','DU-001','Operational','Ready');
INSERT INTO Drones VALUES('D-10','Jaguar','DU-001','Operational','Ready');
INSERT INTO Drones VALUES('D-11','Jaguar','DU-001','Operational','Ready');
INSERT INTO Drones VALUES('D-12','Jaguar','DU-001','Operational','Ready');

INSERT INTO Drones VALUES('D-13','Leopard','DU-002','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-14','Leopard','DU-002','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-15','Leopard','DU-002','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-16','Leopard','DU-002','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-17','Leopard','DU-002','Operational','Ready');
INSERT INTO Drones VALUES('D-18','Leopard','DU-002','Operational','Ready');
INSERT INTO Drones VALUES('D-19','Leopard','DU-002','Operational','Ready');
INSERT INTO Drones VALUES('D-20','Leopard','DU-002','Operational','Ready');
INSERT INTO Drones VALUES('D-21','Leopard','DU-002','Operational','Ready');
INSERT INTO Drones VALUES('D-22','Leopard','DU-002','Operational','Ready');
INSERT INTO Drones VALUES('D-23','Leopard','DU-002','Operational','Ready');
INSERT INTO Drones VALUES('D-24','Leopard','DU-002','Operational','Ready');

INSERT INTO Drones VALUES('D-25','Jaguar','DU-003','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-26','Jaguar','DU-003','Operational','Not Ready');
INSERT INTO Drones VALUES('D-27','Jaguar','DU-003','Operational','Not Ready');
INSERT INTO Drones VALUES('D-28','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-29','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-30','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-31','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-32','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-33','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-34','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-35','Jaguar','DU-003','Operational','Ready');
INSERT INTO Drones VALUES('D-36','Jaguar','DU-003','Operational','Ready');


INSERT INTO Drones VALUES('D-37','Lion','DU-004','Operational','Not Ready');
INSERT INTO Drones VALUES('D-38','Lion','DU-004','Operational','Not Ready');
INSERT INTO Drones VALUES('D-39','Lion','DU-004','Operational','Not Ready');
INSERT INTO Drones VALUES('D-40','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-41','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-42','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-43','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-44','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-45','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-46','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-47','Lion','DU-004','Operational','Ready');
INSERT INTO Drones VALUES('D-48','Lion','DU-004','Operational','Ready');

INSERT INTO Drones VALUES('D-49','Tiger','DU-005','Operational','Not Ready');
INSERT INTO Drones VALUES('D-50','Tiger','DU-005','Operational','Not Ready');
INSERT INTO Drones VALUES('D-51','Tiger','DU-005','Operational','Not Ready');
INSERT INTO Drones VALUES('D-52','Tiger','DU-005','Operational','Not Ready');
INSERT INTO Drones VALUES('D-53','Tiger','DU-005','Operational','Ready');
INSERT INTO Drones VALUES('D-54','Tiger','DU-005','Operational','Ready');
INSERT INTO Drones VALUES('D-55','Tiger','DU-005','Operational','Ready');
INSERT INTO Drones VALUES('D-56','Tiger','DU-005','Operational','Ready');
INSERT INTO Drones VALUES('D-57','Tiger','DU-005','Operational','Ready');
INSERT INTO Drones VALUES('D-58','Tiger','DU-005','Operational','Ready');
INSERT INTO Drones VALUES('D-59','Tiger','DU-005','Operational','Ready');
INSERT INTO Drones VALUES('D-60','Tiger','DU-005','Operational','Ready');

INSERT INTO Drones VALUES('D-61','Tiger','DU-006','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-62','Tiger','DU-006','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-63','Tiger','DU-006','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-64','Tiger','DU-006','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-65','Tiger','DU-006','Operational','Ready');
INSERT INTO Drones VALUES('D-66','Tiger','DU-006','Operational','Ready');
INSERT INTO Drones VALUES('D-67','Tiger','DU-006','Operational','Ready');
INSERT INTO Drones VALUES('D-68','Tiger','DU-006','Operational','Ready');
INSERT INTO Drones VALUES('D-69','Tiger','DU-006','Operational','Ready');
INSERT INTO Drones VALUES('D-70','Tiger','DU-006','Operational','Ready');
INSERT INTO Drones VALUES('D-71','Tiger','DU-006','Operational','Ready');
INSERT INTO Drones VALUES('D-72','Tiger','DU-006','Operational','Ready');

INSERT INTO Drones VALUES('D-73','Leopard','DU-007','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-74','Leopard','DU-007','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-75','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-76','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-77','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-78','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-79','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-80','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-81','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-82','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-83','Leopard','DU-007','Operational','Ready');
INSERT INTO Drones VALUES('D-84','Leopard','DU-007','Operational','Ready');

INSERT INTO Drones VALUES('D-85','Jaguar','DU-008','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-86','Jaguar','DU-008','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-87','Jaguar','DU-008','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-88','Jaguar','DU-008','Operational','Not Ready');
INSERT INTO Drones VALUES('D-89','Jaguar','DU-008','Operational','Not Ready');
INSERT INTO Drones VALUES('D-90','Jaguar','DU-008','Operational','Not Ready');
INSERT INTO Drones VALUES('D-91','Jaguar','DU-008','Operational','Ready');
INSERT INTO Drones VALUES('D-92','Jaguar','DU-008','Operational','Ready');
INSERT INTO Drones VALUES('D-93','Jaguar','DU-008','Operational','Ready');
INSERT INTO Drones VALUES('D-94','Jaguar','DU-008','Operational','Ready');
INSERT INTO Drones VALUES('D-95','Jaguar','DU-008','Operational','Ready');
INSERT INTO Drones VALUES('D-96','Jaguar','DU-008','Operational','Ready');

INSERT INTO Drones VALUES('D-97','Lion','DU-009','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-98','Lion','DU-009','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-99','Lion','DU-009','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-100','Lion','DU-009','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-101','Lion','DU-009','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-102','Lion','DU-009','Operational','Not Ready');
INSERT INTO Drones VALUES('D-103','Lion','DU-009','Operational','Not Ready');
INSERT INTO Drones VALUES('D-104','Lion','DU-009','Operational','Not Ready');
INSERT INTO Drones VALUES('D-105','Lion','DU-009','Operational','Not Ready');
INSERT INTO Drones VALUES('D-106','Lion','DU-009','Operational','Ready');
INSERT INTO Drones VALUES('D-107','Lion','DU-009','Operational','Ready');
INSERT INTO Drones VALUES('D-108','Lion','DU-009','Operational','Ready');

INSERT INTO Drones VALUES('D-109','Jaguar','DU-010','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-110','Jaguar','DU-010','NonOperational','Not Ready');
INSERT INTO Drones VALUES('D-111','Jaguar','DU-010','Operational','Not Ready');
INSERT INTO Drones VALUES('D-112','Jaguar','DU-010','Operational','Not Ready');
INSERT INTO Drones VALUES('D-113','Jaguar','DU-010','Operational','Ready');
INSERT INTO Drones VALUES('D-114','Jaguar','DU-010','Operational','Ready');
INSERT INTO Drones VALUES('D-115','Jaguar','DU-010','Operational','Ready');
INSERT INTO Drones VALUES('D-116','Jaguar','DU-010','Operational','Ready');
INSERT INTO Drones VALUES('D-117','Jaguar','DU-010','Operational','Ready');
INSERT INTO Drones VALUES('D-118','Jaguar','DU-010','Operational','Ready');
INSERT INTO Drones VALUES('D-119','Jaguar','DU-010','Operational','Ready');
INSERT INTO Drones VALUES('D-120','Jaguar','DU-010','Operational','Ready');