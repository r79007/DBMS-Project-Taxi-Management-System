DROP TABLE IF EXISTS `FEEDBACK`;

CREATE TABLE `FEEDBACK` (
  `Feedback` VARCHAR(30),
  `User_id` integer,
  `Bill_no` integer,
  `employ_id` integer,

  FOREIGN KEY (User_id) REFERENCES USER(user_id),
  FOREIGN KEY (employ_id) REFERENCES CUSTOMER_SERVICE(employ_id),
  FOREIGN KEY (Bill_no) REFERENCES BILL_DETAILS(Bill_no)
);
DROP TABLE IF EXISTS `CUSTOMER_SERVICE`;

CREATE TABLE `CUSTOMER_SERVICE` (
  `Employ_ID` integer PRIMARY KEY NOT NULL,
  `Name` VARCHAR(30),
  'Contact_No' integer
);
DROP TABLE IF EXISTS `TAXI`;

CREATE TABLE `TAXI` (
  `Taxi_ID` integer PRIMARY KEY NOT NULL,
  `RegistrationId` integer,
  `Status` VARCHAR(30),
  `Model` VARCHAR(30),
  `Year` integer,
  `Car_type` VARCHAR(30),
  `Driver_ID` integer,

  FOREIGN KEY (Driver_ID) REFERENCES DRIVER(Driver_ID)
);
DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `UserID` integer PRIMARY KEY NOT NULL,
  `User_email` VARCHAR(30),
  `Contact_No` integer,
  `Name` VARCHAR(30),
  `Gender` VARCHAR(30),
  `Address` VARCHAR(30)
);
DROP TABLE IF EXISTS `BILL_DETAILS`;

CREATE TABLE `BILL_DETAILS` (
  `Bill_no` integer PRIMARY KEY NOT NULL,
  `date_bill` integer,
  `tot_amt` integer
);
DROP TABLE IF EXISTS `TRIP_DETAILS`;

CREATE TABLE `TRIP_DETAILS` (
  `TripID` integer PRIMARY KEY NOT NULL,
  `TripAmount` integer,
  `StartTime` integer,
  `EndTime` integer,
  `Taxi_ID` integer,
  `Pool_num` integer,
  `StartLocation` VARCHAR(30),
  `Destination` VARCHAR(30),

  FOREIGN KEY (Taxi_ID) REFERENCES TAXI(Taxi_ID)
);
DROP TABLE IF EXISTS `DRIVER`;

CREATE TABLE `DRIVER` (
  `Name` VARCHAR(30),
  `Gender` VARCHAR(30),
  `Contact_No` integer,
  `Age` integer,
  `Driver_ID` integer PRIMARY KEY NOT NULL , 
  `Rating` integer
);
