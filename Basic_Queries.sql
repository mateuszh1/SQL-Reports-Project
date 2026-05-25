use shop;
Select MONTH(o.order_date) AS sales_month,
sum(oi.quantity * oi.unit_price) as Total_Sales
from orders o 
join order_items oi 
on o.order_id = oi.order_id
where o.ordate_status = 'completed'
group by MONTH(o.order_date)
order by sales_month asc