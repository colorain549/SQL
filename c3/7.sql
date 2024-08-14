-- 7 城市人口流动分析

select
    *
from
    各城市人口流动表;

-- 

select
    流入城市 as 城市,
    sum(数量) as 总流入人口数
from
    各城市人口流动表
group by
    流入城市;