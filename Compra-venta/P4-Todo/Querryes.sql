CREATE TABLE Marcas (
    idMarca VARCHAR2(10) NOT NULL,
    Descripcion VARCHAR2(50),
    Vigente NUMBER(1) CHECK (Vigente IN (0,1)),
    PRIMARY KEY (idMarca)
);

--Agregar la columna "idMarca" a la tabla "Productos" 
ALTER TABLE Productos ADD idMarca VARCHAR2(10);

--Crear la clave foránea para la relacion
ALTER TABLE Productos ADD CONSTRAINT FK_Productos_Marcas FOREIGN KEY (idMarca) REFERENCES Marcas(idMarca);

--2 Inserciones
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Ps1','Quacker',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Ps2','Mafer',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Ps3','Rufles',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Ps4','Sabritas',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Ps5','Marias',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Ps6','Emperador',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Ps7','Pepsi',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Fs1','CocaCola',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Fs2','Delvalle',1);
INSERT INTO MARCAS (IDMARCA,DESCRIPCION,VIGENTE)
    VALUES('Fs3','Fanta',1);
COMMIT;

--3. Insercion
INSERT INTO PROVEEDORES (RFC,NOMEMPRESA,NOMBREREPRESENTANTE,APEP_REPRESENTANTE,TELCONTACTO,DIAPEDIDO,DIAENTREGA,TIPOPAGO)
    VALUES('TEP961122','Cooperativa Pascual','Jorge','Juarez',5566771111,'Lunes','Lunes','Transferencia');
COMMIT;

--4.Adicion de columas
ALTER TABLE Proveedores ADD Calle VARCHAR2(20);
ALTER TABLE Proveedores ADD Num NUMBER;
ALTER TABLE Proveedores ADD CP NUMBER;
ALTER TABLE Proveedores ADD Colonia VARCHAR2(20);
ALTER TABLE Proveedores ADD Alcaldia VARCHAR2(20);
ALTER TABLE Proveedores ADD Estado VARCHAR2(20);

--Adicion de datos
----------------------------pending

--Consultas-vistas
--7.Crear una consulta que muestre: 
-- RFC, nombre completo del cliente (en una sola columna), 
-- número de ventas registradas por cliente y monto en ventas registradas por cliente. 
--Se deben mostrar a todos los clientes registrados, hayan o no registrado ventas.
SELECT 
    c.RFC,
    c.Nombre || ' ' || c.ApePaterno || ' ' || c.ApeMaterno AS NombreCompleto,
    NVL(COUNT(v.NumV), 0) AS NumeroVentas,
    NVL(SUM(v.Total), 0) AS MontoVentas
FROM Clientes c
LEFT JOIN Ventas v ON c.RFC = v.Clientes_RFC
GROUP BY c.RFC, c.Nombre, c.ApePaterno, c.ApeMaterno
ORDER BY c.RFC;

-- 8. Crear una vista con la consulta anterior que se llame: "V_ventasXcliente"
CREATE VIEW V_ventasXcliente AS
SELECT 
    c.RFC,
    c.Nombre || ' ' || c.ApePaterno || ' ' || c.ApeMaterno AS NombreCompleto,
    NVL(COUNT(v.NumV), 0) AS NumeroVentas,
    NVL(SUM(v.Total), 0) AS MontoVentas
FROM Clientes c
LEFT JOIN Ventas v ON c.RFC = v.Clientes_RFC
GROUP BY c.RFC, c.Nombre, c.ApePaterno, c.ApeMaterno;

-- 9. Con la vista anterior crear una consulta que muestre todos los campos 
--    y un campo de puntos acumulados (cada punto se calcula considerando 
--    el monto de ventas por cliente entre 100)
SELECT 
    RFC,
    NombreCompleto,
    NumeroVentas,
    MontoVentas,
    FLOOR(MontoVentas / 100) AS PuntosAcumulados
FROM V_ventasXcliente
ORDER BY RFC;

-- 10. Consulta que muestre: el código de producto, descripción corta, precio unitario 
--    y cantidad total de productos comprados a la fecha. 
--    Ordenar de manera descendente según sus compras
SELECT 
    pr.CodProd,
    pr.DescripC,
    pr.PrecioV,
    NVL(SUM(pc.Cantidad), 0) AS CantidadTotalComprada
FROM Productos pr
LEFT JOIN Productosc pc ON pr.CodProd = pc.Productos_CodProd
GROUP BY pr.CodProd, pr.DescripC, pr.PrecioV
ORDER BY CantidadTotalComprada DESC;

-- 11. Consulta que muestre, de los clientes, la colonia y el número de clientes que existen registrados por colonia
SELECT 
    Colonia,
    COUNT(*) AS NumeroClientes
FROM Clientes
WHERE Colonia IS NOT NULL
GROUP BY Colonia
ORDER BY NumeroClientes DESC, Colonia;

