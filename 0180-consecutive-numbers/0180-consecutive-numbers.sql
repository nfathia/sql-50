# Write your MySQL query statement below
select distinct I1.num as ConsecutiveNums
from Logs I1
join Logs I2 on I1.id = I2.id + 1
join Logs I3 on I1.id = I3.id + 2
where I1.num = I2.num and I1.num = I3.num;