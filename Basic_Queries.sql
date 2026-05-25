select o.ordate_status,count(oi.order_id) as orders_count from orders o
join order_items oi
on o.order_id = oi.order_id
group by o.ordate_status
order by orders_count desc