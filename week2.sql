-- 13-07-2026
-- multiple rows function = it collapse complete rows in single element
select distinct(continent) from country;   -- unique continent only

select count(continent) from country;  -- used to count the total no of continent

select count( distinct(continent)) from country;  -- gives count of unique continent name 
select count(name),count(distinct(name)) from country;

-- agreegate functions = they are the fun which are used to aply the calculation on set of multiple rows 
-- eg-max, min,count,sum,avg

select count(population) , sum(population), avg(population) from country;
select sum(surfacearea), max(surfacearea) from country;
select count(continent), max(continent),min(continent) from country;  -- string only accepts count,max and min
select * from country;

select population , count(population) from country;  -- aggregate fun does not works with normal colum name ,it only accepts or run with othet agg fun
select avg(population) , avg( replace(population,1,4) ) from country;
select replace (population, 0 ,'') from country;


-- 14-07-2026
use world;
-- group by= collection of same values
select distinct(continent) from country;
select continent , count(name) from country group by continent;  -- here it allow to use aggree fun along with these fun 
-- unlike the distinct fun 
select count(name) from country where continent='north america';
select count(name) from country where continent='asia';
select continent, count(name) from country group by continent;  -- gives all the continent count using one query only
select name, count(name) from country group by name;

select * from city;
select district, count(district) from city where district='zuid-holland';  -- count only on particular cities 
select district, count(district) , sum(population) from city group by district;   -- gives the count of cities in all districts 
select * from city;
select countrycode, count(name) from city group by countrycode;

select * from country;
-- count the no of countrues which have the life expectancy from 70.1 to 83.5
select count(name) from country where lifeexpectancy>70.1 and LifeExpectancy<83.5;
-- get the total population of the coutry who got there idependence after 1990
select  sum(population) from country where indepyear>1990;
-- count the no of countries which are not slaved by any comumnity 
select (count(name)-count(IndepYear)) as count from country ;
select count(name) from country where indepyear is null;
-- get the total countries and the toatlbsurface area for each region 
select region ,count(name), sum(surfacearea) from country group by region;
-- get the total country in each cotinent 
select continent, count(name) from country group by continent;
-- get the total country for each region for each continent
select region, continent, count(name) from country group by region ,continent;
















