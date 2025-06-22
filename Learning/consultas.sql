SELECT 
    p.NumSS,
    p.Nombre || ' ' || p.ApePaterno || ' ' || p.ApeMaterno AS NombreCompleto,
    NVL(COUNT(v.NumV), 0) AS NumeroVentas, NVL(SUM(v.Total), 0) AS MontoVentas,
    
SELECT * FROM Personal p RIGHT JOIN Ventas v ON p.NumSS = v.Personal_NumSS;
