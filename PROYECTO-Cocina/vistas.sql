-- ====================================================
-- ADVANCED SQL QUERIES FOR RESTAURANT DATABASE
-- ====================================================

-- 1. NUMBER OF ORDERS BY EMPLOYEE
-- Shows how many orders each employee has handled
SELECT 
    p.RFC_Nom,
    p.RFC_Fecha,
    CONCAT(per.Nombre, ' ', per.ApellidoP, ' ', per.ApellidoM) AS Empleado,
    per.Cargo,
    COUNT(p.Num_Pedido) AS Total_Pedidos,
    SUM(p.Total) AS Ventas_Totales
FROM Pedido p
JOIN Personal per ON p.RFC_Nom = per.RFC_Nom AND p.RFC_Fecha = per.RFC_Fecha
GROUP BY p.RFC_Nom, p.RFC_Fecha, per.Nombre, per.ApellidoP, per.ApellidoM, per.Cargo
ORDER BY Total_Pedidos DESC;


-- 2. NUMBER OF ORDERS PER DISH
SELECT m.No_guisado, m.Guisado, COUNT(p.Num_Pedido) AS Veces_Pedido FROM Menu m LEFT JOIN Pedido p ON m.No_guisado = p.No_guisado GROUP BY m.No_guisado, m.Guisado ORDER BY Veces_Pedido DESC;
-- Shows popularity of each dish
SELECT 
    m.No_guisado,
    m.Guisado,
    m.Precio,
    COUNT(p.Num_Pedido) AS Veces_Pedido,
    SUM(p.Porciones) AS Total_Porciones,
    SUM(p.Subtotal) AS Ingresos_Plato
FROM Menu m
LEFT JOIN Pedido p ON m.No_guisado = p.No_guisado
GROUP BY m.No_guisado, m.Guisado, m.Precio
ORDER BY Veces_Pedido DESC;

-- 3. ORDERS SORTED BY MOST EXPENSIVE AT TOP
-- Shows all orders from highest to lowest total
SELECT 
    p.Num_Pedido,
    p.Fecha,
    CONCAT(c.Nombre) AS Cliente,
    c.Num_telefonico,
    m.Guisado,
    p.Porciones,
    p.Subtotal,
    p.Extra,
    p.Total,
    CASE WHEN p.Pagado = 1 THEN 'Pagado' ELSE 'Pendiente' END AS Estado_Pago,
    p.Estado_preparacion
FROM Pedido p
JOIN Cliente c ON p.Num_telefonico = c.Num_telefonico
JOIN Menu m ON p.No_guisado = m.No_guisado
ORDER BY p.Total DESC;

-- 4. DAILY SALES SUMMARY
-- Shows total sales, orders, and average order value by day
SELECT 
    DATE(p.Fecha) AS Fecha,
    COUNT(p.Num_Pedido) AS Total_Pedidos,
    SUM(p.Total) AS Ventas_Dia,
    AVG(p.Total) AS Ticket_Promedio,
    SUM(p.Porciones) AS Porciones_Vendidas
FROM Pedido p
GROUP BY DATE(p.Fecha)
ORDER BY Fecha DESC;

-- 5. TOP CUSTOMERS BY SPENDING
-- Identifies your best customers
SELECT 
    c.Num_telefonico,
    c.Nombre,
    CONCAT(c.Calle, ' ', c.Numero, ', ', c.Colonia, ', ', c.Alcaldia) AS Direccion,
    COUNT(p.Num_Pedido) AS Total_Pedidos,
    SUM(p.Total) AS Gasto_Total,
    AVG(p.Total) AS Gasto_Promedio,
    MAX(p.Fecha) AS Ultima_Compra
FROM Cliente c
JOIN Pedido p ON c.Num_telefonico = p.Num_telefonico
GROUP BY c.Num_telefonico, c.Nombre, c.Calle, c.Numero, c.Colonia, c.Alcaldia
ORDER BY Gasto_Total DESC;

-- 6. UNPAID ORDERS ANALYSIS
-- Shows pending payments
SELECT 
    p.Num_Pedido,
    p.Fecha,
    c.Nombre AS Cliente,
    c.Num_telefonico,
    m.Guisado,
    p.Total,
    p.Estado_preparacion,
    TRUNC(SYSDATE - p.Fecha) AS Dias_Pendiente
FROM Pedido p
JOIN Cliente c ON p.Num_telefonico = c.Num_telefonico
JOIN Menu m ON p.No_guisado = m.No_guisado
WHERE p.Pagado = 0
ORDER BY p.Fecha ASC;

-- 7. MENU PROFITABILITY ANALYSIS
-- Assumes you want to see revenue per dish
SELECT 
    m.No_guisado,
    m.Guisado,
    m.Precio AS Precio_Unitario,
    COUNT(p.Num_Pedido) AS Veces_Ordenado,
    SUM(p.Porciones) AS Total_Porciones_Vendidas,
    SUM(p.Subtotal) AS Ingresos_Totales,
    AVG(p.Porciones) AS Porciones_Promedio_Por_Pedido,
    CASE 
        WHEN COUNT(p.Num_Pedido) = 0 THEN 0
        ELSE SUM(p.Subtotal) / COUNT(p.Num_Pedido)
    END AS Ingreso_Promedio_Por_Pedido
FROM Menu m
LEFT JOIN Pedido p ON m.No_guisado = p.No_guisado
GROUP BY m.No_guisado, m.Guisado, m.Precio
ORDER BY Ingresos_Totales DESC;

-- 8. MONTHLY PERFORMANCE REPORT
-- Shows performance by month
SELECT 
    EXTRACT(YEAR FROM p.Fecha) AS Año,
    EXTRACT(MONTH FROM p.Fecha) AS Mes,
    COUNT(p.Num_Pedido) AS Total_Pedidos,
    SUM(p.Total) AS Ventas_Mes,
    AVG(p.Total) AS Ticket_Promedio,
    SUM(CASE WHEN p.Pagado = 1 THEN p.Total ELSE 0 END) AS Ventas_Cobradas,
    SUM(CASE WHEN p.Pagado = 0 THEN p.Total ELSE 0 END) AS Ventas_Pendientes
FROM Pedido p
GROUP BY EXTRACT(YEAR FROM p.Fecha), EXTRACT(MONTH FROM p.Fecha)
ORDER BY Año DESC, Mes DESC;

-- 9. CUSTOMER LOCATION ANALYSIS
-- Shows orders by area/neighborhood
SELECT 
    c.Alcaldia,
    c.Colonia,
    COUNT(p.Num_Pedido) AS Total_Pedidos,
    COUNT(DISTINCT c.Num_telefonico) AS Clientes_Unicos,
    SUM(p.Total) AS Ventas_Zona,
    AVG(p.Total) AS Ticket_Promedio_Zona
FROM Cliente c
JOIN Pedido p ON c.Num_telefonico = p.Num_telefonico
GROUP BY c.Alcaldia, c.Colonia
ORDER BY Ventas_Zona DESC;

-- 10. EMPLOYEE PERFORMANCE WITH SHIFT ANALYSIS
-- Shows employee performance including their work schedule
SELECT 
    per.RFC_Nom,
    per.RFC_Fecha,
    CONCAT(per.Nombre, ' ', per.ApellidoP, ' ', per.ApellidoM) AS Empleado,
    per.Cargo,
    per.Horario,
    per.TelefonoCelular,
    COUNT(p.Num_Pedido) AS Pedidos_Atendidos,
    SUM(p.Total) AS Ventas_Generadas,
    AVG(p.Total) AS Ticket_Promedio,
    SUM(CASE WHEN p.Pagado = 1 THEN 1 ELSE 0 END) AS Pedidos_Cobrados,
    SUM(CASE WHEN p.Pagado = 0 THEN 1 ELSE 0 END) AS Pedidos_Pendientes
FROM Personal per
LEFT JOIN Pedido p ON per.RFC_Nom = p.RFC_Nom AND per.RFC_Fecha = p.RFC_Fecha
GROUP BY per.RFC_Nom, per.RFC_Fecha, per.Nombre, per.ApellidoP, per.ApellidoM, 
         per.Cargo, per.Horario, per.TelefonoCelular
ORDER BY Ventas_Generadas DESC;

-- 11. ORDER PREPARATION STATUS SUMMARY
-- Shows current status of all orders
SELECT 
    p.Estado_preparacion,
    COUNT(p.Num_Pedido) AS Cantidad_Pedidos,
    SUM(p.Total) AS Valor_Total,
    AVG(p.Total) AS Valor_Promedio,
    MIN(p.Fecha) AS Pedido_Mas_Antiguo,
    MAX(p.Fecha) AS Pedido_Mas_Reciente
FROM Pedido p
GROUP BY p.Estado_preparacion
ORDER BY Cantidad_Pedidos DESC;

-- 12. EXTRAS ANALYSIS
-- Analyzes additional charges
SELECT 
    CASE 
        WHEN p.Extra = 0 THEN 'Sin Extra'
        WHEN p.Extra > 0 AND p.Extra <= 50 THEN 'Extra Bajo (1-50)'
        WHEN p.Extra > 50 AND p.Extra <= 100 THEN 'Extra Medio (51-100)'
        ELSE 'Extra Alto (>100)'
    END AS Rango_Extra,
    COUNT(p.Num_Pedido) AS Cantidad_Pedidos,
    AVG(p.Extra) AS Promedio_Extra,
    SUM(p.Extra) AS Total_Extras,
    AVG(p.Total) AS Ticket_Promedio_Total
FROM Pedido p
GROUP BY 
    CASE 
        WHEN p.Extra = 0 THEN 'Sin Extra'
        WHEN p.Extra > 0 AND p.Extra <= 50 THEN 'Extra Bajo (1-50)'
        WHEN p.Extra > 50 AND p.Extra <= 100 THEN 'Extra Medio (51-100)'
        ELSE 'Extra Alto (>100)'
    END
ORDER BY Total_Extras DESC;

-- 13. RECENT ACTIVITY (LAST 30 DAYS)
-- Shows recent business activity
SELECT 
    DATE(p.Fecha) AS Fecha,
    COUNT(p.Num_Pedido) AS Pedidos_Dia,
    SUM(p.Total) AS Ventas_Dia,
    COUNT(DISTINCT p.Num_telefonico) AS Clientes_Unicos_Dia,
    AVG(p.Total) AS Ticket_Promedio_Dia
FROM Pedido p
WHERE p.Fecha >= SYSDATE - 30
GROUP BY DATE(p.Fecha)
ORDER BY Fecha DESC;

-- 14. CUSTOMER REPEAT BUSINESS
-- Identifies customer loyalty patterns
SELECT 
    c.Num_telefonico,
    c.Nombre,
    COUNT(p.Num_Pedido) AS Total_Pedidos,
    MIN(p.Fecha) AS Primera_Compra,
    MAX(p.Fecha) AS Ultima_Compra,
    SUM(p.Total) AS Gasto_Total,
    TRUNC(MAX(p.Fecha) - MIN(p.Fecha)) AS Dias_Como_Cliente,
    CASE 
        WHEN COUNT(p.Num_Pedido) = 1 THEN 'Cliente Nuevo'
        WHEN COUNT(p.Num_Pedido) BETWEEN 2 AND 5 THEN 'Cliente Ocasional'
        WHEN COUNT(p.Num_Pedido) BETWEEN 6 AND 15 THEN 'Cliente Regular'
        ELSE 'Cliente Frecuente'
    END AS Tipo_Cliente
FROM Cliente c
JOIN Pedido p ON c.Num_telefonico = p.Num_telefonico
GROUP BY c.Num_telefonico, c.Nombre
ORDER BY Total_Pedidos DESC;

-- 15. COMPREHENSIVE BUSINESS DASHBOARD
-- Overall business metrics
SELECT 
    'Resumen General' AS Metrica,
    COUNT(DISTINCT p.Num_Pedido) AS Total_Pedidos,
    COUNT(DISTINCT p.Num_telefonico) AS Clientes_Unicos,
    COUNT(DISTINCT p.No_guisado) AS Platillos_Vendidos,
    SUM(p.Total) AS Ventas_Totales,
    AVG(p.Total) AS Ticket_Promedio,
    SUM(p.Porciones) AS Porciones_Totales,
    SUM(CASE WHEN p.Pagado = 1 THEN p.Total ELSE 0 END) AS Ventas_Cobradas,
    SUM(CASE WHEN p.Pagado = 0 THEN p.Total ELSE 0 END) AS Ventas_Por_Cobrar
FROM Pedido p;