-- 12 判断成绩及格与否
-- 学号 课程号 成绩 
select
    *
from
    学生成绩表;

-- 标记每一行的成绩
-- 学号 课程号 成绩 是否及格
select
    *,
    (case when 成绩 >= 60 then '及格'
            else '不及格'
    end) as 是否及格
from
    学生成绩表;