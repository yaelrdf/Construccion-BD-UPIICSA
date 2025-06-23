-- Step 1: Create the Pluggable Database
CREATE PLUGGABLE DATABASE Cocina
ADMIN USER pdbadmin IDENTIFIED BY "adminpdb"
FILE_NAME_CONVERT = ('pdbseed', 'Cocina');

-- Step 2: Open the Pluggable Database
ALTER PLUGGABLE DATABASE Cocina OPEN;

-- Step 3: Set the PDB to auto-start
ALTER PLUGGABLE DATABASE Cocina SAVE STATE;

-- Step 4: Connect to the Pluggable Database
ALTER SESSION SET CONTAINER = Cocina;


--===========================================
CREATE USER yaeladmin IDENTIFIED BY "i12705fgf214";

-- Grant necessary privileges to yaeladmin
GRANT DBA TO yaeladmin;
GRANT CONNECT, RESOURCE TO yaeladmin;
GRANT CREATE SESSION TO yaeladmin;
GRANT UNLIMITED TABLESPACE TO yaeladmin;

--============================================

CREATE USER itza IDENTIFIED BY "925lbkv1vl9m";

-- Grant necessary privileges to itza
GRANT DBA TO itza;
GRANT CONNECT, RESOURCE TO itza;
GRANT CREATE SESSION TO itza;
GRANT UNLIMITED TABLESPACE TO itza;
 
--===============================================

CREATE USER sofi IDENTIFIED BY "tp451thu0c2c";

-- Grant necessary privileges to sofi
GRANT DBA TO sofi;
GRANT CONNECT, RESOURCE TO sofi;
GRANT CREATE SESSION TO sofi;
GRANT UNLIMITED TABLESPACE TO sofi;

--==============================================
CREATE USER mary IDENTIFIED BY "93i1xta1fnwz";

-- Grant necessary privileges to mary
GRANT DBA TO mary;
GRANT CONNECT, RESOURCE TO mary;
GRANT CREATE SESSION TO mary;
GRANT UNLIMITED TABLESPACE TO mary;

--===============================================
CREATE USER betsa18 IDENTIFIED BY "09rk2uozceqr";

-- Grant necessary privileges to betsa18
GRANT DBA TO betsa18;
GRANT CONNECT, RESOURCE TO betsa18;
GRANT CREATE SESSION TO betsa18;
GRANT UNLIMITED TABLESPACE TO betsa18;

--=============================================
