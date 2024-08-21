-- 11 with...as(面试题9)
with 
a as (select 顾客ID from 销售订单表 where 产品 = 'ProductA'),
b as (select 顾客ID from 销售订单表 where 产品 = 'ProductB'),
c as (select 顾客ID from 销售订单表 where 产品 = 'ProductC')
select
    count(distinct 顾客ID) as 顾客人数
from
    销售订单表
where
    顾客ID in (select 顾客ID from a)
    and 顾客ID in (select 顾客ID from b)
    and 顾客ID not in (select 顾客ID from c);