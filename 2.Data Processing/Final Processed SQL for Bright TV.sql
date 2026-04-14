---Viewing given data table to start exploring 
select * from `workspace`.`default`.`bright_tv_dataset` limit 100;
---Viewing given data table to start exploring 
select * from `workspace`.`default`.`bright_tv_dataset` limit 100;


---Joining the two given tables Bright TV Dataset and Bright TV Dataset 2
select * from `workspace`.`default`.`bright_tv_dataset` 
FULL JOIN `workspace`.`default`.`bright_tv_dataset2` 
ON `workspace`.`default`.`bright_tv_dataset`.UserID = `workspace`.`default`.`bright_tv_dataset2`.UserID0
-------------------------------------------------------------------
---Checking Date Range
-------------------------------------------------------------------
---Started collecting data oo 2016-01-01
SELECT MIN(RecordDate2) as min_date
FROM `workspace`.`default`.`bright_tv_dataset2`
-------------------------------------------------------------------
---Stopped collecting data on 2016-03-31
-------------------------------------------------------------------
SELECT MAX(RecordDate2) as max_date
FROM `workspace`.`default`.`bright_tv_dataset2`
---Period for collection of Data was 3 months
-------------------------------------------------------------------
---Counting the number of Users 
-------------------------------------------------------------------
SELECT COUNT(DISTINCT UserID0) as total_users
FROM `workspace`.`default`.`bright_tv_dataset2`
---total number of Users is 4386
-------------------------------------------------------------------
---Finding the number of Channels
-------------------------------------------------------------------
SELECT COUNT(DISTINCT Channel2) as total_channels
FROM `workspace`.`default`.`bright_tv_dataset2`
---total number of channels is 21
------------------------------------------------------------------
---Checking the Channesls provided
------------------------------------------------------------------
SELECT DISTINCT Channel2
FROM `workspace`.`default`.`bright_tv_dataset2`
------------------------------------------------------------------
---Checking number of unique races
------------------------------------------------------------------
SELECT DISTINCT Race
FROM `workspace`.`default`.`bright_tv_dataset`
---total number of specified race is 5
-----------------------------------------------------------------
---Counting number of male Users
-----------------------------------------------------------------
SELECT COUNT(Gender) AS total_male_users
FROM `workspace`.`default`.`bright_tv_dataset`
WHERE Gender = 'male'
---total number of males is 3918
------------------------------------------------------------------
---Counting number of female users 
------------------------------------------------------------------
SELECT COUNT(Gender) AS total_male_users
FROM `workspace`.`default`.`bright_tv_dataset`
WHERE Gender = 'female'
---total number of females is 537
-----------------------------------------------------------------
--Counting by Province
SELECT Province, COUNT(UserID) AS total_viewers 
FROM`workspace`.`default`.`bright_tv_dataset`
GROUP BY Province
ORDER BY total_viewers DESC

---Counting by Channel
SELECT Channel2, COUNT(UserID0) AS total_viewers 
FROM`workspace`.`default`.`bright_tv_dataset2`
GROUP BY Channel2
ORDER BY total_viewers DESC;

-----------------------------------------------------------------------------------
-----Data Cleaning
SElECT *,
----Introducing New Columns to enhance the Data
---1st Column
CASE 
      WHEN AGE BETWEEN 0 AND 18 THEN 'Child'
      WHEN AGE BETWEEN 19 AND 35 THEN 'Young Adult'
      WHEN AGE BETWEEN 36 AND 55 THEN 'Adult'
      ELSE 'Senior'
      END AS Age_Group,
---2nd Column
CASE 
     WHEN date_format(RecordDate2,'HH:mm:ss') BETWEEN '04:00:00' AND '11:59:59' THEN 'Morning'
     WHEN date_format(RecordDate2,'HH:mm:ss') BETWEEN '12:00:00' AND '17:59:59' THEN 'Afternoon'
     WHEN date_format(RecordDate2,'HH:mm:ss') BETWEEN '18:00:00' AND '23:59:59' THEN 'Evening'
     ELSE 'Night'
     END AS Time_Of_Day,
---3RD Column 
CASE 
     WHEN date_format(Duration 2,'HH:mm:ss') BETWEEN '00:00:00' AND '00:20:00' THEN 'Short View'
     WHEN date_format(Duration 2,'HH:mm:ss') BETWEEN '00:20:01' AND '00:40:00' THEN 'Medium View'
     ELSE 'Long View'
     END AS View_Duration
     
FROM `workspace`.`default`.`bright_tv_dataset`
FULL JOIN `workspace`.`default`.`bright_tv_dataset2`
ON `workspace`.`default`.`bright_tv_dataset`.`UserID` = `workspace`.`default`.`bright_tv_dataset2`.`userid4`;