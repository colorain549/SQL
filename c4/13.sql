-- 13 学生成绩分析
-- 学号 分数 => 等级 学生人数
select
    *
from
    学生分数表;

-- 辅助表
-- 学生编号 分数 等级
select
    *,
    (case when 分数 <60 then '不及格'
            when 分数>=61 and 分数<=70 then '及格'
            when 分数>=71 and 分数<=85 then '良好'
            else '优秀'
    end) as 等级
from
    学生分数表;


-- 等级 学生人数
select
    等级,
    count(学号) as 学生人数
from
    (select
        *,
        (case when 分数<60 then '不及格'
            when 分数>=61 and 分数<=70 then '及格'
            when 分数>=71 and 分数<=85 then '良好'
            else '优秀'
        end) as 等级
    from
        学生分数表) as t
group by
    等级;