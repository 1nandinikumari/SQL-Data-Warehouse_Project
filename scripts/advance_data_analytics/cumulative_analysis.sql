--calculate the total sales per month 
--and the running total of sales over time

select 
order_date,
total_sales,
sum(total_sales) over(order by order_date) as running_total_sales
from
(
select 
datetrunc(month,order_date) as order_date,
sum(sales_amount) as total_sales
from gold.fact_sales
where order_date is not null
group by datetrunc(month,order_date)
)t

-- same query but partition by year

select 
order_date,
total_sales,
sum(total_sales) over(partition by order_date order by order_date) as running_total_sales
from
(
select 
datetrunc(month,order_date) as order_date,
sum(sales_amount) as total_sales
from gold.fact_sales
where order_date is not null
group by datetrunc(month,order_date)
)t

--moving average of the price

select 
order_date,
total_sales,
sum(total_sales) over(order by order_date) as running_total_sales,
avg(total_price) over(order by order_date) as moving_avg_price
from
(
select 
datetrunc(month,order_date) as order_date,
sum(sales_amount) as total_sales,
avg(price) as total_price
from gold.fact_sales
where order_date is not null
group by datetrunc(month,order_date)
)t



