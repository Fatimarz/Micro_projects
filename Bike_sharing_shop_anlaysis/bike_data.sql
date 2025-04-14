use bike_data;

-- combining tables using ctes
 with cte as (
 select * from bike_year_0
 union all
 select * from bike_year_1)

 select
 dteday,season,a.yr,hr,rider_type,riders,weekday,COGS,price, riders*price as revenue,riders*price-COGS as profit 
 from cte a 
 left join cost_table b
 on a.yr=b.yr


