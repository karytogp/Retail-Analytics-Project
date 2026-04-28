WITH ventas_mensuales AS (
    SELECT 
        YEAR(o.order_purchase_timestamp) as año,
        MONTH(o.order_purchase_timestamp) as mes,
        SUM(i.price) as ventas_totales
    FROM orders o
    JOIN order_items i ON o.order_id = i.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY YEAR(o.order_purchase_timestamp), MONTH(o.order_purchase_timestamp)
)
SELECT 
    año,
    mes,
    ventas_totales,
    LAG(ventas_totales) OVER (ORDER BY año, mes) as ventas_mes_anterior,
    ROUND((ventas_totales - LAG(ventas_totales) OVER (ORDER BY año, mes)) * 100.0 / LAG(ventas_totales) OVER (ORDER BY año, mes), 2) as crecimiento_pct
FROM ventas_mensuales
ORDER BY año, mes;