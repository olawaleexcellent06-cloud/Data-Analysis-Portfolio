SELECT * FROM superstore.`sample - superstore`;

select sum(Sales) as total_sales, sum(profit) as total_profit
from superstore.`sample - superstore`;

select category, sum(profit) as profit
from superstore.`sample - superstore`
Group by Category
order by  profit desc;

select state, sum(profit) as profit_by_state
from superstore.`sample - superstore`
Group by state
order by profit_by_state desc
limit 5;

select discount, avg(profit) as avg_profit
from superstore.`sample - superstore`
Group by discount;

select `Sub-Category`, sum(profit) as profit
from superstore.`sample - superstore`
group by `sub-category`
order by profit;

select `Sub-Category`, sum(profit) as profit
from superstore.`sample - superstore`
group by `sub-category`
order by profit desc
limit 5;

select `Sub-Category`, sum(profit) as profit
from superstore.`sample - superstore`
group by `sub-category`
order by profit
limit 5;

