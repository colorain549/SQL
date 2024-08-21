-- 15 快递量区间分布
-- 运单号 客户id 创建时间
select
    *
from
    快递量区间分布;

-- 客户id 单量
select
    客户id,
    count(distinct 运单号) as 单量
from
    快递量区间分布
group by
    客户id;

-- 客户id 单量 单量区间
select
    *, 
    (case when 单量 >= 0 and 单量 <= 5 then '0-5'
            when 单量 >= 6 and 单量 <= 10 then '6-10'
            when 单量 >=11 and 单量 <= 20 then '11-20'
            else '20以上'
    end) as 单量区间
from
    ()

-- 单量 客户数
select
    单量区间 as 单量,
    count(客户id) as 客户数
from
    (select
        *, 
        (case when 单量 >= 0 and 单量 <= 5 then '0-5'
            when 单量 >= 6 and 单量 <= 10 then '6-10'
            when 单量 >=11 and 单量 <= 20 then '11-20'
            else '20以上'
        end) as 单量区间
    from
        (select
            客户id,
            count(distinct 运单号) as 单量
        from
            快递量区间分布
        group by
            客户id
    ) as t) as t2
group by
    单量区间;