-- 8 查找成绩排名第二的学生成绩
-- 学号 课程 成绩
select
    *
from
    成绩表;

-- 语文课第一名成绩
-- 成绩
select
    max(成绩)
from
    成绩表
where
    课程 = '语文';

-- 语文课第二名成绩
-- 成绩
select
    max(成绩) as 语文课第二名成绩
from
    成绩表
where
    课程 = '语文' and 成绩 < 
    (select
        max(成绩)
    from
        成绩表
    where
        课程 = '语文');

