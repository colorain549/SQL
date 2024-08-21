-- 10 视图的概念(面试题8)
-- 创建视图
create view myview as 
select
    *
from
    成绩表;

-- 使用视图
select
    *
from
    myview;

-- 撤销(删除)视图
drop view if exists myview;

