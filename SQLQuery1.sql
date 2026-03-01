use TestForInterview;
go


select * from pizza_sales;

select count('pizza_id')
from pizza_sales;
select distinct count('pizza_id')
from pizza_sales;



select 
sum(case when pizza_id is null then 1 else 0 end) as nulls_pizza_id,
sum(case when order_id is null then 1 else 0 end) as nulls_order_id,
sum(case when pizza_name is null then 1 else 0 end) as nulls_pizza_name,
sum(case when order_date is null then 1 else 0 end) as nulls_order_date,
sum(case when pizza_category is null then 1 else 0 end) as nulls_pizza_category,
sum(case when pizza_name is null then 1 else 0 end) as nulls_pizza_name
from pizza_sales;


select unit_price
from pizza_sales
where unit_price<=0;

select total_price
from pizza_sales
where total_price<=0;



select distinct pizza_name
from pizza_sales;

select distinct pizza_size
from pizza_sales;

select distinct pizza_category
from pizza_sales;


select *
from pizza_sales
where total_price<> unit_price*quantity;


alter table pizza_sales alter column order_date date;

alter table pizza_sales alter column order_time time;


update pizza_sales
set 
pizza_name=lower(ltrim(rtrim(pizza_name))),
pizza_category=lower(ltrim(rtrim(pizza_category))),
pizza_size=upper(ltrim(rtrim(pizza_size)));


alter table pizza_sales
add order_year int,
    order_month int,
    order_hour int,
    month_name varchar(20),
    order_day varchar(20);


   
UPDATE pizza_sales
SET 
    order_year = YEAR(order_date),
    order_month = MONTH(order_date),
    month_name = DATENAME(MONTH, order_date),
    order_day = DATENAME(WEEKDAY, order_date),
    order_hour = DATEPART(HOUR, order_time);



    select * from pizza_sales;