Select TOP 10 
p.product_id, p.product_name,oi.unit_price,
SUM(oi.quantity) AS total_quantity_sold,
Sum(oi.quantity * oi.unit_price) as total_income
from products p
join order_items oi
on p.product_id = oi.product_id
join orders o
on o.order_id = oi.order_id
where o.ordate_status = 'completed'
group by p.product_id, p.product_name, oi.unit_price
order by total_income,total_quantity_sold asc