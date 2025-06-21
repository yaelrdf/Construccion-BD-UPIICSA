CREATE TABLE Menu(
    No_guisado NUMBER(3),
    Guisado NVARCHAR2(50),
    Precio NUMBER(3,2),
    PRIMARY KEY (No_guisado)
);

--Sin relacion con ninguna tabla.ALTER
--HOTFIX pendiente
CREATE TABLE Extras(
    Num_extra NUMBER(3),
    Descripcion NVARCHAR2(100),
    Precio NUMBER(2,2),
    PRIMARY KEY (Num_extra)
);


CREATE TABLE Personal(
    RFC_Nom VARCHAR2(4),
    RFC_Fecha NUMBER(6),
    Nombre NVARCHAR2(50),
    ApellidoP NVARCHAR2(50),
    ApellidoM NVARCHAR2(50),
    Cargo NVARCHAR2(50),
    --Constrain REGEX
    Horario VARCHAR2(11) CHECK (REGEXP_LIKE(Horario, '^([0-1]?[0-9]|2[0-3]):[0-5][0-9]-([0-1]?[0-9]|2[0-3]):[0-5][0-9]$')),
    TelefonoCelular NUMBER(10),
    PRIMARY KEY (RFC_Nom,RFC_Fecha)
);

CREATE TABLE Cliente(
    Num_telefonico NUMBER(10),
    Nombre NVARCHAR2(50),
    Calle NVARCHAR2(50),
    Numero VARCHAR2(10),
    Colonia NVARCHAR2(50),
    Alcaldia NVARCHAR2(50),
    CP NUMBER(6),
    Estado NVARCHAR2(50),
    PRIMARY KEY (Num_telefonico)
)

CREATE TABLE Pedido(
    Num_Pedido NUMBER(10),
    Fecha DATE,
    RFC_Nom VARCHAR2(4),
    RFC_Fecha NUMBER(6),
    Num_telefonico NUMBER(10),
    Porciones NUMBER(2),
    No_guisado NUMBER(3),
    Notas NVARCHAR2(500),
    --Posibilidad de calcular el total con muiltiplicaciones
    -- Triger y Refactor requerido
    Total NUMBER(4,2),
    Pagado NUMBER(1) CHECK (Pagado IN (0,1)),
    Estado_preparacion VARCHAR2(30),
    PRIMARY KEY (Num_Pedido),
    FOREIGN KEY (RFC_Nom,RFC_Fecha) REFERENCES Personal(RFC_Nom,RFC_Fecha),
    FOREIGN KEY (Num_telefonico) REFERENCES Cliente(Num_telefonico),
    FOREIGN KEY (No_guisado) REFERENCES Menu(No_guisado)
    --Sin relacion con la tabla Extras
    --Hotfix
);