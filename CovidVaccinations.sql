SELECT * FROM PortfolioProject.coviddeaths;

SELECT count(*) FROM coviddeaths;

SELECT count(population) FROM coviddeaths
WHERE population is NULL;


SELECT count(population) FROM covidvaccinations
WHERE population= 0;

SELECT iso_code, population FROM coviddeaths
where iso_code="OWID_INT";