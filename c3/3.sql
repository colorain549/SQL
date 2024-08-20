-- 3 简单的数据查询
-- 用户id 商品id 用户行为类型 地理位置 用户行为发生时间
select
    *
from
    用户购买记录;

-- 剔除表中重复的购买记录
-- 用户id 商品id 用户行为类型 地理位置 用户行为发生时间
select
    distinct *
from
    用户购买记录;

-- 查询表中数据是否有空值的记录
-- 用户id 商品id 用户行为类型 地理位置 用户行为发生时间
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

-- 将列 "用户行为发生时间" 重命名为 "用户交易时间"
-- 用户id 商品id 用户行为类型 地理位置 用户行为发生时间
select
    用户id, 商品id, 用户行为类型, 地理位置,
    用户行为发生时间 as 用户交易时间
from
    用户购买记录;

