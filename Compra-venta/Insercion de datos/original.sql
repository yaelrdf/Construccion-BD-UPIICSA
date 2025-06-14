/*Insert en personal*/
INSERT INTO personal (NumSS,Nombre,ApePaterno,ApeMaterno,TelPersonal,TelCasa,FechaContrato,FecuenciaPago,SueldoBase,Puesto,h_entrada,h_salida)
 VALUES (167,'Hilda','Guzmán','Reyes',5555456789,5521572456,'2015-05-16','Semana',1200.00,'Ayudante','07:35:30','12:36:19');
INSERT INTO personal (NumSS,Nombre,ApePaterno,ApeMaterno,TelPersonal,TelCasa,FechaContrato,FecuenciaPago,SueldoBase,Puesto,h_entrada,h_salida)
 VALUES (321,'Erendira','Del Valle','Merino',5555123456,5521573520,'1995-01-01','Quincena',3000.00,'Administrador','07:35:31','10:36:19');
INSERT INTO personal (NumSS,Nombre,ApePaterno,ApeMaterno,TelPersonal,TelCasa,FechaContrato,FecuenciaPago,SueldoBase,Puesto,h_entrada,h_salida)
 VALUES (456,'Luis','Garcia','Becerril',5555234567,5521571234,'1995-01-01','Quincena',3000.00,'Administrador','07:35:31','15:36:19');
INSERT INTO personal (NumSS,Nombre,ApePaterno,ApeMaterno,TelPersonal,TelCasa,FechaContrato,FecuenciaPago,SueldoBase,Puesto,h_entrada,h_salida)
 VALUES (687,'Veronica','Ordoñes','Flores',5555001234,5521579874,'2010-07-01','Semana',1000.00,'Ayudante','07:35:31','09:36:19');
INSERT INTO personal (NumSS,Nombre,ApePaterno,ApeMaterno,TelPersonal,TelCasa,FechaContrato,FecuenciaPago,SueldoBase,Puesto,h_entrada,h_salida)
 VALUES (897,'Cristina','Monroy','Jimenez',5555345678,5521571265,'2016-01-16','Semana',1200.00,'Ayudante','07:35:31','16:36:19');

/*Insert en clientes*/
INSERT INTO clientes (RFC,Nombre,ApePaterno,ApeMaterno,Calle,Num,Colonia,CP,Alcaldia)
 VALUES ('CARH810911','Hilda','Guzmán','Reyes','Los Pinos',29,'La Peña',15230,'Milpa Alta');
INSERT INTO clientes (RFC,Nombre,ApePaterno,ApeMaterno,Calle,Num,Colonia,CP,Alcaldia)
 VALUES ('DOME751202','Erick','Dominguez','Morales','El Mirador',12,'Tejomulco',15225,'Milpa Alta');
INSERT INTO clientes (RFC,Nombre,ApePaterno,ApeMaterno,Calle,Num,Colonia,CP,Alcaldia)
 VALUES ('GUJA770724','Adriana','Guzmá¡n','Jimenez','Gladiolas',30,'Jazmin',15220,'Milpa Alta');
INSERT INTO clientes (RFC,Nombre,ApePaterno,ApeMaterno,Calle,Num,Colonia,CP,Alcaldia)
 VALUES ('REAM850330','Mauricio','Reyes','Aguilar','Las Flores',15,'La PeÃ±a',15230,'Milpa Alta');
INSERT INTO clientes (RFC,Nombre,ApePaterno,ApeMaterno,Calle,Num,Colonia,CP,Alcaldia)
 VALUES ('VIPI800215','Israel','Vigueras','Perez','Aldama',48,'Jazmin',15220,'Milpa Alta');

/*Insert en proveedores*/
INSERT INTO proveedores (RFC,NomEmpresa,NombreRepresentante,ApeP_Representante,TelContacto,DiaPedido,DiaEntrega,TipoPago)
 VALUES ('CCF911030','Coca-Cola','Esteban','Cruz',5555999911,'Jueves','Jueves','Transferencia');
INSERT INTO proveedores (RFC,NomEmpresa,NombreRepresentante,ApeP_Representante,TelContacto,DiaPedido,DiaEntrega,TipoPago)
 VALUES ('CPC650101','Sabritas,Gamesa,Pepsi','Enrique','Marin',5555999922,'Jueves','Viernes','Efectivo');
INSERT INTO proveedores (RFC,NomEmpresa,NombreRepresentante,ApeP_Representante,TelContacto,DiaPedido,DiaEntrega,TipoPago)
 VALUES ('GBI600203','Bimbo','Juan','Alcazar',5555999999,'Lunes','Martes','Efectivo');

/*Insert en productos*/
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (1,'Pan tostado clásico','Pan T Clásico',35.00,8,1,10,1);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (2,'Pan integral grande','Pan Int Grnd',45.00,4,1,10,1);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (3,'Roles de canela glaseados','Roles Glas',20.00,5,1,10,0);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (4,'Panquecitos con chispas sabor chocolate','Panques Chispas Choc',25.00,5,1,10,0);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (5,'Donitas espolvoreadas','Donas Espolv',20.00,6,1,10,0);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (6,'Coca cola sabor original 235 ml botella de v','CocaCola vidrio 235',10.00,20,1,10,1);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (7,'Coca cola sabor original 600 ml no retornable','CocaCola 600',15.00,15,1,10,1);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (8,'Fanta sabor naranja 354 ml lata','Fanta lata',13.00,30,1,10,0);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (9,'Coca cola light 354 ml lata','CocaCola L lata',13.00,10,1,10,NULL);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (10,'Coca cola light 600 ml no retornable','CocaCola L 600',15.00,20,1,10,0);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (11,'Papas Sabritas adobadas 170 gr','PapasAdibadas ch',15.00,15,1,10,1);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (12,'Fritos limón 180 gr','Fritos ch',15.00,16,1,10,NULL);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (13,'Rufles de queso 200 gr','RuflesQ ch',15.00,17,1,10,NULL);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (14,'Churrumais 200 gr','Churrumais ch',15.00,18,1,10,NULL);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (15,'Gamesa Emperador de chocolate 200gr','Emperador choc ch',20.00,5,1,10,0);
INSERT INTO productos (CodProd,DescripL,DescripC,PrecioV,Existencias,StockMin,StockMax,Oferta) VALUES (16,'Gamesa Emperador piruetas limón 200gr','Emperador limón ch',20.00,6,1,10,1);

/*Insert en ventas*/
INSERT INTO ventas (NumV,Fecha,Hora,Subtotal,IVA,Total,Clientes_RFC,Personal_NumSS) VALUES (1,'2022-11-07','09:00:00',98.28,15.72,114.00,'CARH810911',321);
INSERT INTO ventas (NumV,Fecha,Hora,Subtotal,IVA,Total,Clientes_RFC,Personal_NumSS) VALUES (2,'2022-11-07','09:05:00',73.28,11.72,85.00,'DOME751202',321);
INSERT INTO ventas (NumV,Fecha,Hora,Subtotal,IVA,Total,Clientes_RFC,Personal_NumSS) VALUES (3,'2022-07-11','09:10:00',43.10,6.90,50.00,'CARH810911',456);
INSERT INTO ventas (NumV,Fecha,Hora,Subtotal,IVA,Total,Clientes_RFC,Personal_NumSS) VALUES (4,'2023-01-17','09:21:00',159.48,25.52,185.00,NULL,456);

/*Insert en productosv*/
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (1,35.00,35.00,1,1);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (2,20.00,40.00,1,3);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (3,13.00,39.00,1,8);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (1,45.00,45.00,2,2);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (2,20.00,40.00,2,5);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (2,25.00,50.00,3,4);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (1,35.00,35.00,4,1);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (3,20.00,60.00,4,3);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (3,10.00,30.00,4,6);
INSERT INTO productosv (Cantidad,PrecioV,Subtotal_Prod,Ventas_NumV,Productos_CodProd) VALUES (4,15.00,60.00,4,7);

/*Insert en compras*/
INSERT INTO Compras (NumC,FechaHoraP,FechaHoraE,TipoPago,Subtotal,IVA,Total,Proveedores_RFC)
 VALUES (1050,'2022-01-20 00:00:00','2022-01-21 00:00:00','Efectivo',2198.28,351.72,2550.00,'CCF911030');
INSERT INTO Compras (NumC,FechaHoraP,FechaHoraE,TipoPago,Subtotal,IVA,Total,Proveedores_RFC)
 VALUES (1119,'2022-01-15 00:00:00','2022-01-15 00:00:00','Transferencia',1482.76,237.24,1720.00,'CPC650101');

/*Insert en productosc*/
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (50,7.00,350.00,1050,6);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (50,12.00,600.00,1050,7);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (50,10.00,500.00,1050,8);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (50,10.00,500.00,1050,9);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (50,12.00,600.00,1050,10);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (20,13.00,260.00,1119,11);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (20,13.00,260.00,1119,12);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (20,13.00,260.00,1119,13);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (20,13.00,260.00,1119,14);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (20,17.00,340.00,1119,15);
INSERT INTO productosc (Cantidad,PrecioC,Subtotal_Prod,Compras_NumC,Productos_CodProd) VALUES (20,17.00,340.00,1119,16);

ROLLBACK;