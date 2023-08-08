# Write your MySQL query statement below
select e.name, em.unique_id
from Employees as e
left join EmployeeUNI as em
ON e.id = em.id