CREATE TABLE UserFA (
    email VARCHAR(50),
	password VARCHAR(30) DEFAULT 'admin',
	name VARCHAR(30),
    phone VARCHAR(10),
    address VARCHAR(50) DEFAULT NULL,
    bio VARCHAR(200) DEFAULT NULL,
    img LONGBLOB DEFAULT NULL,

    PRIMARY KEY(email)
);

CREATE TABLE Location (
    lid VARCHAR(10),
	floorNo VARCHAR(5) DEFAULT 'F0001',
	roomNo VARCHAR(5) DEFAULT 'R0001',

    PRIMARY KEY(lid)
);

CREATE TABLE Alarm (
    aid VARCHAR(10),
	smokeLevel INT DEFAULT '1',
	CO2Level INT DEFAULT '1',
	isActive INT DEFAULT '0',
	isWorking INT DEFAULT '1',
	email VARCHAR(50),
	lid VARCHAR(10),
	
	PRIMARY KEY(aid),
	
	FOREIGN KEY(email)
    REFERENCES UserFA(email)
    ON UPDATE CASCADE,
	
	FOREIGN KEY(lid)
    REFERENCES Location(lid)
    ON UPDATE CASCADE
);

CREATE TABLE Updates (
    aid VARCHAR(10),
	occured TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	smokeLevel INT DEFAULT '1',
	CO2Level INT DEFAULT '1',
	isActive INT DEFAULT '0',
	isWorking INT DEFAULT '1',
	
	PRIMARY KEY(aid,occured)
);

INSERT INTO UserFA(`email`,`password`,`name`,`phone`)
VALUES('chansanfdo@gmail.com','distributedSystems','Sandeep Fernando','0711319232');

INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0001','F0001','R0001');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0002','F0001','R0002');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0003','F0001','R0003');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0004','F0001','R0004');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0005','F0001','R0005');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0006','F0001','R0006');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0007','F0001','R0007');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0008','F0001','R0008');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0009','F0001','R0009');
INSERT INTO Location(`lid`,`floorNo`,`roomNo`)
VALUES('F0001R0010','F0001','R0010');

INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000001','chansanfdo@gmail.com','F0001R0001');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000002','chansanfdo@gmail.com','F0001R0002');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000003','chansanfdo@gmail.com','F0001R0003');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000004','chansanfdo@gmail.com','F0001R0004');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000005','chansanfdo@gmail.com','F0001R0005');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000006','chansanfdo@gmail.com','F0001R0006');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000007','chansanfdo@gmail.com','F0001R0007');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000008','chansanfdo@gmail.com','F0001R0008');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000009','chansanfdo@gmail.com','F0001R0009');
INSERT INTO Alarm(`aid`,`email`,`lid`)
VALUES('A000000010','chansanfdo@gmail.com','F0001R0010');

INSERT INTO Updates(`aid`,`CO2Level`,`smokeLevel`,`isActive`,`isWorking`)
VALUES('A000000001',2,2,0,1);

SELECT * FROM UserFA;
SELECT * FROM Location;
SELECT * FROM Alarm;
SELECT * FROM Updates;