-- 4 游戏App用户分析
-- 登录日期 用户ID 用户年龄
select
    *
from
    用户登录信息表;

-- 分析用户总数和用户平均年龄
-- 用户总数 用户平均年龄
select
    count(distinct 用户ID) as 用户总数,
    avg(用户年龄) as 用户平均年龄
from
    用户登录信息表;