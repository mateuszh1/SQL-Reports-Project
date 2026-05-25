use shop;
Select top 10 c.customer_id, c.first_name, c.last_name, c.email, c.city, 
SUM(oi.quantity * oi.unit_price) as Total_Sales
from customers c
join orders o
	on c.customer_id = o.customer_id
join order_items oi
	on o.order_id = oi.order_id
where ordate_status = 'completed'
group by 
 c.customer_id, c.first_name, c.last_name, c.email, c.city
 order by Total_Sales desc