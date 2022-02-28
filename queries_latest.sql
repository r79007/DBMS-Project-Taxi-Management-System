SELECT Name, User_email FROM USER WHERE UserID in (SELECT UserID FROM FEEDBACK WHERE feedback = 'Bad');


select Driver_ID from DRIVER where Rating>=4;   

SELECT U.UserID from USER U, FEEDBACK F, BILL_DETAILS B where B.Bill_no=F.Bill_no and B.tot_amt>=4000 and F.UserID=U.UserID order by U.UserID asc;

select D.Contact_no from DRIVER D, TAXI T, CAR_MANUFACTURER C where D.Driver_ID=T.Driver_ID and T.car_id=C.Car_ID and C.Car_type='SUV';


select distinct name,count(age) as cnt from DRIVER group by age  order by cnt DESC;

DELETE FROM DRIVER WHERE Name='Manik Arora';


SELECT * FROM TRIP_DETAILS
WHERE Pool_num=3
LIMIT 10;

SELECT COUNT(D.Driver_ID) FROM TRIP_DETAILS TD,DRIVER D,TAXI T, CAR_MANUFACTURER C WHERE D.driver_ID=T.driver_ID AND T.taxi_ID=TD.taxi_ID AND TD.tripAmount>=2400 AND T.car_id=C.Car_ID and C.car_type='SUV';


ALTER TABLE DRIVER
   MODIFY Age INT NOT NULL CHECK (Age >= 18);
   
ALTER TABLE DRIVER
	MODIFY Rating INT NOT NULL CHECK(Rating>=1 and Rating<=5);
    

   
   