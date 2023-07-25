Select *
From [Portfolio Project]..Covid_Deaths
Where continent is not Null
Order by 3,4

Select location, date, total_cases, new_cases, total_deaths, population 
From [Portfolio Project]..Covid_Deaths
Order by 1, 2

--Looking at Total Cases vs Total Deaths
Select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as Death_Percentage
From [Portfolio Project]..Covid_Deaths
Where location = 'Indonesia'
and continent is not Null
Order by 1, 2

--Looking at Total Cases vs Population
-- Shows percentage of population got covid
Select location, date,population, total_cases, (total_cases/population)*100 as Cases_Population_Percentage
From [Portfolio Project]..Covid_Deaths
Where location like '%states%'
and continent is not Null
Order by 1, 2

--Looking at countries with Highest Infection Rate to Population
Select location,population,MAX(total_cases) as HighestInfectionCount, Max((total_cases/population)*100) as Cases_Population_Percentage
From [Portfolio Project]..Covid_Deaths
--Where location like '%states%'
Where continent is not Null
Group by location, population
Order by Cases_Population_Percentage DESC

-- Showing Countries with Highest Death per Population
Select location, Max(cast(total_deaths as int)) as TotalDeathCount
From [Portfolio Project]..Covid_Deaths
--Where location like '%states%'
Where continent is not Null
Group by location
Order by TotalDeathCount DESC 

-- LET'S BREAKS THINGS DOWN BY CONTINENT
  
--Showing the Continent with the highest death count per population
Select continent, Max(cast(total_deaths as int)) as TotalDeathCount
From [Portfolio Project]..Covid_Deaths
--Where location like '%states%'
Where continent is not Null
Group by continent
Order by TotalDeathCount DESC 

--GLOBAL NUMBERS
Select sum(new_cases) as total_cases, sum(cast(new_deaths as int)) as total_deaths, sum(cast(new_deaths as int))/sum(new_cases)*100 as Death_Percentage
From [Portfolio Project]..Covid_Deaths
--Where location = 'Indonesia'
Where continent is not Null 
--Group by date
Order by 1, 2

--Looking at Total Population vs Vaccination
Select dead.continent, dead.location, dead.date, dead.population, vac.new_vaccinations,
sum(CONVERT(int,vac.new_vaccinations)) Over (Partition by dead.location order by dead.location, dead.date)
as RollingPeopleVaccinated,
from [Portfolio Project]..Covid_Deaths dead
Join [Portfolio Project]..Covid_Vaccination vac	
	On dead.location = vac.location
	and dead.date = vac.date
Where dead.continent is not null
Order by 2,3


--Use CTE
with PopvsVac (Continent,location, date, population,new_vaccination, RollingPeopleVaccinated)
as
(
Select dead.continent, dead.location, dead.date, dead.population, vac.new_vaccinations,
sum(CONVERT(int,vac.new_vaccinations)) Over (Partition by dead.location order by dead.location, dead.date)
as RollingPeopleVaccinated
from [Portfolio Project]..Covid_Deaths dead
Join [Portfolio Project]..Covid_Vaccination vac	
	On dead.location = vac.location
	and dead.date = vac.date
Where dead.continent is not null
--Order by 2,3
)
Select *, (RollingPeopleVaccinated/Population)*100
From PopvsVac

-- TEMP TABLE
Drop Table if exists  #PercentPopulationVaccinated
Create table #PercentPopulationVaccinated
(
Continent nvarchar(225),
Location nvarchar(225),
Date datetime,
Population numeric,
New_vaccinations numeric,
RollingPeopleVaccinated numeric
)

Insert into #PercentPopulationVaccinated
Select dead.continent, dead.location, dead.date, dead.population, vac.new_vaccinations,
sum(CONVERT(int,vac.new_vaccinations)) Over (Partition by dead.location order by dead.location, dead.date)
as RollingPeopleVaccinated
from [Portfolio Project]..Covid_Deaths dead
Join [Portfolio Project]..Covid_Vaccination vac	
	On dead.location = vac.location
	and dead.date = vac.date
Where dead.continent is not null
--Order by 2,3

Select *, (RollingPeopleVaccinated/Population)*100
From #PercentPopulationVaccinated



--Creating view to store data for later vacctinations
Create View PercentPopulationVaccinated as 
Select dead.continent, dead.location, dead.date, dead.population, vac.new_vaccinations,
sum(CONVERT(int,vac.new_vaccinations)) Over (Partition by dead.location order by dead.location, dead.date)
as RollingPeopleVaccinated
from [Portfolio Project]..Covid_Deaths dead
Join [Portfolio Project]..Covid_Vaccination vac	
	On dead.location = vac.location
	and dead.date = vac.date
Where dead.continent is not null
--Order by 2,3

Select * 
From PercentPopulationVaccinated
