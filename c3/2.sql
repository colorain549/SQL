-- 2 电商用户行为
-- 访客id 浏览日期 浏览时长
select
    *
from
    用户行为表;

-- 每个访客和对应的浏览日期
-- 访客id 浏览日期 浏览时长
select
    distinct 访客id, 浏览日期 
from
    用户行为表;