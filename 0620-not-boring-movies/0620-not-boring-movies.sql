# Write your MySQL query statement below
select id, movie, description, rating
from Cinema
where (id%2 !=0) and (description != "boring")
group by id, movie, description, rating
order by rating desc