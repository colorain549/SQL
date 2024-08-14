-- 3 简单的数据查询

select 
    distinct *
from
    用户购买记录;

-- 

select
    *
from
    用户购买记录
where
    用户id is null
    or 商品id is null
    or 用户行为类型 is null
    or 地理位置 is null
    or 用户行为发生时间 is null;

-- 

select
    用户id, 商品id, 用户行为类型, 地理位置,
    用户行为发生时间 as 用户交易时间
from
    用户购买记录;