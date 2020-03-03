# 1 
SELECT DISTINCT DAYNAME(S.AiringDate)  AS Week_Day, 
	AVG(B.NumOfSeat) AS AverageSeatSold 
FROM BOOKING B JOIN SCHEDULES S ON B.ScheduleID = S.ScheduleID
GROUP BY DAYNAME(S.AiringDate)
ORDER BY  AverageSeatSold DESC;


#2 
SELECT DISTINCT DAYNAME(S.AiringDate) AS Showday,
    HOUR(S.AiringTime) AS Showtime,
    AVG(B.NumOfSeat) AS AverageSeatSold
FROM  BOOKING B JOIN SCHEDULES S ON B.ScheduleID = S.ScheduleID
GROUP BY DAYNAME(S.AiringDate) , HOUR(S.AiringTime)
ORDER BY AverageSeatSold DESC
LIMIT 7;


#3
CREATE TEMPORARY TABLE AGEBINS AS  
SELECT DISTINCT M.Genre AS Genre, B.NumOfSeat AS NumOfSeat,
CASE
	WHEN YEAR(CURDATE())-YEAR(E.Bdate) <= 13  THEN "kids"
	WHEN YEAR(CURDATE())-YEAR(E.Bdate)> 13 and
YEAR(CURDATE())-YEAR(E.Bdate) <= 18  THEN "teenager"
      WHEN YEAR(CURDATE())-YEAR(E.Bdate) > 18 and    
      YEAR(CURDATE())-YEAR(E.Bdate) < 60  THEN "adult"
	ELSE "elder"
END AS AgeRange
FROM 
BOOKING B JOIN SCHEDULES S ON B.ScheduleID = S.ScheduleID 
	JOIN MOVIE M ON S.MovieID = M.MovieID
      JOIN MEMBERS E ON B.MemberID = E.MemberID;

SELECT *
FROM(
SELECT AgeRange, Genre AS Genre,  SUM(NumOfSeat) AS ToTalSeatSold,
Rank() Over 
(Partition BY AgeRange order by SUM(NumOfSeat) DESC) 
 as Ranking
 FROM AGEBINS
 GROUP BY AgeRange,Genre) A
WHERE Ranking = 1;

DROP TEMPORARY TABLE AGEBINS;


#4 
SELECT DISTINCT DAYNAME(S.AiringDate)  AS Week_Day, AVG(B.NumOfSeat) AS AverageSeatSold 
FROM BOOKING B JOIN SCHEDULES S ON B.ScheduleID = S.ScheduleID
GROUP BY  DAYNAME(S.AiringDate)
ORDER BY  AverageSeatSold DESC;


#5 
SELECT DISTINCT STATUS, 
	 COUNT(*) AS COUNT, 
      COUNT(*) * 100.0/ SUM(COUNT(*)) over () as PERCENTAGE 
FROM  BOOKING_DETAIL 
GROUP BY Status;

#6
SELECT  DAYNAME(S.AiringDate) as DayOfWeekOnAir, COUNT(*) as NumOfRefundCase
FROM REFUND R JOIN BOOKING B ON R.BookingID = B.BookingID
	 JOIN SCHEDULES S ON B.ScheduleID = S.ScheduleID
GROUP BY  DAYNAME(S.AiringDate)
ORDER BY  DAYNAME(S.AiringDate);


#7
SELECT NumberOfMember AS FamilyPlanMembers, COUNT(*) AS NumberofGroups
FROM MEMBERSHIP_PACKAGE
GROUP BY NumberOfMember
ORDER BY NumberOfMember;


#8 
SELECT 
    CASE
        WHEN MemberID IS NULL THEN 'Not Member'
        ELSE 'Member'
    END AS IsMember,
    SUM(NumOfSeat) AS NumOfSeatSold, 
    ROUND(COUNT(*) * 100.0/ SUM(COUNT(*)) over ()) as SalesPercentage 
FROM
    BOOKING
GROUP BY IsMember;

#9
SELECT 
    be.TheaterId, FoodSalesBeforeProgram, FoodSalesAfterProgram, (FoodSalesAfterProgram - FoodSalesBeforeProgram) as SalesIncrease
FROM
    (SELECT 
        TheaterId, ROUND(SUM(Amount)) FoodSalesBeforeProgram
    FROM
        mm_cpsc5910team05.FOOD_SOLD
    WHERE
        MONTH(SoldDate) < 7
            AND YEAR(SoldDate) = 2019
    GROUP BY TheaterID) AS be
        JOIN
    (SELECT 
        TheaterId, ROUND(SUM(Amount)) FoodSalesAfterProgram
    FROM
        mm_cpsc5910team05.FOOD_SOLD
    WHERE
        MONTH(SoldDate) >= 7
            AND YEAR(SoldDate) = 2019
    GROUP BY TheaterID) AS af ON be.TheaterId = af.TheaterId
 ORDER BY SalesIncrease DESC; 


#10
SELECT 
    DISTINCT T.TheaterName as TheaterName,
    L.NAME AS FoodName,
    SUM(F.Amount) AS TotalSale
FROM
   FOOD_SOLD F
        JOIN
   FOOD_LIST L ON F.FoodId = L.FoodId
        JOIN
   THEATER T ON T.TheaterID = F.TheaterID
GROUP BY F.FoodId , L.NAME , T.TheaterName 
ORDER BY TotalSale desc LIMIT 5; 


#11
SELECT 
    E.Neighborhood AS Neighborhood, COUNT(*) AS NumberOfBookings
FROM
    BOOKING B
        JOIN
    MEMBERS E ON B.MemberId = E.MemberId
        JOIN
   BOOKING_DETAIL L ON B.BookingID = L.BookingID
GROUP BY E.Neighborhood
ORDER BY NumberOfBookings DESC;


#12
SELECT * , (CurrentSeatsSold - PreviousYrSeatsSold) as SalesIncrease
FROM (
SELECT YEAR(BookTime) as Year,
Month(BookTime) as Month,
            SUM(NumOfSeat) as CurrentSeatsSold,
            LAG(SUM(NumOfSeat), 12, 0) OVER(ORDER BY YEAR(BookTime), MONTH(BookTime) ASC) as PreviousYrSeatsSold
FROM mm_cpsc5910team05.BOOKING
GROUP BY YEAR(BookTime), MONTH(BookTime)
ORDER BY YEAR(BookTime), MONTH(BookTime) ASC) as SalesTable
WHERE Year = 2020;


#store procedure 1

drop procedure if exists  Member_Behavior_Genre;

DELIMITER //
CREATE PROCEDURE  Member_Behavior_Genre(
	IN membersID INT
)
BEGIN
	CREATE temporary table HISTORY AS 
	SELECT E.MemberID AS MemberID, B.BookTime AS BookTime , S.AiringDate
             AS AiringDate,
		 S.AiringTime AS AiringTime , M.Genre AS Genre
	FROM MEMBERS E JOIN BOOKING B ON E.MemberID = B.MemberID
		JOIN SCHEDULES S ON B.ScheduleID = S.ScheduleID
		JOIN MOVIE M ON S.MovieID = M.MovieID
	WHERE E.MemberID = membersID;

	CREATE temporary table PREFER_GENRE AS 
	SELECT Genre AS Genre , COUNT(*) AS NumOfWatch
	FROM HISTORY
	GROUP BY Genre;

	SELECT*
	FROM PREFER_GENRE;
	DROP temporary table PREFER_GENRE;
	DROP temporary table HISTORY;
END//
 
DELIMITER ;

Call Member_Behavior_Genre(1001);

#store procedure 2
drop procedure if exists Member_Behavior_Time;

DELIMITER //
CREATE PROCEDURE Member_Behavior_Time(
	IN membersID INT
)
BEGIN
	CREATE temporary table HISTORY AS 
	SELECT E.MemberID AS MemberID, B.BookTime AS BookTime , S.AiringDate 
             AS AiringDate,
		 S.AiringTime AS AiringTime , M.Genre AS Genre
	FROM MEMBERS E JOIN BOOKING B ON E.MemberID = B.MemberID
		JOIN SCHEDULES S ON B.ScheduleID = S.ScheduleID
		JOIN MOVIE M ON S.MovieID = M.MovieID
	WHERE E.MemberID = membersID;

	CREATE temporary table PRFER_TIME AS 
	SELECT DAYOFWEEK(AiringDate) AS DayOfWeek , HOUR(AiringTime) AS
             Hours, COUNT(*) AS NumOfWatch
	FROM HISTORY
	GROUP BY DAYOFWEEK(AiringDate),HOUR(AiringTime)
	ORDER BY NumOfWatch;

	SELECT*
	FROM PRFER_TIME;
	DROP temporary table PRFER_TIME;
	DROP temporary table HISTORY;
END// 
DELIMITER ;

Call Member_Behavior_Time(1001);

