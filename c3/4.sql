-- 4 游戏App用户分析

select
    count(用户ID) as 用户的总数,
    avg(用户年龄) as 用户的平均年龄
from
    用户登录信息表;