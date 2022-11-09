use PortfolioProject;

Select location, date, total_cases, new_cases, total_deaths, population
From covidvaccinations
order by date asc;



-- Shows % of population got covid
Select location, date, population, total_cases, (total_cases/population) * 100 AS INFECTED_POPULATION_PERCENT
From coviddeaths
order by date asc;

-- Countries with highest Infection rate compared to population
Select location, population, MAX(total_cases) AS HighestInfectionRate, MAX(total_cases/population) * 100 AS INFECTED_POPULATION_PERCENT
From coviddeaths
where location like '%Phil%' AND  continent is NOT NULL
group by location, population
order by INFECTED_POPULATION_PERCENT desc;


Select continent, location, MAX(cast(total_deaths as SIGNED)) as totalDeathCount
From coviddeaths
-- WHERE continent not null
group by location, continent
order by totalDeathCount desc;


-- BY CONTINENT

Select continent, MAX(cast(total_deaths as SIGNED)) as totalDeathCount
From coviddeaths
WHERE continent is not null
group by continent
order by totalDeathCount desc;