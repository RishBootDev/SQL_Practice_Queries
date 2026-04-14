-- this sql query explains about how difference is calculated in mysql

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

-- this sql query explains the use of NOT keyword in the mysql

SELECT * from station where not city = 'Berlin';
-- the above sql quey can also be written as :

select * from station where city != 'Berlin';
