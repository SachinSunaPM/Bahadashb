with cte as (
SELECT * From bike_share_yr_0
union
SELECT * From bike_share_yr_1)

Select 
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
price*riders as revenue,
price*riders -COGS as profit
from cte a
left join cost_table b
on a.yr = b.yr



