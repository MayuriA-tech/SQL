create database movies;
use movies;
create table kriti(filmname varchar(50), amount int, director varchar(50));

describe kriti;

select * from kriti; -- select is DQL 

-- insert comes into DML
insert into kriti values('mimi',500000,'mayuri');

select* from kriti;

show databases;

use world;
describe country;
select *  from country;
select name, continent from country;
select name, continent, population, population+500 from country;
select name, continent, population, population+500 as newpopulation from country;

select * from country where continent='asia';
select * from country where lifeexpectancy>80;
select name,continent from country where name='pakistan';
select * from country where continent='europe' and indepyear>1900; 
select * from country where lifeexpectancy<40;

-- 1) get the country code and the name where surface area is greater thaan 1900
-- 2) get the country code and name only for the country where region is southern europe
-- 3) get the countries code and name where country belongs to africa and region is central africa 
-- 4) get the country name ,continent , population where they belong to asia or africa 
-- 5) get the coutry name ,population and region with 10% increement in population for the countries who indeyear is after 1950
-- 6) get all the values of country where coutry name and the local name is same 

-- 1)
select code,name from country where surfacearea>1900;

-- 2)
select code,name from country where region='southern europe';

-- 3)
select code,name from country where continent='africa' and region='central africa';

-- 4)
select name,continent, population from country where continent='asia' or continent='africa';

-- 5)
select name,population,region,population+(0.1*population) as newpop from country where indepyear>1950;

-- 6)
select * from country where name=localname;

-- 10-07-2026
-- assign concat,replace,trim,substr,length
use world;
select concat(name,'-',continent) as country_capital from country;  -- used to add two string but here we need to give the separater
-- now to solve this issue of separation justification is done using CONCAT_WS(with separator)
select name,continent , concat_ws('-',continent,name) from country;
 
-- substring= to get some portion of the string from the original string
-- here index value starts from 1 only 
select name,substring(name,1,3) from country;
select name,substr(name,-4,2) from country;

-- length- total no of bytes(memory)
-- char_length - total length of any character 
select name,char_length(name) as name_length from country;

-- replace= replacing any char in the column 
select name,replace(name,'a','e') from country;

-- trim=it is used to remove the white spaces from th staring and ending of the charter
select trim('     he llo    ');
select trim(name) from country;

-- lpad/rpad= means to add(basically when we need to have a fix size like here of 6 ch so it pad or add a given charter in the name)
select name,lpad(name,6,'-') from country;

-- date- YYYY-MM-DD   <= DD/MM/YYYY ( can be converted )
select current_date(), current_time(), current_timestamp(), now();
select now();
select now(), adddate(now(), 2);   -- add the given days in the current date 
select now(), adddate(now(), interval 1 month); 
select now(), adddate(now(), interval 1 year), adddate(now(), interval 1 week);

-- extract year,month etc from the date
select now() , year(now()) , month(now());
select extract(month from now()), extract(year from now()), extract(minute from now());
select weekday ( now());
select now(), date_format(now(),'month is %m');


-- 11-07-2026
-- numeric funtions
select lifeexpectancy, round(lifeexpectancy) from country;  -- it convert the value to round off 
select round(76.453,1);

-- round off to nearest 10,100,1000
select round(9,-1), round(4.4,-1), round(23,-1);
select round(64,-2), round(233,-2);
select round(2350,-3), round(534,-3), round(7654.9,-3);

-- truncate- values of extract krna it does not round off the value
select round(34.867,-1), truncate(34.867,-1);

-- mode= gives the remaninder
select mod(3,5);
select floor(2662.724), floor(653.223); 



-- data sorting (order by clause)
select name, continent, region, population from country order by name desc;
select name, continent, region, population from country order by population;
select name, continent, region, population from country order by population, name;
select name, continent, region, population from country order by continent, name;
select name, continent, region, population from country order by region , population desc; -- region in asecending order and further 
-- it is sorted based on population in desc order 
















