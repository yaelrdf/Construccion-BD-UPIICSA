-- SQLBook: Code
CREATE TABLE Personal (
  NumSS NUMBER NOT NULL,
  Nombre NVARCHAR2(45),
  ApePaterno NVARCHAR2(45),
  ApeMaterno NVARCHAR2(45),
  TelPersonal NUMBER(10),
  TelCasa NUMBER(10),
  FechaContrato DATE,
  FrecuenciaPago VARCHAR2(15),
  SueldoBase NUMBER(7,2),
  Puesto VARCHAR2(10),
  H_entrada TIMESTAMP,
  H_salida TIMESTAMP,
  PRIMARY KEY (NumSS)
);

CREATE TABLE Clientes (
  RFC VARCHAR2(13) NOT NULL,
  Nombre VARCHAR2(45),
  ApePaterno VARCHAR2(45),
  ApeMaterno VARCHAR2(45),
  Calle VARCHAR2(20),
  Num NUMBER,
  Colonia VARCHAR2(45),
  CP NUMBER,
  Alcaldia VARCHAR2(45),
  PRIMARY KEY (RFC)
);

CREATE TABLE Proveedores (
  RFC VARCHAR2(13) NOT NULL,
  NomEmpresa VARCHAR2(45),
  NombreRepresentante VARCHAR2(45),
  ApeP_Representante VARCHAR2(45),
  TelContacto NUMBER(10),
  DiaPedido VARCHAR2(15),
  DiaEntrega VARCHAR2(15),
  TipoPago VARCHAR2(45),
  PRIMARY KEY (RFC)
);

CREATE TABLE Productos (
  CodProd NUMBER NOT NULL,
  DescripL VARCHAR2(45),
  DescripC VARCHAR2(20),
  PrecioV NUMBER(7,2),
  Existencias NUMBER,
  StockMin NUMBER,
  StockMax NUMBER,
  Oferta NUMBER(1) CHECK (Oferta IN (0,1)),
  PRIMARY KEY (CodProd)
);

CREATE TABLE Ventas (
  NumV NUMBER NOT NULL,
  Fecha DATE,
  Hora TIMESTAMP,
  Subtotal NUMBER(7,2),
  IVA NUMBER(7,2),
  Total NUMBER(7,2),
  Clientes_RFC VARCHAR2(13),
  Personal_NumSS NUMBER NOT NULL,
  PRIMARY KEY (NumV),
  FOREIGN KEY (Clientes_RFC) REFERENCES Clientes(RFC),
  FOREIGN KEY (Personal_NumSS) REFERENCES Personal(NumSS)
);

CREATE TABLE Productosv (
  Cantidad NUMBER,
  PrecioV NUMBER(7,2),
  Subtotal_Prod NUMBER(7,2),
  Ventas_NumV NUMBER NOT NULL,
  Productos_CodProd NUMBER NOT NULL,
  PRIMARY KEY (Ventas_NumV, Productos_CodProd),
  FOREIGN KEY (Ventas_NumV) REFERENCES Ventas(NumV),
  FOREIGN KEY (Productos_CodProd) REFERENCES Productos(CodProd)
);

CREATE TABLE Compras (
  NumC NUMBER NOT NULL,
  FechaHoraP TIMESTAMP,
  FechaHoraE TIMESTAMP,
  TipoPago VARCHAR2(15),
  Subtotal NUMBER(7,2),
  IVA NUMBER(7,2),
  Total NUMBER(7,2),
  Proveedores_RFC VARCHAR2(13),
  PRIMARY KEY (NumC),
  FOREIGN KEY (Proveedores_RFC) REFERENCES Proveedores(RFC)
);

CREATE TABLE Productosc (
  Cantidad NUMBER,
  PrecioC NUMBER(7,2),
  Subtotal_Prod NUMBER(7,2),
  Compras_NumC NUMBER NOT NULL,
  Productos_CodProd NUMBER NOT NULL,
  PRIMARY KEY (Compras_NumC, Productos_CodProd),
  FOREIGN KEY (Compras_NumC) REFERENCES Compras(NumC),
  FOREIGN KEY (Productos_CodProd) REFERENCES Productos(CodProd)
);