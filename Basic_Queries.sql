with orders_sum as (
select o.order_id, sum(oi.quantity * oi.unit_price) as order_price from orders o
join order_items oi
on o.order_id = oi.order_id
GROUP BY o.order_id
)
select avg(order_price) as average_order_value from orders_sum