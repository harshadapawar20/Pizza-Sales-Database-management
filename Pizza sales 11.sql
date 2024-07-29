-- Analyze the cumulative revenue generated over time.

select 
    date,
	sum(Revenue) over(order by date) as cum_revenue
from
(SELECT
  orders.date,
  sum(order_details.quantity * pizzas.price) as Revenue
from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id
join orders 
on order_details.order_id = orders.order_id
group by orders.date) as sales;
  