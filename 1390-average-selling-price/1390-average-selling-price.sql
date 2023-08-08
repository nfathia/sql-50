# Write your MySQL query statement below
select a.product_id, round(sum(a.price*b.units)/sum(units),2) as average_price
from Prices a
join UnitsSold b on a.product_id = b.product_id and purchase_date between start_date and end_date
group by 1

