with cte as (
select * from bike_share_yr_0
union
select * from bike_share_yr_1
)
select
hr,
dteday,
season,
a.yr,
rider_type,
riders,
price,
COGS,
riders * price as revenue,
riders * price - COGS as profit
from cte as a 
left join cost_table as b
on a.yr = b.yr
