use retail_sales_project_analysis;

--  Retrieve all sales made on '2022-11-05'.

select * from retail_sales where sale_date = '2022-11-05';

-- Clothing sales in Nov-2022 where quantity >= 4.

select * from retail_sales where year(sale_date)='2022' and month(sale_date)='11' and quantiy>=4;

-- Total sales revenue per product category.

select category,sum(total_sale) as total
from retail_sales group by category;

-- Average age of customers purchasing Beauty products.

select round(avg(age),0)
from retail_sales;

-- All high-value transactions exceeding ₹1,000.

select * from retail_sales where total_sale>1000;

-- Total transactions by gender in each category.

select gender,category, sum(total_sale) from retail_sales group by gender, category order by category;

-- Best-selling month in each operating year.

with my_cte as (select year(sale_date),month(sale_date), sum(total_sale),
dense_rank() over(partition by year(sale_date)order by sum(total_sale) desc) as my_rank
from retail_sales 
group by year(sale_date),month(sale_date))

select * from my_cte where my_rank=1;

-- Top 5 VIP customers by total expenditure

with my_cte as (select customer_id,sum(total_sale) as sale,
dense_rank() over(order by sum(total_sale) desc) as my_rank
from retail_sales
group by customer_id)

select * from my_cte where my_rank<=5;

-- Unique customer count per product category.

select category,count(distinct customer_id) as count
from retail_sales
group by category;

-- Order distribution by operational day shift.

with my_cte as (select *,
case when hour(sale_time) < 12 then 'Morning' when hour(sale_time) between 12 and 17 then 'Afternoon' else 'Evening' end as shift 
from retail_sales)

select * from my_cte where shift = 'Morning';
