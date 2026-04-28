USE Retail_Analytics_Project;
GO
-- Clientes que no han comprado en los últimos 3 meses
WITH ultima_compra AS (
    SELECT 
        c.customer_id,
        MAX(o.order_purchase_timestamp) as fecha_ultima_compra
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_id
)
SELECT 
    u.customer_id,
    u.fecha_ultima_compra,
    DATEDIFF(DAY, u.fecha_ultima_compra, GETDATE()) as dias_sin_comprar
FROM ultima_compra u
WHERE DATEDIFF(DAY, u.fecha_ultima_compra, GETDATE()) > 90
ORDER BY dias_sin_comprar DESC;