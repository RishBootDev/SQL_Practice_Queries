-- this sql query explains about how difference is calculated in mysql

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

-- this sql query explains the use of NOT keyword in the mysql

SELECT * from station where not city = 'Berlin';