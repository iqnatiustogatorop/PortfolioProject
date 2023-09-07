Link Visualization
https://public.tableau.com/app/profile/iqnatius.cahyo.h.togatorop/viz/Cyclistic2022_16932135496430/CyclisticBikeType

--1 Tipe Sepeda
Select distinct rideable_type 
From Union_Cyclistic_2022

--2 Tipe Member
Select distinct member_casual
From Union_Cyclistic_2022

--3 Jumlah Pengguna
Select count(ride_id) as total_users
From Union_Cyclistic_2022

--4 Jenis member
SELECT DISTINCT member_casual 
FROM Union_Cyclistic_2022

--5 Jumlah pengguna dari setiap tipe member
Select member_casual, count(*) as cnt_ride_id 
From Union_Cyclistic_2022
Group by member_casual

--6 Jumlah pengguna dari setiap tipe sepeda
Select rideable_type, COUNT(*) as cnt_ride_id
From Union_Cyclistic_2022
Group by rideable_type

--7 Jumlah ride id dari setiap bulan 
SELECT DATENAME(month, started_at) as month_name, count(ride_id) as cnt_ride_id
From Union_Cyclistic_2022
Group by DATENAME(month, started_at)
Order by 
Case 
	when DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End

--8 Hitung jumlah ride_id untuk setiap tipe member dalam kolom "member_casual" setiap bulannya
Select DATENAME(month,started_at) as month_name,
	COUNT(Case When member_casual = 'member' Then ride_id End) as member,
	COUNT(Case When member_casual = 'casual' Then ride_id End) as casual,
	COUNT(Case When member_casual = 'member' Then ride_id End)-COUNT(Case When member_casual = 'casual' Then ride_id End) as diff_member_casual
From Union_Cyclistic_2022
Group by DATENAME(month,started_at)
Order By 
Case
	when DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End

--9 Jumlah ride_id untuk setiap rideable_type setiap bulannya

Select DATENAME(month, started_at) as month_name,
	COUNT(Case When rideable_type = 'electric_bike' Then ride_id End) AS cnt_electric_bike,
	COUNT(Case When rideable_type = 'classic_bike' Then ride_id End) AS cnt_classic_bike,
	COUNT(Case When rideable_type = 'docked_bike' Then ride_id End) AS cnt_docked_bike
From Union_Cyclistic_2022
Group by DATENAME(month, started_at)
Order by 
Case
	When DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End

--10 Pada hari apa pengguna cyclistic terbanyak 
Select DATENAME(WEEKDAY, started_at) as day_name,
	Count(*) as cnt_ride_id
From Union_Cyclistic_2022
Group by DATENAME(WEEKDAY, started_at)
Order by 
Case
	When DATENAME(WEEKDAY, started_at) = 'Sunday' Then 1
	When DATENAME(WEEKDAY, started_at) = 'Monday' Then 2
	When DATENAME(WEEKDAY, started_at) = 'Tuesday' Then 3
	When DATENAME(WEEKDAY, started_at) = 'Wednesday' Then 4
	When DATENAME(WEEKDAY, started_at) = 'Thursday' Then 5
	When DATENAME(WEEKDAY, started_at) = 'Friday' Then 6
	When DATENAME(WEEKDAY, started_at) = 'Saturday' Then 7
End

--11 Perbandingan jumlah member dan casual setiap hari
Select DATENAME(WEEKDAY, started_at) as day_name,
	COUNT(Case When member_casual = 'member' Then ride_id END) as member,
	COUNT(Case When member_casual = 'casual' Then ride_id END) as casual
From Union_Cyclistic_2022
Group by DATENAME(WEEKDAY, started_at)
Order by
Case
	When DATENAME(WEEKDAY, started_at) = 'Sunday' Then 1
	When DATENAME(WEEKDAY, started_at) = 'Monday' Then 2
	When DATENAME(WEEKDAY, started_at) = 'Tuesday' Then 3
	When DATENAME(WEEKDAY, started_at) = 'Wednesday' Then 4
	When DATENAME(WEEKDAY, started_at) = 'Thursday' Then 5
	When DATENAME(WEEKDAY, started_at) = 'Friday' Then 6
	When DATENAME(WEEKDAY, started_at) = 'Saturday' Then 7
End

--12 Hari dengan cylistic terbanyak setiap bulan
Select DATENAME(MONTH, started_at) as month, DATENAME(WEEKDAY, started_at) as day_name,
	Count(*) as cnt_ride_id
From Union_Cyclistic_2022
Group by DATENAME(MONTH, started_at),DATENAME(WEEKDAY, started_at)
Order by 
Case
	When DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End,
Case
	When DATENAME(WEEKDAY, started_at) = 'Sunday' Then 1
	When DATENAME(WEEKDAY, started_at) = 'Monday' Then 2
	When DATENAME(WEEKDAY, started_at) = 'Tuesday' Then 3
	When DATENAME(WEEKDAY, started_at) = 'Wednesday' Then 4
	When DATENAME(WEEKDAY, started_at) = 'Thursday' Then 5
	When DATENAME(WEEKDAY, started_at) = 'Friday' Then 6
	When DATENAME(WEEKDAY, started_at) = 'Saturday' Then 7
End



--13 Hari dengan cyclistic terbanyak
Select DATENAME(WEEKDAY, started_at) as day_name,
	Count(*) as cnt_ride_id
From Union_Cyclistic_2022
Group by DATENAME(WEEKDAY, started_at)
Order by 


--14 Rata-rata dari ride length
Select * From Union_Cyclistic_2022

Select DATENAME(month, started_at) as month_name, DATEDIFF(minute,started_at, ended_at) as ride_length
From Union_Cyclistic_2022
Order by
Case
	When DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End

--15 User classic bike tiap tipe member setiap bulan
select DATENAME(MONTH,started_at) as Month,
sum(case when member_casual ='member' then 1 else 0 end) as Member,
sum(case when member_casual ='casual' then 1 else 0 end) as Casual
from Union_Cyclistic_2022
Where rideable_type ='classic_bike'
Group by DATENAME(MONTH,started_at)
Order by 
Case
	When DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End

--16 User electic bike tiap tipe member setiap bulan
select DATENAME(MONTH,started_at) as Month,
sum(case when member_casual ='member' then 1 else 0 end) as Member,
sum(case when member_casual ='casual' then 1 else 0 end) as Casual
from Union_Cyclistic_2022
Where rideable_type ='electric_bike'
Group by DATENAME(MONTH,started_at)
Order by 
Case
	When DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End

--17 User docked bike tiap tipe member setiap bulan
select DATENAME(MONTH,started_at) as Month,
sum(case when member_casual ='member' then 1 else 0 end) as Member,
sum(case when member_casual ='casual' then 1 else 0 end) as Casual
from Union_Cyclistic_2022
Where rideable_type ='docked_bike'
Group by DATENAME(MONTH,started_at)
Order by 
Case
	When DATENAME(month, started_at) = 'January' Then 1
	when DATENAME(month, started_at) = 'February' Then 2
	when DATENAME(month, started_at) = 'March' Then 3
	when DATENAME(month, started_at) = 'April' Then 4
	when DATENAME(month, started_at) = 'May' Then 5
	when DATENAME(month, started_at) = 'June' Then 6
	when DATENAME(month, started_at) = 'July' Then 7
	when DATENAME(month, started_at) = 'August' Then 8
	when DATENAME(month, started_at) = 'September' Then 9
	when DATENAME(month, started_at) = 'October' Then 10
	when DATENAME(month, started_at) = 'November' Then 11
	when DATENAME(month, started_at) = 'December' Then 12
End

--18 Perbandingan casual/member setiap harinya
Select DATENAME(WEEKDAY,started_at) as Days,
Sum(Case When 


