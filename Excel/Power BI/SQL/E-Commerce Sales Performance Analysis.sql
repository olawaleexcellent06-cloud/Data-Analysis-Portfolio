SELECT * FROM `e-commerce profitability & sales`.`amazon sale report`;

select sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report`;

select count(distinct `order id`) as total_orders
from `e-commerce profitability & sales`.`amazon sale report`;

select sum(Qty)
from  `e-commerce profitability & sales`.`amazon sale report`;

select category, sum(amount) AS total_revenue
from `e-commerce profitability & sales`.`amazon sale report`
Group by category
order by total_revenue desc;

select sku, sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report`
Group by sku
order by total_revenue desc
limit 10;

select `Ship-state`, sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report`
Group by `Ship-state`
order by total_revenue desc
limit 10;

Select Fulfilment, sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report`
Group by Fulfilment;

SELECT MONTH(`Date`) AS month, SUM(Amount) AS total_revenue
FROM `e-commerce profitability & sales`.`amazon sale report`
GROUP BY MONTH(`Date`)
ORDER BY month;

select category, sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report`
where Category in ('Set','Bottom', 'Top')
Group by category;

select `Order id`, sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report`
where Amount BETWEEN 100 and 500
group by `order id`
order by total_revenue desc
Limit 20;

select category, sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report`
Group by category
having sum(amount) >1000;

SELECT Category, SUM(Amount) AS total_revenue
FROM `e-commerce profitability & sales`.`amazon sale report`
GROUP BY Category WITH ROLLUP;

select 
         ar.amount,
         sr.`category`,
         ar.SKU
from `e-commerce profitability & sales`.`amazon sale report` ar
join  `e-commerce profitability & sales`.`sale report` sr
       on ar.sku = sr.`SKU Code`;
       
       select 
       sr.category,
       sum(amount) AS total_revenue
       from `e-commerce profitability & sales`.`amazon sale report` ar
       join  `e-commerce profitability & sales`.`sale report` sr
            on ar.Sku = sr.`SKU Code`
            Group by category;
            
            
select 
sr.category,
sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report` ar
Join  `e-commerce profitability & sales`.`sale report` sr
	  on ar.Sku = Sr.`Sku code`
      Group by sr.category
      order by total_revenue desc;
      
      select
      sr.size,
      sum(amount) as total_revenue
      from `e-commerce profitability & sales`.`amazon sale report` ar
      Join `e-commerce profitability & sales`.`sale report` sr
            on ar.sku = sr.`sku code`
            Group by sr.size
            order by total_revenue desc;
            
            
select 
sr.category,
sum(amount) as total_revenue
from `e-commerce profitability & sales`.`amazon sale report` ar
Join  `e-commerce profitability & sales`.`sale report` sr
     on ar.sku = sr.`SKU Code`
Group by sr.category
having sum(ar.amount) >50000
Order by total_revenue desc;
