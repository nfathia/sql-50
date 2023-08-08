# Write your MySQL query statement below
select name
from employee
where id in ( SELECT managerId
FROM employee
GROUP BY managerId
HAVING count(name) >= 5 );