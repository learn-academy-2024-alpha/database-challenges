-- Challenges
-- Be sure to copy the queries in the file in the database repository for later reference.

-- What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country
WHERE name = 'United States'
-- What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country
Where name = 'United States'
-- Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, continent, population, lifeexpectancy 
FROM country
WHERE continent = 'Africa'
AND population < 3e7
AND lifeexpectancy > 45
-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform
FROM country
WHERE governmentform LIKE '%Republic%'
-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform,indepyear
FROM country
WHERE governmentform LIKE '%Republic%'
AND indepyear > 1945
-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform,indepyear
FROM country
WHERE governmentform NOT LIKE '%Republic%'
AND indepyear > 1945
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT code, name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy ASC
LIMIT 15
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT code, name, lifeexpectancy
FROM country
WHERE lifeexpectancy != 0
ORDER BY lifeexpectancy DESC
LIMIT 15
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population / surfacearea AS density
FROM country
WHERE population / surfacearea != 0
ORDER BY density  ASC
LIMIT 5

-- Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population / surfacearea AS density
FROM country
ORDER BY density  DESC
-- Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country
ORDER BY surfacearea ASC
LIMIT 1

-- Which is the smallest country by population? (HINT: 50)?
SELECT name, population
WHERE population != 0
FROM country
ORDER BY population ASC
LIMIT 1

-- Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 1

-- Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country
ORDER BY population DESC
LIMIT 1

-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT headofstate, population
FROM country
ORDER BY population DESC
LIMIT 1
-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
WITH populated_countries AS (
    SELECT name, population, gnp
FROM country
ORDER BY gnp DESC
LIMIT 10 
)
SELECT name, population, gnp
FROM populated_countries
ORDER BY population ASC
LIMIT 1
-- Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH populated_countries AS (
    SELECT name, population, surfacearea
    FROM country
    WHERE population > 0
    ORDER BY population ASC
    LIMIT 10  
)
SELECT name, population, surfacearea
FROM populated_countries
ORDER BY surfacearea DESC
LIMIT 1
-- Which region has the highest average gnp? (HINT: North America)
SELECT region, AVG(gnp) AS average_gnp
FROM country
GROUP BY region
ORDER BY average_gnp DESC
LIMIT 1
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT headofstate, SUM(surfacearea) AS total_surfacearea
FROM country
GROUP BY headofstate
ORDER BY total_surfacearea DESC
LIMIT 1
-- What is the average life expectancy for all continents?
SELECT continent, AVG(lifeexpectancy) AS average_lifeexpectancy
FROM country
GROUP BY continent
ORDER BY average_lifeexpectancy
-- What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(*) AS count_governmentform
FROM country
GROUP BY governmentform
ORDER BY count_governmentform DESC
-- How many countries are in North America?
SELECT continent, COUNT(name) AS sumof_countries
FROM country
WHERE continent = 'North America'
GROUP BY continent

-- What is the total population of all continents?
SELECT continent, SUM(population) AS sumof_populations
FROM country
GROUP BY continent

-- 🏔 Stretch Goals
-- Which countries have the letter "z" in the name? How many?
-- Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
-- Of the smallest 10 countries by population, which has the biggest per capita gnp?
-- Of the biggest 10 countries by area, which has the biggest gnp?
-- Of the biggest 10 countries by population, which has the biggest per capita gnp?
-- What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
-- What year is this country database from? Cross reference various pieces of information to determine the age of this database.