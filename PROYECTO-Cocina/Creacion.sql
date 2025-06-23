CREATE TABLE Menu(
 No_guisado NUMBER(3) NOT NULL,
    Guisado NVARCHAR2(50),
    Precio NUMBER(6,2),
    PRIMARY KEY (No_guisado)
);

CREATE TABLE Personal(
    RFC_Nom VARCHAR2(4) NOT NULL,
    RFC_Fecha NUMBER(6) NOT NULL,
    Nombre NVARCHAR2(50),
    ApellidoP NVARCHAR2(50),
    ApellidoM NVARCHAR2(50),
    Cargo NVARCHAR2(50),
    -- Constraint REGEX
    Horario VARCHAR2(11) CHECK (REGEXP_LIKE(Horario, '^([0-1]?[0-9]|2[0-3]):[0-5][0-9]-([0-1]?[0-9]|2[0-3]):[0-5][0-9]$')),
    TelefonoCelular NUMBER(10),
    PRIMARY KEY (RFC_Nom,RFC_Fecha)
);

CREATE TABLE Cliente(
    Num_telefonico NUMBER(10) NOT NULL,
    Nombre NVARCHAR2(50),
    Calle NVARCHAR2(50),
    Numero NUMBER(10),
    Colonia NVARCHAR2(50),
    Alcaldia NVARCHAR2(50),
    CP NUMBER(5),
    Estado NVARCHAR2(50),
    PRIMARY KEY (Num_telefonico)
);  

CREATE TABLE Pedido(
    Num_Pedido NUMBER(10),
    Fecha DATE,
    RFC_Nom VARCHAR2(4),
    RFC_Fecha NUMBER(6),
    Num_telefonico NUMBER(10),  
    Porciones NUMBER(2),
    No_guisado NUMBER(3),
    Notas NVARCHAR2(500),
    Subtotal NUMBER(6,2),  
    Extra NUMBER(6,2),     
    Total NUMBER(6,2),     
    Pagado NUMBER(1) CHECK (Pagado IN (0,1)),
    Estado_preparacion VARCHAR2(30),
    PRIMARY KEY (Num_Pedido),
    FOREIGN KEY (RFC_Nom,RFC_Fecha) REFERENCES Personal(RFC_Nom,RFC_Fecha),
    FOREIGN KEY (Num_telefonico) REFERENCES Cliente(Num_telefonico),
    FOREIGN KEY (No_guisado) REFERENCES Menu(No_guisado)
);

---ALTER TABLE Pedido MODIFY Subtotal NUMBER(6,2);
--ALTER TABLE Pedido MODIFY Extra NUMBER(6,2);
--ALTER TABLE Pedido MODIFY Total NUMBER(6,2);

COMMIT;