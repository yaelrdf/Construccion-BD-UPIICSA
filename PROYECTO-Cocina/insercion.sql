-- Insert Menu
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (1, 'Bistec en Pasilla', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (2, 'Pollo en crema de elote', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (3, 'Tortitas de espinaca', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (4, 'Chiles rellenos', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (5, 'Pollo a la jardinera', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (6, 'Chicharron en salsa verde', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (7, 'Cochinita pibil', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (8, 'Milanesas de pollo', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (9, 'Etomatado de pollo', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (10, 'Tacos dorados', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (11, 'Tinga de pollo', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (12, 'Tortitas de brocoli', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (13, 'Rajas con pollo', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (14, 'Mole verde', 45);
INSERT INTO Menu (No_guisado, Guisado, Precio) VALUES (15, 'Pescado empanizado', 45);

-- Insert Personal
INSERT INTO Personal (RFC_Nom, RFC_Fecha, Nombre, ApellidoP, ApellidoM, Cargo, Horario, TelefonoCelular) 
    VALUES ('SAPM', 120379, 'Marta', 'Sánchez', 'Pérez', 'Empacadora', '12:00-6:00', 5543567891);
INSERT INTO Personal (RFC_Nom, RFC_Fecha, Nombre, ApellidoP, ApellidoM, Cargo, Horario, TelefonoCelular) 
    VALUES ('DOLM', 107912, 'Marisol', 'Dominguez', 'López', 'Limpieza', '9:00-6:00', 5560320490);
INSERT INTO Personal (RFC_Nom, RFC_Fecha, Nombre, ApellidoP, ApellidoM, Cargo, Horario, TelefonoCelular) 
    VALUES ('SAFE', 221001, 'Ernesto', 'Saldaña', 'Flores', 'Repartidor', '12:00-6:00', 5520455018);
INSERT INTO Personal (RFC_Nom, RFC_Fecha, Nombre, ApellidoP, ApellidoM, Cargo, Horario, TelefonoCelular) 
    VALUES ('GOCC', 110305, 'Sofía', 'González', 'Cruz', 'General', '8:00-6:00', 5549124546);

-- Insert cliente
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5544342312, 'Carmen', 'Damasco', 34, 'Romero Rubio', 'Venustiano Carranza', 15400, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5523453421, 'Oscar', 'C. Cairo', 75, 'Romero', 'Venustiano Carranza', 15400, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5643217533, 'Omar', 'Calle Ote. 150', 258, 'Moctezuma', 'Venustiano Carranza', 15530, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5509767865, 'Paola', 'Calle Nte. 25', 62, 'Moctezuma 2da Secc', 'Venustiano Carranza', 15530, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5543324230, 'Alberto', 'Nte 84-A', 5222, 'Gertrudis Sánchez II Secc', 'Gustavo A. Madero', 78390, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5548290382, 'Silvana', 'H.Congreso de la Unión', 83, 'Felipe Ángeles', 'Venustiano Carranza', 15310, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5598342763, 'Guadalupe', 'C. Plomo', 287, 'Felipe Ángeles', 'Venustiano Carranza', 15310, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5609337482, 'Valeri', 'Cuarzo', 27, 'Felipe Ángeles', 'Venustiano Carranza', 15310, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5522424947, 'Elisa', 'Av.Adolfo López Mateos', 57, 'Metropolitana 2da Sec', 'Nezahualcóyotl', 57740, 'Estado de Mexico');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5574839202, 'Jesus', 'Aluminio', 377, '20 de Noviembre', 'Venustiano Carranza', 15300, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5523212332, 'Raul', 'Estaño', 260, 'Felipe Ángeles', 'Venustiano Carranza', 15310, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5611098761, 'Celia', 'Cuarzo', 46, 'Felipe Ángeles', 'Venustiano Carranza', 15310, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5543789008, 'Jesus', 'Escuadra', 72, 'Sevilla', 'Venustiano Carranza', 15840, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5543679841, 'Karina', 'C. Plomo', 282, 'Felipe Ángeles', 'Venustiano Carranza', 15310, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5512312420, 'Luis', 'Valenciana', 43, 'Valle Gómez', 'Venustiano Carranza', 15210, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5513242750, 'Rosalia', 'Av. Francisco Morazán', 10, 'Pradera I Secc', 'Gustavo A.Madero', 75091, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5676786751, 'Estrella', 'C.Pablo R, Sidar', 108, 'Moctezuma', 'Venustiano Carranza', 15530, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5647564763, 'Elisa', 'Av. Río Consulado', 4006, 'La Malinche', 'Gustavo A. Madero', 78990, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5578653219, 'Joselyn', 'Radamés Treviño', 51, 'Jardín Balbuena', 'Venustiano Carranza', 59001, 'Ciudad de México');
INSERT INTO Cliente (Num_telefonico, Nombre, Calle, Numero, Colonia, Alcaldia, CP, Estado) 
    VALUES (5548673641, 'Miguel', 'Marmoleria', 279, '20 de Noviembre', 'Venustiano Carranza', 15300, 'Ciudad de México');

-- Insert Pedidos
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (1, DATE '2025-04-14', 'SAPM', 120379, 5544342312, 1, 1, '1 porción extra de arroz', 65, 10, 75, 0, 'Empacado');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (2, DATE '2025-04-14', 'GOCC', 110305, 5523453421, 5, 1, '2 Porciones extras de arroz', 260, 20, 280, 1, 'Empacado');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (3, DATE '2025-04-14', 'SAPM', 120379, 5643217533, 3, 1, '2 porciones extras de frijoles', 170, 20, 190, 0, 'Empacado');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (4, DATE '2025-04-14', 'GOCC', 110305, 5509767865, 1, 1, 'Traen tupper', 65, NULL, 65, 0, 'Empacado');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (5, DATE '2025-04-14', 'SAPM', 120379, 5543324230, 2, 2, '1 porcion del guisado 1', 120, NULL, 120, 1, 'Empacado');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (6, DATE '2025-04-14', 'GOCC', 110305, 5548290382, 2, 2, 'Comidas Separdas', 120, NULL, 120, 0, 'Empacado');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (7, DATE '2025-04-14', 'SAPM', 120379, 5598342763, 4, 2, '2 Porciones extra de arroz, 2 porciones extra de frijoles', 210, 40, 250, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (8, DATE '2025-04-14', 'GOCC', 110305, 5609337482, 5, 3, '2 porciones de sopa, 2 porciones de frijoles', 260, NULL, 260, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (9, DATE '2025-04-14', 'SAPM', 120379, 5522424947, 1, 1, 'Trae tupper', 65, NULL, 65, 1, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (10, DATE '2025-04-14', 'GOCC', 110305, 5574839202, 3, 3, 'Solamente 1 porcion de arroz', 170, NULL, 170, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (11, DATE '2025-04-14', 'SAPM', 120379, 5523212332, 1, 1, 'Solo guisado', 45, NULL, 45, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (12, DATE '2025-04-14', 'GOCC', 110305, 5611098761, 2, 2, NULL, 120, NULL, 120, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (13, DATE '2025-04-14', 'SAPM', 120379, 5543789008, 5, 3, '1 Pieza extra de pollo, 3 porciones guisado 2', 260, 40, 300, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (14, DATE '2025-04-14', 'GOCC', 110305, 5543679841, 3, 3, '3 Porciones extra de sopa', 170, 30, 200, 1, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (15, DATE '2025-04-14', 'SAPM', 120379, 5512312420, 5, 1, 'Dar porciones en tupper', 260, NULL, 260, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (16, DATE '2025-04-14', 'GOCC', 110305, 5513242750, 2, 2, 'Trae tupper, 1 sola porcion de frijoles', 120, NULL, 120, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (17, DATE '2025-04-14', 'SAPM', 120379, 5676786751, 1, 1, 'Trae tupper, solamente 1 porcion de frijoles', 65, 10, 75, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (18, DATE '2025-04-14', 'GOCC', 110305, 5647564763, 2, 2, '1 sola Porcion de sopa', 120, NULL, 120, 1, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (19, DATE '2025-04-14', 'SAPM', 120379, 5578653219, 2, 2, '1 porcion del guisado 1', 120, NULL, 120, 0, 'Por Empacar');
INSERT INTO Pedido (Num_Pedido, Fecha, RFC_Nom, RFC_Fecha, Num_telefonico, Porciones, No_guisado, Notas, Subtotal, Extra, Total, Pagado, Estado_preparacion) 
    VALUES (20, DATE '2025-04-14', 'GOCC', 110305, 5548673641, 1, 1, 'Trae tupper solo quiere 1 porcion de sopa', 65, NULL, 65, 0, 'Por Empacar');

-- Commit
COMMIT;
--ROLLBACK;