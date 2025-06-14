-- Active: 1749216741065@@127.0.0.1@3307@compra_venta
CREATE TABLE Personal (
  NumSS INT NOT NULL,
  Nombre VARCHAR(45) NULL,
  ApePaterno VARCHAR(45) NULL,
  ApeMaterno VARCHAR(45) NULL,
  TelPersonal INTEGER(10) NULL,
  TelCasa INT NULL,
  FechaContrato DATE NULL,
  FecuenciaPago VARCHAR(15) NULL,
  SueldoBase DECIMAL(7,2) NULL,
  PRIMARY KEY (NumSS));

CREATE TABLE Clientes (
  RFC VARCHAR(13) NOT NULL,
  Nombre VARCHAR(45) NULL,
  ApePaterno VARCHAR(45) NULL,
  ApeMaterno VARCHAR(45) NULL,
  Calle VARCHAR(20) NULL,
  Num INT NULL,
  Colonia VARCHAR(45) NULL,
  CP INT NULL,
  Alcaldia VARCHAR(45) NULL,
  PRIMARY KEY (RFC));

CREATE TABLE Proveedores (
  RFC VARCHAR(13) NOT NULL,
  NomEmpresa VARCHAR(45) NULL,
  NombreRepresentante VARCHAR(45) NULL,
  ApeP_Representante VARCHAR(45) NULL,
  TelContacto INT(10) NULL,
  DiaPedido VARCHAR(15) NULL,
  DiaEntrega VARCHAR(15) NULL,
  TipoPago VARCHAR(45) NULL,
  PRIMARY KEY (RFC));

CREATE TABLE Productos (
  CodProd INT NOT NULL AUTO_INCREMENT,
  DescripL VARCHAR(45) NULL,
  DescripC VARCHAR(20) NULL,
  PrecioV DECIMAL(7,2) NULL,
  Existencias INT NULL,
  StockMin INT NULL,
  StockMax INT NULL,
  Oferta TINYINT NULL,
  PRIMARY KEY (CodProd));

CREATE TABLE Ventas (
  NumV INT NOT NULL,
  Fecha DATE NULL,
  Hora TIME NULL,
  Subtotal DECIMAL(7,2) NULL,
  IVA DECIMAL(7,2) NULL,
  Total DECIMAL(7,2) NULL,
  Clientes_RFC VARCHAR(13) NULL,
  Personal_NumSS INT NOT NULL,
  PRIMARY KEY (NumV),
  FOREIGN KEY (Clientes_RFC) REFERENCES Clientes(RFC),
  FOREIGN KEY (Personal_NumSS) REFERENCES Personal(NumSS));

CREATE TABLE ProductosVentas (
  Cantidad INT NULL,
  PrecioV DECIMAL(7,2) NULL,
  Subtotal_Prod DECIMAL(7,2) NULL,
  Ventas_NumV INT NOT NULL,
  Productos_CodProd INT NOT NULL,
  PRIMARY KEY (Ventas_NumV, Productos_CodProd),
  FOREIGN KEY (Ventas_NumV) REFERENCES Ventas(NumV),
  FOREIGN KEY (Productos_CodProd) REFERENCES Productos(CodProd));

CREATE TABLE Compras (
  NumC INT NOT NULL AUTO_INCREMENT,
  FechaHoraP DATETIME NULL,
  FechaHoraE DATETIME NULL,
  TipoPago VARCHAR(15) NULL,
  Subtotal DECIMAL(7,2) NULL,
  IVA DECIMAL(7,2) NULL,
  Total DECIMAL(7,2) NULL,
  Proveedores_RFC VARCHAR(13) NULL,
  PRIMARY KEY (NumC),
  FOREIGN KEY (Proveedores_RFC) REFERENCES Proveedores(RFC));

CREATE TABLE ProductosCompras (
  Cantidad INT NULL,
  PrecioC DECIMAL(7,2) NULL,
  Subtotal_Prod DECIMAL(7,2) NULL,
  Compras_NumC INT NOT NULL,
  Productos_CodProd INT NOT NULL,
  PRIMARY KEY (Compras_NumC, Productos_CodProd),
  FOREIGN KEY (Compras_NumC) REFERENCES Compras(NumC),
  FOREIGN KEY (Productos_CodProd) REFERENCES Productos(CodProd));
