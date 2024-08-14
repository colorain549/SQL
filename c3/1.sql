-- 1 查找空值

select 
    *
from
    教师表
where 
    教师姓名 is null;

-- 

select 
    *
from
    教师表
where 
    教师姓名 is not null;