--Consulta mostrando: número de seguro social, nombre completo del empleado, 
--    número de ventas registradas por empleado y monto en ventas registradas por empleado
--    Se deben mostrar a todos los empleados registrados, hayan o no registrado ventas

SELECT 
    p.NumSS,
    p.Nombre || ' ' || p.ApePaterno || ' ' || p.ApeMaterno AS NombreCompleto,
    NVL(COUNT(v.NumV), 0) AS NumeroVentas,
    NVL(SUM(v.Total), 0) AS MontoVentas
FROM Personal p
LEFT JOIN Ventas v ON p.NumSS = v.Personal_NumSS
GROUP BY p.NumSS, p.Nombre, p.ApePaterno, p.ApeMaterno
ORDER BY p.NumSS;

--Vista con la consulta anterios
CREATE VIEW V_ventasXemp AS
SELECT 
    p.NumSS,
    p.Nombre || ' ' || p.ApePaterno || ' ' || p.ApeMaterno AS NombreCompleto,
    NVL(COUNT(v.NumV), 0) AS NumeroVentas,
    NVL(SUM(v.Total), 0) AS MontoVentas
FROM Personal p
LEFT JOIN Ventas v ON p.NumSS = v.Personal_NumSS
GROUP BY p.NumSS, p.Nombre, p.ApePaterno, p.ApeMaterno;

-- 3. Con la vista anterior crear una consulta que muestre todos los campos 
--    y una comisión del 10% sobre el monto de ventas por empleado

SELECT 
    NumSS,
    NombreCompleto,
    NumeroVentas,
    MontoVentas,
    MontoVentas * 0.10 AS Comision
FROM V_ventasXemp
ORDER BY NumSS;

-- 4. Consulta que muestre: el código de producto, descripción corta, precio unitario 
--    y cantidad total de productos vendidos a la fecha. 
--    Ordenar de manera descendente según sus ventas

SELECT 
    pr.CodProd,
    pr.DescripC,
    pr.PrecioV,
    NVL(SUM(pv.Cantidad), 0) AS CantidadTotalVendida
FROM Productos pr
LEFT JOIN Productosv pv ON pr.CodProd = pv.Productos_CodProd
GROUP BY pr.CodProd, pr.DescripC, pr.PrecioV
ORDER BY CantidadTotalVendida DESC;

-- 5. Modificar la consulta anterior para que solo se muestren los productos 
--    con mas de 2 productos vendidos

SELECT 
    pr.CodProd,
    pr.DescripC,
    pr.PrecioV,
    SUM(pv.Cantidad) AS CantidadTotalVendida
FROM Productos pr
INNER JOIN Productosv pv ON pr.CodProd = pv.Productos_CodProd
GROUP BY pr.CodProd, pr.DescripC, pr.PrecioV
HAVING SUM(pv.Cantidad) > 2
ORDER BY CantidadTotalVendida DESC;

-- 6. Con la consulta anterior crear la vista "ProdsMasVendidos"

CREATE VIEW ProdsMasVendidos AS
SELECT 
    pr.CodProd,
    pr.DescripC,
    pr.PrecioV,
    SUM(pv.Cantidad) AS CantidadTotalVendida
FROM Productos pr
INNER JOIN Productosv pv ON pr.CodProd = pv.Productos_CodProd
GROUP BY pr.CodProd, pr.DescripC, pr.PrecioV
HAVING SUM(pv.Cantidad) > 2;