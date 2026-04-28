USE Retail_Analytics_Project;
GO

SELECT TOP 20
    i.product_id,
    COUNT(DISTINCT i.order_id) as veces_vendido,
    SUM(i.price) as ventas_totales,
    AVG(i.price) as precio_promedio,
    RANK() OVER (ORDER BY SUM(i.price) DESC) as ranking_ventas
FROM order_items i
GROUP BY i.product_id
ORDER BY ranking_ventas;