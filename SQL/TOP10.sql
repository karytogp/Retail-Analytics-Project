SELECT TOP 10
    c.customer_id,
    c.customer_city,
    c.customer_state,
    SUM(i.price) as total_gastado,
    COUNT(DISTINCT o.order_id) as numero_pedidos,
    AVG(i.price) as ticket_promedio
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items i ON o.order_id = i.order_id
WHERE o.order_status = 'delivered'  -- solo pedidos entregados
GROUP BY c.customer_id, c.customer_city, c.customer_state
ORDER BY total_gastado DESC;