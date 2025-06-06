CREATE TABLE Personal (
  NumSS NUMBER NOT NULL,
  Nombre VARCHAR(45) NULL,
  ApePaterno VARCHAR(45) NULL,
  ApeMaterno VARCHAR(45) NULL,
  TelPersonal NUMBER(10) NULL,
  TelCasa NUMBER NULL,
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
  Num NUMBER NULL,
  Colonia VARCHAR(45) NULL,
  CP NUMBER NULL,
  Alcaldia VARCHAR(45) NULL,
  PRIMARY KEY (RFC));

CREATE TABLE Proveedores (
  RFC VARCHAR(13) NOT NULL,
  NomEmpresa VARCHAR(45) NULL,
  NombreRepresentante VARCHAR(45) NULL,
  ApeP_Representante VARCHAR(45) NULL,
  TelContacto NUMBER(10) NULL,
  DiaPedido VARCHAR(15) NULL,
  DiaEntrega VARCHAR(15) NULL,
  TipoPago VARCHAR(45) NULL,
  PRIMARY KEY (RFC));

CREATE TABLE Productos (
  DescripL VARCHAR(45) NULL,
  DescripC VARCHAR(20) NULL,
  PrecioV DECIMAL(7,2) NULL,
  Existencias NUMBER NULL,
  StockMin NUMBER NULL,
  StockMax NUMBER NULL,
  Oferta TINYNUMBER NULL,
  PRIMARY KEY (CodProd));

CREATE TABLE Ventas (
  NumV NUMBER NOT NULL,
  Fecha DATE NULL,
  Hora TIME NULL,
  Subtotal DECIMAL(7,2) NULL,
  IVA DECIMAL(7,2) NULL,
  Total DECIMAL(7,2) NULL,
  Clientes_RFC VARCHAR(13) NULL,
  Personal_NumSS NUMBER NOT NULL,
  PRIMARY KEY (NumV),
  FOREIGN KEY (Clientes_RFC) REFERENCES Clientes(RFC),
  FOREIGN KEY (Personal_NumSS) REFERENCES Personal(NumSS));

CREATE TABLE ProductosVentas (
  Cantidad NUMBER NULL,
  PrecioV DECIMAL(7,2) NULL,
  Subtotal_Prod DECIMAL(7,2) NULL,
  Ventas_NumV NUMBER NOT NULL,
  Productos_CodProd NUMBER NOT NULL,
  PRIMARY KEY (Ventas_NumV, Productos_CodProd),
  FOREIGN KEY (Ventas_NumV) REFERENCES Ventas(NumV),
  FOREIGN KEY (Productos_CodProd) REFERENCES Productos(CodProd));

CREATE TABLE Compras (
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
  Cantidad NUMBER NULL,
  PrecioC DECIMAL(7,2) NULL,
  Subtotal_Prod DECIMAL(7,2) NULL,
  Compras_NumC NUMBER NOT NULL,
  Productos_CodProd NUMBER NOT NULL,
  PRIMARY KEY (Compras_NumC, Productos_CodProd),
  FOREIGN KEY (Compras_NumC) REFERENCES Compras(NumC),
  FOREIGN KEY (Productos_CodProd) REFERENCES Productos(CodProd));
