-- 5 公司经营指标

select
    count(distinct 顾客ID) as 购买人数
from
    销售订单表;

-- 

select
    sum(销售数量 * 零售价) as 总销售金额
from
    销售订单表;

-- 

select
    sum(销售数量 * 零售价)/count(distinct 顾客ID) as 客单价
from
    销售订单表;

-- 

select
    sum(销售数量)/count(distinct 顾客ID) as 客单件
from
    销售订单表;

-- 

select
    count(订单号)/count(distinct 顾客ID) as 人均购买频次
from
    销售订单表;