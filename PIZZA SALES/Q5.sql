-- List the top 5 most ordered pizza types along with their quantities.

-- select pizza_types.name,
-- orders_details.quantity
-- from pizza_types join pizzas
-- on pizza_types.pizza_type_id = pizzas.pizza_type_id
-- join orders_details
-- on orders_details.pizza_id = pizzas.pizza_id;

SELECT 
    pizza_types.name, SUM(orders_details.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;