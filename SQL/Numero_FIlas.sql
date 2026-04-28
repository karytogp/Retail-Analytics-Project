USE Retail_Analytics_Project;
GO

-- ¿Cuántas filas tiene cada tabla?
SELECT 'customers' as Tabla, COUNT(*) as Filas FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'order_payments', COUNT(*) FROM order_payments;