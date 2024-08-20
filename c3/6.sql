-- 6 查找重复数据
-- 学号 姓名
select
    *
from
    学生表;

-- 辅助表
-- 姓名 计数
select
    姓名,
    count(姓名) as 计数
from
    学生表
group by
    姓名;

-- 使用group by
-- 姓名
select
    姓名
from
    (select
        姓名,
        count(姓名) as 计数
    from
        学生表
    group by
        姓名) as t 
where
    计数 > 1;

-- 使用having
-- 姓名
select
    姓名
from
    学生表
group by
    姓名
having
    count(姓名) > 1;
