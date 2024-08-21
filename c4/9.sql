-- 9 如何找出多条件的用户
-- 订单号 顾客ID 交易日期 交易网点 产品 销售数量 零售价
select
    *
from
    销售订单表;

-- 购买过A产品的顾客
select 顾客ID from 销售订单表 where 产品='ProductA';

-- 购买过B产品的顾客
select 顾客ID from 销售订单表 where 产品='ProductB';

-- 没有购买过C产品的顾客
select 顾客ID from 销售订单表 where 产品='ProductC';

-- 统计顾客人数
select
    count(distinct 顾客ID) as 顾客人数
from
    销售订单表;

-- 统计符合条件的顾客人数
select
    count(distinct 顾客ID) as 顾客人数
from
    销售订单表
where
    顾客ID in (select 顾客ID from 销售订单表 where 产品='ProductA')
    and 顾客ID in (select 顾客ID from 销售订单表 where 产品='ProductB')
    and 顾客ID not in (select 顾客ID from 销售订单表 where 产品='ProductC');
