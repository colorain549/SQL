-- 16 行列互换
select
    年, 
    max(case 月 when '1' then 值 end) as m1, 
    max(case 月 when '2' then 值 end) as m2, 
    max(case 月 when '3' then 值 end) as m3, 
    max(case 月 when '4' then 值 end) as m4
from
    cook
group by
    年;