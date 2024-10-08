-- 7 城市人口流动分析
-- 流出城市 流入城市 交通工具 日期 数量
select
    *
from
    各城市人口流动表;

-- 分析每个城市的总流入人口数量
-- 城市 总流入人口数
select
    流入城市 as 城市,
    sum(数量) as 总流入人口数
from
    各城市人口流动表
group by
    流入城市;