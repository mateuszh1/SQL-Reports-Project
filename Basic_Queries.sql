Select 
c.category_id, c.category_name,
SUM(oi.quantity * oi.unit_price) AS category_revenue
from categories c
join products p
on c.category_id = p.category_id
join order_items oi
on p.product_id = oi.product_id
join orders o
on oi.order_id = o.order_id
where ordate_status = 'completed'
group by c.category_id, c.category_name
order by category_revenue desc