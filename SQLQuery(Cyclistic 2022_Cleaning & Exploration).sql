--1 (EACH MONTH) Standardlize start_lat, start_lng, end_lat, 
--end_lng each table AS FLOAT
--a. Jan
Alter Table Cyclistic_2022..['01-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['01-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['01-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Select * 
From Cyclistic_2022..['01-2022']

--b. Feb
Alter Table Cyclistic_2022..['02-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['02-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['02-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Select * 
From Cyclistic_2022..['02-2022']

--c. Mar
Alter Table Cyclistic_2022..['03-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['03-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['03-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Select * 
From Cyclistic_2022..['03-2022']

--d. Apr
Alter Table Cyclistic_2022..['04-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['04-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng),

Alter Table Cyclistic_2022..['04-2022']
Alter Column start_station_id nvarchar(255)

Alter Table Cyclistic_2022..['04-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Select * 
From Cyclistic_2022..['04-2022']

--e. May
Alter Table Cyclistic_2022..['05-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['05-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['05-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Select * 
From Cyclistic_2022..['05-2022']

--f. Jun
Alter Table Cyclistic_2022..['06-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float


Update Cyclistic_2022..['06-2022']
Set start_lat_converted = TRY_CONVERT(float, start_lat),
start_lng_converted = TRY_CONVERT(float, start_lng),
end_lat_converted = TRY_CONVERT(float, end_lat),
end_lng_converted = TRY_CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['06-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Select * 
From Cyclistic_2022..['06-2022']


--g. Jul
Alter Table Cyclistic_2022..['07-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['07-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['07-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Alter Table Cyclistic_2022..['07-2022']
Alter Column start_station_id nvarchar(255)

Select * 
From Cyclistic_2022..['07-2022']


--h. Aug
Alter Table Cyclistic_2022..['08-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Alter Table  Cyclistic_2022..['08-2022']
Drop Column start_lat_converted, 
start_lng_converted,
end_lat_converted,
end_lng_converted

Update Cyclistic_2022..['08-2022']
Set start_lat_converted = TRY_CONVERT(float, start_lat),
start_lng_converted = TRY_CONVERT(float, start_lng),
end_lat_converted = TRY_CONVERT(float, end_lat),
end_lng_converted = TRY_CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['08-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Select * 
From Cyclistic_2022..['08-2022']

--i. Sep
Alter Table Cyclistic_2022..['09-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float


Update Cyclistic_2022..['09-2022']
Set start_lat_converted = TRY_CONVERT(float, start_lat),
start_lng_converted = TRY_CONVERT(float, start_lng),
end_lat_converted = TRY_CONVERT(float, end_lat),
end_lng_converted = TRY_CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['09-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Alter Table Cyclistic_2022..['09-2022']
Alter Column end_station_id nvarchar(255)

Select * 
From Cyclistic_2022..['09-2022']

--j. Oct
Alter Table Cyclistic_2022..['10-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['10-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['10-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Alter Table Cyclistic_2022..['10-2022']
Alter Column start_station_id nvarchar(255)

Select * 
From Cyclistic_2022..['10-2022']

--k. Nov
Alter Table Cyclistic_2022..['11-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['11-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['11-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Alter Table Cyclistic_2022..['11-2022']
Alter Column start_station_id nvarchar(255)
Alter Table Cyclistic_2022..['11-2022']
Alter Column end_station_id nvarchar(255) 

Select * 
From Cyclistic_2022..['11-2022']

--l. Dec
Alter Table Cyclistic_2022..['12-2022']
Add start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float

Update Cyclistic_2022..['12-2022']
Set start_lat_converted = CONVERT(float, start_lat),
start_lng_converted = CONVERT(float, start_lng),
end_lat_converted = CONVERT(float, end_lat),
end_lng_converted = CONVERT(float, end_lng)

Alter Table Cyclistic_2022..['12-2022']
Drop Column start_lat,
start_lng,
end_lat,
end_lng

Alter Table Cyclistic_2022..['12-2022']
Alter Column end_station_id nvarchar(255)

Select * 
From Cyclistic_2022..['12-2022']


--Create Table of Union ALL TABEL

Create Table Union_Cyclistic_2022(
ride_id nvarchar(225),
rideable_type nvarchar(225),
started_at datetime,
ended_at datetime,
start_station_name nvarchar(225),
start_station_id nvarchar(225),
end_station_name nvarchar(225),
end_station_id nvarchar(225),
member_casual nvarchar(225),
start_lat_converted float,
start_lng_converted float,
end_lat_converted float,
end_lng_converted float,
)
Select * from Union_Cyclistic_2022

Insert Into Union_Cyclistic_2022
Select *
From Cyclistic_2022..['01-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['02-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['03-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['04-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['05-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['06-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['07-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['08-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['09-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['10-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['11-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
Union
Select *
From Cyclistic_2022..['12-2022']
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null

Select * from Union_Cyclistic_2022

With Cyclistic_2022_NotNull As (
Select * From Union_Cyclistic_2022
Where ride_id Is Not Null
And rideable_type Is Not Null 
And started_at Is Not Null
And ended_at Is Not Null
And start_station_name Is Not Null
And start_station_id Is Not Null
And end_station_name Is Not Null
And end_station_id Is Not Null
And member_casual Is Not Null
And start_lat_converted Is Not Null
And start_lng_converted Is Not Null
And end_lat_converted Is Not Null
And end_lng_converted Is Not Null
)

Select count(*) from Union_Cyclistic_2022
Where DATENAME(MONTH, started_at) = 'August' 


--TRIM Over space in station name

Update Union_Cyclistic_2022
Set start_station_name = trim(start_station_name),
end_station_name = trim(end_station_id)

Select * from Union_Cyclistic_2022

Select * from Union_Cyclistic_2022
Where DATENAME(month, started_at) = 'September'
















