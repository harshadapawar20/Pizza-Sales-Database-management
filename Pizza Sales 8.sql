-- Join relevant tables to find the category-wise distribution of pizzas.

select category , count(name) as  Total_Count
from pizza_types
group by category
order by Total_count;