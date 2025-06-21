--Create the Pluggable Database
CREATE PLUGGABLE DATABASE compraVenta
ADMIN USER pdbadmin IDENTIFIED BY "adminpdb"
FILE_NAME_CONVERT = ('pdbseed', 'compraVenta');

--Open the Pluggable Database
ALTER PLUGGABLE DATABASE compraVenta OPEN;

--Set the PDB to auto-start
ALTER PLUGGABLE DATABASE compraVenta SAVE STATE;

--Connect to the Pluggable Database
ALTER SESSION SET CONTAINER = compraVenta;

--Create first admin user
CREATE USER itza IDENTIFIED BY "La contraseña, pero va a dar error asi que cambiala";

GRANT DBA TO itza;
GRANT CONNECT, RESOURCE TO itza;
GRANT CREATE SESSION TO itza;
GRANT UNLIMITED TABLESPACE TO itza;