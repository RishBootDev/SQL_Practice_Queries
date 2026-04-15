-- this sql query explains about how difference is calculated in mysql

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

-- this sql query explains the use of NOT keyword in the mysql

SELECT * from station where not city = 'Berlin';
-- the above sql query can also be written as :

select * from station where city != 'Berlin';

-- check the value is null query
SELECT * FROM employees WHERE salary IS NULL;

-- check the value is not null
SELECT * FROM employees WHERE salary IS NOT NULL;

-- in sql this sign represents a single pattern (_) when used with like operator
-- now i am presenting a query in which if i am given a pattern of name that has second letter a

select * from student where name like '_a%';

--Select all records where the first letter of the City is an "a" or a "c" or an "s".
SELECT * FROM Customers
WHERE City LIKE '
[acs]
%';

-- when the alias have spaces then it should be placed inside the square brackets
SELECT product as [Great Product] from orders;

--A single number is a number that appeared only once in the MyNumbers table.
--Find the largest single number. If there is no single number, report null.
--To print the null when there is no element with freq 1 is there so we need to follow this syntax

-- SELECT (subquery) AS column_name;  and this is final correct solution

SELECT (
           SELECT num
           FROM MyNumbers
           GROUP BY num
           HAVING COUNT(num) = 1
           ORDER BY num DESC
           LIMIT 1
    ) AS num;

-- the following query is an example of inner join
select e2.name as Employee
from Employee e1
         inner join Employee e2
                    on e1.id = e2.managerId
where e1.salary < e2.salary;


-- 586 -> Customer placing the largest number of orders
select customer_number
from Orders
group by customer_number
order by count(order_number) desc
    limit 1;


-- Triangle question
select *, if(x+y>z and y+z>x and x+z>y, "Yes","No") as triangle from triangle

-- Union in mysql
SELECT id, name FROM table1
UNION
SELECT id, name FROM table2;
