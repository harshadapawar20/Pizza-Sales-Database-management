-- Calculate the total revenue generated from pizza sales.

select 
      sum(order_details.quantity * pizzas.price) as TotalRevenue
from   
      order_details join pizzas
on 
      order_details.pizza_id = pizzas.pizza_id;
      
