SELECT 
    c.customer_state,
    COUNT(DISTINCT c.customer_id) as numero_clientes,
    COUNT(DISTINCT o.order_id) as numero_pedidos,
    SUM(i.price) as ventas_totales,
    ROUND(AVG(i.price), 2) as ticket_promedio,
    ROUND(SUM(i.price) / COUNT(DISTINCT c.customer_id), 2) as ventas_por_cliente
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items i ON o.order_id = i.order_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY ventas_totales DESC;