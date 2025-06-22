CREATE TABLE Clientes(
    RFC VARCHAR2(13) NOT NULL,
    PRIMARY KEY (RFC)
);

CREATE TABLE Personal(
    Hora VARCHAR2(6) CHECK (REGEXP_LIKE(Hora, '^([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$')),
    FechaHora TIMESTAMP
);