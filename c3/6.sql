-- 6 查找重复数据

-- from
-- where
-- having

-- select

-- order by
-- limit

-- 辅助表
-- 姓名 计数
select
    姓名,
    count(姓名) as 计数
from
    学生表
group by
    姓名;

-- 查找重复数据
select 
    *
from
    () as t;
where
    计数 > 1;

-- 完整语句
select
    姓名
from
    (select
        姓名,
        count(姓名) as 计数
    from
        学生表
    group by
        姓名
    ) as t
where
    计数 > 1;

-- having 子句
select
    姓名
from
    学生表
group by
    姓名
having
    count(姓名) > 1;



