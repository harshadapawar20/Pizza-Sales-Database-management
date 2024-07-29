-- Identify the most common pizza size ordered.

select * from order_details; 

select pizzas.size,  sum(order_details.quantity) as TotalQuantity
from order_details join pizzas
on pizzas.pizza_id = order_details.pizza_id
 group by pizzas.size;
