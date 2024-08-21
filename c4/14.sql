-- 14 店铺订单分析
-- 客户编码 订单数
select
    *
from
    订单表;

-- 辅助表
-- 客户编码 订单数 订单数区间
select
    *,
    (case when 订单数 >= 0 and 订单数 <= 2 then '0-2'
            when 订单数 >= 3 and 订单数 <= 5 then '3-5'
            else '5单以上'
    end) as 订单数区间
from
    订单表;


-- 订单数区间 人数
select
    订单数区间,
    count(客户编码) as 人数
from
    (select
        *,
        (case when 订单数 >= 0 and 订单数 <= 2 then '0-2'
            when 订单数 >= 3 and 订单数 <= 5 then '3-5'
            else '5单以上'
        end) as 订单数区间
    from
        订单表
    ) as t 
group by
    订单数区间;