-- 1 查找空值
-- 教师号 教师姓名
select
    *
from
    教师表;

-- 姓名为空值的教师信息
-- 教师号 教师姓名
select
    *
from
    教师表
where
    教师姓名 is null;

-- 姓名不为空值的教师信息
-- 教师号 教师姓名
select
    *
from
    教师表
where
    教师姓名 is not null;