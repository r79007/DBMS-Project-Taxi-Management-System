CREATE DATABASE DBMS_PROJECT; 
USE DBMS_PROJECT; 


CREATE TABLE `DRIVER` (
  `Name` VARCHAR(30),
  `Gender` VARCHAR(30),
  `Contact Number` integer,
  `Age` integer,
  `Driver_ID` integer primary key NOT NULL , 
  `Rating` integer
);
CREATE TABLE `TRIP DETAILS` (
  `TripID` integer,
  `TripAmount` integer,
  `StartTime` integer,
  `TripAmount` integer,
  `EndTime` integer,
  `Taxi_ID` integer,
  `Pool_num` integer,
  `StartLocation` VARCHAR(30),
  `Destination` VARCHAR(30)
);

CREATE TABLE `TAXI` (
  `Taxi_ID` integer,
  `RegistrationId` integer,
  `Status` VARCHAR(30),
  `Model` VARCHAR(30),
  `Year` integer,
  `Car type` VARCHAR(30),
  `Driver_ID` integer
);

CREATE TABLE `USER` (
  `UserID` integer,
  `User_email` VARCHAR(30),
  `Contact_No` integer,
  `Name` VARCHAR(30),
  `Gender` VARCHAR(30),
  `Address` VARCHAR(30)
);

CREATE TABLE `BILL DETAILS` (
  `Bill No` integer,
  `date_bill` integer,
  `tot_amt` integer
);

CREATE TABLE `FEEDBACK` (
  `Feedback` VARCHAR(30),
  `User_id` integer,
  `Bill_no` integer,
  `Emp_id` integer,
  `Cmpny_contact_num` integer
);
CREATE TABLE `CUSTOMER SERVICE` (
  `Employ_ID` integer,
  `Name` VARCHAR(30)
);








