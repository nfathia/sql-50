# Write your MySQL query statement below
select a.user_id, round(ifnull(avg(action = 'confirmed'),0),2) as confirmation_rate
from Signups a
left join Confirmations b
on a.user_id = b.user_id
group by a.user_id
order by a.user_id asc