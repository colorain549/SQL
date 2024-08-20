-- 5 公司经营指标
-- 订单号 顾客ID 交易时间 交易网点 产品 销售数量 零售价
select
    *
from
    销售订单表;

-- 分析购买人数 总销售金额 客单价 客单件 人均购买频次
-- 购买人数 总销售金额 客单价 客单件 人均购买频次
select
    count(distinct 顾客ID) as 购买人数,
    sum(销售数量 * 零售价) as 总销售金额,
    sum(销售数量 * 零售价)/count(distinct 顾客ID) as 客单价,
    sum(销售数量)/count(distinct 顾客ID) as 客单件,
    count(订单号)/count(distinct 顾客ID) as 人均购买频次
from
    销售订单表;