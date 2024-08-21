-- 17 行列互换(举一反三)
select
    学号,
    max(case 课程 when '语文' then 成绩 else 0 end) as 语文成绩,
    max(case 课程 when '数学' then 成绩 else 0 end) as 数学成绩
from
    成绩表
group by
    学号;
