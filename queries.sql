use dbms_project;

SELECT Name, User_email FROM USER WHERE UserID in (SELECT UserID FROM FEEDBACK WHERE feedback = 'Bad');

SELECT U.UserID from USER U, FEEDBACK F, BILL_DETAILS B where B.Bill_no=F.Bill_no and B.tot_amt>50 and F.UserID=U.UserID order by U.UserID asc;

select Driver_ID from DRIVER where Rating>=4;   

select D.Contact_No from DRIVER D, TAXI T where D.Driver_ID=T.Driver_ID and T.Car_type='SUV';

select distinct name,count(age) as cnt from DRIVER group by age  order by cnt DESC;

drop table if exists `SUVDrivers`;
create view SUVDrivers2 as select D.Name, T.Car_type from  Driver D, Taxi T where T.Driver_ID=D.Driver_ID group by T.car_type;

show columns from SUVDrivers2;

select * from SUVDrivers2;