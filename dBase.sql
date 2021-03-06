DROP DATABASE IF EXISTS CO226DataBase;
SHOW DATABASES;
CREATE DATABASE CO226DataBase;
SHOW DATABASES;
USE CO226DataBase;
SHOW TABLES;

CREATE TABLE Vehicle(
	LicenseValidity Boolean NOT NULL,
	RegNo INTEGER NOT NULL AUTO_INCREMENT,
	VehicleType VARCHAR(50),
	EmissionTest Boolean,
	InsuaranceValidity Boolean,
	LicenseNo INTEGER,
	PRIMARY KEY (RegNo),
	FOREIGN KEY (LicenseNo) REFERENCES Owner(LicenseNo)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Account(
	AccNo INTEGER NOT NULL,
	PaymentMethod VARCHAR(50),
	PRIMARY KEY (AccNo)
);

CREATE TABLE Records(
	RecieptNo INTEGER,
	Arrival Time,
	ExitTime Time,
	Fee INTEGER,
	RecordDate Date,
	WhereFrom VARCHAR(50),
	WhereTo VARCHAR(50),
	AccNo INTEGER NOT NULL,
	PRIMARY KEY (RecieptNo),
	FOREIGN KEY (AccNo) REFERENCES Account(AccNo)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Owner(
	Name VARCHAR(50),
	LicenseNo INTEGER,
	Address VARCHAR(100),
	AccNo INTEGER NOT NULL,
	PRIMARY KEY (LicenseNo),
	FOREIGN KEY (AccNo) REFERENCES Account(AccNo)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Person(
	NICno INTEGER,
	BloodGroup VARCHAR(5),
	LicenseNo INTEGER,
	PRIMARY KEY (NICno),
	FOREIGN KEY (LicenseNo) REFERENCES Owner(LicenseNo)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Company(
	CompanyRegNo INTEGER,
	LicenseNo INTEGER,
	PRIMARY KEY (CompanyRegNo),
	FOREIGN KEY (LicenseNo) REFERENCES Owner(LicenseNo)
	ON DELETE CASCADE ON UPDATE CASCADE
);


SHOW TABLES;

DESCRIBE Vehicle;
DESCRIBE Account;
DESCRIBE Records;
DESCRIBE Owner;
DESCRIBE Person;
DESCRIBE Company;
