-- 1. generate covid_deaths table (replacing null with 0 to make it Tableau friendly)
select distinct
	cd.continent
	, cd.location	
	, EXTRACT(Year FROM cd.date) as Year
	, EXTRACT(Month FROM cd.date) as Month
	, COALESCE(max(cd.population) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as population
	, COALESCE(sum(cd.new_cases) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as infection_cnt
	, COALESCE(sum(cd.new_deaths) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as death_cnt
	, COALESCE(avg(cd.reproduction_rate) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as reproduction_rate
from covid_deaths cd
order by 1, 2, 3, 4


-- 2. generate covid_vaccination table (replacing null with 0 to make it Tableau friendly)
select distinct
	cv.continent
	, cv.location	
	, EXTRACT(Year FROM date) as Year
	, EXTRACT(Month FROM date) as Month
	, COALESCE(sum(cv.new_vaccinations) over (partition by location order by EXTRACT(Year FROM date), EXTRACT(Month FROM date)), 0) as vaccination_cnt
	, COALESCE(max(cv.median_age) over (partition by location order by EXTRACT(Year FROM date), EXTRACT(Month FROM date)), 0) as median_age
	, COALESCE(max(cv.aged_65_older)	over (partition by location order by EXTRACT(Year FROM date), EXTRACT(Month FROM date)), 0) as aged_65_older
	, COALESCE(max(cv.aged_70_older)	over (partition by location order by EXTRACT(Year FROM date), EXTRACT(Month FROM date)), 0) as aged_70_older
	, COALESCE(max(cv.gdp_per_capita) over (partition by location order by EXTRACT(Year FROM date), EXTRACT(Month FROM date)), 0) as gdp_per_capita
	, COALESCE(max(cv.hospital_beds_per_thousand) over (partition by location order by EXTRACT(Year FROM date), EXTRACT(Month FROM date)), 0) as hospital_beds_per_thousand
from covid_vaccinations cv
order by 1, 2, 3, 4
	

-- 3. [REFERENCE] If I want to join two tables beforhand.
select distinct
	cd.continent
	, cd.location	
	, EXTRACT(Year FROM cd.date) as Year
	, EXTRACT(Month FROM cd.date) as Month
	, COALESCE(max(cd.population) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as population
	, COALESCE(sum(cd.new_cases) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as infection_cnt
	, COALESCE(sum(cd.new_deaths) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as death_cnt
	, COALESCE(avg(cd.reproduction_rate) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as reproduction_rate
	, COALESCE(sum(cv.new_vaccinations) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as vaccination_cnt
	, COALESCE(max(cv.median_age) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as median_age
	, COALESCE(max(cv.aged_65_older)	over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as aged_65_older
	, COALESCE(max(cv.aged_70_older)	over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as aged_70_older
	, COALESCE(max(cv.gdp_per_capita) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as gdp_per_capita
	, COALESCE(max(cv.hospital_beds_per_thousand) over (partition by location order by EXTRACT(Year FROM cd.date), EXTRACT(Month FROM cd.date)), 0) as hospital_beds_per_thousand
from covid_deaths cd
join covid_vaccinations cv using (iso_code,	continent, location, date)
order by 1, 2, 3, 4
	
	