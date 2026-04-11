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

