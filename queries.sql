-- this sql query explains about how difference is calculated in mysql

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;