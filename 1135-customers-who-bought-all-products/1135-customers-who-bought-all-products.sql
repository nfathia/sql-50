# Write your MySQL query statement below
select a.customer_id
from Customer a
group by customer_id
having count(distinct product_key) = (select count(*) from Product)
