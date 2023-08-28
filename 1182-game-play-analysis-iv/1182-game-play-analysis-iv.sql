
select round(SUM(CASE WHEN DATEDIFF(a.event_date,temp.min_date) = 1 THEN 1 ELSE 0 end)
/count(distinct temp.player_id), 2) as fraction
from 
    (select player_id, min(event_date) as min_date 
    from activity group by player_id) as temp
join activity a
on temp.player_id = a.player_id